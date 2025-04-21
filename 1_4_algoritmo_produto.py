#%%
# Import libs
import json
#%%
#Função para cadastrar produtos
def cadastrar_novo_produto():
    # Descrição do produto
    desc_produto = str(input("descrição do produto: "))
    # Valor do produto
    try:
        valor_produto = float(input("valor do produto: "))
        # Garante que o valor é um número
    except ValueError:
        print('Valor inválido. Digite o valor do produto novamente.')
        valor_produto = float(input("valor do produto: "))
        # Garante que o valor é positivo
    if valor_produto <= 0:
        print('Valor inválido. Digite o valor do produto novamente.')
        valor_produto = float(input("valor do produto: "))
    # Tipo do produto
    tipo_produto = str(input("tipo do produto: "))
    # Valor do ISMS do produto
    valor_ISMS = lambda valor : valor * 0.18
    # Adiciona o produto ao dicionário
    Produtos[desc_produto] = {'valor': f'{valor_produto:.2f}', 'tipo': tipo_produto, 'valor ISMS': f'{valor_ISMS(valor_produto):.2f}'}
    print(f'quantidade de produtos cadastrados: {len(Produtos)}')
    # Se for menos do que 6
    if len(Produtos) < 5:
        print(f'É preico cadastrar pelo menos mais {5 - len(Produtos)}')

#%%
# Cadastando uma lista de produtos
Produtos = {}

while len(Produtos) <= 4:
    cadastrar_novo_produto()
if len(Produtos) > 4:
    resposta = str(input('Deseja cadastrar mais produtos? (sim ou não): '))
    resposta = resposta.lower() #garante que a resposta seja em letras minúsculas
    while resposta not in ['sim', 'não']: # garante que a resposta seja sim ou não
        print('Resposta inválida. Digite sim ou não.')
        resposta = str(input('Deseja cadastrar mais produtos? (sim ou não): '))
    while resposta == 'sim': # loop "sim"
        cadastrar_novo_produto()
        resposta = str(input('Deseja cadastrar mais produtos? (sim ou não): '))
    else: # fluxo "não"
        print('Cadastro encerrado')
    
#%%
# Arquivo JSON
PRODUTOS_JSON = json.dumps(Produtos, indent=4, ensure_ascii=False) # converte o DICT para JSON
NOME_ARQUIVO = '1_5_arquivo_produto.json'

# Escreve o arquivo JSON
try:
    with open(f'{NOME_ARQUIVO}', 'w', encoding='utf-8') as arquivo_json:
        arquivo_json.write(PRODUTOS_JSON)
    print(f"Dados salvos com sucesso no arquivo: {NOME_ARQUIVO}")
except Exception as e:
        print(f"Ocorreu um erro ao salvar para JSON: {e}")