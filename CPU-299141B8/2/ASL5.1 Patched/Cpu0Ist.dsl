/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20140926-64 [Oct 24 2014]
 * Copyright (c) 2000 - 2014 Intel Corporation
 * 
 * Disassembly of Cpu0Ist.aml, Sun Jan 10 18:58:50 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000539 (1337)
 *     Revision         0x01
 *     Checksum         0xDE
 *     OEM ID           "PmRef"
 *     OEM Table ID     "Cpu0Ist"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120711 (538052369)
 */
DefinitionBlock ("Cpu0Ist.aml", "SSDT", 1, "PmRef", "Cpu0Ist", 0x00003030)
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

    External (_PR_.CPPC, IntObj)
    External (_PR_.CPU0, DeviceObj)
    External (CFGD, UnknownObj)
    External (PDC0, UnknownObj)
    External (TCNT, IntObj)

    Scope (\_PR.CPU0)
    {
        Name (_PPC, Zero)  // _PPC: Performance Present Capabilites
        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {
            Store (\_PR.CPPC, \_PR.CPU0._PPC)
            If (LAnd (And (CFGD, One), And (PDC0, One)))
            {
                Return (Package (0x02)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }
                })
            }
        }

        Name (_PSS, Package (0x20)  // _PSS: Performance Supported States
        {
            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Name (PSDF, Zero)
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If (LNot (PSDF))
            {
                Store (TCNT, Index (DerefOf (Index (HPSD, Zero)), 0x04))
                Store (TCNT, Index (DerefOf (Index (SPSD, Zero)), 0x04))
                Store (Ones, PSDF) /* \_PR_.CPU0.PSDF */
            }

            If (And (PDC0, 0x0800))
            {
                Return (HPSD) /* \_PR_.CPU0.HPSD */
            }

            Return (SPSD) /* \_PR_.CPU0.SPSD */
        }

        Name (HPSD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFE, 
                0x80
            }
        })
        Name (SPSD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFC, 
                0x80
            }
        })
    }
}

