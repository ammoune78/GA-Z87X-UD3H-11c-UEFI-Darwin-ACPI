/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20140926-64 [Oct 24 2014]
 * Copyright (c) 2000 - 2014 Intel Corporation
 * 
 * Disassembly of CtdpB.aml, Sun Jan 10 18:58:50 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000436 (1078)
 *     Revision         0x01
 *     Checksum         0x44
 *     OEM ID           "CtdpB"
 *     OEM Table ID     "CtdpB"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120711 (538052369)
 */
DefinitionBlock ("CtdpB.aml", "SSDT", 1, "CtdpB", "CtdpB", 0x00003030)
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
    External (_SB_.PCI0, DeviceObj)
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
    External (_PR_.CPU0._PPC, UnknownObj)
    External (_PR_.CPU0._PSS, UnknownObj)
    External (_PR_.CPU1, UnknownObj)
    External (_PR_.CPU2, UnknownObj)
    External (_PR_.CPU3, UnknownObj)
    External (_PR_.CPU4, UnknownObj)
    External (_PR_.CPU5, UnknownObj)
    External (_PR_.CPU6, UnknownObj)
    External (_PR_.CPU7, UnknownObj)
    External (_SB_.PCCD, UnknownObj)
    External (MHBR, UnknownObj)
    External (PNHM, UnknownObj)
    External (TCNT, UnknownObj)

    Scope (\_SB.PCI0)
    {
        OperationRegion (MBAR, SystemMemory, Add (ShiftLeft (MHBR, 0x0F), 0x5000), 0x1000)
        Field (MBAR, ByteAcc, NoLock, Preserve)
        {
            Offset (0x930), 
            PTDP,   15, 
            Offset (0x932), 
            PMIN,   15, 
            Offset (0x934), 
            PMAX,   15, 
            Offset (0x936), 
            TMAX,   7, 
            Offset (0x938), 
            PWRU,   4, 
            Offset (0x939), 
            EGYU,   5, 
            Offset (0x93A), 
            TIMU,   4, 
            Offset (0x958), 
            Offset (0x95C), 
            LPMS,   1, 
            CTNL,   2, 
            Offset (0x9A0), 
            PPL1,   15, 
            PL1E,   1, 
                ,   1, 
            PL1T,   7, 
            Offset (0x9A4), 
            PPL2,   15, 
            PL2E,   1, 
                ,   1, 
            PL2T,   7, 
            Offset (0xF3C), 
            TARN,   8, 
            Offset (0xF40), 
            PTD1,   15, 
            Offset (0xF42), 
            TAR1,   8, 
            Offset (0xF44), 
            PMX1,   15, 
            Offset (0xF46), 
            PMN1,   15, 
            Offset (0xF48), 
            PTD2,   15, 
            Offset (0xF4A), 
            TAR2,   8, 
            Offset (0xF4C), 
            PMX2,   15, 
            Offset (0xF4E), 
            PMN2,   15, 
            Offset (0xF50), 
            CTCL,   2, 
                ,   29, 
            CLCK,   1, 
            TAR,    8
        }

        Method (CTCU, 0, NotSerialized)
        {
            Store (PTD2, PPL1) /* \_SB_.PCI0.PPL1 */
            Store (One, PL1E) /* \_SB_.PCI0.PL1E */
            Store (CLC2 (PTD2), PPL2) /* \_SB_.PCI0.PPL2 */
            Store (One, PL2E) /* \_SB_.PCI0.PL2E */
            SPPC (One)
            Subtract (TAR2, One, TAR) /* \_SB_.PCI0.TAR_ */
            Store (0x02, CTCL) /* \_SB_.PCI0.CTCL */
        }

        Method (CTCN, 0, NotSerialized)
        {
            If (LEqual (CTCL, One))
            {
                Store (PTDP, PPL1) /* \_SB_.PCI0.PPL1 */
                Store (One, PL1E) /* \_SB_.PCI0.PL1E */
                Store (CLC2 (PTDP), PPL2) /* \_SB_.PCI0.PPL2 */
                Store (One, PL2E) /* \_SB_.PCI0.PL2E */
                NPPC (TARN)
                Subtract (TARN, One, TAR) /* \_SB_.PCI0.TAR_ */
                Store (Zero, CTCL) /* \_SB_.PCI0.CTCL */
            }
            Else
            {
                If (LEqual (CTCL, 0x02))
                {
                    Store (Zero, CTCL) /* \_SB_.PCI0.CTCL */
                    Subtract (TARN, One, TAR) /* \_SB_.PCI0.TAR_ */
                    NPPC (TARN)
                    Store (CLC2 (PTDP), PPL2) /* \_SB_.PCI0.PPL2 */
                    Store (One, PL2E) /* \_SB_.PCI0.PL2E */
                    Store (PTDP, PPL1) /* \_SB_.PCI0.PPL1 */
                    Store (One, PL1E) /* \_SB_.PCI0.PL1E */
                }
            }
        }

        Method (CTCD, 0, NotSerialized)
        {
            Store (One, CTCL) /* \_SB_.PCI0.CTCL */
            Subtract (TAR1, One, TAR) /* \_SB_.PCI0.TAR_ */
            NPPC (TAR1)
            Store (CLC2 (PTD1), PPL2) /* \_SB_.PCI0.PPL2 */
            Store (One, PL2E) /* \_SB_.PCI0.PL2E */
            Store (PTD1, PPL1) /* \_SB_.PCI0.PPL1 */
            Store (One, PL1E) /* \_SB_.PCI0.PL1E */
        }

        Method (NPPC, 1, Serialized)
        {
            Name (TRAT, Zero)
            Name (PRAT, Zero)
            Name (TMPI, Zero)
            Store (Arg0, TRAT) /* \_SB_.PCI0.NPPC.TRAT */
            Store (SizeOf (\_PR.CPU0._PSS), TMPI) /* \_SB_.PCI0.NPPC.TMPI */
            While (LNotEqual (TMPI, Zero))
            {
                Decrement (TMPI)
                Store (DerefOf (Index (DerefOf (Index (\_PR.CPU0._PSS, TMPI)), 0x04)), 
                    PRAT) /* \_SB_.PCI0.NPPC.PRAT */
                ShiftRight (PRAT, 0x08, PRAT) /* \_SB_.PCI0.NPPC.PRAT */
                If (LGreaterEqual (PRAT, TRAT))
                {
                    SPPC (TMPI)
                    Break
                }
            }
        }

        Method (SPPC, 1, Serialized)
        {
            Name (T_0, Zero)  // _T_x: Emitted by ASL Compiler
            Store (Arg0, \_PR.CPU0._PPC) /* External reference */
            If (CondRefOf (\_SB.PCCD.PENB))
            {
                Notify (\_SB.PCCD, 0x82) // Device-Specific Change
            }
            Else
            {
                While (One)
                {
                    Store (ToInteger (TCNT), T_0) /* \_SB_.PCI0.SPPC.T_0 */
                    If (LEqual (T_0, 0x08))
                    {
                        Notify (\_PR.CPU0, 0x80) // Status Change
                        Notify (\_PR.CPU1, 0x80) // Status Change
                        Notify (\_PR.CPU2, 0x80) // Status Change
                        Notify (\_PR.CPU3, 0x80) // Status Change
                        Notify (\_PR.CPU4, 0x80) // Status Change
                        Notify (\_PR.CPU5, 0x80) // Status Change
                        Notify (\_PR.CPU6, 0x80) // Status Change
                        Notify (\_PR.CPU7, 0x80) // Status Change
                    }
                    Else
                    {
                        If (LEqual (T_0, 0x04))
                        {
                            Notify (\_PR.CPU0, 0x80) // Status Change
                            Notify (\_PR.CPU1, 0x80) // Status Change
                            Notify (\_PR.CPU2, 0x80) // Status Change
                            Notify (\_PR.CPU3, 0x80) // Status Change
                        }
                        Else
                        {
                            If (LEqual (T_0, 0x02))
                            {
                                Notify (\_PR.CPU0, 0x80) // Status Change
                                Notify (\_PR.CPU1, 0x80) // Status Change
                            }
                            Else
                            {
                                Notify (\_PR.CPU0, 0x80) // Status Change
                            }
                        }
                    }

                    Break
                }
            }
        }

        Method (CLC2, 1, Serialized)
        {
            Name (T_0, Zero)  // _T_x: Emitted by ASL Compiler
            And (PNHM, 0x0FFF0FF0, Local0)
            While (One)
            {
                Store (Local0, T_0) /* \_SB_.PCI0.CLC2.T_0 */
                If (LEqual (T_0, 0x000306C0))
                {
                    Return (Divide (Multiply (Arg0, 0x05), 0x04, ))
                }
                Else
                {
                    If (LEqual (T_0, 0x00040650))
                    {
                        Return (0xC8)
                    }
                    Else
                    {
                        Return (Divide (Multiply (Arg0, 0x05), 0x04, ))
                    }
                }

                Break
            }
        }
    }
}

