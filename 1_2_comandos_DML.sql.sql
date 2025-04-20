-Alterar dados item a: Inserindo dados na tabela MC_CLIENTE
    -- Resultado esperado: 1 row inserted, em cada INSERT.
INSERT INTO MC_CLIENTE (NM_CLIENTE, NM_LOGIN, DS_SENHA) 
    VALUES ('charles darwin', 'EvolutionTheory@NaturalSelection.com', 'Surv1v41_0f_th3_f1tt35t');
INSERT INTO MC_CLIENTE (NM_CLIENTE, NM_LOGIN, DS_SENHA) 
    VALUES ('Stephen Hawking', 's.hawking@BriefHistoryOfTime.com', 'Th30ry_0f_Ev3ryth1ng!');
INSERT INTO MC_ CLIENTE (NMCLIENTE, QT_ESTRELAS, VL MEDIO_COMPRA, ST_CLIENTE, DS _EMAIL, NR_TELEFONE, NH LOGIN, DS _SENHA)
    VALUES ('Marie Curie', 4, 350.75, 'A', 'mariecurie@email.com', '11987654321', 'mariec', '4gqrrg4566%');
INSERT INTO MC_CLIENTE (NM_CLIENTE, OT ESTRELAS, VL MEDIO_COMPRA, ST_CLIENTE, DS_ EMAIL, NR_TELEFONE, Nº LOGIN, DS SENHA)
    VALUES ('Alan Turing', 5, 480.8Đ, 'A', 'alanturing@email.com', '21998765432', 'alantu', 'p9583h44*');
INSERT INTO MC_ CLIENTE (NM_CLIENTE, OT ESTRELAS, VL MEDIO_COMPRA, ST_CLIENTE, DS_EMAIL, NR_TELEFONE, NH_ LOGIN, DS_ SENHA)
    VALUES ('Leonardo da Vinci', 2, 290.00, 'A', 'leodavinci@emai1.com', '31999887766', 'Leodavinci', 'smdfoij43!');
INSERT INTO MC_CLIENTE (NM_CLIENTE, QT_ESTRELAS, VL_MEDIO_COMPRA, ST_CLIENTE, DS_EMAIL, NR_TELEFONE, NM_LOGIN, DS_SENHA) 
    VALUES ('Fast Shop', 5, 1250.50, 'A', 'contato@fastshop.com', '1144556677', 'fastshop', 'Bw&%@2025');
INSERT INTO MC_CLIENTE (NM_CLIENTE, QT_ESTRELAS, VL_MEDIO_COMPRA, ST_CLIENTE, DS_EMAIL, NR_TELEFONE, NM_LOGIN, DS_SENHA) 
    VALUES ('Outback', 4, 980.30, 'A', 'contato@outback.com.br', '1133445566', 'outback', 'abM@455');

--Inserindo registros na tabela MC_CLI_FISICA 
    -- Resultado esperado: 1 row inserted, em cada INSERT.
INSERT INTO MC_CLI FISICA (NR_CLIENTE, DT NASCIMENTO, FL_SEXO_BIOLOGICO, NR_CPF) VALUES (1,  TO DATE( '08/01/1942', 'DD/MM/YYYY'). 'H', 354.409.378-48):
INSERT INTO MC_CLI_FISICA (NR_CLIENTE, DT NASCIMENTO, FL_SEXO_BIOLOGICO, NR_CPF) VALUES (2,  TO DATE( '08/01/1942', 'DD/MM/YYYY'), 'H', 497.985.843-85);
INSERT INTO MC CLI_FISICA (NR_CLIENTE, DT NASCIMENTO, FL_SEXO_BIOLOGICO, NR_CPF) VALUES (3,  TO DATE ('20/02/1985', 'DD/MM/YYYY'),'M', 456.987.234-87);
INSERT INTO MC_CLI_FISICA (NR_CLIENTE, DT_NASCIMENTO, FL_SEXO_BIOLOGICO, NR_CPF) VALUES (4,  TO DATE ('30-11-1995', 'DD-MM-YYYY'), 'H', 987.654.321-00);
INSERT INTO MC_CLI_FISICA (NR_CLIENTE, DT NASCIMENTO, FL_SEXO_ BIOLOGICO, DS_GENERO, NR_CPF) VALUES (5, TO DATE('15-03-1988', 'DD-MM-YYYY'), 'H', 'Masculino', 894.857.869-90);

