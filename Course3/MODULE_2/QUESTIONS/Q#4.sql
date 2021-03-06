--Query 4: Inventory Transactions by Transaction Description, Company, and Branch Plant

SELECT  TTD.TRANSDESCRIPTION,
        CD.COMPANYNAME,
        BPD.BPNAME,
        SUM(EXTCOST),
        COUNT(*)
FROM INVENTORY_FACT INF
        JOIN TRANS_TYPE_DIM TTD ON TTD.TRANSTYPEKEY=INF.TRANSTYPEKEY
        JOIN BRANCH_PLANT_DIM BPD ON BPD.BRANCHPLANTKEY=INF.BRANCHPLANTKEY
        JOIN COMPANY_DIM CD ON CD.COMPANYKEY=BPD.COMPANYKEY
GROUP BY ROLLUP(TTD.TRANSDESCRIPTION,CD.COMPANYNAME,BPD.BPNAME)
ORDER BY TTD.TRANSDESCRIPTION,CD.COMPANYNAME,BPD.BPNAME;