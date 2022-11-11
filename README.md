# AnaliseSQL-CancerMama_DataSet

Aplicando técnicas de:
- Codificação (label encoding e one-hot-encoding)
- Categorização
- Binarização 
- Concatenação de Variáveis 

No Data Set Breast Cancer, disponível em: https://archive.ics.uci.edu/ml/datasets/Breast+Cancer

Os direcionamentos para esse pequeno projeto foram desenvolvidos pelo curso SQL Para Data Science da Data Science Academy: https://www.datascienceacademy.com.br/course/sql-para-data-science-dsa

Técnicas aplicadas na tabela1: 
- BINARIZAÇÃO DA VARIÁVEL CLASSE 0/1
- BINARIZAÇÃO DA VARIÁVEL IRRADIANDO 0/1 
- CATEGORIZAÇÃO DA VARIÁVEL SEIO E/D
- CATEGORIZAÇÃO DA VARIÁVEL TAMANHO_TUMOR EM 6 CATEGORIAS
- LABEL ENCODING DA VARIÁVEL QUADRANTE

Técnicas aplicadas na tabela2:
- APLICAR LABEL ENCODING À VARIÁVEL MENOPAUSA
- CRIAR NOVA COLUNA CHAMADA POSICAO_TUMOR CONCATENANDO AS COLUNAS INV_NODES E QUADRANTE
- APLICAR ONE-HOT-ENCODING A COLUNA DEG_MALIG

