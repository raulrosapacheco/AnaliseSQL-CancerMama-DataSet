# CRIAR UM NOVO DATASET A PARTIR DO BREAST CANCER DATA SET, DISPONÍVEL EM:
# https://archive.ics.uci.edu/ml/datasets/Brest+Cancer
# APLICAR LABEL ENCODING À VARIÁVEL MENOPAUSA
# CRIAR NOVA COLUNA CHAMADA POSICAO_TUMOR CONCATENANDO AS COLUNAS INV_NODES E QUADRANTE
# APLICAR ONE-HOT-ENCODING A COLUNA DEG_MALIG

SELECT DISTINCT menopausa FROM cancer.tb_mama2;
SELECT DISTINCT deg_malig FROM cancer.tb_mama2;

CREATE TABLE cancer.tb_mama3
AS
SELECT
	classe, idade,
    CASE
		WHEN menopausa = 'premeno' THEN 1
        WHEN menopausa = 'ge40' THEN 2
		WHEN menopausa = 'lt40' THEN 3
        END AS menopausa,
	tamanho_tumor,
    CONCAT(inv_nodes, '-', quadrante) AS posicao_tumor,
    node_caps,
    CASE WHEN deg_malig = 1 THEN 1 ELSE 0 END AS deg_malig_1,
    CASE WHEN deg_malig = 2 THEN 1 ELSE 0 END AS deg_malig_2,
    CASE WHEN deg_malig = 3 THEN 1 ELSE 0 END AS deg_malig_3,
    seio,
    irradiando
FROM cancer.tb_mama2;
    
    
    
    