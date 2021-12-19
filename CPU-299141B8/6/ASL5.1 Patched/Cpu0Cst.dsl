/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20140926-64 [Oct 24 2014]
 * Copyright (c) 2000 - 2014 Intel Corporation
 * 
 * Disassembly of Cpu0Cst.aml, Sun Jan 10 18:58:50 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000003D3 (979)
 *     Revision         0x01
 *     Checksum         0xB3
 *     OEM ID           "PmRef"
 *     OEM Table ID     "Cpu0Cst"
 *     OEM Revision     0x00003001 (12289)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120711 (538052369)
 */
DefinitionBlock ("Cpu0Cst.aml", "SSDT", 1, "PmRef", "Cpu0Cst", 0x00003030)
{
    /*
     * iASL Warning: There were 13 external control methods found during
     * disassembly, but additional ACPI tables to resolve these externals
     * were not specified. This resulting disassembler output file may not
     * compile because the disassembler did not know how many arguments
     * to assign to these methods. To specify the tables needed to resolve
     * external control method references, the -e option can be used to
     * specify the filenames. Example iASL invocations:
     *     iasl -e ssdt1.aml ssdt2.aml ssdt3.aml -d dsdt.aml
     *     iasl -e dsdt.aml ssdt2.aml -d ssdt1.aml
     *     iasl -e ssdt*.aml -d dsdt.aml
     *
     * In addition, the -fe option can be used to specify a file containing
     * control method external declarations with the associated method
     * argument counts. Each line of the file must be of the form:
     *     External (<method pathname>, MethodObj, <argument count>)
     * Invocation:
     *     iasl -fe refs.txt -d dsdt.aml
     *
     * The following methods were unresolved and many not compile properly
     * because the disassembler had to guess at the number of arguments
     * required for each:
     */

    /*
     * External declarations that were imported from
     * the reference file [refs.txt]
     */
    External (_SB_.GP2A, MethodObj)    // 2 Arguments
    External (_SB_.GP2B, MethodObj)    // 2 Arguments
    External (_SB_.PCI0.GFX0.IUEH, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECMD, MethodObj)    // 3 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECRD, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.PEG0.PEGP.SGPO, MethodObj)    // 0 Arguments
    External (_SB_.TPM_.PTS_, MethodObj)    // 1 Arguments
    External (_SB_.WTGP, MethodObj)    // 2 Arguments
    External (ADBG, MethodObj)    // 1 Arguments
    External (DTGP, MethodObj)    // 1 Arguments
    External (GUAM, MethodObj)    // 1 Arguments
    External (HNOT, MethodObj)    // 1 Arguments
    External (MDBG, MethodObj)    // 1 Arguments

    External (_PR_.CPU0, DeviceObj)
    External (C3LT, IntObj)
    External (C3MW, IntObj)
    External (C6LT, IntObj)
    External (C6MW, IntObj)
    External (C7LT, IntObj)
    External (C7MW, IntObj)
    External (CDLT, IntObj)
    External (CDLV, IntObj)
    External (CDMW, IntObj)
    External (CDPW, IntObj)
    External (CFGD, UnknownObj)
    External (PDC0, UnknownObj)

    Scope (\_PR.CPU0)
    {
        Name (C1TM, Package (0x04)
        {
            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x00,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000000, // Address
                    ,)
            }, 

            One, 
            One, 
            0x03E8
        })
        Name (C3TM, Package (0x04)
        {
            ResourceTemplate ()
            {
                Register (SystemIO, 
                    0x08,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000001814, // Address
                    ,)
            }, 

            0x02, 
            Zero, 
            0x01F4
        })
        Name (C6TM, Package (0x04)
        {
            ResourceTemplate ()
            {
                Register (SystemIO, 
                    0x08,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000001815, // Address
                    ,)
            }, 

            0x02, 
            Zero, 
            0x015E
        })
        Name (C7TM, Package (0x04)
        {
            ResourceTemplate ()
            {
                Register (SystemIO, 
                    0x08,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000001816, // Address
                    ,)
            }, 

            0x02, 
            Zero, 
            0xC8
        })
        Name (CDTM, Package (0x04)
        {
            ResourceTemplate ()
            {
                Register (SystemIO, 
                    0x08,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000001816, // Address
                    ,)
            }, 

            0x03, 
            Zero, 
            Zero
        })
        Name (MWES, ResourceTemplate ()
        {
            Register (FFixedHW, 
                0x01,               // Bit Width
                0x02,               // Bit Offset
                0x0000000000000000, // Address
                0x01,               // Access Size
                )
        })
        Name (AC2V, Zero)
        Name (AC3V, Zero)
        Name (C3ST, Package (0x04)
        {
            0x03, 
            Package (0x01) {Zero}, 
            Package (0x01) {Zero}, 
            Package (0x01) {Zero}
        })
        Name (C2ST, Package (0x03)
        {
            0x02, 
            Package (0x01) {Zero}, 
            Package (0x01) {Zero}
        })
        Name (C1ST, Package (0x02)
        {
            One, 
            Package (0x01) {Zero}
        })
        Name (CSTF, Zero)
        Name (GEAR, Zero)
        Method (_CST, 0, Serialized)  // _CST: C-States
        {
            If (LNot (CSTF))
            {
                Store (C3LT, Index (C3TM, 0x02))
                Store (C6LT, Index (C6TM, 0x02))
                Store (C7LT, Index (C7TM, 0x02))
                Store (CDLT, Index (CDTM, 0x02))
                Store (CDPW, Index (CDTM, 0x03))
                Store (CDLV, Index (DerefOf (Index (CDTM, Zero)), 0x07))
                If (LAnd (And (CFGD, 0x0800), And (PDC0, 0x0200)))
                {
                    Store (MWES, Index (C1TM, Zero))
                    Store (MWES, Index (C3TM, Zero))
                    Store (MWES, Index (C6TM, Zero))
                    Store (MWES, Index (C7TM, Zero))
                    Store (MWES, Index (CDTM, Zero))
                    Store (C3MW, Index (DerefOf (Index (C3TM, Zero)), 0x07))
                    Store (C6MW, Index (DerefOf (Index (C6TM, Zero)), 0x07))
                    Store (C7MW, Index (DerefOf (Index (C7TM, Zero)), 0x07))
                    Store (CDMW, Index (DerefOf (Index (CDTM, Zero)), 0x07))
                }
                Else
                {
                    If (LAnd (And (CFGD, 0x0800), And (PDC0, 0x0100)))
                    {
                        Store (MWES, Index (C1TM, Zero))
                    }
                }

                Store (Ones, CSTF) /* \_PR_.CPU0.CSTF */
            }

            Store (Zero, AC2V) /* \_PR_.CPU0.AC2V */
            Store (Zero, AC3V) /* \_PR_.CPU0.AC3V */
            Store (C1TM, Index (C3ST, One))
            If (And (CFGD, 0x20))
            {
                Store (C7TM, Index (C3ST, 0x02))
                Store (Ones, AC2V) /* \_PR_.CPU0.AC2V */
            }
            Else
            {
                If (And (CFGD, 0x10))
                {
                    Store (C6TM, Index (C3ST, 0x02))
                    Store (Ones, AC2V) /* \_PR_.CPU0.AC2V */
                }
                Else
                {
                    If (And (CFGD, 0x08))
                    {
                        Store (C3TM, Index (C3ST, 0x02))
                        Store (Ones, AC2V) /* \_PR_.CPU0.AC2V */
                    }
                }
            }

            If (And (CFGD, 0x4000))
            {
                Store (CDTM, Index (C3ST, 0x03))
                Store (Ones, AC3V) /* \_PR_.CPU0.AC3V */
            }

            If (LEqual (GEAR, One))
            {
                If (And (CFGD, 0x08))
                {
                    Store (C3TM, Index (C3ST, 0x02))
                    Store (Ones, AC2V) /* \_PR_.CPU0.AC2V */
                    Store (Zero, AC3V) /* \_PR_.CPU0.AC3V */
                }
                Else
                {
                    Store (Zero, AC2V) /* \_PR_.CPU0.AC2V */
                    Store (Zero, AC3V) /* \_PR_.CPU0.AC3V */
                }
            }

            If (LEqual (GEAR, 0x02))
            {
                Store (Zero, AC2V) /* \_PR_.CPU0.AC2V */
                Store (Zero, AC3V) /* \_PR_.CPU0.AC3V */
            }

            If (LAnd (AC2V, AC3V))
            {
                Return (C3ST) /* \_PR_.CPU0.C3ST */
            }
            Else
            {
                If (AC2V)
                {
                    Store (DerefOf (Index (C3ST, One)), Index (C2ST, One))
                    Store (DerefOf (Index (C3ST, 0x02)), Index (C2ST, 0x02))
                    Return (C2ST) /* \_PR_.CPU0.C2ST */
                }
                Else
                {
                    If (AC3V)
                    {
                        Store (DerefOf (Index (C3ST, One)), Index (C2ST, One))
                        Store (DerefOf (Index (C3ST, 0x03)), Index (C2ST, 0x02))
                        Store (0x02, Index (DerefOf (Index (C2ST, 0x02)), One))
                        Return (C2ST) /* \_PR_.CPU0.C2ST */
                    }
                    Else
                    {
                        Store (DerefOf (Index (C3ST, One)), Index (C1ST, One))
                        Return (C1ST) /* \_PR_.CPU0.C1ST */
                    }
                }
            }
        }
    }
}

