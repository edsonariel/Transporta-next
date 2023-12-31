-- CreateTable
CREATE TABLE `bitacora` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `id_ot` INTEGER NOT NULL,
    `fecha_ingreso` DATETIME(0) NOT NULL,
    `id_usuario` INTEGER NOT NULL,
    `descripcion` TEXT NOT NULL,
    `multimedia` TEXT NOT NULL,

    UNIQUE INDEX `id`(`id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `clientes` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nombre` TEXT NOT NULL,
    `documento` INTEGER NOT NULL,
    `NIT` VARCHAR(50) NOT NULL,
    `email` TEXT NOT NULL,
    `telefono` TEXT NOT NULL,
    `direccion` TEXT NOT NULL,
    `fecha_nacimiento` DATE NOT NULL,
    `compras` INTEGER NOT NULL,
    `ultima_compra` DATETIME(0) NOT NULL,
    `fecha` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `clasificacion` VARCHAR(5) NOT NULL DEFAULT '000',
    `password` TEXT NOT NULL,
    `dispositivo` TEXT NOT NULL,
    `tokenfirebase` TEXT NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cobertura` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `id_flota` INTEGER NOT NULL,
    `pais` TEXT NOT NULL,
    `direccion` TEXT NOT NULL,
    `latitude` TEXT NOT NULL,
    `longitude` TEXT NOT NULL,
    `nombre_contacto` TEXT NOT NULL,
    `telefono_contacto` TEXT NOT NULL,
    `email_contacto` TEXT NOT NULL,
    `mexico` TEXT NOT NULL,
    `guatemala` TEXT NOT NULL,
    `belice` TEXT NOT NULL,
    `honduras` TEXT NOT NULL,
    `el_salvador` TEXT NOT NULL,
    `nicaragua` TEXT NOT NULL,
    `costa_rica` TEXT NOT NULL,
    `panama` TEXT NOT NULL,

    UNIQUE INDEX `id`(`id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `direcciones` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `id_cliente` INTEGER NOT NULL DEFAULT 0,
    `fecha_ingreso` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `nombre` TEXT NOT NULL,
    `direccion` TEXT NOT NULL,
    `punto_referencia` TEXT NOT NULL,
    `contacto` TEXT NOT NULL,
    `telefono` TEXT NOT NULL,
    `latitude` TEXT NOT NULL,
    `longitude` TEXT NOT NULL,
    `pais` TEXT NOT NULL,

    UNIQUE INDEX `id`(`id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `estados` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `nombre` TEXT NOT NULL,
    `color` TEXT NOT NULL,
    `color_pastel` TEXT NOT NULL,

    UNIQUE INDEX `id`(`id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `estados_liquidacion` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `nombre` TEXT NOT NULL,

    UNIQUE INDEX `id`(`id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `miempresa` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nombre` TEXT NULL,
    `razon_social_miempresa` TEXT NULL,
    `nit_miempresa` TEXT NULL,
    `nrc_miempresa` TEXT NULL,
    `logo_miempresa` TEXT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `ot` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `fecha_ingreso` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `id_usuario` INTEGER NOT NULL,
    `id_cliente` INTEGER NOT NULL,
    `id_tipo_carga` INTEGER NOT NULL,
    `peso` TEXT NOT NULL,
    `volumen` TEXT NOT NULL,
    `bultos` TEXT NOT NULL,
    `custodios` INTEGER NOT NULL DEFAULT 0,
    `cargadores` INTEGER NOT NULL DEFAULT 0,
    `indicaciones` TEXT NOT NULL,
    `fecha_ejecucion` DATETIME(0) NOT NULL,
    `hora_ejecucion` TEXT NOT NULL,
    `id_direccion_retiro` INTEGER NOT NULL,
    `id_direccion_origen` INTEGER NOT NULL,
    `id_direccion_destino` INTEGER NOT NULL,
    `distancia` TEXT NULL,
    `id_piloto` INTEGER NOT NULL,
    `id_estado` INTEGER NOT NULL DEFAULT 1,
    `prioridad` INTEGER NOT NULL DEFAULT 0,
    `numero_factura_proveedor` TEXT NOT NULL,
    `imagen_factura_proveedor` TEXT NOT NULL,
    `fecha_carga_factura` DATE NOT NULL,
    `id_proveedor` INTEGER NOT NULL,
    `id_vehiculo` INTEGER NOT NULL,
    `id_estado_liquidacion` INTEGER NOT NULL,
    `fecha_liquidado` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `ingreso` TEXT NOT NULL,
    `comision` TEXT NOT NULL,
    `total` TEXT NOT NULL,
    `imagen_comprobante` TEXT NOT NULL,
    `telefono_origen` TEXT NOT NULL,
    `telefono_destino` TEXT NOT NULL,

    UNIQUE INDEX `id`(`id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pilotos` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `id_flota` INTEGER NOT NULL DEFAULT 0,
    `nombre` TEXT NOT NULL,
    `usuario` TEXT NOT NULL,
    `password` TEXT NOT NULL,
    `perfil` TEXT NOT NULL,
    `foto` TEXT NOT NULL,
    `dui` TEXT NOT NULL,
    `numero_licencia` TEXT NOT NULL,
    `estado` INTEGER NOT NULL,
    `ultimo_login` DATETIME(0) NOT NULL,
    `fecha` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `Cargo` TEXT NOT NULL,
    `firebase_id` TEXT NOT NULL,
    `fecha_nacimiento` DATE NOT NULL,
    `pasaporte` TEXT NOT NULL,
    `foto_licencia_conducir` TEXT NOT NULL,
    `cobertura` TEXT NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tbl_dispositivo_movil` (
    `id_dispositivo` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `id_usuario` INTEGER NOT NULL,
    `fecha_asociado` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `marca` VARCHAR(30) NOT NULL,
    `modelo` VARCHAR(30) NOT NULL,
    `sim` VARCHAR(30) NOT NULL,
    `mcc` VARCHAR(11) NOT NULL,
    `mnc` VARCHAR(11) NOT NULL,

    UNIQUE INDEX `id_dispositivo`(`id_dispositivo`),
    PRIMARY KEY (`id_dispositivo`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tbl_facturas_comisiones` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `fecha_facturado` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `id_proveedor` INTEGER NOT NULL,
    `monto` TEXT NOT NULL,
    `numero_factura` TEXT NOT NULL,

    UNIQUE INDEX `id`(`id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tbl_flota_afiliada` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `nombre` TEXT NOT NULL,
    `direccion` TEXT NOT NULL,
    `telefono` TEXT NOT NULL,
    `email` TEXT NOT NULL,
    `NRC` TEXT NOT NULL,
    `NIT` TEXT NOT NULL,
    `GIRO` TEXT NOT NULL,
    `fecha` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    UNIQUE INDEX `id`(`id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tipo_vehiculo` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `nombre` TEXT NOT NULL,

    UNIQUE INDEX `id`(`id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tnl_proveedor_cotizacion` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `idOt` INTEGER NOT NULL,
    `idProveedor` INTEGER NOT NULL,
    `fecha_ofertado` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `montoOferta` TEXT NOT NULL,
    `estado` TEXT NOT NULL,
    `fecha_salida` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    UNIQUE INDEX `id`(`id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tracking` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `fecha_registro` DATETIME(0) NOT NULL,
    `id_piloto` INTEGER NOT NULL,
    `latitude` TEXT NOT NULL,
    `longitude` TEXT NOT NULL,

    UNIQUE INDEX `id`(`id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `usuarios` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nombre` TEXT NOT NULL,
    `usuario` TEXT NOT NULL,
    `password` TEXT NOT NULL,
    `perfil` TEXT NOT NULL,
    `foto` TEXT NOT NULL,
    `estado` INTEGER NOT NULL,
    `ultimo_login` DATETIME(0) NOT NULL,
    `fecha` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `Cargo` TEXT NOT NULL,
    `id_monitoreo` INTEGER NOT NULL DEFAULT 0,
    `id_monitoreo_flota` INTEGER NOT NULL DEFAULT 0,
    `idcliente` INTEGER NULL,
    `idFlotaProveedor` INTEGER NULL,
    `nombre_propietario_tarjeta` VARCHAR(60) NULL,
    `correo` TEXT NULL,
    `telefono` TEXT NULL,
    `singleUse` INTEGER NULL,
    `numero_tarjeta` TEXT NULL,
    `mes_exp_tarjeta` TEXT NULL,
    `cvv_tarjeta` TEXT NULL,
    `ao_exp_tarjeta` TEXT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `vehiculo` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `id_tipo_vehiculo` INTEGER NOT NULL,
    `marca` TEXT NOT NULL,
    `modelo` TEXT NOT NULL,
    `anio` TEXT NOT NULL,
    `color` TEXT NOT NULL,
    `placa_cabezal` TEXT NOT NULL,
    `placa_remolque` TEXT NOT NULL,
    `codigo` TEXT NOT NULL,
    `id_flota` INTEGER NOT NULL,

    UNIQUE INDEX `id`(`id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

