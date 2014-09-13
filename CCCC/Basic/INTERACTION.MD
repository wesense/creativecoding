## Animar seu programa usando mouseX e mouseY! 

Você pode construir fora o exemplo abaixo ou adicionar ao seu projeto anterior, selecionando "My Código de Última Lição" abaixo. 

Você pode trabalhar em seu próprio ritmo, mas recomendamos aproximadamente 10 minutos nessa tarefa antes de prosseguir. 

Se você esquecer a sintaxe para setup () e draw (), aqui é um lembrete! 

```Processing
void setup () {
   tamanho (500.400); 
} 

void draw () {
   fundo (0,0,0); 
   preencher (255255255); 
   elipse (mouseX, mouseY, 60,60); 
} 
```

Recomendamos um tamanho máximo da tela de 500 por 400 pixels para esse tutorial, mas sinta-se livre para experimentar sua janela mais magro ou mais curto! 

## CODE

```Processing
void setup() {
  size(500, 400);
  background(10, 80, 100);
}

void draw() {
  stroke(255, 255, 255);
  fill(160, 220, 90);
  ellipse(mouseX, 200, 300, 300);

  fill(160, 210, 230);
  rect(245, mouseY, 10, 240);

  fill(255, 255, 255);
  ellipse(mouseX, mouseY, 70, 70);
}
``


Para saber mais, confira o retângulo e elipse páginas processing.org.
 
[processing referência] (http://processing.org/reference/)

 

[Próximo Passo](https://github.com/wesense/creative-coding-crash-course-oLabi/blob/master/CCCC/Basic/INTERACTION.MD)