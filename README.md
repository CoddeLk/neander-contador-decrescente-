# ⏱️ Contador Descrescente em NeanderX3

Projeto simples e funcional de um **contador decrescente** implementado na linguagem de montagem do processador fictício **NeanderX3**.

## 🧠 Sobre o projeto

Este programa começa com o valor `9` e decrementa até `0`, mostrando os valores um a um via instrução `OUT`. Quando chega a 0 (ou abaixo), o programa para com um glorioso `HLT`.

Ideal para:
- Estudo de lógica de controle em assembly
- Entendimento de loops e flags (`JN`)
- Brilhar na aula de arquitetura de computadores 💡

## 🛠️ Instruções

### Pré-requisitos
- Simulador **NeanderX3** 

### Como rodar

1. Copie o código abaixo e cole no simulador:
2. Compile (Montar)
3. Execute e veja a contagem acontecer

### Código

```asm
        ORG 0

        LDA VAL        ; Acumulador = 9

LACO:   OUT            ; Mostra valor atual

        SUB PASSO      ; Decrementa 1
        JN FIM         ; Se < 0, para

        STA TEMP       ; Guarda valor atual
        JMP LACO       ; Volta pro loop

FIM:    HLT

; Dados
VAL:    DB 9
PASSO:  DB 1
TEMP:   DB 0
