CREATE DATABASE dbemilly_melo;
USE dbemilly_melo;


CREATE TABLE usuarios_emilly (
    iduser INT PRIMARY KEY AUTO_INCREMENT,
    usuario VARCHAR(50) NOT NULL,
    fone VARCHAR(15),
    login VARCHAR(15) NOT NULL UNIQUE,
    senha VARCHAR(15) NOT NULL
);

INSERT INTO usuarios_emilly (usuario, fone, login, senha)
VALUES ('Emilly Melo', '31999999999', 'emilly_admin', '12345');


CREATE TABLE clientes_emilly (
    idcli INT PRIMARY KEY AUTO_INCREMENT,
    nomecli VARCHAR(50) NOT NULL,
    endcli VARCHAR(100),
    fonecli VARCHAR(15) NOT NULL,
    emailcli VARCHAR(50)
);


INSERT INTO clientes_emilly (nomecli, endcli, fonecli, emailcli)
VALUES 
('João Silva', 'Rua das Flores, 123', '31988888888', 'joao@gmail.com'),
('Maria Souza', 'Av. Central, 45', '31977777777', 'maria@hotmail.com');


CREATE TABLE ordem_servico_emilly (
    os INT PRIMARY KEY AUTO_INCREMENT,
    data_os TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    equipamento VARCHAR(150) NOT NULL,
    defeito VARCHAR(150) NOT NULL,
    servico VARCHAR(150),
    tecnico VARCHAR(30),
    valor DECIMAL(10,2),
    idcli INT NOT NULL,
    FOREIGN KEY (idcli) REFERENCES clientes_emilly(idcli)
);


INSERT INTO ordem_servico_emilly (equipamento, defeito, servico, tecnico, valor, idcli)
VALUES ('Notebook Dell', 'Não liga', 'Troca de fonte', 'Carlos Técnico', 250.00, 1);

