# GA-Z87X-UD3H-11c-UEFI-Darwin-ACPI




##### DISCLAIMER: 

I'm not responsible for any brick or damage given to your board nor any of your hardware. Do it on your own, but before doing it, note that this acpi tables are modified to work perfectly for the GA-Z87X-UD3H GIGABYTE MOTHERBOARD with that exact F11c BIOS Firmware, and will not work on others.

Please, read carefully how to use these ACPI modified tables. 




#### INTRODUCTION:

These ACPI tables are directly exctracted from the GA-Z87X-UD3H-11c UEFI firmware BIOS and not extracted from running system. They are inside modules, and they was extracted using UEFITool from LongSoft/UEFITool release page, and the UEFITool App used was "NE-A59 & 0.25.1". They was decompiled with iASL 5.1 properly, then updated with ACPI 5.1, and finally patched to work on both Darwin &amp; Windows &amp; Linux as well.

Each table module folder was renamed as following "Table name + module GUID" (to facilitate the search & finding for the user), and it contains Original Extracted Table + Decompiled one, and a folder indicating the patched version in both "ASL & AML".




#### HOW TO USE:

Now using UEFITool, you only need to find each module by it's name or GUID, open the patched folder, and use "only" the AML file to replace the Original file with it. In UEFITool, double click the module GUID generally as "Freeform" then you right click and choose "Replace Body" as shown in this screenshot. 
Note: that each module that contain more than one file, are numbered from top to botom as 1, 2, 3 etc... in their folders respectively.


<img width="810" alt="Replace Body" src="https://user-images.githubusercontent.com/6939542/146685781-7c617271-5d45-4c00-ad0c-8ea55054dbd3.png">

UEFITool takes care of files to be replaced and convert automatically the extension as raw format. For the AmiBoardInfo that contains DSDT inside, you need to replace the PE32 Image inside the AmiBoardInfo module with the file named "AmiBoardInfo.bin" and do not use AML file for that, screenshot is what to follow

<img width="820" alt="AmiBoardInfo" src="https://user-images.githubusercontent.com/6939542/146685995-17e81882-1094-44dc-ac39-817d0685d36e.png">

<img width="622" alt="AmiBoardInfo Bin" src="https://user-images.githubusercontent.com/6939542/146686043-f663e07a-3090-46bc-907b-9ac87bf024fe.png">

Once you've fully replaced the file on their own modules, except the folders that do not contain "ASL5.1 Patched" folder which don't need to be used, you can save your BIOS, copy/paste on pen drive, and do a flash using End Keyboard button once you restart your motherboard.




#### CREDITS:

insanelymac
xpamamadeus
The HermitCrabs Lab
THe KiNG
FredWst
Nikolaj Schlej aka CodeRush - LongSoft
