# Walnut App Template

This is a simple app template for [Walnut](https://github.com/TheCherno/Walnut) - unlike the example within the Walnut repository, this keeps Walnut as an external submodule and is much more sensible for actually building applications. See the [Walnut](https://github.com/TheCherno/Walnut) repository for more details.

## Getting Started
Once you've cloned, you can customize the `premake5.lua` and `WalnutApp/premake5.lua` files to your liking (eg. change the name from "WalnutApp" to something else).  Once you're happy, run `scripts/Setup.bat` to generate Visual Studio 2022 solution/project files. Your app is located in the `WalnutApp/` directory, which some basic example code to get you going in `WalnutApp/src/WalnutApp.cpp`. I recommend modifying that WalnutApp project to create your own application, as everything should be setup and ready to go.

## Linux [meson]

Install the following dependencies `glm glfw3 vulkan` using your platform's package manager then run `scripts/setup.sh` to copy the meson.build files to the right directories. Once done, you'll be ready to build your Walnut app using `meson` and `ninja`

```
mkdir bin
cd bin
meson ..
ninja

exec WalnutApp/Walnut
```

#### Vulkan

- Tools: 

    Debian `sudo apt install vulkan-tools`
    
    or
    
    Fedora `sudo dnf install vulkan-tools`
    
    or 
    
    Arch `sudo pacman -S vulkan-tools`
    
- Dev packages

    Debian `sudo apt install libvulkan-dev`
    
    or
    
    Fedora `sudo dnf install vulkan-loader-devel`
    
    or
    
    Arch `sudo pacman -S vulkan-devel` 
    
- Debug packages

    Debian `sudo apt install vulkan-validationlayers-dev spirv-tools`
    
    or
    
    Fedora `sudo dnf install mesa-vulkan-devel vulkan-validation-layers-devel`


#### GLFW

Debian `sudo apt install libglfw3-dev`

or

Fedora `sudo dnf install glfw-devel`

or

Arch `sudo pacman -S glfw-wayland # glfw-x11 for X11 users`

#### GLM

Debian `sudo apt install libglm-dev`

or

Fedora `sudo dnf install glm-devel`

or

Arch `sudo pacman -S glm`

#### In case `Xxf68vm` and `Xi` libraries are not yet installed on your system 

Debian `sudo apt install libxxf86vm-dev libxi-dev`

or

Fedora `sudo dnf install libXi libXxf86vm`

or

Arch `sudo pacman -S libxi libxxf86vm`