--Inserindo dados na tabela MC_CLI_JURIDICA
    -- Resultado esperado: 1 row inserted.
INSERT INTO MC_CLI_JURIDICA (NR_CLIENTE, DT_FUNDACAO, NR_CNPJ, NR_INSCR_EST) 
    VALUES (6, TO_DATE('12/02/1991', 'DD/MM/YYYY'), '00.180.209/0001-01', '987.654.321.000');
INSERT INTO MC_CLI_JURIDICA (NR_CLIENTE, DT_FUNDACAO, NR_CNPJ, NR_INSCR_EST) 
    VALUES (7, TO_DATE('15-03-1988', 'DD-MM-YYYY'), '98.765.432/0001-88', '849.937.366.000');



--Alterar dados item b: Tentando inserir ALfred Wallace com login existente
    /*
    Resultado esperado: unique constraint (SQL_G9F063EVQMIWS4XBV5JHRLT98V.UK_MC_CLIENTE_MM_LOGIN) violated on table SQL_G9F063EVQMIWS4XBV5JHRLT98V.MC_CLIENTE columns (NM_LOGIN)
    ORA-03301: (ORA-00001 details) row with column values (NM_LOGIN:'EvolutionTheory@NaturalSelection.com') already exists
    */
    -- Não foi possível por conta da unique constraint UK_MC_CLIENTE_MM_LOGIN que garante que não seja registrado o mesmo login, já que Darwin criou primeiro.
INSERT INTO MC_CLIENTE (NM_CLIENTE, NM_LOGIN, DS_SENHA) 
    VALUES ('Alfred Russel Wallace',  'EvolutionTheory@NaturalSelection.com', 'Surv1v41_0f_th3_f1tt35t'); 



--Alterar dados item c: Promoção e aumento de saládo para Phoebe Buffay-Hannigan
    -- Resultado esperado: 1 row updated.
UPDATE MC_FUNCIONARIO
    SET DS_CARGO = 'Atendente V',
        VL_SALARIO = VL_SALARIO * 1.12
    WHERE NM_FUNCIONARIO = 'Phoebe Buffay-Hannigan';

--Inserindo registros na tabela MC_END_CLI
    -- Resultado esperado: 1 row inserted.
INSERT INTO MC_END_CLI (NR_CLIENTE, CD_LOGRADOURO_CLI, NR_END, DT_INICIO, ST_END) 
    VALUES (1, 2, 123, TO_DATE('10/04/2002', 'DD/MM/YYYY'), 'A');
INSERT INTO MC_END_CLI (NR_CLIENTE, CD_LOGRADOURO_CLI, NR_END, DT_INICIO, ST_END)
    VALUES (2, 1, 678, TO_DATE('26-04-2022', 'DD-MM-YYYY'), 'A');
INSERT INTO MC_END_CLI (NR_CLIENTE, CD_LOGRADOURO_CLI, NR_END, DT_INICIO, ST_END)
    VALUES (3, 4, 23, TO_DATE('20-12-2020', 'DD-MM-YYYY'), 'A');
INSERT INTO MC_END_CLI (NR_CLIENTE, CD_LOGRADOURO_CLI, NR_END, DT_INICIO, ST_END)
    VALUES (4, 2, 890, TO_DATE('04-09-2023', 'DD-MM-YYYY'), 'A');
INSERT INTO MC_END_CLI (NR_CLIENTE, CD_LOGRADOURO_CLI, NR_END, DT_INICIO, ST_END)
    VALUES (5, 1, 678, TO_DATE('19-07-2024', 'DD-MM-YYYY'), 'A');
INSERT INTO MC_END_CLI (NR_CLIENTE, CD_LOGRADOURO_CLI, NR_END, DT_INICIO, ST_END)
    VALUES (6, 4, 23, TO_DATE('25-08-2023', 'DD-MM-YYYY'), 'A');
INSERT INTO MC_END_CLI (NR_CLIENTE, CD_LOGRADOURO_CLI, NR_END, DT_INICIO, ST_END)
    VALUES (7, 2, 890, TO_DATE('11-05-2023', 'DD-MM-YYYY'), 'A');


