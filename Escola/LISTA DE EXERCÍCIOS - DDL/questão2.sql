CREATE DATABASE concecionaria;

use concecionaria;

CREATE table marca(
codMarca int primary KEY,
nomeMarca VARCHAR(50)
);

CREATE table modelo(
nomeModelo VARCHAR(50),
codModelo int PRIMARY KEY,
codMarca INT,
FOREIGN KEY (codMarca) REFERENCES marca(codMarca)
);

CREATE table veiculo(
    placa char(8),
    chassi char(17) PRIMARY KEY,
    cor VARCHAR(30),
    anoFabricacao SMALLINT,
    quilometragem int,
    codModelo int,
    FOREIGN KEY (codModelo) REFERENCES modelo(codModelo)
);