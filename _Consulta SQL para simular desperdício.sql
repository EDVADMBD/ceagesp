SELECT
  Produto,
  Categoria,
  Quantidade_Centenas,
  -- Simula uma taxa de desperdício entre 5% e 30%
  SAFE_CAST(5 + MOD(ABS(FARM_FINGERPRINT(Produto)), 26) AS FLOAT64) AS taxa_desperdicio_percentual,
  -- Calcula desperdício estimado
  Quantidade_Centenas * (SAFE_CAST(5 + MOD(ABS(FARM_FINGERPRINT(Produto)), 26) AS FLOAT64) / 100.0) AS quantidade_desperdicada
FROM
  `ceagesp-data-bucket-projeto.ceagesp_produtos.ceagesp_master`