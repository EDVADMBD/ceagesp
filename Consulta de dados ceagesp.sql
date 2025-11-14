SELECT
  Produto,
  Categoria,
  Quantidade_Centenas,
  COUNT(*) AS total_registros
FROM
  `ceagesp-data-bucket-projeto.ceagesp_produtos.ceagesp_master`
GROUP BY
  Produto, Categoria, Quantidade_Centenas
ORDER BY
  total_registros DESC
LIMIT 20;

