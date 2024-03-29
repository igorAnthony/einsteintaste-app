
<p>video demonstrando o funcionamento do app -> <a href="https://www.youtube.com/watch?v=FAr_u7Qc9rk"> Einstein Taste: Cliente App - A Complete Restaurant Experience </a></p>
<p align="center"> <img src="https://github.com/igorAnthony/einsteintaste-app/blob/main/assets/images/logo3.png" width="200px"></p>
<h1 align="center">Einstein Taste </h1>
<h2>Descrição</h2>
<p>
O projeto "Einstein Taste" consiste no desenvolvimento de um aplicativo de e-commerce, com uma experiência completa de um restaurante de comida, esse projeto está dividido em dois aplicativos, um feito para o cliente(este no caso) e outro com foco no <a href="https://github.com/igorAnthony/einsteintaste-adminpanel"> administrador do sistema </a>  onde é possivel gerenciar os produtos e tudo relacionado a ele. O backend foi implementado utilizando o framework <a href="https://github.com/igorAnthony/einsteintaste-laravel"> Laravel </a> , conhecido por sua performance, escalabilidade e segurança. O frontend, por sua vez, é desenvolvido em Flutter, um framework para criação de aplicativos móveis multiplataforma.<br> </p>

<h2>Highlights</h2>
<p>
A escolha do GetX acredito ser uma das melhores escolhas para esse projeto, pois eu não entendi muito bem como faria a parte de assincronia e com GetX isso foi muito fácil, por conta disso fiquei muito impressionado com o poder que ele me deu em todas as telas, agora sei que não foi uma boa escolha porque ele não utiliza o context diretamente como o gerenciador de estado principal. Em vez disso, o GetX utiliza um paradigma reativo, onde os estados são reativos e re-renderizados automaticamente sempre que ocorrem alterações nos dados observados. Ele não depende do context para realizar essas atualizações, o que pode ser uma vantagem, pois torna o desenvolvimento mais rápido e direto, porém tive problemas com as rotas onde ele não sabia em que contexto estava e tive algumas dores de cabeças, tive que utilizar uma artimanhã para bular isso que era mandar de qual tela estava vindo e depois a partir disso tratei para cada cenário. <br>
</p>
<p>
As variáveis assíncronas do GetX que permitiram atualizar valores em tempo real que facilitou muito a reatividade do aplicativo <br>
</p>
<p> Back-end com Laravel, incluindo autenticação de token com Sanctum e uma boa estrutura de banco de dados. </p>
<p>O aplicativo também foi usado a API da Google para exibição de mapas interativos, e deu também o poder para converter endereços em coordenadas geográficas(geocodificação) e vice-versa(reversão de geocodificação). </p>
<p>O aplicativo utiliza o SharedPreferences para armazenar o carrinho de compras, permitindo sua recuperação após o fechamento e mantém o login persistente.</p>
</p>
