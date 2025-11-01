### iamgui base (for macos)
This repo is little modification of imgui using premake as build system..

**How to use**
This project uses premake as build system (lua script)

1. Clone repo (this branch)

```
git clone -b mac-cbase https://github.com/Thaparoshan143/imguibase_cpp
```
2. Ensure the requirements (for macos, from brew)

```bash
brew install premake glfw 
# verify the installation
premake5 --version && brew list | grep glfw
```

#for windows user, configure the path for library of glfw in premake
either use configurations function

``` lua
    configurations { "windows" }
        libdirs { "default/path/to/lib", "other/lib/search/path" }
        links { "glfw", "opengl.framework" } -- might be different.. 
```

or using filter function

``` lua
    filter "system:windows"
        -- same as above.. libdirs, and links
```

3. If bash script exists (i.e buildrun.sh)

```bash
bash buildrun.sh # wrapper to run build system and execute the app..
```

**Note:** If custom flag or option based required use premake5 manually to do so:
```bash
premake target # target is gmake, vs2013, ..
# make file will be generated now, build from make
make flags/args # send the args/flags for make, eg: config=release/debug..
# the executable by default will be under /bin/ dir, unless location in premake is changed..
```

<hr />

For any help on configuration/flag/arguments use
- for premake
```
premake5 --help
```
- for make
```
make help
```