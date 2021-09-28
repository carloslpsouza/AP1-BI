# AP1-BI
Entrega de trabalho AP1 - Técnica de inteligência de negócios - O projeto consiste na elaboração dos requisitos, estrutura e montagem de um sistema BI para uma empresa fictícia

# Minimundo
A Loca Bike é uma empresa de locação de bicicletas onde o cliente pode em qualquer filial locar sua bicicleta por um tempo determinado, de acordo com o tipo de necessidade do cliente. As filiais dispõem de três tipos de bicicletas, são elas:

  -  Passeio - Bicicletas 18 marchas para uso geral.
  -  Carga - Bicicletas marcha simples com bagageiro para transporte.
  -  Dupla - Bicicletas para passeios de dois passageiros ao mesmo tempo.

Atualmente a empresa possui 10 filiais no Rio de Janeiro, 50 funcionários e planos para expansão.
Para o desenvolvimento do sistema os stakeholders da empresa desejam persistir informações de locação como: data e hora da locação, tempo de locação, desconto, tipo da bicicleta, filial onde foi feita a locação, deve tambem persistir, nome, endereço, telefone, CPF e email dos clientes e funcionários, deve persistir a quantidade e os tipos de bicicletas estocadas em cada filial. A empresa atende somente a clientes do tipo pessoa fisica, portanto, não há necessidade de registrar o CNPJ dos clientes.

# DER
![image](https://user-images.githubusercontent.com/55721262/135178984-b7233ead-8042-4bfa-a4af-4191c03d42eb.png)

# Modelo Lógico - Traansacional
PESSOA(cod_pessoa, nome, CPF, email).

FILIAL(cod_filial, CNPJ, nome).

CLIENTE(cod_cli, (cod_pessoa)).

FUNCIONARIO(cod_func,  (cod_pessoa), (cod_filial)).

BICICLETA(cod_bicicleta, vl_hora, marca, modelo, tipo).

ALUGA(cod_locação, dt_locação, hora_locacao, tempo_locação, desconto, (cod_cli), (cod_func), (cod_bicicleta)).

BICICLETA_FILIAL((cod_bicicleta), (cod_filial), qtde_bicicletas).

ENDERECO_PESSOA(cod_endereco, tipo_log, logradouro, numero, complemento, bairro, UF, CEP, (cod_pessoa)).

TELEFONE_PESSOA(cod_tel, DDD, telefone, (cod_pessoa)).

ENDERECO_FILIAL(cod_endereco, tipo_log, logradouro, numero, complemento, bairro, UF, CEP, (cod_filial)).

TELEFONE_FILIAL(cod_tel, DDD, telefone, (cod_filial)).
