Algoritmo "Torredehanoi"
Var
    numeroDiscos : Inteiro
    
// M�todo recursivo para mostrar a sequ�ncia de a��es.
// Exibe a sequ�ncia de a��es para mover os discos do pino origem para o
// pino de destino. Utiliza o pino do meio(auxiliar) para realizar as a��es.
// param numeroDiscos Quantidade de discos a serem movidos.
// param origem Nome do pino de origem.
// param meio Nome do pino de auxiliar.
// param destino Nome do pino de destino.

Procedimento jogar(numeroDiscos : inteiro; origem, meio, destino: Caracter)
Inicio
    //Se existe somente um disco move da origem para o destino
    Se (numeroDiscos = 1) entao
        Escreval("Disco " , numeroDiscos , " de " , origem , " para " , destino)
    senao
        //Move o disco da origem para o meio
        jogar(numeroDiscos -1, origem, destino, meio)
        //Mostra a a��o de mover o disco da origem para o destino
        Escreval("Disco " , numeroDiscos , " de " , origem , " para " , destino )
        //Move o disco do meio para o destino
        jogar(numeroDiscos -1, meio, origem, destino)
    fimse
Fimprocedimento

Inicio
    //Leitura da quantidade de discos.
    Escreva("Digite a quantidade de disco da primeira torre: ")
    Leia(numeroDiscos)
    //Exibe a sequ�ncia de a��es para mover os discos da origem para o destino.
    Escreval("Sequ�ncia de a��es para " , numeroDiscos , " discos:" )
    jogar(numeroDiscos, "A", "B", "C")
Fimalgoritmo