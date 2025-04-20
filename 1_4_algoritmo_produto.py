#%%
import json
#%%
#Função para cadastrar produtos
Produtos = {}

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
    Produtos[desc_produto] = {'valor': valor_produto, 'tipo': tipo_produto, 'valor ISMS': valor_ISMS(valor_produto)}
    print(f'quantidade de produtos cadastrados: {len(Produtos)}')
    # Se for menos do que 6
    if len(Produtos) < 5:
        print(f'É preico cadastrar pelo menos mais {5 - len(Produtos)}')

#%% Cadastando uma lista de produtos
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
try:
        with open(nome_arquivo, 'w', encoding='utf-8') as arquivo_json:
            json.dump(lista_produtos, arquivo_json, ensure_ascii=False, indent=4)
        print(f"Dados salvos com sucesso no arquivo: {nome_arquivo}")
except Exception as e:
        print(f"Ocorreu um erro ao salvar para JSON: {e}")
#%%
Produtos_json = json.dumps(Produtos, indent=4)

with open('1_5_arquivo_produto.json', 'w') as f:
    f.write(Produtos_json)
print('Arquivo salvo')
# %%
