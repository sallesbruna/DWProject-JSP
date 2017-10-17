$(document).ready(function() {

  $('#cpf').mask('000.000.000-00', {placeholder: "___.___.___-__"});
  $('#telefone').mask('(00) 0000-0000', {placeholder: "(__) ____-____"});
  $('#celular').mask('(00) 0000-00000', {placeholder: "(__) ____-_____"});
  $('#credit-card').mask('0000 0000 0000 0000', {placeholder: "____ ____ ____ ____"});
  $('#cep').mask('0000 0000 0000 0000', {placeholder: "____ ____ ____ ____"});


  window.validar = function() {
    var msgs = [];
    var celular = document.getElementById("celular");
    var cep = document.getElementById("cep");
    var nome = document.getElementById("nome-completo");
    var bairro = document.getElementById("bairro");
    var cpf = document.getElementById("cpf");
    var telefone = document.getElementById("telefone");
    var cartao = document.getElementById("credit-card");
    var endereco = document.getElementById("endereco");
    var bandeira = document.getElementById("bandeira");
    var estados = document.getElementById("estados");
    var sexo = [document.getElementById("sexo-homem").checked, document.getElementById("sexo-mulher").checked,document.getElementById("sexo-outro").checked];
    var cidade = document.getElementById("cidade");

    if (celular.value == "") {
      msgs.push('Preencha o campo com o celular');
    }

    if (nome.value==""){
      msgs.push('Preencha o campo com o nome');
    }

    if (cep.value==""){
      msgs.push('Preencha o campo com o CEP');
    }

    if (cidade.value==""){
      msgs.push('Preencha o campo com a cidade');
    }

    if (bairro.value==""){
      msgs.push('Preencha o campo com o bairro');
    }

    if (cpf.value==""){
      msgs.push('Preencha o campo com o CPF');
    }

    if (telefone.value==""){
      msgs.push('Preencha o campo com o telefone');
    }

    if (cartao.value==""){
      msgs.push('Preencha o campo com o cartão de crédito');
    }

    if (endereco.value==""){
      msgs.push('Preencha o campo com o endereço');
    }

    if (bandeira.val== ""){
      msgs.push('Preencha o campo com a bandeira do cartão');
    }

    if (estados.val==""){
      msgs.push('Preencha o campo com o Estado');
    }

    if ((sexo[1] != true) && (sexo[2]!=true) && (sexo[3]!= true)){
        msgs.push('Preencha o campo com o sexo');
      }


    alert(msgs.join("\n"));
  };

});
