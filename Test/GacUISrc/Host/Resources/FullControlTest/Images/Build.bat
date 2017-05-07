cls
@echo off
setlocal enabledelayedexpansion
echo ^<Folder^>> LargeImages.xml
echo ^<Folder^>> SmallImages.xml
for %%f in (*_16x16_*.png) do (
    set "name=%%f"
    set "prefix=!name:~0,4!"
    set "id=!name:~4,-13!"
    echo.  ^<Image name="!id!" content="File"^>!prefix!!id!_32x32_72.png^</Image^>>> LargeImages.xml
    echo.  ^<Image name="!id!" content="File"^>!prefix!!id!_16x16_72.png^</Image^>>> SmallImages.xml
)
echo ^</Folder^>>> LargeImages.xml
echo ^</Folder^>>> SmallImages.xml