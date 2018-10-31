@Echo off
For /F "delims=" %%Z in ('Dir /B/S/A-D "%LocationOfScormFiles%"') Do (
    7z e "%%~fZ" -o"%%~dpnZ\Images" *.png *.jpeg *.jpg *.svg *.gif -r -aoa
	7z a "%%~fZ" "%%~dpnZ\Images"
	rmdir /S /Q "%%~dpnZ" 
)
