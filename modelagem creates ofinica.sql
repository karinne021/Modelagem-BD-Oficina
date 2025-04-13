
CREATE DATABASE oficina;
use oficina;

CREATE TABLE equipemecanico(
	idEquipe int auto_increment primary key,
    especialidade varchar(45) not null,
    observacao varchar(255)
);

create table mecanico(
	idMecanico int auto_increment primary key,
    nome varchar(255) not null,
    cpf varchar(11) not null,
    endereco varchar(255) not null,
    contato varchar(11) not null,
    especialidade varchar(45) not null,
    idEquipe int,
    constraint ck_unique_mecanico unique (cpf),
    constraint fk_mecanico_equipe foreign key (idEquipe) references equipemecanico (idEquipe)
);

create table cliente(
	idCliente int auto_increment primary key,
    nome varchar(255) not null,
    cpf varchar(11) not null,
    endereco varchar(255) not null,
    contato varchar(11) not null,   
    constraint ck_unique_cliente unique (cpf)
);

create table veiculo(
	idVeiculo int auto_increment primary key,
    modelo varchar(45) not null,
    fabricante varchar(45) not null,
    placa char(7) not null,
    km numeric,
    cor varchar(25),
    idCliente int,
    constraint ck_unique_placa unique (placa),
    constraint fk_veiculo_cliente foreign key (idCliente) references cliente (idCliente)
);

create table servico(
	idServico int auto_increment primary key,
    descricao varchar(45) not null,
    valor float not null,
    tempo time not null
);

create table peca(
	idPeca int auto_increment primary key,
    nome varchar(45) not null,
    valor float not null,
    quantidade int not null
);

create table tipomanutencao(
	idTipoManut int auto_increment primary key,
    tipo enum('Preventiva', 'Corretiva', 'Preditiva') not null,
    observacao varchar(255)
);

create table ordemservico(
	idOrdemServico int auto_increment primary key,
    dataemissao date not null,
    dataprevista date,
    valor float,
    status enum('Aberta', 'Em Análise', 'Aguardando Aprovação', 'Em execução', 'Reprovado', 'Finalizado') not null default 'Aberta',
    idTipoManut int,
    idEquipe int,
    idVeiculo int,
    idCliente int,
    constraint fk_os_tipomanut foreign key (idTipoManut) references tipomanutencao (idTipoManut),
    constraint fk_os_equipe foreign key (idEquipe) references equipemecanico (idEquipe),
    constraint fk_os_veiculo foreign key (idVeiculo) references veiculo (idVeiculo),
    constraint fk_os_cliente foreign key (idCliente) references veiculo (idCliente)
);


create table servicorealizar(
idOrdemServico int,
idEquipe int,
idServico int,
autorizacao enum('Aguardando', 'Autorizado', 'Não Autorizado') not null,
observacao varchar(255),
quantidade int not null,
primary key (idOrdemServico, idEquipe, idServico),
constraint fk_servicorealizar_os foreign key (idOrdemServico) references ordemservico (idOrdemServico),
constraint fk_servicorealizar_equipe foreign key (idEquipe) references ordemservico (idEquipe),
constraint fk_servico_os foreign key (idServico) references servico (idServico)
);

create table pecaservico(
	idPeca int,
    idOrdemServico int,
    idServico int,
    quantidade float not null,
    primary key (idPeca, idOrdemServico, idServico),
    constraint fk_pecaservico_peca foreign key (idPeca) references peca (idPeca),
    constraint fk_pecaservico_os foreign key (idOrdemServico) references servicorealizar (idOrdemServico),
    constraint fk_pecaservico_servico foreign key (idServico) references servicorealizar (idServico)
);

show tables;












