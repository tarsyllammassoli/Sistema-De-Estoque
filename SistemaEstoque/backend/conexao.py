import pyodbc

conexao = pyodbc.connect(
    "DRIVER={ODBC Driver 17 for SQL Server};"
    "SERVER=DESKTOP-30FVUL3\\SQLEXPRESS;"
    "DATABASE=Sistema_Estoque;"
    "Trusted_Connection=yes;"
)

print("Conectado com sucesso!")

cursor = conexao.cursor()

cursor.execute("SELECT * FROM Produtos")

for produto in cursor:
    print(produto)

conexao.close()