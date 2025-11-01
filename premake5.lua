workspace "imgui-space"
    configurations { "Release" }

project "imgui-base"
    kind "StaticLib"
    language "C++"

    files { "**.cpp", "**.hpp" }

    includedirs { "./", "./includes", "./backends" }

    -- this linked library are explictly for the macos.. 
    -- ensure opengl compatible and glfw is installed in path with brew...
    configurations { "macosx" }
        libdirs { "/opt/homebrew/lib", "/opt/local/lib", "/usr/local/lib" }

        links { "glfw", "opengl.framework" }



