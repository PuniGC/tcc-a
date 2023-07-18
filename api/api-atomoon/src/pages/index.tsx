import Head from 'next/head'
//import { Inter } from '@next/font/google'
//import { Registry, container } from '@/@core/infra/container-registry'
//import ListProductsUseCase from '@/@core/application/use-cases/product/list-products'
import Link from 'next/link'
import styles from '@/styles/Home.module.css'

export default function Home() {
  return (
    <>
      <Head>
        <title>API Atomoon</title>
        <meta name="description" content="Generated by create next app" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="icon" href="/favicon.ico" />
      </Head>
      <main className={styles.main}>
        <div>
          <h1 className={styles.title}> Bem vindo a API Atomoon </h1>
          <ul>
            <li>
              <Link href="/api/products">Listar Produtos</Link>
            </li>
            <li>
              <Link href="/api/users">Listar Users</Link>
            </li>
          </ul>
        </div>
      </main>
    </>
  )
}
/*
export const getServerSideProps: GetServerSideProps = async (context) => {
  const useCase = container.get<ListProductsUseCase>(Registry.ListProductsUseCase)
  const products = await useCase.execute()

  return {
    props: {
      products: products.map((product) => product.toJSON()),
    },
  }
}*/