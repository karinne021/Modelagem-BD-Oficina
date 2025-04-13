INSERT INTO equipemecanico (especialidade, observacao) VALUES
('Motor', 'Equipe especializada em manutenção de motores'),
('Freios', 'Equipe focada em sistemas de frenagem'),
('Suspensão', 'Especialistas em suspensão e alinhamento');



INSERT INTO mecanico (nome, cpf, endereco, contato, especialidade, idEquipe) VALUES
('João Silva', '12345678901', 'Rua A, 123', '11999999999', 'Motor', 1),
('Carlos Souza', '23456789012', 'Rua B, 456', '11888888888', 'Freios', 2),
('Ana Lima', '34567890123', 'Rua C, 789', '11777777777', 'Suspensão', 3);



INSERT INTO cliente (nome, cpf, endereco, contato) VALUES
('Marcos Paulo', '45678901234', 'Av. Brasil, 1000', '11666666666'),
('Luciana Alves', '56789012345', 'Rua das Flores, 200', '11555555555');


INSERT INTO veiculo (modelo, fabricante, placa, km, cor, idCliente) VALUES
('Onix', 'Chevrolet', 'ABC1234', 45000, 'Preto', 1),
('HB20', 'Hyundai', 'XYZ5678', 32000, 'Branco', 2);


INSERT INTO servico (descricao, valor, tempo) VALUES
('Troca de óleo', 150.00, '00:30:00'),
('Alinhamento', 100.00, '01:00:00'),
('Revisão completa', 500.00, '03:00:00');


INSERT INTO peca (nome, valor, quantidade) VALUES
('Filtro de óleo', 30.00, 50),
('Pastilha de freio', 120.00, 40),
('Amortecedor', 200.00, 20);


INSERT INTO tipomanutencao (tipo, observacao) VALUES
('Preventiva', 'Manutenção agendada'),
('Corretiva', 'Manutenção após falha');


INSERT INTO ordemservico (dataemissao, dataprevista, valor, status, idTipoManut, idEquipe, idVeiculo, idCliente) VALUES
('2025-04-01', '2025-04-05', 150.00, 'Aberta', 1, 1, 1, 1),
('2025-04-02', '2025-04-06', 600.00, 'Em execução', 2, 2, 2, 2);


INSERT INTO servicorealizar (idOrdemServico, idEquipe, idServico, autorizacao, observacao, quantidade) VALUES
(1, 1, 1, 'Autorizado', 'Cliente aprovou a troca de óleo.', 1),
(2, 2, 2, 'Aguardando', 'Aguardando confirmação da cliente.', 1);



INSERT INTO pecaservico (idPeca, idOrdemServico, idServico, quantidade) VALUES
(1, 1, 1, 1),
(2, 2, 2, 1);











