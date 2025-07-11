import { PrismaClient } from "@prisma/client";

export const db = globalThis.prisma || new PrismaClient();

if (process.env.NODE_ENV !== "production") {
  globalThis.prisma = db;
}


// globalThis.prisma: This global variable ensures that the Prisma client instance is
// reused across hot reloads during development. Without this, each time your application
// reloads, a new instance of the Prisma client would be created, potentially leading
// to connection issues.


// globalThis.prisma : this variable ensures that the prisma client instance is 
// reused across hot reloads in development. without this , each time your application reloads,
// a new instance of the prisma client is created, which can lead connection issue.