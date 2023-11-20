from flask import Flask, request, jsonify
import mysql.connector

app = Flask(__name__)

# Configurações do banco de dados
db = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="if0_35452623_thanos"
)
cursor = db.cursor()

# Rota index 
@app.route('/')
def index():
    return "API";

# Rota para criar um novo projeto
@app.route('/projetos', methods=['POST'])
def criar_projeto():
    data = request.get_json()
    projeto = data['projeto']
    link = data['link']

    sql = "INSERT INTO projetos (projeto, link) VALUES (%s, %s)"
    val = (projeto, link)

    cursor.execute(sql, val)
    db.commit()

    return jsonify({"message": "Projeto criado com sucesso!"})

# Rota para ler todos os projetos
@app.route('/projetos', methods=['GET'])
def ler_projetos():
    cursor.execute("SELECT * FROM projetos")
    resultados = cursor.fetchall()

    projetos = []
    for projeto in resultados:
        projeto_dict = {
            "id": projeto[0],
            "projeto": projeto[1],
            "link": projeto[2]
        }
        projetos.append(projeto_dict)

    return jsonify(projetos)

# Rota para atualizar um projeto pelo ID
@app.route('/projetos/<int:id>', methods=['PUT'])
def atualizar_projeto(id):
    data = request.get_json()
    projeto = data['projeto']
    link = data['link']

    sql = "UPDATE projetos SET projeto = %s, link = %s WHERE id = %s"
    val = (projeto, link, id)

    cursor.execute(sql, val)
    db.commit()

    return jsonify({"message": f"Projeto com id {id} atualizado com sucesso!"})

# Rota para deletar um projeto pelo ID
@app.route('/projetos/<int:id>', methods=['DELETE'])
def deletar_projeto(id):
    sql = "DELETE FROM projetos WHERE id = %s"
    val = (id,)

    cursor.execute(sql, val)
    db.commit()

    return jsonify({"message": f"Projeto com id {id} deletado com sucesso!"})

if __name__ == '__main__':
    app.run(debug=True)
