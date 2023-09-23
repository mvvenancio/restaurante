USE `restaurante`

-- Inserir alguns clientes
INSERT INTO clientes (nome, telefone, email)
VALUES
  ('João Silva', '(11) 9999-8888', 'joao.silva@gmail.com'),
  ('Maria Santos', '(11) 9876-5432', 'maria.santos@hotmail.com'),
  ('Pedro Albuquerque', '(11) 91234-5678', 'pedro.albuquerque@yahoo.com'),
   ('José Silva', '(11) 9999-1111', 'jose.silva@gmail.com'),
  ('Maria Antônia', '(11) 9876-2345', 'maria.antonia@hotmail.com'),
  ('Pedro Malaquias', '(11) 94321-5678', 'pedro.malaquias@yahoo.com');

-- Inserir algumas mesas
INSERT INTO mesas (capacidade, disponibilidade)
VALUES
  (2, true),
  (4, true),
  (6, true),
  (1, true),
  (3, true),
  (5, true),
  (8, true);

-- Inserir alguns itens do menu
INSERT INTO itens_menu (nome, descricao, preco)
VALUES
  ('Hambúrguer', 'Pão, carne, queijo, alface, tomate e molho especial', 20.00),
  ('Pizza', 'Molho de tomate, mussarela, presunto, champignon e azeitona', 35.00),
  ('Salmão grelhado', 'Salmão grelhado com legumes e arroz', 50.00),
  ('XSalada', 'Pão, carne, queijo, alface, tomate', 25.00),
  ('Peixe Frito', 'Peixe, arroz, sala, champignon e azeitona', 70.00),
  ('Salada', 'Salada com legumes e arroz', 100.00);

-- Inserir um pedido de cliente
INSERT INTO pedidos (id_cliente, id_mesa, data_pedido, status_pedido)
VALUES
  (1, 5, NOW(), 'Em andamento'),
  (6, 4, NOW(), 'Em andamento'),
  (2, 3, NOW(), 'Conlcluido');

-- Inserir itens do menu em um pedido
INSERT INTO pedidos_itens_menu (id_pedido, id_item, quantidade, preco_unitario)
VALUES
  (1, 1, 2, 20.00),
  (1, 3, 1, 50.00),
  (1, 1, 4, 100.00),
  (1, 5, 1, 80.00),
  (3, 1, 2, 70.00),
  (6, 3, 1, 50.00);