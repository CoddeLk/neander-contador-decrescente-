;---------------------------------------------------
; Programa: Contador Descrecente
; Autor:Lucas Trajano
; Data:25/05/2025
;---------------------------------------------------
      ORG 0   ; pseudo-Instrição: Indica onde inicia o programa na memoria 
      LDA VAL ; carrega no acumulador o conteudo que esta guardado na variavel VAL

LACO: OUT 0   ; mostra na saida o conteudo do acumulador  
      SUB PASSO ; decrementa do acumulador a quantia armazenada pela variavel PASSO 
      JN  FIM   ; testa se  valor no acumulador chgou a 0: se sim salta para FIM
      STA 60    ; se nao chegou ao fim guarda o val do acumulador no end. 60 (opcional)
       JMP LACO ; salta para label chamada LACO

FIM:  HLT      ; para a execução do programa

VAL:   DB 9    ; Cria na memoria uma constante com valor 9
PASSO: DB 1    ; carrega na memória uma constante com valor 1