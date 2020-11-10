# beethoven

### Step1: config external libraries
Use ```init.sh``` to download 
[glfw](https://github.com/glfw/glfw), 
[glm](https://github.com/g-truc/glm), 
[assimp](https://github.com/assimp/assimp), 
and [stb_image](https://github.com/nothings/stb/blob/master/stb_image.h).  

```
./init.sh
```

For [glad](https://github.com/Dav1dde/glad), 
you need to use the [online service](https://glad.dav1d.de/) to access the files. 

In that page, you should specify the **OpenGL version** 
and choose the **Core** mode in Profile option.

Make sure you check the **Generate a loader**, 
then click **GENERATE** button to generate files.

Download the **glad.zip**, 
uncompress it and copy to the ```external/glad``` folder.

### Step2: compile the project
```
mkdir build && cd build
cmake ..
make -j4
```

### Step3: run test 
If no errors occur, run
```
./test
```
and you will see a blank window. 