
import Link from "next/link";
import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient()

function Login(){

    return(
        <div className="flex min-h-full flex-1 flex-col justify-center px-6 py-12 lg:px-8">
        <div className="sm:mx-auto sm:w-full sm:max-w-sm">
          <img
            className="mx-auto h-18 w-center"
            src="/image/logos-transporta/logoo-transporta.png"
            alt="Your Company"
          />
          <h2 className="mt-10 text-center text-2xl text-anaranjado-transporta font-bold leading-9 tracking-tight text-gray-900">
            Ingresar al Sistema
          </h2>
        </div>

        <div className="mt-10 sm:mx-auto sm:w-full sm:max-w-sm">
          <form className="space-y-6" method="POST">
            <div>
              <div className="mt-2">
                <input
                  id="usuario"
                  name="usuario"
                  type="text"
                  autoComplete="email"
                  placeholder="Usuario"
                  required
                  className="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6"
                />
              </div>
            </div>

            <div>
              <div className="mt-2">
                <input
                  id="password"
                  name="password"
                  type="password"
                  autoComplete="current-password"
                  placeholder="Password"
                  required
                  className="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6"
                />
              </div>
            </div>

            <div>
            <Link href={'/api/login/'}>
                <button
                    type="submit"
                    className="flex w-full justify-center rounded-md bg-anaranjado-transporta px-3 py-1.5 text-sm font-semibold leading-6 text-white shadow-sm hover:bg-indigo-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600"
                >
                
                    INICIO
                    QA a ver que ondas
                </button>

            </Link>
              
            </div>
          </form>
        </div>
      </div>

    );
}



export default Login;