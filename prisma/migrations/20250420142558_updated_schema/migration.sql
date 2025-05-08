/*
  Warnings:

  - You are about to drop the column `status` on the `CoverLetter` table. All the data in the column will be lost.
  - Changed the type of `demandLevel` on the `IndustryInsight` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `marketOutlook` on the `IndustryInsight` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- CreateEnum
CREATE TYPE "demandLevel" AS ENUM ('HIGH', 'MEDIUM', 'LOW');

-- CreateEnum
CREATE TYPE "marketOutlook" AS ENUM ('POSITIVE', 'NEUTRAL', 'NEGATIVE');

-- AlterTable
ALTER TABLE "CoverLetter" DROP COLUMN "status";

-- AlterTable
ALTER TABLE "IndustryInsight" DROP COLUMN "demandLevel",
ADD COLUMN     "demandLevel" "demandLevel" NOT NULL,
DROP COLUMN "marketOutlook",
ADD COLUMN     "marketOutlook" "marketOutlook" NOT NULL;
