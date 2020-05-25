# Agenda de Contatos

<img src="https://user-images.githubusercontent.com/29135156/82818494-2c4fa200-9e75-11ea-9d28-91f56de742b8.jpeg" width="30%" heigth="auto">
<img src="https://user-images.githubusercontent.com/29135156/82818482-2a85de80-9e75-11ea-9a37-911a526b19cb.jpeg" width="30%" heigth="auto">
<img src="https://user-images.githubusercontent.com/29135156/82818488-2bb70b80-9e75-11ea-83b5-f11337256498.jpeg" width="30%" heigth="auto">

## Introdução

Loja virtual desenvolvida em Flutter com Firebase.

<p>Este app é uma loja virtual que foi desenvolvida em flutter com Firebase, nele temos a possibilidade de apresentar os produtos e 
realizar uma compra, adicionar um cupom e finalizar a compra. Lembrando que está versão é apenas para o cliente e a visão do administrador, será em outro repositório.  Utilizamos diversos recurso interessantes, entre eles o Model que pode ser acessado durante todo o estado do app, sendo assim, quando alterado, todo o contexto pode ser atualizado.</p>

# Pacotes utilizados

<pre>
    flutter_staggered_grid_view: ^0.3.0
    cloud_firestore: ^0.12.9
    carousel_pro: ^1.0.0
    transparent_image: ^1.0.0
    scoped_model: ^1.0.1
    firebase_auth: ^0.11.1+12
    url_launcher: ^5.1.1
</pre>

## Publicar app Flutter

[Tutorial](https://flutter.dev/docs/deployment/android)

## Alterar Ícone do App

[Tutorial 1](https://www.youtube.com/watch?v=e18HtjjoqFM)

## Instruções para o Firebase

<h4>Adiciona uma nova coleção no Firebase.</h4>
    <pre>
        Firestore.instance
        .collection("mensagens")
        .document("tHZFLRIWR2jv3gaZ1hls")
        .collection("arquivos")
        .document()
        .setData({"texto": "Felipe S", "from": "Felipe2", "read": false});
    </pre>

<h4>Retorna a lista de documentos, mas não é em tempo real.</h4>
    <pre>
        QuerySnapshot snapshot = await Firestore.instance.collection("mensagens").getDocuments();
        snapshot.documents.forEach((d) {
            print(d.data);
            print(d.documentID);
        });
    </pre>

<h4>Retorna apenas um documento.</h4>
    <pre>
        DocumentSnapshot snapshot = await Firestore.instance
        .collection("mensagens")
        .document("tHZFLRIWR2jv3gaZ1hls")
        .get();
        print(snapshot.data);
    </pre>

<h4>Retorna documentos e atualiza a lista em tempo real.</h4>
    <pre>
        Firestore.instance.collection("mensagens").snapshots().listen((dado) {
            dado.documents.forEach((d) {
                print(d.data);
            });
        });
    </pre>

<h4>Retorna o único documento em tempo real.</h4>
    <pre>
        Firestore.instance
        .collection("mensagens")
        .document("tHZFLRIWR2jv3gaZ1hls")
        .snapshots()
        .listen((dado) {
            print(dado.data);
        });
    </pre>

## Recursos do Flutter

Alguns recursos para você começar se este for seu primeiro projeto Flutter:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

Para obter ajuda sobre como iniciar o Flutter, consulte nosso
[online documentation](https://flutter.dev/docs), que oferece tutoriais,
amostras, orientações sobre desenvolvimento móvel e uma referência completa da API.
