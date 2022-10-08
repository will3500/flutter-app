class viagens {
  String? id;
  String? idCooperado;
  String? idVeiculo;
  String? dataMarcacao;
  String? horaMarcacao;
  String? escolha;
  String? dataEscolha;
  String? horaEscolha;
  String? estadoOrigem;
  String? cidadeOrigem;
  String? estadoDestino;
  String? cidadeDestino;
  String? distancia;
  String? obs;
  String? dataRetorno;
  String? perdeVez;
  String? nome;
  String? descricao;
  String? tipo;
  String? placa;
  String? marca;
  String? modelo;
  String? avatar;
  
  bool? isExpanded;


void setExpanded(){
    if(isExpanded==false){
       isExpanded =true;
    }else{
       isExpanded =false;
    }
   
  }
  
  viagens(
      {this.id,
      this.idCooperado,
      this.idVeiculo,
      this.dataMarcacao,
      this.horaMarcacao,
      this.escolha,
      this.dataEscolha,
      this.horaEscolha,
      this.estadoOrigem,
      this.cidadeOrigem,
      this.estadoDestino,
      this.cidadeDestino,
      this.distancia,
      this.obs,
      this.dataRetorno,
      this.perdeVez,
      this.nome,
      this.descricao,
      this.tipo,
      this.placa,
      this.marca,
      this.modelo,
      this.avatar});

  viagens.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idCooperado = json['id_cooperado'];
    idVeiculo = json['id_veiculo'];
    dataMarcacao = json['data_marcacao'];
    horaMarcacao = json['hora_marcacao'];
    escolha = json['escolha'];
    dataEscolha = json['data_escolha'];
    horaEscolha = json['hora_escolha'];
    estadoOrigem = json['estado_origem'];
    cidadeOrigem = json['cidade_origem'];
    estadoDestino = json['estado_destino'];
    cidadeDestino = json['cidade_destino'];
    distancia = json['distancia'];
    obs = json['obs'];
    dataRetorno = json['data_retorno'];
    perdeVez = json['perde_vez'];
    nome = json['nome'];
    descricao = json['descricao'];
    tipo = json['tipo'];
    placa = json['placa'];
    marca = json['marca'];
    modelo = json['modelo'];
    avatar = json['avatar'];
  }
}