-- Alterar dados item d: inativando endereço 
    -- Resultado esperado: 1 row updated.
UPDATE MC_END_CLI 
    SET ST_END = 'I',
        DT_TERMINO = TO_DATE('22/04/2025', 'DD/MM/YYYY')
    WHERE NR_CLIENTE = '2';

-- Alterar dados item e: Tentando remover estado com cidade cadastrada
    -- Resultado esperado: integrity constraint (SQL_G9F063EVQMIWS4XBV5JHRLT98V.FK_MC_CIDADE_ESTADO) violated - child record found
    -- Não é possível por conta da restrição de integridade que impede de remover a chave primária sem antes remover a chave estrangeira
DELETE MC_ESTADO
WHERE SG_ESTADO = 'SP';


-- Alterar dados item f: Tentando alterar o status do produto para 'X'
    -- Resultado esperado: check constraint (SQL_G9F063EVQMIWS4XBV5JHRLT98V.MC_PRODUTO_CK_ST_PROD) violated
    -- Não é possível por conta da check constraint, que garante apenas os valores 'A', 'I' para o status do produto.
UPDATE MC_PRODUTO
    SET ST_PRODUTO = 'X'
    WHERE CD_PRODUTO = '1';

--Alterar dados item g: Confirmando as alterações
    -- Resultado esperado: Commit complete.
COMMIT;

--Inserindo registros na tabela MC_VIDEO

INSERT INTO MC_VIDEO (CD_VIDEO, CD_PRODUTO, NR_CLIENTE, ST_VIDEO, DS_VIDEO, DT_VIDEO) VALUES (1, 1, 1, 'A', 'Apresentação do Notebook Dell', TO_DATE('01-04-2025', 'DD-MM-YYYY'));
INSERT INTO MC_VIDEO (CD_VIDEO, CD_PRODUTO, NR_CLIENTE, ST_VIDEO, DS_VIDEO, DT_VIDEO) VALUES (2, 2, 4, 'A', 'Unboxing do iPhone 13', TO_DATE('03-04-2025', 'DD-MM-YYYY'));
INSERT INTO MC_VIDEO (CD_VIDEO, CD_PRODUTO, NR_CLIENTE, ST_VIDEO, DS_VIDEO, DT_VIDEO) VALUES (3, 3, 3, 'A', 'Review da Bicicleta KRW Spotlight', TO_DATE('05-04-2025', 'DD-MM-YYYY'));
INSERT INTO MC_VIDEO (CD_VIDEO, CD_PRODUTO, NR_CLIENTE, ST_VIDEO, DS_VIDEO, DT_VIDEO) VALUES (4, 4, 7, 'I', 'Demonstração Raquete Babolat', TO_DATE('06-04-2025', 'DD-MM-YYYY'));
INSERT INTO MC_VIDEO (CD_VIDEO, CD_PRODUTO, NR_CLIENTE, ST_VIDEO, DS_VIDEO, DT_VIDEO) VALUES (5, 5, 5, 'A', 'Análise Ração Royal Canin', TO_DATE('08-04-2025', 'DD-MM-YYYY'));
INSERT INTO MC_VIDEO (CD_VIDEO, CD_PRODUTO, NR_CLIENTE, ST_VIDEO, DS_VIDEO, DT_VIDEO) VALUES (6, 2, 6, 'A', 'Comparativo iPhone 13 vs 14', TO_DATE('10-04-2025', 'DD-MM-YYYY'));

-- Inserindo registros na tabela MC_SGV_PRODUTO_VIDEO
INSERT INTO MC_SGV_PRODUTO_VIDEO (CD_PRODUTO, NR_SEQUENCIA, CD_CATEGORIA, VD_PRODUTO, TP_VIDEO_PROD, DS_PATH_VIDEO_PROD, ST_VIDEO_PROD) 
    VALUES (3, 3, 2, null, 'MP4', 'https://drive.google.com/drive/folders/videos/bicicleta_krw_review.mp4', 'A');
