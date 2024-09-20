--Exemplos de subconsultas:

--Unindo tabelas com UNION ALL
--Objetivo: enviar um brinde para cada pessoa fornecedora e colaboradora de forma surpresa, enviando para o endereço.
--Ponto de Atenção: dois dos colaboradores residem no mesmo lugar.

SELECT nome, rua, bairro, cidade, estado, cep from colaboradores
UNION ALL
SELECT nome, rua, bairro, cidade, estado, cep from fornecedores;

SELECT * from colaboradores WHERE rua = 'Rua das flores - 210';


--Identificando qual foi o primeiro cliente que fez um pedido no ano de 2023:

SELECT nome, telefone 
from clientes 
WHERE id = (
  SELECT id_cliente 
  from pedidos 
  where data_hora = '2023-01-02 08:15:00');


--Retornar todos os pedidos com os nomes dos clientes realizados em um determinao mês (Janeiro) utilizando o comando IN:

SELECT nome 
from clientes 
WHERE id IN (
  SELECT id_cliente 
  FROM pedidos 
  WHERE STRFTIME('%m', data_hora) = '01');





