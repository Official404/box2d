project "Box2D"
    kind "StaticLib"
    language "C++"
    cppdialect "C++11"
    staticruntime "off"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files {
        "src/**.h",
        "src/**.cpp",
        "include/**.h"
    }

    includedirs {
        "include",
        "src"
    }

    filter "system:windows"
        systemversion "latest"

    filter "system:linux"
        pic "on"
        systemversion "latest"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "off"

    filter "configurations:Release"
        runtime "Release"
        optimize "off"

    filter "configurations:Dist"
        runtime "Release"
        optimize "on"