import prisma from "../../prisma";
import { NextResponse } from "next/server";
import { json } from "stream/consumers";


export async function GET(request:Request, {params}:{params:{id:string}}) {
    const id = params.id
    
    const elusuario = await prisma.usuarios.findFirst({
        where: {
            id: parseInt(id)
        }
    })

    return NextResponse.json(elusuario)
}

export async function PATCH(request:Request, {params}:{params:{id:string}}) {
    const id = params.id
    const json = await request.json()

    const elusuario_modificado = await prisma.usuarios.update({
        where: {
            id: parseInt(id)
        },
        data: json
    })

    return NextResponse.json(elusuario_modificado)
}

export async function DELETE(request:Request, {params}:{params:{id:string}}) {
    const id = params.id

    const elusuario_eliminado = await prisma.usuarios.delete({
        where: {
            id: parseInt(id)
        },
        
    })

    return NextResponse.json(elusuario_eliminado)
}