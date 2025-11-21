### Usage intend is only sub-module (Clean version)
The entry point is intentionaly missing in this repo (i.e main function). Repo is modfied to only generate .o (or object file) of the base imgui (without linking) and later attach the object along with library (linking) to speed the process of all source compilation (only imgui source essentials). The make file is slightly modified, to generate all the required obj files of sources (i.e all cpp) and are dumped in obj folder. 


**Must have**
1. GLFW
```bash
brew install glfw
```

<hr />

**How to use:**
- Make this submodule of your project as:
```bash
git submodule add -b mac-csubmodule https://github.com/Thaparoshan143/imguibase_cpp /folder/to/submodule
```
- add this static lib (generated from premake) in **top level premake script**
