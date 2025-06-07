-- Total de pedidos por loja
SELECT loja, COUNT(*) AS total_pedidos
FROM vendas
GROUP BY loja;

--- Faturamento total por loja
SELECT loja, SUM(preco) AS faturamento
FROM vendas
GROUP BY loja;

--- Ticket médio por loja
SELECT loja, ROUND(SUM(preco) * 1.0 / COUNT(*), 2) AS ticket_medio
FROM vendas
GROUP BY loja;

--- Preferência de pagamento
SELECT forma_pagamento, COUNT(*) AS total
FROM vendas
GROUP BY forma_pagamento;

--- Preferência de consumo
SELECT local_consumo, COUNT(*) AS total
FROM vendas
GROUP BY local_consumo;

