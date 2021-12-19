/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20140926-64 [Oct 24 2014]
 * Copyright (c) 2000 - 2014 Intel Corporation
 * 
 * Disassembly of IsctTabl.aml, Sun Jan 10 18:58:51 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000803 (2051)
 *     Revision         0x01
 *     Checksum         0x71
 *     OEM ID           "Intel_"
 *     OEM Table ID     "IsctTabl"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20091112 (537465106)
 */
DefinitionBlock ("IsctTabl.aml", "SSDT", 1, "Intel_", "IsctTabl", 0x00003030)
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

    External (_SB_.IFFS.FFSS, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.AWT0, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.AWT1, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.AWT2, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.IBT1, FieldUnitObj)
    External (_SB_.PCI0.LPCB.H_EC.IBT2, FieldUnitObj)
    External (_SB_.PCI0.LPCB.H_EC.LSTE, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.WTMS, IntObj)
    External (ICNF, IntObj)

    Scope (\_SB)
    {
        Device (IAOE)
        {
            OperationRegion (ISCT, SystemMemory, 0xFFFF0008, 0xAA58)
            Field (ISCT, AnyAcc, Lock, Preserve)
            {
                WKRS,   8, 
                AOCE,   8, 
                FFSE,   8, 
                ITMR,   8, 
                ECTM,   32, 
                RCTM,   32, 
                GNPT,   32, 
                ATOW,   8
            }

            Name (_HID, "INT33A0" /* Intel Smart Connect Technology Device */)  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (IBT1, Zero)
            Name (IBT2, Zero)
            Name (INSB, Zero)
            Name (WTMS, Zero)
            Name (AWT0, Zero)
            Name (AWT1, Zero)
            Name (AWT2, Zero)
            Name (PTSL, Zero)
            Name (SLPD, Zero)
            Name (IMDS, Zero)
            Name (IWDT, Zero)
            Method (GABS, 0, NotSerialized)
            {
                Return (ICNF) /* External reference */
            }

            Method (GAOS, 0, NotSerialized)
            {
                If (LEqual (ITMR, One))
                {
                    And (IBT1, One, Local0)
                    Or (Local0, And (IMDS, 0x02), Local0)
                    Return (Local0)
                }
                Else
                {
                    If (CondRefOf (\_SB.PCI0.LPCB.H_EC.IBT1))
                    {
                        Store (\_SB.PCI0.LPCB.H_EC.IBT1, Local0)
                    }
                    Else
                    {
                        Store (IBT1, Local0)
                    }

                    And (Local0, One, Local0)
                    Or (Local0, And (IMDS, 0x02), Local0)
                    Return (Local0)
                }
            }

            Method (SAOS, 1, NotSerialized)
            {
                If (LEqual (ITMR, One))
                {
                    Store (And (Arg0, 0x02), IMDS) /* \_SB_.IAOE.IMDS */
                    And (IBT1, 0xFE, Local0)
                    Or (Local0, And (Arg0, One), IBT1) /* \_SB_.IAOE.IBT1 */
                }
                Else
                {
                    If (CondRefOf (\_SB.PCI0.LPCB.H_EC.IBT1))
                    {
                        Store (\_SB.PCI0.LPCB.H_EC.IBT1, Local0)
                    }
                    Else
                    {
                        Store (IBT1, Local0)
                    }

                    And (Local0, 0xFE, Local0)
                    Or (Local0, And (Arg0, One), Local0)
                    Store (And (Arg0, 0x02), IMDS) /* \_SB_.IAOE.IMDS */
                    If (CondRefOf (\_SB.PCI0.LPCB.H_EC.IBT1))
                    {
                        Store (\_SB.PCI0.LPCB.H_EC.IBT1, \_SB.PCI0.LPCB.H_EC.ECMD (0x2B, Local0)) /* External reference */
                    }
                    Else
                    {
                        Store (IBT1, Local0) /* \_SB_.IAOE.IBT1 */
                    }
                }
            }

            Method (GANS, 0, NotSerialized)
            {
                Return (INSB) /* \_SB_.IAOE.INSB */
            }

            Method (SANS, 1, NotSerialized)
            {
                Store (And (Arg0, One), INSB) /* \_SB_.IAOE.INSB */
            }

            Method (GWLS, 0, NotSerialized)
            {
                If (LEqual (And (ICNF, 0x04), Zero))
                {
                    Return (Zero)
                }

                If (LEqual (ITMR, One))
                {
                    Store (One, Local0)
                    Store (IBT1, Local1)
                    Or (Local0, And (Local1, 0x0E), Local0)
                    Return (Local0)
                }
                Else
                {
                    If (CondRefOf (\_SB.PCI0.LPCB.H_EC.IBT2))
                    {
                        Store (\_SB.PCI0.LPCB.H_EC.IBT2, Local0)
                        Or (Local0, One, Local0)
                    }

                    If (CondRefOf (\_SB.PCI0.LPCB.H_EC.IBT1))
                    {
                        Store (\_SB.PCI0.LPCB.H_EC.IBT1, Local1)
                    }
                    Else
                    {
                        Store (IBT1, Local1)
                    }

                    Or (Local0, And (Local1, 0x0E), Local0)
                    Return (Local0)
                }
            }

            Method (SWLS, 1, NotSerialized)
            {
                If (LEqual (And (ICNF, 0x04), Zero))
                {
                    Return (Zero)
                }

                If (LEqual (ITMR, One))
                {
                    Store (IBT1, Local0)
                    And (Local0, 0xF1, Local0)
                    Or (Local0, And (Arg0, 0x0E), Local0)
                    If (CondRefOf (\_SB.IFFS.FFSS))
                    {
                        If (LAnd (And (\_SB.IFFS.FFSS, 0x03), And (Arg0, 0x02)))
                        {
                            Or (Local0, 0x04, Local0)
                        }
                    }

                    Store (Local0, IBT1) /* \_SB_.IAOE.IBT1 */
                }
                Else
                {
                    If (CondRefOf (\_SB.PCI0.LPCB.H_EC.IBT1))
                    {
                        Store (\_SB.PCI0.LPCB.H_EC.IBT1, Local0)
                    }
                    Else
                    {
                        Store (IBT1, Local0)
                    }

                    And (Local0, 0xF1, Local0)
                    Or (Local0, And (Arg0, 0x0E), Local0)
                    If (CondRefOf (\_SB.IFFS.FFSS))
                    {
                        If (LAnd (And (\_SB.IFFS.FFSS, 0x03), And (Arg0, 0x02)))
                        {
                            Or (Local0, 0x04, Local0)
                        }
                    }

                    If (CondRefOf (\_SB.PCI0.LPCB.H_EC.IBT1))
                    {
                        Store (\_SB.PCI0.LPCB.H_EC.IBT1, \_SB.PCI0.LPCB.H_EC.ECMD (0x2B, Local0)) /* External reference */
                    }
                    Else
                    {
                        Store (Local0, IBT1) /* \_SB_.IAOE.IBT1 */
                    }
                }
                
                Return (Zero)
            }

            Method (GWWS, 0, NotSerialized)
            {
                If (LEqual (And (ICNF, 0x08), Zero))
                {
                    Return (Zero)
                }

                If (LEqual (ITMR, One))
                {
                    Store (One, Local0)
                    Store (IBT1, Local1)
                    Or (Local0, ShiftRight (And (Local1, 0x70), 0x03), Local0)
                    Return (Local0)
                }
                Else
                {
                    If (CondRefOf (\_SB.PCI0.LPCB.H_EC.IBT2))
                    {
                        Store (\_SB.PCI0.LPCB.H_EC.IBT2, Local0)
                        ShiftRight (Or (Local0, 0x02), One, Local0)
                    }

                    If (CondRefOf (\_SB.PCI0.LPCB.H_EC.IBT1))
                    {
                        Store (\_SB.PCI0.LPCB.H_EC.IBT1, Local1)
                    }
                    Else
                    {
                        Store (IBT1, Local1)
                    }

                    Or (Local0, ShiftRight (And (Local1, 0x70), 0x03), Local0)
                    Return (Local0)
                }
            }

            Method (SWWS, 1, NotSerialized)
            {
                If (LEqual (And (ICNF, 0x08), Zero))
                {
                    Return (Zero)
                }

                If (LEqual (ITMR, One))
                {
                    Store (IBT1, Local0)
                    And (Local0, 0x8F, Local0)
                    Or (Local0, ShiftLeft (And (Arg0, 0x0E), 0x03), Local0)
                    If (CondRefOf (\_SB.IFFS.FFSS))
                    {
                        If (LAnd (And (\_SB.IFFS.FFSS, 0x03), And (Arg0, 0x02)))
                        {
                            Or (Local0, 0x20, Local0)
                        }
                    }

                    Store (Local0, IBT1) /* \_SB_.IAOE.IBT1 */
                }
                Else
                {
                    If (CondRefOf (\_SB.PCI0.LPCB.H_EC.IBT1))
                    {
                        Store (\_SB.PCI0.LPCB.H_EC.IBT1, Local0)
                    }
                    Else
                    {
                        Store (IBT1, Local0)
                    }

                    And (Local0, 0x8F, Local0)
                    Or (Local0, ShiftLeft (And (Arg0, 0x0E), 0x03), Local0)
                    If (CondRefOf (\_SB.IFFS.FFSS))
                    {
                        If (LAnd (And (\_SB.IFFS.FFSS, 0x03), And (Arg0, 0x02)))
                        {
                            Or (Local0, 0x20, Local0)
                        }
                    }

                    If (CondRefOf (\_SB.PCI0.LPCB.H_EC.IBT1))
                    {
                        Store (\_SB.PCI0.LPCB.H_EC.IBT1, \_SB.PCI0.LPCB.H_EC.ECMD (0x2B, Local0)) /* External reference */
                    }
                    Else
                    {
                        Store (Local0, IBT1) /* \_SB_.IAOE.IBT1 */
                    }
                }
                
                Return (Zero)
            }

            Method (SASD, 1, NotSerialized)
            {
                If (LAnd (And (ICNF, 0x10), LGreater (Arg0, Zero)))
                {
                    If (LEqual (ITMR, One))
                    {
                        Store (Arg0, RCTM) /* \_SB_.IAOE.RCTM */
                    }
                    Else
                    {
                        Store (Arg0, ECTM) /* \_SB_.IAOE.ECTM */
                    }

                    If (LAnd (CondRefOf (\_SB.PCI0.LPCB.H_EC.WTMS), LEqual (PTSL, 0x03)))
                    {
                        Store (And (ECTM, 0xFF), \_SB.PCI0.LPCB.H_EC.AWT0) /* External reference */
                        Store (ShiftRight (And (ECTM, 0xFF00), 0x08), \_SB.PCI0.LPCB.H_EC.AWT1) /* External reference */
                        Store (ShiftRight (And (ECTM, 0x00FF0000), 0x10), \_SB.PCI0.LPCB.H_EC.AWT2) /* External reference */
                        Store (\_SB.PCI0.LPCB.H_EC.WTMS, Local0)
                        Store (Or (0x81, Local0), \_SB.PCI0.LPCB.H_EC.WTMS) /* External reference */
                    }
                    Else
                    {
                        Store (And (ECTM, 0xFF), AWT0) /* \_SB_.IAOE.AWT0 */
                        Store (ShiftRight (And (ECTM, 0xFF00), 0x08), AWT1) /* \_SB_.IAOE.AWT1 */
                        Store (ShiftRight (And (ECTM, 0x00FF0000), 0x10), AWT2) /* \_SB_.IAOE.AWT2 */
                        Store (WTMS, Local0)
                        Store (Or (0x81, Local0), WTMS) /* \_SB_.IAOE.WTMS */
                    }
                }
                Else
                {
                    Store (Arg0, SLPD) /* \_SB_.IAOE.SLPD */
                }
            }

            Method (GPWR, 0, NotSerialized)
            {
                If (And (WKRS, 0x1F))
                {
                    Return (WKRS) /* \_SB_.IAOE.WKRS */
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (GPCS, 0, NotSerialized)
            {
                If (LEqual (ITMR, Zero))
                {
                    If (CondRefOf (\_SB.PCI0.LPCB.H_EC.LSTE))
                    {
                        Return (And (\_SB.PCI0.LPCB.H_EC.LSTE, One))
                    }
                }
                Else
                {
                    Return (One)
                }
                
                Return (Zero)
            }

            Method (GAWD, 0, NotSerialized)
            {
                Return (IWDT) /* \_SB_.IAOE.IWDT */
            }

            Method (SAWD, 1, NotSerialized)
            {
                Store (Arg0, IWDT) /* \_SB_.IAOE.IWDT */
            }
        }
    }
}

