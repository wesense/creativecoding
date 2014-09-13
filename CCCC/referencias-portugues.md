##Referência Rápida (em ordem de aparição)

### rect (a, b​​, c, d)

Desenhe um rectângulo na tela. Os parâmetros a seguir:

> a - X (horizontal) localização do canto superior esquerdo da forma

> b - Y (vertical) Local de uppper-esquerda canto da forma

> c - largura da forma

> d - altura da forma

### ellipse (a, b​​, c, d)

Desenha uma elipse na tela. Os parâmetros a seguir:

> a - X (horizontal) localização do centro da forma

> b - Y (vertical) localização do centro da forma

> c - largura da forma

> d - altura da forma

### fill (r, g, b)

Define a cor do interior de formas. Os parâmetros a seguir:

> r - quantidade de vermelho, de 0 (nenhum) a 255 (máximo)

> g - quantidade de verde, de 0 (nenhum) a 255 (máximo)

> b - quantidade de azul, de 0 (nenhum) a 255 (máximo)

### stroke (r, g, b)

Define a cor do contorno das formas. Os parâmetros a seguir:

> r - quantidade de vermelho, de 0 (nenhum) a 255 (máximo)

> g - quantidade de verde, de 0 (nenhum) a 255 (máximo)

> b - quantidade de azul, de 0 (nenhum) a 255 (máximo)

### background(r, g, b)

Preenche a tela com uma cor de fundo. Os parâmetros a seguir:

> r - quantidade de vermelho, de 0 (nenhum) a 255 (máximo)

> g - quantidade de verde, de 0 (nenhum) a 255 (máximo)

> b - quantidade de azul, de 0 (nenhum) a 255 (máximo)

### setup ()

> O código dentro do bloco setup () é executado uma vez quando o programa começar.

### draw ()

> O código dentro do bloco draw () é executado continuamente enquanto o programa está sendo executado.

### void

> Esta palavra-chave é necessário para ser escrito na frente de setup () e draw (). Isso significa que o setup () e draw () funções não "retorna um valor."

### mouseX

> Essa variável armazena a coordenada x do cursor.

### mouseY

> Essa variável armazena a coordenada y do cursor.

### mousePressed

> Essa variável é verdadeira se um botão do mouse é pressionado e é falso se um botão não for pressionado.

### if

> A estrutura se permite a um programa tomar a decisão de executar o código dentro do bloco. Quando a expressão relacional associada ao se é verdade, o código dentro do {} e será executado.

## Glossário

### block

> Uma lista de instruções de código dentro de colchetes, os caracteres {e}.

### sistema de coordenadas

> Um sistema de números que definem a localização de posições na tela. O sistema de processamento de coordenadas usa o canto superior esquerdo como a origem (0,0) com as coordenadas x aumentando para a direita e y coordintes aumentar a tela para baixo. As posições dentro do sistema de coordenadas são definidas em unidades de pixels. Por exemplo, (100, 20) é de 100 pixels do canto uppper esquerdo da janela de exibição e 20 pixels para a direita.

### false

> O oposto de "verdadeiro", o que significa uma expressão avaliou como falsa. Por exemplo, 1> 5 é falsa.

### função

> Um elemento de programa com um propósito específico, uma função muitas vezes tem parâmetros para definir o seu comportamento. Por exemplo, a função rect () desenha um retângulo para a tela. Os parâmetros colocados dentro de parênteses a função de definir a localização e as dimensões da forma. Em outros tutoriais de programação, funções são chamadas às vezes métodos, sub-rotinas, comandos ou procedimentos.

### expressão relacional

> A expressão de código que compara dois valores com um operador relacional. Por exemplo, maior do que (>) ou menos do que (<).

### true

> O oposto de "falso", o que significa uma expressão avaliou a verdade. Por exemplo, 5> 1 é verdadeiro.

### variável

> Um recipiente para armazenar dados que tem um nome e um valor. Por exemplo, a variável mouseX terá um valor de 200, quando o cursor é de 200 pixels da borda esquerda da janela do display.