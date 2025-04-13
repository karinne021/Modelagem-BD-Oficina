select * from cliente c
inner join veiculo v on c.idCliente = v.idCliente;

select * from equipemecanico em
inner join mecanico m on em.idEquipe = m.idEquipe;

select * from Mecanico

-- relatório de OS
select 
	os.idOrdemServico, 
    os.dataemissao, 
    os.dataprevista, 
    os.valor, 
    os.status, 
    c.nome as Cliente, 
    tm.tipo, 
    m.Nome as Mecanico, 
    v.modelo, 
    v.fabricante, 
    v.placa, 
    v.km, 
    v.cor
from ordemservico os
inner join cliente c on os.idCliente = c.idCliente
inner join tipomanutencao tm on os.idTipoManut = tm.idTipoManut
inner join equipemecanico e on e.idEquipe = os.idEquipe
inner join mecanico m on e.idEquipe = m.idEquipe
inner join veiculo v on v.idVeiculo = os.idVeiculo;


-- relatório dos serviços
select 
	os.idOrdemServico,
    os.dataemissao, 
    os.dataprevista, 
    os.valor, 
    os.status, 
    tm.tipo,
    s.descricao,
    s.tempo,
    ps.quantidade as "Quantidade Peça",
    p.nome as "Peça"
from ordemservico os
inner join tipomanutencao tm on tm.idTipoManut = os.idTipoManut
inner join servicorealizar sr on sr.idOrdemServico = os.idOrdemServico
inner join servico s on s.idServico = sr.idServico
inner join pecaservico ps on ps.idOrdemServico = os.idOrdemServico
inner join peca p on p.idPeca = ps.idPeca 



