<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Trabalho 01 - DW</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="manifest" href="site.webmanifest">
        <link rel="apple-touch-icon" href="icon.png">
        <link rel="stylesheet" href="/assets/css/normalize.css">
        <link rel="stylesheet" href="/assets/vendor/bootstrap/bootstrap.css"/>
        <link rel="stylesheet" href="/assets/css/main.css">
    </head>
    <body>

    <div class="container">
        <div class="row">
            <div class="col-md-6">

                <h1>Formulário Cliente</h1>

                <form>
                    <div class="form-group">
                        <label for="nome-completo">Nome Completo</label>
                        <input type="name" class="form-control" id="nome-completo" minlength="5" maxlength="40">
                    </div>

                    <div class="form-group">
                        <label for="nome-completo">Sexo</label>
                        <div class="form-check">
                            <label class="form-check-label">
                                <input type="radio" name="gender" value="male" id="sexo-homem">
                                Homem
                            </label>
                        </div>
                        <div class="form-check form-check-inline">
                            <label class="form-check-label">
                                <input type="radio" name="gender" value="female" id="sexo-mulher">
                                Mulher
                            </label>
                        </div>
                        <div class="form-check form-check-inline">
                            <label class="form-check-label">
                                <input type="radio" name="gender" value="other" id="sexo-outro">
                                Outro
                            </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="cpf">CPF</label>
                        <input type="name" class="form-control" id="cpf">
                    </div>

                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label for="telefone">Telefone fixo</label>
                                <input type="name" class="form-control" id="telefone">
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label for="celular">Celular</label>
                                <input type="name" class="form-control" id="celular">
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-8">
                            <div class="form-group">
                                <label for="credit-card">Cartão de Crédito</label>
                                <input type="text" class="form-control" id="credit-card">
                            </div>
                        </div>

                        <div class="col-sm-4">
                            <div class="form-group">
                                <label for="bandeira">Bandeira do cartão</label>
                                <select class="form-control" id="bandeira">
                                    <option value="">- selecionar -</option>
                                    <option>Visa</option>
                                    <option>Mastercard</option>
                                    <option>American Express</option>
                                    <option>Discover Network</option>
                                </select>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="endereco">Endereço</label>
                        <input type="text" class="form-control" id="endereco" maxlength="30" >
                    </div>

                    <div class="form-group">
                        <label for="estados">Estado (UF)</label>
                        <select id="estados" class="form-control">
                            <option value="">- selecionar -</option>
                            <option >AC</option>
                            <option >AL</option>
                            <option >AM</option>
                            <option >AP</option>
                            <option >BA</option>
                            <option >CE</option>
                            <option >DF</option>
                            <option >ES</option>
                            <option >GO</option>
                            <option >MA</option>
                            <option >MG</option>
                            <option >MS</option>
                            <option >MT</option>
                            <option >PA</option>
                            <option >PB</option>
                            <option >PE</option>
                            <option >PI</option>
                            <option >PR</option>
                            <option >RJ</option>
                            <option >RN</option>
                            <option >RO</option>
                            <option >RR</option>
                            <option >RS</option>
                            <option >SC</option>
                            <option >SE</option>
                            <option >SP</option>
                            <option >TO</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="cep">CEP</label>
                        <input type="text" name="cep" class="form-control" id="cep">
                    </div>

                    <div class="form-group">
                        <label for="cidade">Cidade</label>
                        <input type="text" name="cidade" class="form-control" id="cidade" maxlength="40">
                    </div>

                    <div class="form-group">
                        <label for="bairro">Bairro</label>
                        <input type="text" name="bairro" class="form-control" id="bairro" maxlength="40">
                    </div>

                    <div class="form-group">
                        <label for="ref">Referência</label>
                        <textarea class="form-control" id="ref" rows="3" maxlength="100"></textarea>
                    </div>
                    <input class="btn btn-primary" type="submit" value="Enviar" onclick="validar()">
                </form>



                <!-------------------------  SEGUNDO FORMULÁRIO  ------------------ -->
                <!--
                  <div id="formulario-peca">
                  <h1>Formulário Peça</h1>
                  <div class="container">
                    <div class="row">
                      <div class="col-sm-6">


                        <div class="form-group">
                          <label for="peca"> Nome da Peça</label>
                          <input type="text" name="peca" class="form-control" id="peca">
                        </div>

                        <div class="form-group">
                          <label for="categoria">Categoria</label>
                          <div class="form-check">
                            <label class="form-check-label">
                              <input type="radio" id="categoria"  value="p1" checked>
                              Produto 01
                            </label>
                          </div>
                          <div class="form-check form-check-inline">
                            <label class="form-check-label">
                              <input type="radio" name="categoria" value="p2" >
                              Produto 02
                            </label>
                          </div>
                        </div>



                        <div class="form-group">
                          <label for="valor-unitario">Valor Unitário</label>
                          <input type="text" name="cidade" class="form-control" id="valor-unitario">
                        </div>

                        <div class="form-group">
                          <label for="unidade"> Unidade (kg, litro...)</label>
                          <select id="unidade" class="form-control">
                            <option value="kg">kg</option>
                            <option value="l">l</option>
                            <option value="hg">hg</option>
                            <option value="g">g</option>
                            <option value="mg">mg</option>
                            <option value="dg">dg</option>
                            <option value="cg">cg</option>
                            <option valoue ="t">t</option>
                          </select>
                        </div>

                        <div class="form-group">
                          <label for="quantidade"> Quantidade</label>
                          <select id="quantidade" class="form-control">
                            <option >1</option>
                            <option >2</option>
                            <option >3</option>
                            <option >4</option>
                            <option >5</option>
                            <option >6</option>
                            <option >7</option>
                            <option >8</option>
                          </select>
                        </div>
                      </div>
                    </div>
                  </div>
                  <input class="btn btn-primary" type="submit" value="Submit">
                </div>
                -->


            </div>
        </div>
    </div>

    <script src="/assets/js/vendor/modernizr-3.5.0.min.js"></script>
    <script src="/assets/vendor/jquery-3.2.1.js"></script>
    <script src="/assets/vendor/jquery-mask-plugin/jquery.mask.js"></script>
    <script src="/assets/vendor/bootstrap/bootstrap.js"></script>
    <script src="/assets/js/plugins.js"></script>
    <script src="/assets/js/main.js"></script>



    </body>
    </html>




</html>