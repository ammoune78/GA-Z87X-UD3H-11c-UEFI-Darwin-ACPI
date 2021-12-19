# GA-Z87X-UD3H-11c-UEFI-Darwin-ACPI




## DISCLAIMER: 

#### I'm not responsible for any brick or damage given to your board nor any of your hardware. Do it on your own, but before doing it, note that this acpi tables are modified to work perfectly for the GA-Z87X-UD3H GIGABYTE MOTHERBOARD with that exact F11c BIOS Firmware, and will not work on others. Please, read carefully how to use these ACPI modified tables. 




## INTRODUCTION:

These ACPI tables are directly exctracted from the GA-Z87X-UD3H-11c UEFI firmware BIOS and not extracted from running system. They are inside modules, and they was extracted using UEFITool from LongSoft/UEFITool release page, and the UEFITool App used was "NE-A59 & 0.25.1". They was decompiled with iASL 5.1 properly, then updated with ACPI 5.1, and finally patched to work on both Darwin &amp; Windows &amp; Linux as well.

Each module table folder was renamed as following "Table name + module GUID" (to facilitate the search & finding for the user), and it contains Original Extracted Table + Decompiled one, and a folder indicating the patched version in both "ASL & AML".




## HOW TO USE:

Check out the Wiki page for the instructions on how to use the files.




## CREDITS:

insanelymac;
xpamamadeus;
The HermitCrabs Lab;
THe KiNG;
FredWst;
Nikolaj Schlej aka CodeRush - LongSoft.
