class vez {
  String? id;
  String? dataMarcacao;
  String? horaMarcacao;
  String? idUnidade;
  String? obs;
  String? cooperado;
  String? avatar;
  String? veiculo;
  String? engatado;
  String? tipoVeiculo;
  String? unidade;
  String? estados;
  String? chegada;
  bool? isExpanded;


  void setExpanded(){
    if(isExpanded==false){
       isExpanded =true;
    }else{
       isExpanded =false;
    }
   
  }

  vez(
      {this.id,
      this.dataMarcacao,
      this.horaMarcacao,
      this.idUnidade,
      this.obs,
      this.cooperado,
      this.avatar,
      this.veiculo,
      this.engatado,
      this.tipoVeiculo,
      this.unidade,
      this.estados,
      this.chegada,
      });

  vez.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    dataMarcacao = json['data_marcacao'];
    horaMarcacao = json['hora_marcacao'];
    idUnidade = json['id_unidade'];
    obs = json['obs'];
    cooperado = json['cooperado'];
    avatar = json['avatar'];
    veiculo = json['veiculo'];
    engatado = json['Engatado'];
    tipoVeiculo = json['tipo_veiculo'];
    unidade = json['unidade'];
    estados = json['estados'];
    chegada = json['chegada'];
    isExpanded = false;
  }
}