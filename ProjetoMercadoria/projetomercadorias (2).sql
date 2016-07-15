-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 15-Jul-2016 às 01:38
-- Versão do servidor: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projetomercadorias`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `itenspedido`
--

CREATE TABLE `itenspedido` (
  `IdNegociacao` int(11) NOT NULL,
  `IDMercadoria` int(11) NOT NULL,
  `QtMercadoria` decimal(30,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `itenspedido`
--

INSERT INTO `itenspedido` (`IdNegociacao`, `IDMercadoria`, `QtMercadoria`) VALUES
(1, 1, '2.0000'),
(2, 1, '2.0000'),
(3, 1, '1.0000'),
(4, 1, '2.0000'),
(5, 1, '11.0000'),
(5, 2, '1.0000'),
(6, 1, '12.0000'),
(6, 2, '1.0000'),
(7, 1, '12.0000'),
(7, 2, '1.0000'),
(8, 1, '12.0000'),
(8, 2, '1.0000'),
(9, 1, '12.0000'),
(9, 2, '1.0000'),
(10, 1, '12.0000'),
(10, 2, '1.0000'),
(11, 1, '12.0000'),
(11, 2, '1.0000'),
(12, 1, '12.0000'),
(12, 2, '2.0000'),
(12, 14, '1.0000'),
(13, 1, '12.0000'),
(13, 2, '2.0000'),
(13, 14, '1.0000'),
(13, 4, '1.0000'),
(14, 1, '12.0000'),
(14, 2, '2.0000'),
(14, 14, '1.0000'),
(14, 4, '2.0000'),
(15, 1, '12.0000'),
(15, 2, '2.0000'),
(15, 14, '3.0000'),
(15, 4, '2.0000'),
(16, 1, '12.0000'),
(16, 2, '2.0000'),
(16, 14, '4.0000'),
(16, 4, '2.0000'),
(17, 14, '1.0000'),
(17, 6, '1.0000'),
(17, 5, '3.0000'),
(22, 23, '1.0000'),
(23, 23, '1.0000'),
(24, 23, '1.0000'),
(25, 23, '1.0000'),
(26, 23, '1.0000'),
(27, 6, '1.0000'),
(29, 24, '1.0000'),
(29, 6, '1.0000');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mercadorias`
--

CREATE TABLE `mercadorias` (
  `IDMercadoria` int(11) NOT NULL,
  `TpMercadorias` varchar(45) NOT NULL,
  `DsMercadoria` varchar(45) NOT NULL,
  `PriceMercadoria` decimal(30,2) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `mercadorias`
--

INSERT INTO `mercadorias` (`IDMercadoria`, `TpMercadorias`, `DsMercadoria`, `PriceMercadoria`, `image`) VALUES
(1, 'BEBIDA', 'COCA COLA LATA', '3.00', 'img/coca1.jpg'),
(2, 'BEBIDA', 'COCA COLA LATA ZERO', '3.00', 'img/cocazero.jpg'),
(3, 'BEBIDA', 'COCA COLA 2L', '6.00', 'img/coca2l.png'),
(4, 'BEBIDA', 'PEPSI 2L', '6.00', 'img/pepsi2l.jpg'),
(5, 'ALIMENTO', 'ARROZ 5KG', '12.00', 'img/Arroz5kg.jpg'),
(6, 'ALIMENTO', 'FEIJAO 1KG', '20.00', 'img/feijao.png'),
(14, 'ELETRO-ELETRONICO', 'Iphone 5S', '3500.00', 'img/apple-iphone-5s-gold-gallery-img1-bp3-011215.jpg'),
(23, 'ELETRO-DOMESTICO', 'GELADEIRA BRASTEMP', '2000.00', 'img/BRS80_vitrine-310x283.png'),
(24, 'ELETRO-ELETRONICO', 'TELEVISÃƒO SONY 50 POLEGADAS', '4000.00', 'img/sony-60r55.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `negociacao`
--

CREATE TABLE `negociacao` (
  `IDNegociacao` int(11) NOT NULL,
  `DsNegociacao` varchar(45) NOT NULL,
  `VlNegociacao` decimal(30,2) NOT NULL,
  `Date` date NOT NULL,
  `IdUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `negociacao`
--

INSERT INTO `negociacao` (`IDNegociacao`, `DsNegociacao`, `VlNegociacao`, `Date`, `IdUser`) VALUES
(1, 'VENDA', '6.00', '2014-07-16', 1),
(2, 'VENDA', '6.00', '2014-07-16', 1),
(3, 'VENDA', '3.00', '2014-07-16', 1),
(4, 'COMPRA', '6.00', '2014-07-16', 1),
(5, 'COMPRA', '36.00', '2014-07-16', 1),
(6, 'COMPRA', '39.00', '2015-07-16', 1),
(7, 'COMPRA', '39.00', '2015-07-16', 1),
(8, 'COMPRA', '39.00', '2015-07-16', 1),
(9, 'COMPRA', '39.00', '2015-07-16', 1),
(10, 'COMPRA', '39.00', '2015-07-16', 1),
(11, 'COMPRA', '39.00', '2015-07-16', 1),
(12, 'COMPRA', '45.00', '2015-07-16', 1),
(13, 'COMPRA', '51.00', '2015-07-16', 1),
(14, 'COMPRA', '57.00', '2015-07-16', 1),
(15, 'COMPRA', '63.00', '2015-07-16', 1),
(16, 'COMPRA', '66.00', '2015-07-16', 1),
(17, 'COMPRA', '59.00', '2015-07-16', 1),
(21, 'VENDA', '2000.00', '2015-07-16', 1),
(22, 'COMPRA', '2.00', '2015-07-16', 1),
(23, 'COMPRA', '2.00', '2015-07-16', 1),
(24, 'COMPRA', '2.00', '2015-07-16', 1),
(25, 'COMPRA', '2.00', '2015-07-16', 1),
(26, 'COMPRA', '2.00', '2015-07-16', 1),
(27, 'COMPRA', '20.00', '2015-07-16', 1),
(28, 'VENDA', '4000.00', '2015-07-16', 1),
(29, 'COMPRA', '24.00', '2015-07-16', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mercadorias`
--
ALTER TABLE `mercadorias`
  ADD PRIMARY KEY (`IDMercadoria`),
  ADD UNIQUE KEY `IDMercadoria` (`IDMercadoria`),
  ADD KEY `IDMercadoria_2` (`IDMercadoria`);

--
-- Indexes for table `negociacao`
--
ALTER TABLE `negociacao`
  ADD PRIMARY KEY (`IDNegociacao`),
  ADD UNIQUE KEY `IDNegociacao` (`IDNegociacao`),
  ADD KEY `IDNegociacao_2` (`IDNegociacao`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mercadorias`
--
ALTER TABLE `mercadorias`
  MODIFY `IDMercadoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `negociacao`
--
ALTER TABLE `negociacao`
  MODIFY `IDNegociacao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
