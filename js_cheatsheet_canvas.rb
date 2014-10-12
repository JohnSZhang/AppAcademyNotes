:Canvas :Drawings

1. What Is Canvas? 

* Canvas Is A 2D Drawing API Added To HTML 5 And Supported By Most Browsers To Allow Deveopers To Draw Directly On To The Web Browser Without Flash Or Java. The <canvas> Tags Are Just Like Any Other Tags, With Width, Height, Name And Can Contain Any Number Of Elements Inside. 

* Canvas Coordinates Start At Top Left Most Point And Goes Right/Down. 

2. Basic Shapes

* Use :beginPath(), :closePath() To Create A Shape, :fillStyle() & :fill() To Fill In Color, And :lineTo() To Draw A Line But Use :stroke() To Actually Make It Appear.  

* Can Also Use The :fillRect() Method To Draw A Filled Rectangle Directly, :strokeRect() To Draw Simply An Outline, And :clearRect() To Clear A Rectangle. 

* :bezierCurveTo() And :quadraticCurveTo() Are More Advanced Forms Of Arc() That Allows You To Draw Curves. 

* After Using :beginPath(), It Is Often Helpful To Use :moveTo() To Move The pen Somewhere Else, And One Can Use :arc() To Draw SemiCircles. 

3. Images
* Use The Image() Constructor To Create A New Image. And Set Source Of Image Via image.src Property.

* Use :drawImge() To Deal With Drawing Images, And One Can Make Changes/Stretch The Original Image Since DrawImage Takes ImageName, Source/Source-Coods, And Destination Coords As Arguments. #This is possible because draw image is overloaded in canvas. 

4. Workin With Colors And Style

* Global Default Fill And Stroke Styles Can Be Set With The :fillStyle And :strokeStyle Properties. 

* Gradient Can Be Created With The :createLinearGradient() And :createRadialGradient()  Methods, Which Then Will Need The :addColorStop() With Color Arguments To Then Be Finally Filled Out. 

* Transparancy Of Object Can Be Set With Either THe :globalApha Value Or On A Stroke/Color Level. (RGBA Is Great For This)

* :lineWidth Is Used For Width (But Theres A Weird .5 Px Gap When Drawing Lines.) :lineCap To Cap If With Different Styles, And :lineJoin Determines How The Line Join Section Looks. 

* :creatPattern() Function Allows For The Creation Of Patterns Based Off An Image. And Shadows Allow The Creation Of Shadows On Objects. 

5. Transformations

* :save() And :restore() functions Allows For The Saving And Loading Of Canvas States. Save And Restores States Are A Stack, Last In Last Out. 

* :translate() Moves The Entire Canvas And Its Origin To A Different Location, While :rotate() Rotates And Canvas And Its Current Origin. 

6. Compositing

* Global CompositeOperations Are Used To Create Different Object Stacking Behaviors. 

* The :clip() Method Turns Current Path Into A Clipping Path. This Way Only What Is Inside The Clipping Path Will Show. 

7. Animations

* Basic Animation Loop Consist Of Clearing The Canvas, Save State, Draw Animated Shapes, Then Restores Canvas State And Draw New Frame. 

* Use :setInterval() And :setTimeout() To Set Timeout From Rendering. 