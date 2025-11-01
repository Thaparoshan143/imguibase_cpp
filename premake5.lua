project "imgui-sl"
    kind "StaticLib"
    language "C++"
    files { "./backends/*.cpp", "./*.cpp" }
    targetdir "bin/%{cfg.buildcfg}"



