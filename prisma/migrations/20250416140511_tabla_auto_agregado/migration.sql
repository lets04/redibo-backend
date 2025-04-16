-- CreateTable
CREATE TABLE "Usuario" (
    "id" SERIAL NOT NULL,
    "nombre" TEXT NOT NULL,
    "apellido" TEXT NOT NULL,
    "creadoEl" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "actualizadoEl" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Usuario_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Auto" (
    "id" SERIAL NOT NULL,
    "modelo" TEXT NOT NULL,
    "marca" TEXT NOT NULL,
    "transmision" TEXT NOT NULL,
    "consumo" TEXT NOT NULL,
    "tipoAuto" TEXT NOT NULL,
    "color" TEXT NOT NULL,
    "anio" TIMESTAMP(3) NOT NULL,
    "tarifa" DOUBLE PRECISION NOT NULL,
    "kilometraje" INTEGER NOT NULL,
    "placa" TEXT NOT NULL,
    "descripcion" TEXT NOT NULL,
    "disponible" TEXT NOT NULL,
    "ubicacion" TEXT NOT NULL DEFAULT 'Cochabamba',

    CONSTRAINT "Auto_pkey" PRIMARY KEY ("id")
);