INSERT INTO MC_SGV_PRODUTO_VIDEO (CD_PRODUTO, NR_SEQUENCIA, CD_CATEGORIA, VD_PRODUTO, TP_VIDEO_PROD, DS_PATH_VIDEO_PROD, ST_VIDEO_PROD) 
    VALUES (4, 4, 2, null, 'MPEG4', 'https://drive.google.com/drive/folders/videos/raquete_demonstracao.mp4', 'A');
INSERT INTO MC_SGV_PRODUTO_VIDEO (CD_PRODUTO, NR_SEQUENCIA, CD_CATEGORIA, VD_PRODUTO, TP_VIDEO_PROD, DS_PATH_VIDEO_PROD, ST_VIDEO_PROD) 
    VALUES (5, 5, 3, null, 'MPEG4', 'https://drive.google.com/drive/folders/videos/racao_royal_canin.mp4', 'A');
INSERT INTO MC_SGV_PRODUTO_VIDEO (CD_PRODUTO, NR_SEQUENCIA, CD_CATEGORIA, VD_PRODUTO, TP_VIDEO_PROD, DS_PATH_VIDEO_PROD, ST_VIDEO_PROD) 
    VALUES (2, 6, 1, null, 'MPEG4', 'https://drive.google.com/drive/folders/videos/iphone13_iphone14_comparativo.mp4', 'A');
    
--Inserindo registros na tabela MC_CLASSIFICACAO_VIDEO

INSERT INTO MC_CLASSIFICACAO_VIDEO (CD_VIDEO, DS_CLASSIFICACAO) VALUES (1, 'Uso no cotidiano');
INSERT INTO MC_CLASSIFICACAO_VIDEO (CD_VIDEO, DS_CLASSIFICACAO) VALUES (2, 'Unboxing');
INSERT INTO MC_CLASSIFICACAO_VIDEO (CD_VIDEO, DS_CLASSIFICACAO) VALUES (3, 'Review');
INSERT INTO MC_CLASSIFICACAO_VIDEO (CD_VIDEO, DS_CLASSIFICACAO) VALUES (4, 'Demonstração');
INSERT INTO MC_CLASSIFICACAO_VIDEO (CD_VIDEO, DS_CLASSIFICACAO) VALUES (5, 'Uso no cotidiano');
INSERT INTO MC_CLASSIFICACAO_VIDEO (CD_VIDEO, DS_CLASSIFICACAO) VALUES (6, 'Comparativo');


--Inserindo registros na tabela MC_VIZUALIZACAO

INSERT INTO MC_VISUALIZACAO (CD_VISUALIZACAO, CD_VIDEO, DT_HORA_VISUALIZACAO) VALUES (1, 1, TO_TIMESTAMP('11-10-2024 09:15:00', 'DD-MM-YYYY HH24:MI:SS'));
INSERT INTO MC_VISUALIZACAO (CD_VISUALIZACAO, CD_VIDEO, DT_HORA_VISUALIZACAO) VALUES (2, 2, TO_TIMESTAMP('04-10-2021 10:30:00', 'DD-MM-YYYY HH24:MI:SS'));
INSERT INTO MC_VISUALIZACAO (CD_VISUALIZACAO, CD_VIDEO, DT_HORA_VISUALIZACAO) VALUES (3, 3, TO_TIMESTAMP('11-11-2022 11:45:00', 'DD-MM-YYYY HH24:MI:SS'));
INSERT INTO MC_VISUALIZACAO (CD_VISUALIZACAO, CD_VIDEO, DT_HORA_VISUALIZACAO) VALUES (4, 4, TO_TIMESTAMP('17-08-2020 13:00:00', 'DD-MM-YYYY HH24:MI:SS'));
INSERT INTO MC_VISUALIZACAO (CD_VISUALIZACAO, CD_VIDEO, DT_HORA_VISUALIZACAO) VALUES (5, 5, TO_TIMESTAMP('22-04-2021 14:15:00', 'DD-MM-YYYY HH24:MI:SS'));
INSERT INTO MC_VISUALIZACAO (CD_VISUALIZACAO, CD_VIDEO, DT_HORA_VISUALIZACAO) VALUES (6, 6, TO_TIMESTAMP('11-02-2025 15:30:00', 'DD-MM-YYYY HH24:MI:SS'));

COMMIT;