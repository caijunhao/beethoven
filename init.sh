GLFW_PATH="external/glfw"
GLM_PATH="external/glm"
ASSIMP_PATH="external/assimp"
GLAD_PATH="external/glad"
STB_PATH="external/stb"

if [[ ! -d ${GLFW_PATH} ]]; then
  git clone https://github.com/glfw/glfw.git ${GLFW_PATH}
else
  echo "glfw already exists"
fi

if [[ ! -d ${GLM_PATH} ]]; then
  git clone https://github.com/g-truc/glm.git ${GLM_PATH}
else
  echo "glm already exists"
fi

if [[ ! -d ${ASSIMP_PATH} ]]; then
  git clone https://github.com/assimp/assimp.git ${ASSIMP_PATH}
else
  echo "assimp already exists"
fi

if [[ ! -d ${STB_PATH} ]]; then
  mkdir -p ${STB_PATH}
  wget -P ${STB_PATH} https://raw.githubusercontent.com/nothings/stb/master/stb_image.h
else
  echo "stb_image already exists"
fi


