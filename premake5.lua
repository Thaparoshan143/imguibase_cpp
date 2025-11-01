project "imgui-sl"
    kind "StaticLib"
    language "C++"
    files { "./backends/*.cpp", "./*.cpp" }
    includedirs { "./", "./backends", "./includes" }
    targetdir "bin/%{cfg.buildcfg}"



