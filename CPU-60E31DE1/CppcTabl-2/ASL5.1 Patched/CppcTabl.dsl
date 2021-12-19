/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20140926-64 [Oct 24 2014]
 * Copyright (c) 2000 - 2014 Intel Corporation
 * 
 * Disassembly of CppcTabl.aml, Sun Jan 10 18:58:50 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000379 (889)
 *     Revision         0x01
 *     Checksum         0x6F
 *     OEM ID           "CppcTa"
 *     OEM Table ID     "CppcTabl"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120711 (538052369)
 */
DefinitionBlock ("CppcTabl.aml", "SSDT", 1, "CppcTa", "CppcTabl", 0x00003030)
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

    External (_PR_.CPU0, UnknownObj)
    External (_PR_.CPU0._PPC, IntObj)
    External (_PR_.CPU0._PSS, IntObj)
    External (_PR_.CPU0._TSS, IntObj)
    External (_PR_.CPU1, UnknownObj)
    External (_PR_.CPU2, UnknownObj)
    External (_PR_.CPU3, UnknownObj)
    External (_PR_.CPU4, UnknownObj)
    External (_PR_.CPU5, UnknownObj)
    External (_PR_.CPU6, UnknownObj)
    External (_PR_.CPU7, UnknownObj)
    External (PDC0, UnknownObj)
    External (TCNT, IntObj)

    Scope (\_SB)
    {
        Device (PCCD)
        {
            Name (PCCA, 0x80000000)
            Name (PCCS, 0x80000000)
            Name (PENB, 0x80000000)
            Name (_HID, EisaId ("INT340F"))  // _HID: Hardware ID
            Name (_STR, Unicode ("Collaborative Processor Performance Control (CPPC)"))  // _STR: Description String
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LOr (\_OSI ("Windows 2012"), \_OSI ("Windows 2015")))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
                
                If (\_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
            }

            Name (TMPP, Package (0x02)
            {
                0x80000000, 
                0x80000000
            })
            Method (PADR, 0, NotSerialized)
            {
                Store (PCCA, Index (TMPP, Zero))
                Store (PCCS, Index (TMPP, One))
                Return (TMPP) /* \_SB_.PCCD.TMPP */
            }

            Method (GPRN, 0, Serialized)
            {
                Name (T_0, Zero)  // _T_x: Emitted by ASL Compiler
                While (One)
                {
                    Store (TCNT, T_0) /* \_SB_.PCCD.GPRN.T_0 */
                    If (LEqual (T_0, 0x08))
                    {
                        Notify (\_PR.CPU0, 0x83) // Device-Specific Change
                        Notify (\_PR.CPU1, 0x83) // Device-Specific Change
                        Notify (\_PR.CPU2, 0x83) // Device-Specific Change
                        Notify (\_PR.CPU3, 0x83) // Device-Specific Change
                        Notify (\_PR.CPU4, 0x83) // Device-Specific Change
                        Notify (\_PR.CPU5, 0x83) // Device-Specific Change
                        Notify (\_PR.CPU6, 0x83) // Device-Specific Change
                        Notify (\_PR.CPU7, 0x83) // Device-Specific Change
                    }
                    Else
                    {
                        If (LEqual (T_0, 0x04))
                        {
                            Notify (\_PR.CPU0, 0x83) // Device-Specific Change
                            Notify (\_PR.CPU1, 0x83) // Device-Specific Change
                            Notify (\_PR.CPU2, 0x83) // Device-Specific Change
                            Notify (\_PR.CPU3, 0x83) // Device-Specific Change
                        }
                        Else
                        {
                            If (LEqual (T_0, 0x02))
                            {
                                Notify (\_PR.CPU0, 0x83) // Device-Specific Change
                                Notify (\_PR.CPU1, 0x83) // Device-Specific Change
                            }
                            Else
                            {
                                Notify (\_PR.CPU0, 0x83) // Device-Specific Change
                            }
                        }
                    }

                    Break
                }
            }

            Name (PCFG, Zero)
            Method (_PTC, 0, NotSerialized)  // _PTC: Processor Throttling Control
            {
                If (LAnd (CondRefOf (\PDC0), LNotEqual (\PDC0, 0x80000000)))
                {
                    If (And (\PDC0, 0x04))
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
                    Else
                    {
                        Return (Package (0x02)
                        {
                            ResourceTemplate ()
                            {
                                Register (SystemIO, 
                                    0x05,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000001810, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemIO, 
                                    0x05,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000001810, // Address
                                    ,)
                            }
                        })
                    }
                }
                Else
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

            Method (PSS, 0, NotSerialized)  // _PSS: Performance Supported States
            {
                If (CondRefOf (\_PR.CPU0._PSS))
                {
                    Return (\_PR.CPU0._PSS) /* External reference */
                }
                Else
                {
                    Return (Package (0x01)
                    {
                        Zero
                    })
                }
            }

            Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilites
            {
                If (CondRefOf (\_PR.CPU0._PPC))
                {
                    Return (\_PR.CPU0._PPC) /* External reference */
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (TSS, 0, NotSerialized)  // _TSS: Throttling Supported States
            {
                If (CondRefOf (\_PR.CPU0._TSS))
                {
                    Return (\_PR.CPU0._TSS) /* External reference */
                }
                Else
                {
                    Return (Package (0x01)
                    {
                        Zero
                    })
                }
            }
        }
    }
}

