### Usage intend is only sub-module
The entry point is intentionaly missing in this repo (i.e main function). Repo is modfied to only generate .o (or object file) of the base imgui (without linking) and later attach the object along with library (linking) to speed the process of all source compilation (only imgui source essentials). The make file is slightly modified, to generate all the required obj files of sources (i.e all cpp) and are dumped in obj folder. 


**Must have**
1. GLFW
> brew install glfw

<hr />

**How to use:**
- Make this submodule of your project as:
> git submodule add -b mac-submodule https://github.com/Thaparoshan143/imguibase_cpp /folder/to/submodule
- At the root folder (where main.cpp contains) copy shell command below
- Modify the fields of script based on requirement and finally run with bash


**Bash Command** 

```bash
COMPILER=g++
CPP_VERSION=17 # higher version is used to ensure newer compatbility
APP_NAME=app
INCLUDES_DIR=(-I./) # other include directory of project

IMGUI_DIR=./imgui/ # directory where imgui exist
INCLUDES_DIR+=(-I${IMGUI_DIR} -I${IMGUI_DIR}/backends -I${IMGUI_DIR}/includes)

# device includes library, if required uncomment..
# INCLUDES_DIR+=(-I/usr/local/include -I/opt/local/include -I/opt/homebrew/include)

# echo ${INCLUDES_DIR[*]}
LIBS+=(-framework OpenGL)
LIBS+=(-L/usr/local/lib -L/opt/local/lib -L/opt/homebrew/lib) #if library are cached else.. 
LIBS+=(-lglfw)

make -C ${IMGUI_DIR} # first generate all the obj of the imgui-submodules and them attach them
${COMPILER} -std=c++${CPP_VERSION} -Wall main.cpp ${IMGUI_DIR}obj/*.o ${INCLUDES_DIR[*]} -o ${APP_NAME} ${LIBS[*]} && .\/${APP_NAME} 
```