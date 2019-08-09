-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 01-Maio-2019 às 21:35
-- Versão do servidor: 5.7.23
-- versão do PHP: 7.0.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `celke`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `carrinhos`
--

DROP TABLE IF EXISTS `carrinhos`;
CREATE TABLE IF NOT EXISTS `carrinhos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `carrinhos`
--

INSERT INTO `carrinhos` (`id`, `usuario_id`, `created`, `modified`) VALUES
(1, 1, '2019-04-30 00:00:00', NULL),
(2, 1, '2019-05-01 00:00:00', NULL),
(3, 2, '2019-05-01 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `carrinhos_produtos`
--

DROP TABLE IF EXISTS `carrinhos_produtos`;
CREATE TABLE IF NOT EXISTS `carrinhos_produtos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `valor_cotacao` double NOT NULL,
  `valor_venda` double NOT NULL,
  `qnt_produto` int(11) NOT NULL,
  `produto_id` int(11) NOT NULL,
  `carrinho_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `carrinhos_produtos`
--

INSERT INTO `carrinhos_produtos` (`id`, `valor_cotacao`, `valor_venda`, `qnt_produto`, `produto_id`, `carrinho_id`, `created`, `modified`) VALUES
(1, 150, 137, 2, 1, 1, '2019-04-30 00:00:00', NULL),
(2, 45, 42, 1, 2, 1, '2019-04-30 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

DROP TABLE IF EXISTS `produtos`;
CREATE TABLE IF NOT EXISTS `produtos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome_produto` varchar(220) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `valor_compra` double DEFAULT NULL,
  `valor_venda` double NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome_produto`, `valor_compra`, `valor_venda`, `created`, `modified`) VALUES
(1, 'Teclado + Mouse', 85.12, 150, '2019-04-30 00:00:00', NULL),
(2, 'Mouse', 15.77, 45, '2019-04-30 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `created`, `modified`) VALUES
(1, 'Cesar', 'celkeadm@gmail.com', '2019-01-05 00:00:00', '2019-01-05 00:00:00'),
(2, 'Kelly', 'kelly@celke.com.br', '2019-01-05 00:00:00', '2019-01-05 00:00:00'),
(3, 'Jessica', 'jessica@celke.com.br', '2019-01-05 00:00:00', '2019-01-05 00:00:00'),
(4, 'Danielle', 'danielle@celke.com.br', '2019-01-05 00:00:00', '2019-01-05 00:00:00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
