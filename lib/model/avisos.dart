class avisos {
  String? id;
  String? dataCadastro;
  String? dataPublicacao;
  String? titulo;
  String? mensagem;
  String? usuario;

  avisos(
      {this.id,
      this.dataCadastro,
      this.dataPublicacao,
      this.titulo,
      this.mensagem,
      this.usuario});

  avisos.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    dataCadastro = json['data_cadastro'];
    dataPublicacao = json['data_publicacao'];
    titulo = json['titulo'];
    mensagem = json['mensagem'];
    usuario = json['usuario'];
  }

}