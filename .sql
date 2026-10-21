CREATE TABLE contas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titular VARCHAR(100),
    saldo DECIMAL(10,2)
);

INSERT INTO contas (titular, saldo)
VALUES
('Rebecca', 1500.00),
('Júlio', 800.00);

SELECT * FROM contas;

START TRANSACTION;

UPDATE contas
SET saldo = saldo - 300.00
WHERE titular = 'Rebecca';

UPDATE contas
SET saldo = saldo + 300.00
WHERE titular = 'Júlio';

SELECT * FROM contas;

COMMIT;

SELECT * FROM contas;

START TRANSACTION;

UPDATE contas
SET saldo = saldo - 200.00
WHERE titular = 'Júlio';

UPDATE contas
SET saldo = saldo + 200.00
WHERE titular = 'Rebecca';

SELECT * FROM contas;

ROLLBACK;

SELECT * FROM contas;
