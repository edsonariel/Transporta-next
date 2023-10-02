import prisma from "../prisma";
import { NextResponse } from "next/server";

export async function GET(request:Request) {
    const losusuarios =  await prisma.usuarios.findMany()

    return NextResponse.json(losusuarios)
}

export async function POST(request:Request) {
    const json = await request.json()

    const crear = await prisma.usuarios.create({
        data: json
    })
    
    return new NextResponse(JSON.stringify(crear),{status: 201})
}