import pyodbc

try:
    conexao = pyodbc.connect(
        'DRIVER={ODBC Driver 18 for SQL Server};'
        r'SERVER=TÁRSYLLA\SQLEXPRESS;'
        'DATABASE=master;'
        'Trusted_Connection=yes;'
        'TrustServerCertificate=yes;'
    )
    print("✅ Conectado com sucesso ao SQL Server!")
    conexao.close()
except Exception as e:
    print("❌ Erro ao conectar:", e)