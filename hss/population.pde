void population () {
  
  tile1 = loadImage("../Mug-PNG-Pic.png"); 
  tile2 = loadImage("../kettle.png"); 
  tile3 = loadImage("../hotchocolatepack.png"); 
  tile4 = loadImage("../milk carton.png");
  tile5 = loadImage("../candy.png");
  tile6 = loadImage("../spoon.png");
  tile7 =loadImage("../hotcocoa.png");
  tile8 = loadImage("../end.jpg");

    //vars populate===
         dia = displayWidth*1/64;
  
            ptX1 = displayWidth*0;
            ptY1 = displayHeight*0;
            
            ptX2 = displayWidth*1/3;
            ptY2 = displayHeight*1/3;
            
            ptX3 = displayWidth*2/3;
            ptY3 = displayHeight*2/3;
            
            ptX4 = displayWidth;
            ptY4 = displayHeight;
  
      rectW = displayWidth*1/3;
      rectH = displayHeight*1/3;
      
      //button1 (start)
        bptX1 = displayWidth*6/16;
        bptY1 = displayHeight*6/16;
        b1W = displayWidth*1/4;
        b1H = displayHeight*1/16;
        
       //button2 (reset)
       bptY2 = displayWidth*4.25/16;
       
       //button3 (quit)
       bptY3 = displayWidth*5.14/16;
       
       
  //mug
  tile1x = displayWidth*3/36;
  tile1y = displayHeight*2/5;
  tile1wh = displayWidth*1/8;
  
  //kettle
  tile2x = displayWidth*1/8;
  tile2y = displayHeight*1/15;
  tile2wh = displayWidth*1/10;
  
  //hotcpack
  tile3x = displayWidth*4.5/10;
  tile3y = displayHeight*1/10;
  tile3wh = tile2wh;
  
  //milk
  tile4x = displayWidth*5/6;
  tile4y = displayHeight*1/16;
  tile4w = displayWidth*1/16;
  tile4h = displayHeight*1/4;
  
  //candy
  tile5x = displayWidth*2.25/3;
  tile5y = displayHeight*2/5;
  tile5w = displayWidth*1/8;
  tile5h = displayHeight*1/4;
  
  //spoon
  tile6x = displayWidth*4/5;
  tile6y = displayHeight*3/4;
  tile6w = displayWidth*1/8;
  tile6h = displayHeight*1/5;
  
  //full mug
  tile7x = displayWidth*2/5;
  tile7y = displayHeight*3/4;
  tile7w = displayWidth*1/6;
  tile7h = displayHeight*1/4;
  
  //end
  tile8x = ptX1;
  tile8y = ptY3;
  tile8w = rectW;
  tile8h = rectH;
  
  
  
  
}
