import os
import pandas as pd

# Configurações
pasta = 'datasets/saeb/DADOS'  # Substitua pelo caminho real
coluna_alvo = 'ID_UF'
valor_alvo = 43

total_linhas_filtradas = 0

def carregar_csv_com_fallback(caminho_arquivo):
    """Tenta carregar o CSV com diferentes delimitadores."""
    for sep in [',', ';', '\t']:
        try:
            return pd.read_csv(caminho_arquivo, sep=sep)
        except Exception:
            continue
    return None

for arquivo in os.listdir(pasta):
    if arquivo.endswith('.csv'):
        caminho_arquivo = os.path.join(pasta, arquivo)
        df = carregar_csv_com_fallback(caminho_arquivo)

        if df is None:
            print(f'Erro ao processar {arquivo}: erro ao ler o arquivo com qualquer separador')
            continue

        if coluna_alvo not in df.columns:
            print(f'{arquivo}: coluna "{coluna_alvo}" não encontrada')
            continue

        linhas_filtradas = df[df[coluna_alvo] == valor_alvo]
        count = len(linhas_filtradas)
        print(f'{arquivo}: {count} linhas encontradas')
        total_linhas_filtradas += count

print(f'\nTotal de linhas com {coluna_alvo} == {valor_alvo}: {total_linhas_filtradas}')
