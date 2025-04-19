-- Inserindo dados na tabela MC_CLIENTE
    -- Resultado esperado: 1 row inserted.
INSERT INTO MC_CLIENTE (
  NM_CLIENTE,
  NM_LOGIN,
  DS_SENHA
) VALUES (
  'charles darwin',
  'EvolutionTheory@NaturalSelection.com',
  'Surv1v41_0f_th3_f1tt35t'
);

    -- Resultado esperado: 1 row inserted.
INSERT INTO MC_CLIENTE (
  NM_CLIENTE,
  NM_LOGIN,
  DS_SENHA
) VALUES (
  'Stephen Hawking',
  's.hawking@BriefHistoryOfTime.com',
  'Th30ry_0f_Ev3ryth1ng!'
);

-- Tentando inserir ALfred Wallace com login existente
    /*
    Resultado esperado: unique constraint (SQL_G9F063EVQMIWS4XBV5JHRLT98V.UK_MC_CLIENTE_MM_LOGIN) violated on table SQL_G9F063EVQMIWS4XBV5JHRLT98V.MC_CLIENTE columns (NM_LOGIN)
    ORA-03301: (ORA-00001 details) row with column values (NM_LOGIN:'EvolutionTheory@NaturalSelection.com') already exists
    */
    -- Não foi possível por conta da unique constraint UK_MC_CLIENTE_MM_LOGIN que garante que não seja registrado o mesmo login, já que Darwin criou primeiro.
INSERT INTO MC_CLIENTE (
    NM_CLIENTE,
    NM_LOGIN,
    DS_SENHA
) VALUES (
    'Alfred Russel Wallace',
    'EvolutionTheory@NaturalSelection.com',
    'Surv1v41_0f_th3_f1tt35t'
); 

-- Popular dados item a: insirindo dados na tabela MC_CLI_FISICA
    -- Resultado esperado: 1 row inserted.
INSERT INTO MC_CLI_FISICA (
  NR_CLIENTE,
  DT_NASCIMENTO,
  FL_SEXO_BIOLOGICO,
  NR_CPF
) VALUES (
  2,
  TO_DATE('08/01/1942', 'DD/MM/YYYY'),
  'H',
  '12345678901'
);

-- Popular dados item b: inserindo dados na tabela MC_CLI_JURIDICA
    -- Resultado esperado: 1 row inserted.
INSERT INTO MC_CLI_JURIDICA (
    NR_CLIENTE,
    DT_FUNDACAO,
    NR_CNPJ,
    NR_INSCR_EST
) VALUES (
    1,
    TO_DATE('12/02/2000', 'DD/MM/YYYY'),
    '00.180.209/0001-01',
    '987.654.321.000'
);

-- inserindo dados na tabela MC_END_CLI 
    -- Resultado esperado: 1 row inserted.
INSERT INTO MC_END_CLI (
    NR_CLIENTE,
    CD_LOGRADOURO_CLI,
    NR_END,
    DT_INICIO,
    ST_END
) VALUES (
    1,
    1,
    123,
    TO_DATE('10/04/2000', 'DD/MM/YYYY'),
    'A'
);

    -- Resultado esperado: 1 row inserted.
INSERT INTO MC_END_CLI (
    NR_CLIENTE,
    CD_LOGRADOURO_CLI,
    NR_END,
    DT_INICIO,
    ST_END
) VALUES (
    2,
    2,
    123,
    TO_DATE('10/04/2002', 'DD/MM/YYYY'),
    'A'
);

-- Alterar dados item c: Promoção e aumento de saládo para Phoebe Buffay-Hannigan
    -- Resultado esperado: 1 row updated.
UPDATE MC_FUNCIONARIO
SET
    DS_CARGO = 'Atendente V',
    VL_SALARIO = VL_SALARIO * 1.12
WHERE
    NM_FUNCIONARIO = 'Phoebe Buffay-Hannigan';

-- Alterar dados item d: intivando endereço 
    -- Resultado esperado: 1 row updated.
UPDATE MC_END_CLI 
SET 
    ST_END = 'I',
    DT_TERMINO = TO_DATE('22/04/2025', 'DD/MM/YYYY')
WHERE
    NR_CLIENTE = '2';

-- Alterar dados item e: Tentando remover estado com cidade cadastrada
    -- Resultado esperado: integrity constraint (SQL_G9F063EVQMIWS4XBV5JHRLT98V.FK_MC_CIDADE_ESTADO) violated - child record found
    -- Não é possível por conta da restrição de integridade que impede de remover a chave primária sem antes remover a chave estrangeira
DELETE MC_ESTADO
WHERE SG_ESTADO = 'SP';


-- Alterar dados item f: Tentando alterar o status do produto para 'X'
    -- Resultado esperado: check constraint (SQL_G9F063EVQMIWS4XBV5JHRLT98V.MC_PRODUTO_CK_ST_PROD) violated
    -- Não é possível por conta da check constraint, que garante apenas os valores 'A', 'I' para o status do produto.
UPDATE MC_PRODUTO
SET 
    ST_PRODUTO = 'X'
WHERE
    CD_PRODUTO = '1';

-- Confirmando as alterações
    -- Resultado esperado: Commit complete.
COMMIT;