-- Crie a função
DELIMITER //

CREATE FUNCTION SomarClientesCadastradosPorDia(data_consulta DATE)
RETURNS INT
BEGIN
    DECLARE total_clientes INT;
    
    -- Soma o número de clientes cadastrados para a data especificada
    SELECT COUNT(*) INTO total_clientes
    FROM Clientes
    WHERE DATE(DataCadastro) = data_consulta;
    
    RETURN total_clientes;
END //

DELIMITER ;

SELECT SomarClientesCadastradosPorDia('2024-03-25') AS TotalClientes;
