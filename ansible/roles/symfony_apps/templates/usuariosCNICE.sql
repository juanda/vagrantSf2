-- phpMyAdmin SQL Dump
-- version 4.0.6deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 17-03-2014 a las 12:45:56
-- Versión del servidor: 5.5.35-0ubuntu0.13.10.2
-- Versión de PHP: 5.5.3-1ubuntu2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `usuariosCNICE`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alias_locales`
--

CREATE TABLE IF NOT EXISTS `alias_locales` (
  `alias` varchar(255) NOT NULL DEFAULT '',
  `direccionCorreo` mediumtext NOT NULL,
  `activo` int(11) DEFAULT NULL,
  `comentario` varchar(255) DEFAULT NULL,
  `FechaAlta` date NOT NULL DEFAULT '0000-00-00',
  `UltimaModificacion` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`alias`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla de alias locales de correos de usuariosCNICE';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alias_virtuales`
--

CREATE TABLE IF NOT EXISTS `alias_virtuales` (
  `alias` varchar(255) NOT NULL DEFAULT '',
  `direccionCorreo` varchar(255) NOT NULL DEFAULT '',
  `comentario` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`alias`),
  KEY `k_alias1` (`direccionCorreo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla de alias virtuales de correos de usuariosCNICE';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuotaLimite`
--

CREATE TABLE IF NOT EXISTS `cuotaLimite` (
  `nombre` varchar(80) NOT NULL DEFAULT '',
  `tipo_cuota` enum('user','group','class','all') NOT NULL DEFAULT 'user',
  `por_sesion` enum('false','true') NOT NULL DEFAULT 'false',
  `tipo_limite` enum('soft','hard') NOT NULL DEFAULT 'hard',
  `bytes_disco` float NOT NULL DEFAULT '0',
  `bytes_descarga` float NOT NULL DEFAULT '0',
  `bytes_transferencia` float NOT NULL DEFAULT '0',
  `ficheros_actualizados` int(10) unsigned NOT NULL DEFAULT '0',
  `ficheros_descargados` int(10) unsigned NOT NULL DEFAULT '0',
  `ficheros_transferidos` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla limite cuota Proftpd';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuotaValor`
--

CREATE TABLE IF NOT EXISTS `cuotaValor` (
  `nombre` varchar(80) NOT NULL DEFAULT '',
  `tipo_cuota` enum('user','group','class','all') NOT NULL DEFAULT 'user',
  `bytes_disco` float NOT NULL DEFAULT '0',
  `bytes_descarga` float NOT NULL DEFAULT '0',
  `bytes_transferencia` float NOT NULL DEFAULT '0',
  `ficheros_actualizados` int(10) unsigned NOT NULL DEFAULT '0',
  `ficheros_descargados` int(10) unsigned NOT NULL DEFAULT '0',
  `ficheros_transferidos` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla valores actualizados cuota Proftpd';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dominios`
--

CREATE TABLE IF NOT EXISTS `dominios` (
  `dominio` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`dominio`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dominios`
--

INSERT INTO `dominios` (`dominio`) VALUES
('abedul.pntic.mec.es'),
('abeto.pntic.mec.es'),
('abies.pntic.mec.es'),
('acacia.pntic.mec.es'),
('acebo.pntic.mec.es'),
('adigital.pntic.mec.es'),
('alamo.pntic.mec.es'),
('alerce.pntic.mec.es'),
('aliso.pntic.mec.es'),
('almendro.pntic.mec.es'),
('almez.pntic.mec.es'),
('arce.pntic.mec.es'),
('atenea.pntic.mec.es'),
('boj.pntic.mec.es'),
('cedro.pntic.mec.es'),
('centros1.pntic.mec.es'),
('centros2.pntic.mec.es'),
('centros3.pntic.mec.es'),
('centros4.pntic.mec.es'),
('centros5.pntic.mec.es'),
('centros6.pntic.mec.es'),
('cerezo.pntic.mec.es'),
('chopo.pntic.mec.es'),
('cnice.mec.es'),
('encina.pntic.mec.es'),
('endrino.pntic.mec.es'),
('enebro.pntic.mec.es'),
('exterior.pntic.mec.es'),
('ficus.pntic.mec.es'),
('fresno.pntic.mec.es'),
('guindo.pntic.mec.es'),
('mimosa.pntic.mec.es'),
('morera.pntic.mec.es'),
('nogal.pntic.mec.es'),
('olmo.pntic.mec.es'),
('palmera.pntic.mec.es'),
('platea.pntic.mec.es'),
('pntic.es'),
('pntic.mec.es'),
('roble.pntic.mec.es'),
('sabina.pntic.mec.es'),
('sauce.pntic.mec.es'),
('serbal.pntic.mec.es'),
('thor.pntic.mec.es');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE IF NOT EXISTS `grupo` (
  `gid` smallint(11) unsigned NOT NULL DEFAULT '0',
  `nombreGrupo` varchar(80) NOT NULL DEFAULT '',
  `miembros` varchar(80) DEFAULT '',
  PRIMARY KEY (`gid`),
  UNIQUE KEY `uk_grupo1` (`nombreGrupo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla grupos de usuariosCNICE';

--
-- Volcado de datos para la tabla `grupo`
--

INSERT INTO `grupo` (`gid`, `nombreGrupo`, `miembros`) VALUES
(100, 'users', ''),
(1001, 'usuarios', ''),
(65535, 'usuariosMigrados', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servidor`
--

CREATE TABLE IF NOT EXISTS `servidor` (
  `nombreServidor` varchar(80) NOT NULL DEFAULT '',
  `rutaWeb` varchar(255) NOT NULL DEFAULT '/',
  `rutaCorreo` varchar(255) NOT NULL DEFAULT '/',
  PRIMARY KEY (`nombreServidor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla servidores';

--
-- Volcado de datos para la tabla `servidor`
--

INSERT INTO `servidor` (`nombreServidor`, `rutaWeb`, `rutaCorreo`) VALUES
('abedul', '/nfs/web2', '/nfs/correo2'),
('abeto', '/nfs/web1', '/nfs/correo1'),
('abies', '/nfs/web1', '/nfs/correo1'),
('acacia', '/nfs/web1', '/nfs/correo1'),
('acebo', '/nfs/web1', '/nfs/correo1'),
('adigital', '/nfs/web3', '/nfs/correo1'),
('alamo', '/nfs/web2', '/nfs/correo2'),
('alerce', '/nfs/web2', '/nfs/correo2'),
('aliso', '/nfs/web1', '/nfs/correo1'),
('almendro', '/nfs/web1', '/nfs/correo1'),
('almez', '/nfs/web2', '/nfs/correo2'),
('arce', '/nfs/web1', '/nfs/correo1'),
('atenea', '/nfs/web1', '/nfs/correo1'),
('boj', '/nfs/web2', '/nfs/correo2'),
('cedro', '/nfs/web2', '/nfs/correo2'),
('centros1', '/nfs/web3', '/nfs/correo1'),
('centros2', '/nfs/web3', '/nfs/correo1'),
('centros3', '/nfs/web3', '/nfs/correo1'),
('centros4', '/nfs/web3', '/nfs/correo2'),
('centros5', '/nfs/web3', '/nfs/correo2'),
('centros6', '/nfs/web3', '/nfs/correo2'),
('cerezo', '/nfs/web1', '/nfs/correo1'),
('chopo', '/nfs/web1', '/nfs/correo1'),
('encina', '/nfs/web1', '/nfs/correo1'),
('endrino', '/nfs/web2', '/nfs/correo2'),
('enebro', '/nfs/web1', '/nfs/correo1'),
('exterior', '/nfs/web1', '/nfs/correo1'),
('ficus', '/nfs/web1', '/nfs/correo1'),
('fresno', '/nfs/web1', '/nfs/correo1'),
('guindo', '/nfs/web2', '/nfs/correo2'),
('mimosa', '/nfs/web2', '/nfs/correo2'),
('morera', '/nfs/web1', '/nfs/correo1'),
('nogal', '/nfs/web1', '/nfs/correo1'),
('olmo', '/nfs/web2', '/nfs/correo2'),
('palmera', '/nfs/web2', '/nfs/correo2'),
('platea', '/nfs/web2', '/nfs/correo2'),
('roble', '/nfs/web2', '/nfs/correo2'),
('sabina', '/nfs/web2', '/nfs/correo2'),
('sauce', '/nfs/web2', '/nfs/correo2'),
('serbal', '/nfs/web1', '/nfs/correo1'),
('thor', '/nfs/web1', '/nfs/correo1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transporte`
--

CREATE TABLE IF NOT EXISTS `transporte` (
  `dominio` varchar(255) NOT NULL DEFAULT '',
  `transporte` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`dominio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla transporte correo';

--
-- Volcado de datos para la tabla `transporte`
--

INSERT INTO `transporte` (`dominio`, `transporte`) VALUES
('abedul.pntic.mec.es', 'virtual'),
('abeto.mentor.mec.es', 'virtual'),
('abeto.pntic.mec.es', 'virtual'),
('abies.pntic.mec.es', 'virtual'),
('acacia.pntic.mec.es', 'virtual'),
('acebo.pntic.mec.es', 'virtual'),
('adigital.pntic.mec.es', 'virtual'),
('alamo.mentor.mec.es', 'virtual'),
('alamo.pntic.mec.es', 'virtual'),
('alerce.pntic.mec.es', 'virtual'),
('aliso.mentor.mec.es', 'virtual'),
('aliso.pntic.mec.es', 'virtual'),
('almendro.mentor.mec.es', 'virtual'),
('almendro.pntic.mec.es', 'virtual'),
('almez.mentor.mec.es', 'virtual'),
('almez.pntic.mec.es', 'virtual'),
('arce.pntic.mec.es', 'virtual'),
('atenea.pntic.mec.es', 'virtual'),
('boj.pntic.mec.es', 'virtual'),
('cedro.mentor.mec.es', 'virtual'),
('cedro.pntic.mec.es', 'virtual'),
('centros1.pntic.mec.es', 'virtual'),
('centros2.pntic.mec.es', 'virtual'),
('centros3.pntic.mec.es', 'virtual'),
('centros4.pntic.mec.es', 'virtual'),
('centros5.pntic.mec.es', 'virtual'),
('centros6.pntic.mec.es', 'virtual'),
('CentrosI.pntic.mec.es', 'virtual'),
('CentrosII.pntic.mec.es', 'virtual'),
('cerezo.pntic.mec.es', 'virtual'),
('ceuta.mecd.es', ':[10.200.255.249]'),
('chopo.mentor.mec.es', 'virtual'),
('chopo.pntic.mec.es', 'virtual'),
('cnice.mec.es', 'local'),
('correo-1.pntic.mec.es', 'local'),
('correo-2.pntic.mec.es', 'local'),
('correo-3.pntic.mec.es', 'local'),
('correo-4.pntic.mec.es', 'local'),
('correo-5.pntic.mec.es', 'local'),
('encina.pntic.mec.es', 'virtual'),
('endrino.mentor.mec.es', 'virtual'),
('endrino.pntic.mec.es', 'virtual'),
('enebro.pntic.mec.es', 'virtual'),
('exterior.pntic.mec.es', 'virtual'),
('externos.mecd.es', ':[10.200.255.249]'),
('ficus.pntic.mec.es', 'virtual'),
('fresno.pntic.mec.es', 'virtual'),
('guindo.pntic.mec.es', 'virtual'),
('mecd.es', ':[10.200.255.249]'),
('melilla.mecd.es', ':[10.200.255.249]'),
('mentor.mec.es', 'local'),
('mercurio.pntic.mec.es', 'relay:[193.144.238.104]'),
('mimosa.pntic.mec.es', 'virtual'),
('morera.mentor.mec.es', 'virtual'),
('morera.pntic.mec.es', 'virtual'),
('nemesis.pntic.mec.es', 'relay:[193.144.238.105]'),
('news.pntic.mec.es', 'relay:[193.144.238.104]'),
('nogal.mentor.mec.es', 'virtual'),
('nogal.pntic.mec.es', 'virtual'),
('oapee.es', ':[10.200.255.249]'),
('olmo.pntic.mec.es', 'virtual'),
('palmera.pntic.mec.es', 'virtual'),
('platea.pntic.mec.es', 'virtual'),
('pntic.mec.es', 'local'),
('roble.pntic.mec.es', 'virtual'),
('sabina.mentor.mec.es', 'virtual'),
('sabina.pntic.mec.es', 'virtual'),
('sauce.pntic.mec.es', 'virtual'),
('serbal.pntic.mec.es', 'virtual'),
('thor.pntic.mec.es', 'relay:[193.144.238.107]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `login` varchar(80) NOT NULL DEFAULT '',
  `password` varchar(80) NOT NULL DEFAULT '',
  `direccionCorreo` varchar(255) DEFAULT '',
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gid` smallint(11) unsigned NOT NULL DEFAULT '0',
  `nombreServidor` varchar(80) DEFAULT '',
  `homedir` varchar(255) DEFAULT '',
  `raizCorreo` varchar(128) DEFAULT '/',
  `dominio` varchar(255) DEFAULT '',
  `maildir` varchar(255) DEFAULT '',
  `shell` varchar(30) NOT NULL DEFAULT '/bin/bash',
  `contador` int(11) NOT NULL DEFAULT '0',
  `acceso` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modifica` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `accesoCorreo` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cuotaCorreo` varchar(255) DEFAULT '',
  `cuotaMysql` float NOT NULL DEFAULT '0',
  `activoMysql` enum('false','true') NOT NULL DEFAULT 'false',
  `imapok` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `bool1` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `bool2` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `bloqueoFTP` enum('S','N') DEFAULT 'N',
  `enSAN` enum('0','1') DEFAULT NULL,
  PRIMARY KEY (`login`),
  UNIQUE KEY `uK_usuario1` (`uid`),
  UNIQUE KEY `uK_usuario2` (`direccionCorreo`),
  KEY `k_usuario1` (`gid`),
  KEY `k_usuario2` (`nombreServidor`),
  KEY `k_usuario3` (`dominio`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Tabla usuarios de usuariosCNICE' AUTO_INCREMENT=352892 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `virtual`
--

CREATE TABLE IF NOT EXISTS `virtual` (
  `direccionCorreo` varchar(255) NOT NULL DEFAULT '',
  `redireccion` varchar(255) NOT NULL DEFAULT '',
  `comentario` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`direccionCorreo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla redirecciones de correos de usuariosCNICE';

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `0_41` FOREIGN KEY (`gid`) REFERENCES `grupo` (`gid`) ON UPDATE CASCADE,
  ADD CONSTRAINT `0_42` FOREIGN KEY (`nombreServidor`) REFERENCES `servidor` (`nombreServidor`) ON UPDATE CASCADE,
  ADD CONSTRAINT `0_43` FOREIGN KEY (`dominio`) REFERENCES `transporte` (`dominio`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
