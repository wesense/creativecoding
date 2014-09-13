## Desenho de profundidade com o Kinect 

O Kinect, com OpenNI, nos permite detectar a profundidade da imagem. Uma luz infravermelha saídas emissor que é então refletido e lidos através de uma câmera infravermelha. Isso nos permite calcular a distância de cada pixel é. 

Comece criando um novo desenho no processamento. Para exibir uma imagem do que a câmera de profundidade no Kinect vê, precisamos usar OpenNI eo wrapper SimpleOpenNI para acessar os dados. Por isso, primeiro importar a biblioteca.

> import SimpleOpenNI.*;


> SimpleOpenNI  context;

```Processing
void setup()
{
  // instantiate a new context
  context = new SimpleOpenNI(this);
 
  // enable depth image generation 
  context.enableDepth();
 
  // create a window the size of the depth information
  size(context.depthWidth(), context.depthHeight()); 
}
```

```Processing
void draw()
{
  // update the camera
  context.update();
 
  // draw depth image
  image(context.depthImage(),0,0); 
}
```

Para cada quadro, o contexto é atualizado com as informações da câmera. A imagem é então tirada profundidade na janela começando com o seu canto superior esquerdo na posição (0, 0) da janela. 

Finalmente, rode e a imagem profundidade deve ser exibida como algo parecido com isto:

DepthImage.png


```Processing
import SimpleOpenNI.*;
 
SimpleOpenNI  context;
 
void setup()
{
  // instantiate a new context
  context = new SimpleOpenNI(this);
 
  // enable depth image generation 
  context.enableDepth();
 
  // create a window the size of the depth information
  size(context.depthWidth(), context.depthHeight()); 
}
 
void draw()
{
  // update the camera
  context.update();
 
  // draw depth image
  image(context.depthImage(),0,0); 
}

``
