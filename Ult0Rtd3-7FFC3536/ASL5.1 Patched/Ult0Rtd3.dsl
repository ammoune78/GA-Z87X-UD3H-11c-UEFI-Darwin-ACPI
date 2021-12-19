/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20140926-64 [Oct 24 2014]
 * Copyright (c) 2000 - 2014 Intel Corporation
 * 
 * Disassembly of Ult0Rtd3.aml, Sun Jan 10 18:58:51 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00002A09 (10761)
 *     Revision         0x01
 *     Checksum         0xE7
 *     OEM ID           "AcpiRe"
 *     OEM Table ID     "Ult0Rtd3"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120711 (538052369)
 */
DefinitionBlock ("Ult0Rtd3.aml", "SSDT", 1, "AcpiRe", "Ult0Rtd3", 0x00003030)
{
    /*
     * iASL Warning: There were 14 external control methods found during
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
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.LPCB.H_EC.ECWT, MethodObj)    // Warning: Unresolved method, guessing 3 arguments

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

    External (_SB_.OSCO, UnknownObj)
    External (_SB_.PCI0.ADSP, DeviceObj)
    External (_SB_.PCI0.HDEF, DeviceObj)
    External (_SB_.PCI0.I2C0, DeviceObj)
    External (_SB_.PCI0.I2C0.ACD0, DeviceObj)
    External (_SB_.PCI0.I2C0.ACD1, DeviceObj)
    External (_SB_.PCI0.I2C0.ACD2, DeviceObj)
    External (_SB_.PCI0.I2C0.SHUB, DeviceObj)
    External (_SB_.PCI0.I2C1, DeviceObj)
    External (_SB_.PCI0.I2C1.TPD0, DeviceObj)
    External (_SB_.PCI0.I2C1.TPD1, DeviceObj)
    External (_SB_.PCI0.I2C1.TPD2, DeviceObj)
    External (_SB_.PCI0.I2C1.TPD3, DeviceObj)
    External (_SB_.PCI0.I2C1.TPD7, DeviceObj)
    External (_SB_.PCI0.I2C1.TPD8, DeviceObj)
    External (_SB_.PCI0.I2C1.TPL0, DeviceObj)
    External (_SB_.PCI0.I2C1.TPL1, DeviceObj)
    External (_SB_.PCI0.I2C1.TPL2, DeviceObj)
    External (_SB_.PCI0.I2C1.TPL3, DeviceObj)
    External (_SB_.PCI0.LPCB.H_EC.ECAV, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.SPT2, UnknownObj)
    External (_SB_.PCI0.RP01, DeviceObj)
    External (_SB_.PCI0.RP03, DeviceObj)
    External (_SB_.PCI0.RP04, DeviceObj)
    External (_SB_.PCI0.RP05, DeviceObj)
    External (_SB_.PCI0.RP06, DeviceObj)
    External (_SB_.PCI0.SAT0, DeviceObj)
    External (_SB_.PCI0.SAT0.PRT1, DeviceObj)
    External (_SB_.PCI0.SAT0.PRT2, DeviceObj)
    External (_SB_.PCI0.SAT0.PRT3, DeviceObj)
    External (_SB_.PCI0.SDHC, DeviceObj)
    External (_SB_.PCI0.SDHC.WI01, DeviceObj)
    External (_SB_.PCI0.XHC_, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS01, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS02, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS04, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.SSP1, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.SSP2, DeviceObj)
    External (_SB_.RDGP, MethodObj)
    External (ADSD, UnknownObj)
    External (AUDD, UnknownObj)
    External (BID_, UnknownObj)
    External (BSPC, UnknownObj)
    External (BWT1, UnknownObj)
    External (CKEN, UnknownObj)
    External (CODS, UnknownObj)
    External (DSPD, UnknownObj)
    External (GO08, UnknownObj)
    External (GO17, UnknownObj)
    External (GO45, UnknownObj)
    External (GO51, UnknownObj)
    External (GS08, UnknownObj)
    External (GS45, UnknownObj)
    External (GS51, UnknownObj)
    External (HDAD, UnknownObj)
    External (I20D, UnknownObj)
    External (I21D, UnknownObj)
    External (IC0D, UnknownObj)
    External (IC1D, UnknownObj)
    External (IC1S, UnknownObj)
    External (L23E, IntObj)
    External (L23R, IntObj)
    External (LASX, UnknownObj)
    External (LDIS, UnknownObj)
    External (LEDM, UnknownObj)
    External (MEMB, UnknownObj)
    External (PEP0, UnknownObj)
    External (PMFS, UnknownObj)
    External (PRT1, DeviceObj)
    External (PRT2, DeviceObj)
    External (PRT3, DeviceObj)
    External (RCG0, UnknownObj)
    External (RDGP, UnknownObj)
    External (RIC0, UnknownObj)
    External (RTD3, UnknownObj)
    External (RWAG, UnknownObj)
    External (S0ID, UnknownObj)
    External (SDS0, UnknownObj)
    External (SDS1, UnknownObj)
    External (SHSB, UnknownObj)
    External (TPD0, DeviceObj)
    External (TPD1, DeviceObj)
    External (TPD2, DeviceObj)
    External (TPD3, DeviceObj)
    External (TPD7, DeviceObj)
    External (TPD8, DeviceObj)
    External (TPL0, DeviceObj)
    External (TPL1, DeviceObj)
    External (TPL2, DeviceObj)
    External (TPL3, DeviceObj)
    External (UAMS, UnknownObj)
    External (VRRD, UnknownObj)
    External (VRSD, UnknownObj)
    External (XHPR, UnknownObj)

    Name (LONT, Zero)
    Method (SGON, 2, Serialized)
    {
        If (LNotEqual (\_SB.RDGP (Arg0), Arg1))
        {
            Divide (Subtract (Timer, \LONT), 0x2710, , Local0)
            If (LLess (Local0, \VRSD))
            {
                Sleep (Subtract (\VRSD, Local0))
            }

            \_SB.WTGP (Arg0, Arg1)
            Store (Timer, \LONT)
            Return (One)
        }
        Else
        {
            Return (Zero)
        }
    }

    If (LAnd (LOr (LEqual (BID, BWT1), LEqual (BID, BSPC)), LEqual (
        RTD3, One)))
    {
        If (LEqual (RWAG, One))
        {
            Scope (\_SB.PCI0.RP01)
            {
                Name (SLOT, One)
                Name (RSTG, 0x4D)
                Name (PWRG, 0x53)
                Name (RONP, One)
                Name (PONP, Zero)
                Name (NGFF, One)
                Name (SCLK, One)
                Name (WKEN, Zero)
                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                {
                    Return (0x03)
                }

                Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
                {
                    If (Arg1)
                    {
                        Store (Zero, WKEN) /* \_SB_.PCI0.RP01.WKEN */
                    }
                    Else
                    {
                        If (LAnd (Arg0, Arg2))
                        {
                            Store (One, WKEN) /* \_SB_.PCI0.RP01.WKEN */
                        }
                        Else
                        {
                            Store (Zero, WKEN) /* \_SB_.PCI0.RP01.WKEN */
                        }
                    }
                }

                PowerResource (PXP, 0x00, 0x0000)
                {
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (LAnd (LEqual (\_SB.RDGP (PWRG), PONP), LEqual (\_SB.RDGP (RSTG), RONP)))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Method (_ON, 0, NotSerialized)  // _ON_: Power On
                    {
                        If (LNot (NGFF))
                        {
                            \_SB.WTGP (PWRG, PONP)
                            Sleep (PEP0)
                        }

                        While (LEqual (PMFS, One))
                        {
                            Stall (0x0A)
                        }

                        Store (Or (ShiftLeft (SCLK, 0x18), ShiftLeft (SCLK, 0x10)
                            ), Local1)
                        Or (Local1, 0x04, Local1)
                        Store (Local1, \CKEN) /* External reference */
                        While (LEqual (PMFS, One))
                        {
                            Stall (0x0A)
                        }

                        \_SB.WTGP (RSTG, RONP)
                        Store (One, L23R) /* External reference */
                        Sleep (0x10)
                        Store (Zero, Local0)
                        While (L23R)
                        {
                            If (LGreater (Local0, 0x04))
                            {
                                Break
                            }

                            Sleep (0x10)
                            Increment (Local0)
                        }

                        Store (Zero, Local0)
                        While (LEqual (LASX, Zero))
                        {
                            If (LGreater (Local0, 0x7B))
                            {
                                Break
                            }

                            Sleep (0x10)
                            Increment (Local0)
                        }

                        Store (Zero, LEDM) /* External reference */
                    }

                    Method (_OFF, 0, Serialized)  // _OFF: Power Off
                    {
                        Name (T_0, Zero)  // _T_x: Emitted by ASL Compiler
                        Store (One, L23E) /* External reference */
                        Sleep (0x10)
                        Store (Zero, Local0)
                        While (L23E)
                        {
                            If (LGreater (Local0, 0x04))
                            {
                                Break
                            }

                            Sleep (0x10)
                            Increment (Local0)
                        }

                        Store (One, LEDM) /* External reference */
                        While (LEqual (PMFS, One))
                        {
                            Stall (0x0A)
                        }

                        Store (Or (ShiftLeft (SCLK, 0x18), 0x04), Local1)
                        Store (Local1, \CKEN) /* External reference */
                        While (LEqual (PMFS, One))
                        {
                            Stall (0x0A)
                        }

                        \_SB.WTGP (RSTG, Not (RONP))
                        If (LNot (NGFF))
                        {
                            \_SB.WTGP (PWRG, Not (PONP))
                        }

                        Store (One, LDIS) /* External reference */
                        Store (Zero, LDIS) /* External reference */
                        If (WKEN)
                        {
                            While (One)
                            {
                                Store (SLOT, T_0) /* \_SB_.PCI0.RP01.PXP_._OFF.T_0 */
                                If (LEqual (T_0, 0x03))
                                {
                                    Store (One, \GS08) /* External reference */
                                    Store (Zero, \GO08) /* External reference */
                                }
                                Else
                                {
                                    If (LEqual (T_0, 0x04))
                                    {
                                        Store (One, \GS45) /* External reference */
                                        Store (Zero, \GO45) /* External reference */
                                    }
                                    Else
                                    {
                                        If (LEqual (T_0, 0x05))
                                        {
                                            Store (One, \GS51) /* External reference */
                                            Store (Zero, \GO51) /* External reference */
                                        }
                                        Else
                                        {
                                        }
                                    }
                                }

                                Break
                            }
                        }
                    }
                }

                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                {
                    PXP
                })
            }
        }

        If (LEqual (RWAG, 0x06))
        {
            Scope (\_SB.PCI0.RP06)
            {
                Name (SLOT, 0x06)
                Name (RSTG, 0x4D)
                Name (PWRG, 0x53)
                Name (RONP, One)
                Name (PONP, Zero)
                Name (NGFF, Zero)
                Name (SCLK, 0x02)
                Name (WKEN, Zero)
                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                {
                    Return (0x03)
                }

                Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
                {
                    If (Arg1)
                    {
                        Store (Zero, WKEN) /* \_SB_.PCI0.RP06.WKEN */
                    }
                    Else
                    {
                        If (LAnd (Arg0, Arg2))
                        {
                            Store (One, WKEN) /* \_SB_.PCI0.RP06.WKEN */
                        }
                        Else
                        {
                            Store (Zero, WKEN) /* \_SB_.PCI0.RP06.WKEN */
                        }
                    }
                }

                PowerResource (PXP, 0x00, 0x0000)
                {
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (LAnd (LEqual (\_SB.RDGP (PWRG), PONP), LEqual (\_SB.RDGP (RSTG), RONP)))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Method (_ON, 0, NotSerialized)  // _ON_: Power On
                    {
                        If (LNot (NGFF))
                        {
                            \_SB.WTGP (PWRG, PONP)
                            Sleep (PEP0)
                        }

                        While (LEqual (PMFS, One))
                        {
                            Stall (0x0A)
                        }

                        Store (Or (ShiftLeft (SCLK, 0x18), ShiftLeft (SCLK, 0x10)
                            ), Local1)
                        Or (Local1, 0x04, Local1)
                        Store (Local1, \CKEN) /* External reference */
                        While (LEqual (PMFS, One))
                        {
                            Stall (0x0A)
                        }

                        \_SB.WTGP (RSTG, RONP)
                        Store (One, L23R) /* External reference */
                        Sleep (0x10)
                        Store (Zero, Local0)
                        While (L23R)
                        {
                            If (LGreater (Local0, 0x04))
                            {
                                Break
                            }

                            Sleep (0x10)
                            Increment (Local0)
                        }

                        Store (Zero, Local0)
                        While (LEqual (LASX, Zero))
                        {
                            If (LGreater (Local0, 0x7B))
                            {
                                Break
                            }

                            Sleep (0x10)
                            Increment (Local0)
                        }

                        Store (Zero, LEDM) /* External reference */
                    }

                    Method (_OFF, 0, Serialized)  // _OFF: Power Off
                    {
                        Name (T_0, Zero)  // _T_x: Emitted by ASL Compiler
                        Store (One, L23E) /* External reference */
                        Sleep (0x10)
                        Store (Zero, Local0)
                        While (L23E)
                        {
                            If (LGreater (Local0, 0x04))
                            {
                                Break
                            }

                            Sleep (0x10)
                            Increment (Local0)
                        }

                        Store (One, LEDM) /* External reference */
                        While (LEqual (PMFS, One))
                        {
                            Stall (0x0A)
                        }

                        Store (Or (ShiftLeft (SCLK, 0x18), 0x04), Local1)
                        Store (Local1, \CKEN) /* External reference */
                        While (LEqual (PMFS, One))
                        {
                            Stall (0x0A)
                        }

                        \_SB.WTGP (RSTG, Not (RONP))
                        If (LNot (NGFF))
                        {
                            \_SB.WTGP (PWRG, Not (PONP))
                        }

                        Store (One, LDIS) /* External reference */
                        Store (Zero, LDIS) /* External reference */
                        If (WKEN)
                        {
                            While (One)
                            {
                                Store (SLOT, T_0) /* \_SB_.PCI0.RP06.PXP_._OFF.T_0 */
                                If (LEqual (T_0, 0x03))
                                {
                                    Store (One, \GS08) /* External reference */
                                    Store (Zero, \GO08) /* External reference */
                                }
                                Else
                                {
                                    If (LEqual (T_0, 0x04))
                                    {
                                        Store (One, \GS45) /* External reference */
                                        Store (Zero, \GO45) /* External reference */
                                    }
                                    Else
                                    {
                                        If (LEqual (T_0, 0x05))
                                        {
                                            Store (One, \GS51) /* External reference */
                                            Store (Zero, \GO51) /* External reference */
                                        }
                                        Else
                                        {
                                        }
                                    }
                                }

                                Break
                            }
                        }
                    }
                }

                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                {
                    PXP
                })
            }
        }

        Scope (\_SB.PCI0.RP03)
        {
            Name (SLOT, 0x03)
            Name (RSTG, 0x3B)
            Name (PWRG, 0x3C)
            Name (RONP, One)
            Name (PONP, Zero)
            Name (NGFF, Zero)
            Name (SCLK, 0x04)
            Name (WKEN, Zero)
            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                Return (0x03)
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                If (Arg1)
                {
                    Store (Zero, WKEN) /* \_SB_.PCI0.RP03.WKEN */
                }
                Else
                {
                    If (LAnd (Arg0, Arg2))
                    {
                        Store (One, WKEN) /* \_SB_.PCI0.RP03.WKEN */
                    }
                    Else
                    {
                        Store (Zero, WKEN) /* \_SB_.PCI0.RP03.WKEN */
                    }
                }
            }

            PowerResource (PXP, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (LAnd (LEqual (\_SB.RDGP (PWRG), PONP), LEqual (\_SB.RDGP (RSTG), RONP)))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    If (LNot (NGFF))
                    {
                        \_SB.WTGP (PWRG, PONP)
                        Sleep (PEP0)
                    }

                    While (LEqual (PMFS, One))
                    {
                        Stall (0x0A)
                    }

                    Store (Or (ShiftLeft (SCLK, 0x18), ShiftLeft (SCLK, 0x10)
                        ), Local1)
                    Or (Local1, 0x04, Local1)
                    Store (Local1, \CKEN) /* External reference */
                    While (LEqual (PMFS, One))
                    {
                        Stall (0x0A)
                    }

                    \_SB.WTGP (RSTG, RONP)
                    Store (One, L23R) /* External reference */
                    Sleep (0x10)
                    Store (Zero, Local0)
                    While (L23R)
                    {
                        If (LGreater (Local0, 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Increment (Local0)
                    }

                    Store (Zero, Local0)
                    While (LEqual (LASX, Zero))
                    {
                        If (LGreater (Local0, 0x7B))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Increment (Local0)
                    }

                    Store (Zero, LEDM) /* External reference */
                }

                Method (_OFF, 0, Serialized)  // _OFF: Power Off
                {
                    Name (T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    Store (One, L23E) /* External reference */
                    Sleep (0x10)
                    Store (Zero, Local0)
                    While (L23E)
                    {
                        If (LGreater (Local0, 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Increment (Local0)
                    }

                    Store (One, LEDM) /* External reference */
                    While (LEqual (PMFS, One))
                    {
                        Stall (0x0A)
                    }

                    Store (Or (ShiftLeft (SCLK, 0x18), 0x04), Local1)
                    Store (Local1, \CKEN) /* External reference */
                    While (LEqual (PMFS, One))
                    {
                        Stall (0x0A)
                    }

                    \_SB.WTGP (RSTG, Not (RONP))
                    If (LNot (NGFF))
                    {
                        \_SB.WTGP (PWRG, Not (PONP))
                    }

                    Store (One, LDIS) /* External reference */
                    Store (Zero, LDIS) /* External reference */
                    If (WKEN)
                    {
                        While (One)
                        {
                            Store (SLOT, T_0) /* \_SB_.PCI0.RP03.PXP_._OFF.T_0 */
                            If (LEqual (T_0, 0x03))
                            {
                                Store (One, \GS08) /* External reference */
                                Store (Zero, \GO08) /* External reference */
                            }
                            Else
                            {
                                If (LEqual (T_0, 0x04))
                                {
                                    Store (One, \GS45) /* External reference */
                                    Store (Zero, \GO45) /* External reference */
                                }
                                Else
                                {
                                    If (LEqual (T_0, 0x05))
                                    {
                                        Store (One, \GS51) /* External reference */
                                        Store (Zero, \GO51) /* External reference */
                                    }
                                    Else
                                    {
                                    }
                                }
                            }

                            Break
                        }
                    }
                }
            }

            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                PXP
            })
        }

        Scope (\_SB.PCI0.RP04)
        {
            Name (SLOT, 0x04)
            Name (RSTG, 0x38)
            Name (PWRG, 0x39)
            Name (RONP, One)
            Name (PONP, Zero)
            Name (NGFF, Zero)
            Name (SCLK, 0x08)
            Name (WKEN, Zero)
            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                Return (0x03)
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                If (Arg1)
                {
                    Store (Zero, WKEN) /* \_SB_.PCI0.RP04.WKEN */
                }
                Else
                {
                    If (LAnd (Arg0, Arg2))
                    {
                        Store (One, WKEN) /* \_SB_.PCI0.RP04.WKEN */
                    }
                    Else
                    {
                        Store (Zero, WKEN) /* \_SB_.PCI0.RP04.WKEN */
                    }
                }
            }

            PowerResource (PXP, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (LAnd (LEqual (\_SB.RDGP (PWRG), PONP), LEqual (\_SB.RDGP (RSTG), RONP)))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    If (LNot (NGFF))
                    {
                        \_SB.WTGP (PWRG, PONP)
                        Sleep (PEP0)
                    }

                    While (LEqual (PMFS, One))
                    {
                        Stall (0x0A)
                    }

                    Store (Or (ShiftLeft (SCLK, 0x18), ShiftLeft (SCLK, 0x10)
                        ), Local1)
                    Or (Local1, 0x04, Local1)
                    Store (Local1, \CKEN) /* External reference */
                    While (LEqual (PMFS, One))
                    {
                        Stall (0x0A)
                    }

                    \_SB.WTGP (RSTG, RONP)
                    Store (One, L23R) /* External reference */
                    Sleep (0x10)
                    Store (Zero, Local0)
                    While (L23R)
                    {
                        If (LGreater (Local0, 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Increment (Local0)
                    }

                    Store (Zero, Local0)
                    While (LEqual (LASX, Zero))
                    {
                        If (LGreater (Local0, 0x7B))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Increment (Local0)
                    }

                    Store (Zero, LEDM) /* External reference */
                }

                Method (_OFF, 0, Serialized)  // _OFF: Power Off
                {
                    Name (T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    Store (One, L23E) /* External reference */
                    Sleep (0x10)
                    Store (Zero, Local0)
                    While (L23E)
                    {
                        If (LGreater (Local0, 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Increment (Local0)
                    }

                    Store (One, LEDM) /* External reference */
                    While (LEqual (PMFS, One))
                    {
                        Stall (0x0A)
                    }

                    Store (Or (ShiftLeft (SCLK, 0x18), 0x04), Local1)
                    Store (Local1, \CKEN) /* External reference */
                    While (LEqual (PMFS, One))
                    {
                        Stall (0x0A)
                    }

                    \_SB.WTGP (RSTG, Not (RONP))
                    If (LNot (NGFF))
                    {
                        \_SB.WTGP (PWRG, Not (PONP))
                    }

                    Store (One, LDIS) /* External reference */
                    Store (Zero, LDIS) /* External reference */
                    If (WKEN)
                    {
                        While (One)
                        {
                            Store (SLOT, T_0) /* \_SB_.PCI0.RP04.PXP_._OFF.T_0 */
                            If (LEqual (T_0, 0x03))
                            {
                                Store (One, \GS08) /* External reference */
                                Store (Zero, \GO08) /* External reference */
                            }
                            Else
                            {
                                If (LEqual (T_0, 0x04))
                                {
                                    Store (One, \GS45) /* External reference */
                                    Store (Zero, \GO45) /* External reference */
                                }
                                Else
                                {
                                    If (LEqual (T_0, 0x05))
                                    {
                                        Store (One, \GS51) /* External reference */
                                        Store (Zero, \GO51) /* External reference */
                                    }
                                    Else
                                    {
                                    }
                                }
                            }

                            Break
                        }
                    }
                }
            }

            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                PXP
            })
        }

        Scope (\_SB.PCI0.RP05)
        {
            Name (SLOT, 0x05)
            Name (RSTG, 0x30)
            Name (PWRG, 0x54)
            Name (RONP, One)
            Name (PONP, Zero)
            Name (NGFF, Zero)
            Name (SCLK, 0x10)
            Name (WKEN, Zero)
            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                Return (0x03)
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                If (Arg1)
                {
                    Store (Zero, WKEN) /* \_SB_.PCI0.RP05.WKEN */
                }
                Else
                {
                    If (LAnd (Arg0, Arg2))
                    {
                        Store (One, WKEN) /* \_SB_.PCI0.RP05.WKEN */
                    }
                    Else
                    {
                        Store (Zero, WKEN) /* \_SB_.PCI0.RP05.WKEN */
                    }
                }
            }

            PowerResource (PXP, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (LAnd (LEqual (\_SB.RDGP (PWRG), PONP), LEqual (\_SB.RDGP (RSTG), RONP)))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    If (LNot (NGFF))
                    {
                        \_SB.WTGP (PWRG, PONP)
                        Sleep (PEP0)
                    }

                    While (LEqual (PMFS, One))
                    {
                        Stall (0x0A)
                    }

                    Store (Or (ShiftLeft (SCLK, 0x18), ShiftLeft (SCLK, 0x10)
                        ), Local1)
                    Or (Local1, 0x04, Local1)
                    Store (Local1, \CKEN) /* External reference */
                    While (LEqual (PMFS, One))
                    {
                        Stall (0x0A)
                    }

                    \_SB.WTGP (RSTG, RONP)
                    Store (One, L23R) /* External reference */
                    Sleep (0x10)
                    Store (Zero, Local0)
                    While (L23R)
                    {
                        If (LGreater (Local0, 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Increment (Local0)
                    }

                    Store (Zero, Local0)
                    While (LEqual (LASX, Zero))
                    {
                        If (LGreater (Local0, 0x7B))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Increment (Local0)
                    }

                    Store (Zero, LEDM) /* External reference */
                }

                Method (_OFF, 0, Serialized)  // _OFF: Power Off
                {
                    Name (T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    Store (One, L23E) /* External reference */
                    Sleep (0x10)
                    Store (Zero, Local0)
                    While (L23E)
                    {
                        If (LGreater (Local0, 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Increment (Local0)
                    }

                    Store (One, LEDM) /* External reference */
                    While (LEqual (PMFS, One))
                    {
                        Stall (0x0A)
                    }

                    Store (Or (ShiftLeft (SCLK, 0x18), 0x04), Local1)
                    Store (Local1, \CKEN) /* External reference */
                    While (LEqual (PMFS, One))
                    {
                        Stall (0x0A)
                    }

                    \_SB.WTGP (RSTG, Not (RONP))
                    If (LNot (NGFF))
                    {
                        \_SB.WTGP (PWRG, Not (PONP))
                    }

                    Store (One, LDIS) /* External reference */
                    Store (Zero, LDIS) /* External reference */
                    If (WKEN)
                    {
                        While (One)
                        {
                            Store (SLOT, T_0) /* \_SB_.PCI0.RP05.PXP_._OFF.T_0 */
                            If (LEqual (T_0, 0x03))
                            {
                                Store (One, \GS08) /* External reference */
                                Store (Zero, \GO08) /* External reference */
                            }
                            Else
                            {
                                If (LEqual (T_0, 0x04))
                                {
                                    Store (One, \GS45) /* External reference */
                                    Store (Zero, \GO45) /* External reference */
                                }
                                Else
                                {
                                    If (LEqual (T_0, 0x05))
                                    {
                                        Store (One, \GS51) /* External reference */
                                        Store (Zero, \GO51) /* External reference */
                                    }
                                    Else
                                    {
                                    }
                                }
                            }

                            Break
                        }
                    }
                }
            }

            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                PXP
            })
        }

        Scope (\_SB.PCI0.SAT0)
        {
            Method (_PS0, 0, Serialized)  // _PS0: Power State 0
            {
            }

            Method (_PS3, 0, Serialized)  // _PS3: Power State 3
            {
            }

            OperationRegion (SMIO, PCI_Config, 0x24, 0x04)
            Field (SMIO, AnyAcc, NoLock, Preserve)
            {
                MBR6,   32
            }

            Scope (PRT1)
            {
                Name (UDSM, Zero)
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    Name (T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    If (LNot (And (RCG0, One)))
                    {
                        Return (Zero)
                    }

                    If (LEqual (Arg0, ToUUID ("bdfaef30-aebb-11de-8a39-0800200c9a66")))
                    {
                        While (One)
                        {
                            Store (ToInteger (Arg2), T_0) /* \_SB_.PCI0.SAT0.PRT1._DSM.T_0 */
                            If (LEqual (T_0, Zero))
                            {
                                If (LEqual (ToInteger (Arg1), One))
                                {
                                    Return (Buffer (One)
                                    {
                                         0x0F                                             /* . */
                                    })
                                }
                            }
                            Else
                            {
                                If (LEqual (T_0, One))
                                {
                                    If (LEqual (\_SB.PCI0.SAT0.PRT1.UDSM, Zero))
                                    {
                                        Store (One, \_SB.PCI0.SAT0.PRT1.UDSM)
                                    }

                                    Return (One)
                                }
                                Else
                                {
                                    If (LEqual (T_0, 0x02))
                                    {
                                        \_SB.WTGP (0x56, One)
                                        Store (Zero, \GO17) /* External reference */
                                        Return (One)
                                    }
                                    Else
                                    {
                                        If (LEqual (T_0, 0x03))
                                        {
                                            \_SB.WTGP (0x56, Zero)
                                            Sleep (0x10)
                                            Return (One)
                                        }
                                        Else
                                        {
                                            Return (Zero)
                                        }
                                    }
                                }
                            }

                            Break
                        }
                    }
                    Else
                    {
                        Return (Zero)
                    }
                    
                    Return (Zero)
                }

                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                {
                    P1PR
                })
                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                {
                    P1PR
                })
                Name (WKEN, Zero)
                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                {
                    If (LNot (And (RCG0, One))) {}
                    Else
                    {
                        If (And (\_SB.OSCO, 0x04))
                        {
                            Return (0x04)
                        }
                        Else
                        {
                            Return (0x03)
                        }
                    }
                    
                    Return (Zero)
                }

                Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
                {
                    If (LNot (And (RCG0, One)))
                    {
                        Return (Zero)
                    }

                    If (Arg1)
                    {
                        Store (One, \GO17) /* External reference */
                        Store (Zero, WKEN) /* \_SB_.PCI0.SAT0.PRT1.WKEN */
                    }
                    Else
                    {
                        If (LAnd (Arg0, Arg2))
                        {
                            Store (One, WKEN) /* \_SB_.PCI0.SAT0.PRT1.WKEN */
                        }
                        Else
                        {
                            Store (Zero, WKEN) /* \_SB_.PCI0.SAT0.PRT1.WKEN */
                        }
                    }
                    
                    Return (Zero)
                }

                PowerResource (P1PR, 0x00, 0x0000)
                {
                    Name (OFTM, Zero)
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (LNot (And (RCG0, One)))
                        {
                            If (LEqual (\_SB.RDGP (0x5A), One))
                            {
                                Return (Zero)
                            }
                            Else
                            {
                                Return (One)
                            }
                        }
                        Else
                        {
                            If (LEqual (RDGP (0x56), Zero))
                            {
                                Return (One)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }

                    Method (_ON, 0, NotSerialized)  // _ON_: Power On
                    {
                        If (LNotEqual (^OFTM, Zero))
                        {
                            Divide (Subtract (Timer, ^OFTM), 0x2710, , Local0)
                            Store (Zero, ^OFTM) /* \_SB_.PCI0.SAT0.PRT1.P1PR.OFTM */
                            If (LLess (Local0, 0x32))
                            {
                                Sleep (Subtract (0x32, Local0))
                            }
                        }

                        If (LNot (And (RCG0, One)))
                        {
                            SGON (0x5A, Zero)
                        }
                        Else
                        {
                            SGON (0x56, Zero)
                        }
                    }

                    Method (_OFF, 0, Serialized)  // _OFF: Power Off
                    {
                        If (LNot (And (RCG0, One)))
                        {
                            Add (\_SB.PCI0.SAT0.MBR6, 0x0198, Local0)
                            OperationRegion (PSTS, SystemMemory, Local0, 0x18)
                            Field (PSTS, DWordAcc, NoLock, Preserve)
                            {
                                CMST,   1, 
                                CSUD,   1, 
                                    ,   2, 
                                CFRE,   1, 
                                Offset (0x10), 
                                SDET,   4, 
                                Offset (0x14), 
                                CDET,   4
                            }

                            If (LEqual (S0ID, One))
                            {
                                If (LOr (LEqual (SDET, One), LEqual (SDET, 0x03)))
                                {
                                    Store (Zero, CMST) /* \_SB_.PCI0.SAT0.PRT1.P1PR._OFF.CMST */
                                    Store (Zero, CFRE) /* \_SB_.PCI0.SAT0.PRT1.P1PR._OFF.CFRE */
                                    Store (Zero, CSUD) /* \_SB_.PCI0.SAT0.PRT1.P1PR._OFF.CSUD */
                                    Store (0x04, CDET) /* \_SB_.PCI0.SAT0.PRT1.P1PR._OFF.CDET */
                                    Sleep (0x10)
                                    While (LNotEqual (SDET, 0x04))
                                    {
                                        Sleep (0x10)
                                    }
                                }

                                \_SB.WTGP (0x5A, One)
                            }
                        }
                        Else
                        {
                            \_SB.WTGP (0x56, One)
                            Store (Zero, \GO17) /* External reference */
                        }

                        Store (Timer, ^OFTM) /* \_SB_.PCI0.SAT0.PRT1.P1PR.OFTM */
                    }
                }
            }

            Scope (PRT2)
            {
                PowerResource (P2PR, 0x00, 0x0000)
                {
                    Name (OFTM, Zero)
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (LEqual (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.ECAV)), One))
                        {
                            Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.SPT2)), Local0)
                        }
                        Else
                        {
                            Store (One, Local0)
                        }

                        If (LEqual (Local0, Zero))
                        {
                            Return (Zero)
                        }
                        Else
                        {
                            Return (One)
                        }

                        Return (One)
                    }

                    Method (_ON, 0, NotSerialized)  // _ON_: Power On
                    {
                        If (LNotEqual (^OFTM, Zero))
                        {
                            Divide (Subtract (Timer, ^OFTM), 0x2710, , Local0)
                            Store (Zero, ^OFTM) /* \_SB_.PCI0.SAT0.PRT2.P2PR.OFTM */
                            If (LLess (Local0, 0x32))
                            {
                                Sleep (Subtract (0x32, Local0))
                            }
                        }

                        If (LEqual (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.ECAV)), One))
                        {
                            Divide (Subtract (Timer, \LONT), 0x2710, , Local0)
                            If (LLess (Local0, \VRSD))
                            {
                                Sleep (Subtract (\VRSD, Local0))
                            }

                            \_SB.PCI0.LPCB.H_EC.ECWT (One, RefOf (\_SB.PCI0.LPCB.H_EC.SPT2), \_SB.PCI0.LPCB.H_EC.ECMD (0x2E, Store (Timer, \LONT)))
                        }
                    }

                    Method (_OFF, 0, Serialized)  // _OFF: Power Off
                    {
                        If (LEqual (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.ECAV)), One))
                        {
                            Add (\_SB.PCI0.SAT0.MBR6, 0x0218, Local0)
                            OperationRegion (PSTS, SystemMemory, Local0, 0x18)
                            Field (PSTS, DWordAcc, NoLock, Preserve)
                            {
                                CMST,   1, 
                                CSUD,   1, 
                                    ,   2, 
                                CFRE,   1, 
                                Offset (0x10), 
                                SDET,   4, 
                                Offset (0x14), 
                                CDET,   4
                            }

                            If (LOr (LEqual (SDET, One), LEqual (SDET, 0x03)))
                            {
                                Store (Zero, CMST) /* \_SB_.PCI0.SAT0.PRT2.P2PR._OFF.CMST */
                                Store (Zero, CFRE) /* \_SB_.PCI0.SAT0.PRT2.P2PR._OFF.CFRE */
                                Store (Zero, CSUD) /* \_SB_.PCI0.SAT0.PRT2.P2PR._OFF.CSUD */
                                Store (0x04, CDET) /* \_SB_.PCI0.SAT0.PRT2.P2PR._OFF.CDET */
                                Sleep (0x10)
                                While (LNotEqual (SDET, 0x04))
                                {
                                    Sleep (0x10)
                                }
                            }

                            \_SB.PCI0.LPCB.H_EC.ECWT (Zero, RefOf (\_SB.PCI0.LPCB.H_EC.SPT2), \_SB.PCI0.LPCB.H_EC.ECMD (0x2E, Store (Timer, ^OFTM) /* \_SB_.PCI0.SAT0.PRT2.P2PR.OFTM */))
                        }
                    }
                }

                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                {
                    P2PR
                })
                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                {
                    P2PR
                })
            }

            Scope (PRT3)
            {
                PowerResource (P3PR, 0x00, 0x0000)
                {
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (LEqual (And (RCG0, 0x0C), 0x04))
                        {
                            Return (\_SB.RDGP (0x53)) /* External reference */
                        }

                        If (LEqual (And (RCG0, 0x0C), 0x08))
                        {
                            Return (\_SB.RDGP (0x55)) /* External reference */
                        }

                        Return (Zero)
                    }

                    Method (_ON, 0, NotSerialized)  // _ON_: Power On
                    {
                        If (LEqual (And (RCG0, 0x0C), 0x04))
                        {
                            SGON (0x53, One)
                        }

                        If (LEqual (And (RCG0, 0x0C), 0x08))
                        {
                            SGON (0x55, One)
                        }
                    }

                    Method (_OFF, 0, Serialized)  // _OFF: Power Off
                    {
                        Add (\_SB.PCI0.SAT0.MBR6, 0x0298, Local0)
                        OperationRegion (PSTS, SystemMemory, Local0, 0x18)
                        Field (PSTS, DWordAcc, NoLock, Preserve)
                        {
                            CMST,   1, 
                            CSUD,   1, 
                                ,   2, 
                            CFRE,   1, 
                            Offset (0x10), 
                            SDET,   4, 
                            Offset (0x14), 
                            CDET,   4
                        }

                        If (LOr (LEqual (SDET, One), LEqual (SDET, 0x03)))
                        {
                            Store (Zero, CMST) /* \_SB_.PCI0.SAT0.PRT3.P3PR._OFF.CMST */
                            Store (Zero, CFRE) /* \_SB_.PCI0.SAT0.PRT3.P3PR._OFF.CFRE */
                            Store (Zero, CSUD) /* \_SB_.PCI0.SAT0.PRT3.P3PR._OFF.CSUD */
                            Store (0x04, CDET) /* \_SB_.PCI0.SAT0.PRT3.P3PR._OFF.CDET */
                            Sleep (0x10)
                            While (LNotEqual (SDET, 0x04))
                            {
                                Sleep (0x10)
                            }
                        }

                        If (LEqual (And (RCG0, 0x0C), 0x04))
                        {
                            \_SB.WTGP (0x53, Zero)
                            Sleep (0x10)
                        }

                        If (LEqual (And (RCG0, 0x0C), 0x08))
                        {
                            \_SB.WTGP (0x55, Zero)
                            Sleep (0x10)
                        }
                    }
                }

                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                {
                    P3PR
                })
                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                {
                    P3PR
                })
            }

            Name (DRV, Zero)
            Name (PWR, Zero)
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Name (T_2, Zero)  // _T_x: Emitted by ASL Compiler
                Name (T_1, Zero)  // _T_x: Emitted by ASL Compiler
                Name (T_0, Zero)  // _T_x: Emitted by ASL Compiler
                If (LEqual (Arg0, ToUUID ("e4db149b-fcfe-425b-a6d8-92357d78fc7f") /* SATA Controller */))
                {
                    While (One)
                    {
                        Store (Arg2, T_0) /* \_SB_.PCI0.SAT0._DSM.T_0 */
                        If (LEqual (T_0, Zero))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            If (LEqual (T_0, One))
                            {
                                Return (Package (0x01) {Zero})
                            }
                            Else
                            {
                                If (LEqual (T_0, 0x02))
                                {
                                    Store (ToInteger (DerefOf (Index (Arg3, Zero))), DRV) /* \_SB_.PCI0.SAT0.DRV_ */
                                    Store (ToInteger (DerefOf (Index (Arg3, One))), PWR) /* \_SB_.PCI0.SAT0.PWR_ */
                                    While (One)
                                    {
                                        Store (DRV, T_1) /* \_SB_.PCI0.SAT0._DSM.T_1 */
                                        If (LEqual (T_1, Ones))
                                        {
                                            If (PWR)
                                            {
                                                \_SB.PCI0.SAT0.PRT1.P1PR._ON ()
                                                \_SB.PCI0.SAT0.PRT2.P2PR._ON ()
                                            }
                                        }

                                        Break
                                    }

                                    Return (Zero)
                                }
                                Else
                                {
                                    If (LEqual (T_0, 0x03))
                                    {
                                        Store (ToInteger (DerefOf (Index (Arg3, Zero))), DRV) /* \_SB_.PCI0.SAT0.DRV_ */
                                        While (One)
                                        {
                                            Store (DRV, T_2) /* \_SB_.PCI0.SAT0._DSM.T_2 */
                                            If (LEqual (T_2, 0xFFFF))
                                            {
                                                Store (One, Local0)
                                                Return (Local0)
                                            }
                                            Else
                                            {
                                                If (LEqual (T_2, 0x0001FFFF))
                                                {
                                                    If (LEqual (\_SB.PCI0.SAT0.PRT1.P1PR._STA (), Zero))
                                                    {
                                                        Store (Zero, Local0)
                                                    }
                                                    Else
                                                    {
                                                        Store (One, Local0)
                                                    }

                                                    Return (Local0)
                                                }
                                                Else
                                                {
                                                    If (LEqual (T_2, 0x0002FFFF))
                                                    {
                                                        If (LEqual (\_SB.PCI0.SAT0.PRT2.P2PR._STA (), Zero))
                                                        {
                                                            Store (Zero, Local0)
                                                        }
                                                        Else
                                                        {
                                                            Store (One, Local0)
                                                        }

                                                        Return (Local0)
                                                    }
                                                    Else
                                                    {
                                                        Return (Ones)
                                                    }
                                                }
                                            }

                                            Break
                                        }
                                    }
                                    Else
                                    {
                                        Return (Zero)
                                    }
                                }
                            }
                        }

                        Break
                    }
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Scope (\_SB.PCI0.XHC)
        {
            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                Return (0x03)
            }
        }

        Scope (\_SB.PCI0.XHC.RHUB)
        {
            Method (_PS0, 0, Serialized)  // _PS0: Power State 0
            {
                Store (Zero, USPP) /* \_SB_.PCI0.XHC_.USPP */
            }

            Method (_PS2, 0, Serialized)  // _PS2: Power State 2
            {
                OperationRegion (XHCM, SystemMemory, And (MEMB, 0xFFFF0000), 0x0600)
                Field (XHCM, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x02), 
                    XHCV,   16, 
                    Offset (0x480), 
                    HP01,   1, 
                    Offset (0x490), 
                    HP02,   1, 
                    Offset (0x510), 
                    SP00,   1, 
                    Offset (0x520), 
                    SP01,   1
                }

                If (LEqual (XHCV, 0xFFFF))
                {
                    Return (Zero)
                }

                If (LAnd (LEqual (HP01, Zero), LEqual (SP00, Zero)))
                {
                    Or (USPP, 0x02, USPP) /* \_SB_.PCI0.XHC_.USPP */
                }

                If (LAnd (LEqual (HP02, Zero), LEqual (SP01, Zero)))
                {
                    Or (USPP, 0x04, USPP) /* \_SB_.PCI0.XHC_.USPP */
                }
                
                Return (Zero)
            }

            Method (_PS3, 0, Serialized)  // _PS3: Power State 3
            {
            }
        }

        If (LNotEqual (And (XHPR, 0x0F), Zero))
        {
            Scope (\)
            {
                PowerResource (PX01, 0x00, 0x0000)
                {
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (LEqual (\_SB.RDGP (0x0D), One))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Method (_ON, 0, NotSerialized)  // _ON_: Power On
                    {
                        SGON (0x0D, One)
                    }

                    Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                    {
                        \_SB.WTGP (0x0D, Zero)
                    }
                }
            }
        }

        If (LNotEqual (And (XHPR, 0xF0), Zero))
        {
            Scope (\)
            {
                PowerResource (PX02, 0x00, 0x0000)
                {
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (LEqual (\_SB.RDGP (0x2B), One))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Method (_ON, 0, NotSerialized)  // _ON_: Power On
                    {
                        SGON (0x2B, One)
                    }

                    Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                    {
                        \_SB.WTGP (0x2B, Zero)
                    }
                }
            }
        }

        If (LEqual (And (RCG0, 0x02), 0x02))
        {
            Scope (\_SB.PCI0.XHC.RHUB.HS04)
            {
                PowerResource (PX04, 0x00, 0x0000)
                {
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (LEqual (\_SB.RDGP (0x19), One))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Method (_ON, 0, NotSerialized)  // _ON_: Power On
                    {
                        SGON (0x19, One)
                    }

                    Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                    {
                        \_SB.WTGP (0x19, Zero)
                    }
                }

                Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                {
                    Return (Package (0x01)
                    {
                        \_SB.PCI0.XHC.RHUB.HS04.PX04
                    })
                }

                Method (_PR2, 0, NotSerialized)  // _PR2: Power Resources for D2
                {
                    Return (Package (0x01)
                    {
                        \_SB.PCI0.XHC.RHUB.HS04.PX04
                    })
                }

                Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                {
                    Return (Package (0x01)
                    {
                        \_SB.PCI0.XHC.RHUB.HS04.PX04
                    })
                }
            }
        }

        If (LEqual (And (XHPR, 0x0F), One))
        {
            Scope (\_SB.PCI0.XHC.RHUB.HS01)
            {
                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                {
                    \PX01
                })
                Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
                {
                    \PX01
                })
                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                {
                    \PX01
                })
            }
        }

        If (LEqual (And (XHPR, 0xF0), 0x10))
        {
            Scope (\_SB.PCI0.XHC.RHUB.HS02)
            {
                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                {
                    \PX02
                })
                Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
                {
                    \PX02
                })
                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                {
                    \PX02
                })
            }
        }

        If (LEqual (And (XHPR, 0x0F), 0x02))
        {
            Scope (\_SB.PCI0.XHC.RHUB.SSP1)
            {
                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                {
                    \PX01
                })
                Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
                {
                    \PX01
                })
                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                {
                    \PX01
                })
            }
        }

        If (LEqual (And (XHPR, 0xF0), 0x20))
        {
            Scope (\_SB.PCI0.XHC.RHUB.SSP2)
            {
                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                {
                    \PX02
                })
                Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
                {
                    \PX02
                })
                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                {
                    \PX02
                })
            }
        }

        Scope (\_SB.PCI0)
        {
            PowerResource (PAUD, 0x00, 0x0000)
            {
                Name (PSTA, One)
                Name (ONTM, Zero)
                Name (_STA, One)  // _STA: Status
                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    Store (One, _STA) /* \_SB_.PCI0.PAUD._STA */
                    PUAM ()
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    Store (Zero, _STA) /* \_SB_.PCI0.PAUD._STA */
                    PUAM ()
                }

                Method (PUAM, 0, Serialized)
                {
                    If (LAnd (LEqual (^_STA, Zero), LNotEqual (\UAMS, Zero)))
                    {
                        If (LEqual (\_SB.RDGP (0x4C), One))
                        {
                            \_SB.WTGP (0x4C, Zero)
                            Store (Zero, ^PSTA) /* \_SB_.PCI0.PAUD.PSTA */
                            Store (Zero, ^ONTM) /* \_SB_.PCI0.PAUD.ONTM */
                        }
                    }
                    Else
                    {
                        If (LNotEqual (^PSTA, One))
                        {
                            SGON (0x4C, One)
                            Store (One, ^PSTA) /* \_SB_.PCI0.PAUD.PSTA */
                            Store (Timer, ^ONTM) /* \_SB_.PCI0.PAUD.ONTM */
                        }
                    }
                }
            }
        }

        If (LNot (HDAD))
        {
            Scope (\_SB.PCI0.HDEF)
            {
                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                {
                    If (LEqual (\_SB.PCI0.PAUD.ONTM, Zero))
                    {
                        Return (Zero)
                    }

                    Divide (Subtract (Timer, \_SB.PCI0.PAUD.ONTM), 0x2710, , Local0)
                    Add (AUDD, VRRD, Local1)
                    If (LLess (Local0, Local1))
                    {
                        Sleep (Subtract (Local1, Local0))
                    }
                    
                    Return (Zero)
                }

                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                {
                }

                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                {
                    \_SB.PCI0.PAUD
                })
            }
        }

        If (LNot (ADSD))
        {
            Scope (\_SB.PCI0.ADSP)
            {
                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                {
                    If (LEqual (\_SB.PCI0.PAUD.ONTM, Zero))
                    {
                        Return (Zero)
                    }

                    Divide (Subtract (Timer, \_SB.PCI0.PAUD.ONTM), 0x2710, , Local0)
                    Add (DSPD, VRRD, Local1)
                    If (LLess (Local0, Local1))
                    {
                        Sleep (Subtract (Local1, Local0))
                    }
                    
                    Return (Zero)
                }

                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                {
                }

                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                {
                    \_SB.PCI0.PAUD
                })
            }
        }

        Scope (\_SB.PCI0.I2C0)
        {
            Method (PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
            {
                Store (Zero, Local0)
                If (LEqual (ADSD, One))
                {
                    Or (One, Local0, Local0)
                }

                If (LEqual (And (SDS0, One), Zero))
                {
                    Or (0x02, Local0, Local0)
                }

                If (LEqual (Local0, Zero))
                {
                    Return (Package (0x03)
                    {
                        \_SB.PCI0.I2C0.SHUB.PSEN, 
                        \_SB.PCI0.I2C1.PXTC, 
                        \_SB.PCI0.PAUD
                    })
                }

                If (LEqual (Local0, One))
                {
                    Return (Package (0x02)
                    {
                        \_SB.PCI0.I2C0.SHUB.PSEN, 
                        \_SB.PCI0.I2C1.PXTC
                    })
                }

                If (LEqual (Local0, 0x02))
                {
                    Return (Package (0x01)
                    {
                        \_SB.PCI0.PAUD
                    })
                }

                Return (Package (0x01) {Zero})
            }

            Method (PS0X, 0, Serialized)
            {
                Sleep (I20D)
                \_SB.WTGP (0x31, One)
                Sleep (0x10)
            }

            Method (PS3X, 0, Serialized)
            {
                \_SB.WTGP (0x31, Zero)
                Sleep (0x10)
            }
        }

        If (And (LEqual (CODS, Zero), LNot (ADSD)))
        {
            Scope (\_SB.PCI0.I2C0.ACD0)
            {
                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                {
                    \_SB.PCI0.PAUD
                })
            }
        }

        If (And (LEqual (CODS, One), LNot (ADSD)))
        {
            Scope (\_SB.PCI0.I2C0.ACD1)
            {
                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                {
                    \_SB.PCI0.PAUD
                })
            }
        }

        If (And (LEqual (CODS, 0x02), LNot (ADSD)))
        {
            Scope (\_SB.PCI0.I2C0.ACD2)
            {
                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                {
                    \_SB.PCI0.PAUD
                })
            }
        }

        Scope (\_SB.PCI0.I2C0.SHUB)
        {
            Method (_PS0, 0, Serialized)  // _PS0: Power State 0
            {
                If (LEqual (\_SB.PCI0.I2C0.SHUB.PSEN.ONTM, Zero))
                {
                    Return (Zero)
                }

                Divide (Subtract (Timer, \_SB.PCI0.I2C0.SHUB.PSEN.ONTM), 0x2710, , Local0)
                If (LLess (Local0, IC0D))
                {
                    Sleep (Subtract (IC0D, Local0))
                }
                
                Return (Zero)
            }

            Method (_PS3, 0, Serialized)  // _PS3: Power State 3
            {
            }

            Method (PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
            {
                If (And (LEqual (RIC0, One), LEqual (\_SB.RDGP (0x2C, One), Zero)))
                {
                    Return (Package (0x02)
                    {
                        PSEN, 
                        \_SB.PCI0.I2C1.PXTC
                    })
                }
                Else
                {
                    Return (Package (0x01) {Zero})
                }
            }

            Method (PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
            {
                If (And (LEqual (RIC0, One), LEqual (\_SB.RDGP (0x2C, One), Zero)))
                {
                    Return (Package (0x02)
                    {
                        PSEN, 
                        \_SB.PCI0.I2C1.PXTC
                    })
                }
                Else
                {
                    Return (Package (0x01) {Zero})
                }
            }

            PowerResource (PSEN, 0x00, 0x0000)
            {
                Name (ONTM, Zero)
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (LEqual (SHSB, Zero))
                    {
                        If (LEqual (\_SB.RDGP (0x2E), One))
                        {
                            Return (One)
                        }
                    }
                    Else
                    {
                        If (LEqual (\_SB.RDGP (0x46), One))
                        {
                            Return (One)
                        }
                    }

                    Return (Zero)
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    If (And (LEqual (RIC0, One), LEqual (\_SB.RDGP (0x2C, One), Zero)))
                    {
                        If (LEqual (SHSB, Zero))
                        {
                            If (LEqual (SGON (0x2E, One), One))
                            {
                                Store (Timer, ^ONTM) /* \_SB_.PCI0.I2C0.SHUB.PSEN.ONTM */
                                \_SB.GP2B (0x0E, One)
                            }
                        }
                        Else
                        {
                            If (LEqual (SGON (0x46, One), One))
                            {
                                Store (Timer, ^ONTM) /* \_SB_.PCI0.I2C0.SHUB.PSEN.ONTM */
                                \_SB.GP2B (0x0E, One)
                            }
                        }
                    }
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    If (And (LEqual (RIC0, One), LEqual (\_SB.RDGP (0x2C, One), Zero)))
                    {
                        \_SB.GP2B (0x0E, Zero)
                        If (LEqual (SHSB, Zero))
                        {
                            \_SB.WTGP (0x2E, Zero)
                        }
                        Else
                        {
                            \_SB.WTGP (0x46, Zero)
                        }

                        Store (Zero, ^ONTM) /* \_SB_.PCI0.I2C0.SHUB.PSEN.ONTM */
                        Store (Zero, ^ONTM) /* \_SB_.PCI0.I2C0.SHUB.PSEN.ONTM */
                    }
                }
            }
        }

        Scope (\_SB.PCI0.I2C1)
        {
            Method (PS0X, 0, Serialized)
            {
                Sleep (I21D)
            }

            Method (PS3X, 0, Serialized)
            {
            }

            PowerResource (PXTC, 0x00, 0x0000)
            {
                Name (ONTM, Zero)
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (LOr (LEqual (And (SDS1, 0x0800), 0x0800), LEqual (And (
                        SDS1, 0x1000), 0x1000)))
                    {
                        If (LEqual (\_SB.RDGP (0x59), One))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                    Else
                    {
                        If (LAnd (LEqual (\_SB.RDGP (0x58), One), LEqual (\_SB.RDGP (0x59), One)))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    If (LOr (LEqual (And (SDS1, 0x0800), 0x0800), LEqual (And (
                        SDS1, 0x1000), 0x1000)))
                    {
                        If (LOr (LEqual (\_SB.RDGP (0x59), Zero), LEqual (\_SB.RDGP (0x34), Zero)))
                        {
                            \_SB.WTGP (0x34, One)
                            SGON (0x59, One)
                            Store (Timer, ONTM) /* \_SB_.PCI0.I2C1.PXTC.ONTM */
                            \_SB.GP2A (0x32, One)
                        }
                    }
                    Else
                    {
                        If (LOr (LOr (LEqual (\_SB.RDGP (0x58), Zero), LEqual (\_SB.RDGP (0x59),
                            Zero)), LEqual (\_SB.RDGP (0x34), Zero)))
                        {
                            \_SB.WTGP (0x34, One)
                            SGON (0x58, One)
                            SGON (0x59, One)
                            Store (Timer, ONTM) /* \_SB_.PCI0.I2C1.PXTC.ONTM */
                            \_SB.GP2A (0x32, One)
                            \_SB.GP2A (0x37, One)
                        }
                    }
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    If (LOr (LEqual (And (SDS1, 0x0800), 0x0800), LEqual (And (
                        SDS1, 0x1000), 0x1000)))
                    {
                        \_SB.GP2A (0x32, Zero)
                        \_SB.WTGP (0x59, Zero)
                        \_SB.WTGP (0x34, Zero)
                        Store (Zero, ^ONTM) /* \_SB_.PCI0.I2C1.PXTC.ONTM */
                    }
                    Else
                    {
                        \_SB.GP2A (0x32, Zero)
                        \_SB.GP2A (0x37, Zero)
                        \_SB.WTGP (0x58, Zero)
                        \_SB.WTGP (0x59, Zero)
                        \_SB.WTGP (0x34, Zero)
                        Store (Zero, ^ONTM) /* \_SB_.PCI0.I2C1.PXTC.ONTM */
                    }
                }
            }

            Scope (TPL0)
            {
                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                {
                    If (LEqual (\_SB.PCI0.I2C1.PXTC.ONTM, Zero))
                    {
                        Return (Zero)
                    }

                    Divide (Subtract (Timer, \_SB.PCI0.I2C1.PXTC.ONTM), 0x2710, , Local0)
                    Add (IC1D, VRRD, Local1)
                    If (LLess (Local0, Local1))
                    {
                        Sleep (Subtract (Local1, Local0))
                    }
                    
                    Return (Zero)
                }

                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                {
                }

                Method (PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                {
                    If (LEqual (And (SDS1, One), One))
                    {
                        Return (Package (0x02)
                        {
                            \_SB.PCI0.I2C0.SHUB.PSEN, 
                            PXTC
                        })
                    }
                    Else
                    {
                        Return (Package (0x01) {Zero})
                    }
                }

                Method (PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                {
                    If (LEqual (And (SDS1, One), One))
                    {
                        Return (Package (0x02)
                        {
                            \_SB.PCI0.I2C0.SHUB.PSEN, 
                            PXTC
                        })
                    }
                    Else
                    {
                        Return (Package (0x01) {Zero})
                    }
                }
            }

            Scope (TPD0)
            {
                Method (PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                {
                    If (LEqual (And (SDS1, 0x04), 0x04))
                    {
                        Return (Package (0x01)
                        {
                            PXTC
                        })
                    }
                    Else
                    {
                        Return (Package (0x01) {Zero})
                    }
                }

                Method (PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                {
                    If (LEqual (And (SDS1, 0x04), 0x04))
                    {
                        Return (Package (0x01)
                        {
                            PXTC
                        })
                    }
                    Else
                    {
                        Return (Package (0x01) {Zero})
                    }
                }
            }

            Scope (TPL1)
            {
                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                {
                    If (LEqual (\_SB.PCI0.I2C1.PXTC.ONTM, Zero))
                    {
                        Return (Zero)
                    }

                    Divide (Subtract (Timer, \_SB.PCI0.I2C1.PXTC.ONTM), 0x2710, , Local0)
                    If (LLess (Local0, IC1D))
                    {
                        Sleep (Subtract (IC1D, Local0))
                    }
                    
                    Return (Zero)
                }

                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                {
                }

                Method (PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                {
                    If (LEqual (And (SDS1, 0x02), 0x02))
                    {
                        Return (Package (0x02)
                        {
                            \_SB.PCI0.I2C0.SHUB.PSEN, 
                            PXTC
                        })
                    }
                    Else
                    {
                        Return (Package (0x01) {Zero})
                    }
                }

                Method (PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                {
                    If (LEqual (And (SDS1, 0x02), 0x02))
                    {
                        Return (Package (0x02)
                        {
                            \_SB.PCI0.I2C0.SHUB.PSEN, 
                            PXTC
                        })
                    }
                    Else
                    {
                        Return (Package (0x01) {Zero})
                    }
                }
            }

            Scope (TPD1)
            {
                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                {
                    If (LEqual (\_SB.PCI0.I2C1.PXTC.ONTM, Zero))
                    {
                        Return (Zero)
                    }

                    Divide (Subtract (Timer, \_SB.PCI0.I2C1.PXTC.ONTM), 0x2710, , Local0)
                    Add (IC1S, VRRD, Local1)
                    If (LLess (Local0, Local1))
                    {
                        Sleep (Subtract (Local1, Local0))
                    }
                    
                    Return (Zero)
                }

                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                {
                }

                Method (PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                {
                    If (LEqual (And (SDS1, 0x08), 0x08))
                    {
                        Return (Package (0x01)
                        {
                            PXTC
                        })
                    }
                    Else
                    {
                        Return (Package (0x01) {Zero})
                    }
                }

                Method (PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                {
                    If (LEqual (And (SDS1, 0x08), 0x08))
                    {
                        Return (Package (0x01)
                        {
                            PXTC
                        })
                    }
                    Else
                    {
                        Return (Package (0x01) {Zero})
                    }
                }
            }

            Scope (TPL2)
            {
                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                {
                    If (LEqual (\_SB.PCI0.I2C1.PXTC.ONTM, Zero))
                    {
                        Return (Zero)
                    }

                    Divide (Subtract (Timer, \_SB.PCI0.I2C1.PXTC.ONTM), 0x2710, , Local0)
                    Add (IC1D, VRRD, Local1)
                    If (LLess (Local0, Local1))
                    {
                        Sleep (Subtract (Local1, Local0))
                    }
                    
                    Return (Zero)
                }

                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                {
                }

                Method (PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                {
                    If (LEqual (And (SDS1, 0x20), 0x20))
                    {
                        Return (Package (0x01)
                        {
                            PXTC
                        })
                    }
                    Else
                    {
                        Return (Package (0x01) {Zero})
                    }
                }

                Method (PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                {
                    If (LEqual (And (SDS1, 0x20), 0x20))
                    {
                        Return (Package (0x01)
                        {
                            PXTC
                        })
                    }
                    Else
                    {
                        Return (Package (0x01) {Zero})
                    }
                }
            }

            Scope (TPL3)
            {
                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                {
                    If (LEqual (\_SB.PCI0.I2C1.PXTC.ONTM, Zero))
                    {
                        Return (Zero)
                    }

                    Divide (Subtract (Timer, \_SB.PCI0.I2C1.PXTC.ONTM), 0x2710, , Local0)
                    If (LLess (Local0, IC1D))
                    {
                        Sleep (Subtract (IC1D, Local0))
                    }
                    
                    Return (Zero)
                }

                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                {
                }

                Method (PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                {
                    If (LEqual (And (SDS1, 0x40), 0x40))
                    {
                        Return (Package (0x01)
                        {
                            PXTC
                        })
                    }
                    Else
                    {
                        Return (Package (0x01) {Zero})
                    }
                }

                Method (PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                {
                    If (LEqual (And (SDS1, 0x40), 0x40))
                    {
                        Return (Package (0x01)
                        {
                            PXTC
                        })
                    }
                    Else
                    {
                        Return (Package (0x01) {Zero})
                    }
                }
            }

            Scope (TPD2)
            {
                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                {
                    If (LEqual (\_SB.PCI0.I2C1.PXTC.ONTM, Zero))
                    {
                        Return (Zero)
                    }

                    Divide (Subtract (Timer, \_SB.PCI0.I2C1.PXTC.ONTM), 0x2710, , Local0)
                    Add (IC1S, VRRD, Local1)
                    If (LLess (Local0, Local1))
                    {
                        Sleep (Subtract (Local1, Local0))
                    }
                    
                    Return (Zero)
                }

                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                {
                }

                Method (PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                {
                    If (LEqual (And (SDS1, 0x80), 0x80))
                    {
                        Return (Package (0x01)
                        {
                            PXTC
                        })
                    }
                    Else
                    {
                        Return (Package (0x01) {Zero})
                    }
                }

                Method (PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                {
                    If (LEqual (And (SDS1, 0x80), 0x80))
                    {
                        Return (Package (0x01)
                        {
                            PXTC
                        })
                    }
                    Else
                    {
                        Return (Package (0x01) {Zero})
                    }
                }
            }

            Scope (TPD3)
            {
                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                {
                    If (LEqual (\_SB.PCI0.I2C1.PXTC.ONTM, Zero))
                    {
                        Return (Zero)
                    }

                    Divide (Subtract (Timer, \_SB.PCI0.I2C1.PXTC.ONTM), 0x2710, , Local0)
                    Add (IC1S, VRRD, Local1)
                    If (LLess (Local0, Local1))
                    {
                        Sleep (Subtract (Local1, Local0))
                    }
                    
                    Return (Zero)
                }

                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                {
                }

                Method (PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                {
                    If (LEqual (And (SDS1, 0x0100), 0x0100))
                    {
                        Return (Package (0x01)
                        {
                            PXTC
                        })
                    }
                    Else
                    {
                        Return (Package (0x01) {Zero})
                    }
                }

                Method (PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                {
                    If (LEqual (And (SDS1, 0x0100), 0x0100))
                    {
                        Return (Package (0x01)
                        {
                            PXTC
                        })
                    }
                    Else
                    {
                        Return (Package (0x01) {Zero})
                    }
                }
            }

            Scope (TPD7)
            {
                Method (PS0X, 0, Serialized)
                {
                    If (LEqual (\_SB.PCI0.I2C1.PXTC.ONTM, Zero))
                    {
                        Return (Zero)
                    }

                    Divide (Subtract (Timer, \_SB.PCI0.I2C1.PXTC.ONTM), 0x2710, , Local0)
                    Add (IC1S, VRRD, Local1)
                    If (LLess (Local0, Local1))
                    {
                        Sleep (Subtract (Local1, Local0))
                    }
                    
                    Return (Zero)
                }

                Method (PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                {
                    If (LEqual (And (SDS1, 0x0800), 0x0800))
                    {
                        Return (Package (0x01)
                        {
                            PXTC
                        })
                    }
                    Else
                    {
                        Return (Package (0x01) {Zero})
                    }
                }

                Method (PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                {
                    If (LEqual (And (SDS1, 0x0800), 0x0800))
                    {
                        Return (Package (0x01)
                        {
                            PXTC
                        })
                    }
                    Else
                    {
                        Return (Package (0x01) {Zero})
                    }
                }
            }

            Scope (TPD8)
            {
                Method (PS0X, 0, Serialized)
                {
                    If (LEqual (\_SB.PCI0.I2C1.PXTC.ONTM, Zero))
                    {
                        Return (Zero)
                    }

                    Divide (Subtract (Timer, \_SB.PCI0.I2C1.PXTC.ONTM), 0x2710, , Local0)
                    Add (IC1S, VRRD, Local1)
                    If (LLess (Local0, Local1))
                    {
                        Sleep (Subtract (Local1, Local0))
                    }
                    
                    Return (Zero)
                }

                Method (PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                {
                    If (LEqual (And (SDS1, 0x1000), 0x1000))
                    {
                        Return (Package (0x01)
                        {
                            PXTC
                        })
                    }
                    Else
                    {
                        Return (Package (0x01) {Zero})
                    }
                }

                Method (PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
                {
                    If (LEqual (And (SDS1, 0x1000), 0x1000))
                    {
                        Return (Package (0x01)
                        {
                            PXTC
                        })
                    }
                    Else
                    {
                        Return (Package (0x01) {Zero})
                    }
                }
            }
        }

        Scope (\_GPE)
        {
            Method (_L11, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                Store (One, \GO17) /* External reference */
                If (LEqual (\_SB.PCI0.SAT0.PRT1.UDSM, Zero))
                {
                    Notify (\_SB.PCI0.SAT0.PRT1, 0x02) // Device Wake
                }
                Else
                {
                    Notify (\_SB.PCI0.SAT0, 0x81) // Information Change
                }
            }

            Method (_L08, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                If (\_SB.PCI0.RP03.WKEN)
                {
                    Store (One, \GO08) /* External reference */
                    Notify (\_SB.PCI0.RP03, 0x02) // Device Wake
                }
            }

            Method (_L2D, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                If (\_SB.PCI0.RP04.WKEN)
                {
                    Store (One, \GO45) /* External reference */
                    Notify (\_SB.PCI0.RP04, 0x02) // Device Wake
                }
            }

            Method (_L33, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                If (\_SB.PCI0.RP05.WKEN)
                {
                    Store (One, \GO51) /* External reference */
                    Notify (\_SB.PCI0.RP05, 0x02) // Device Wake
                }
            }
        }

        If (LEqual (RWAG, Zero))
        {
            Scope (\_SB.PCI0.SDHC)
            {
                Method (PS0X, 0, Serialized)
                {
                    \_SB.WTGP (0x4D, One)
                }
            }

            Scope (\_SB.PCI0.SDHC.WI01)
            {
                Method (PS0X, 0, Serialized)
                {
                    \_SB.WTGP (0x4D, One)
                }

                Method (PS3X, 0, Serialized)
                {
                    \_SB.WTGP (0x4D, Zero)
                }
            }
        }

        Scope (\_SB.PCI0.XHC)
        {
            Name (UPWR, Zero)
            Name (USPP, Zero)
            Method (DUAM, 0, Serialized)
            {
                OperationRegion (XHCM, SystemMemory, And (MEMB, 0xFFFF0000), 0x0600)
                Field (XHCM, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x02), 
                    XHCV,   16, 
                    Offset (0x480), 
                    HP01,   1, 
                    Offset (0x490), 
                    HP02,   1, 
                    Offset (0x510), 
                    SP00,   1, 
                    Offset (0x520), 
                    SP01,   1
                }

                If (LNotEqual (\UAMS, Zero))
                {
                    Store (Zero, UPWR) /* \_SB_.PCI0.XHC_.UPWR */
                    If (LEqual (XHCV, 0xFFFF))
                    {
                        If (And (USPP, 0x02))
                        {
                            \_SB.WTGP (0x0D, Zero)
                            Or (UPWR, 0x02, UPWR) /* \_SB_.PCI0.XHC_.UPWR */
                        }

                        If (And (USPP, 0x04))
                        {
                            \_SB.WTGP (0x2B, Zero)
                            Or (UPWR, 0x04, UPWR) /* \_SB_.PCI0.XHC_.UPWR */
                        }
                    }
                    Else
                    {
                        If (LAnd (LEqual (HP01, Zero), LEqual (SP00, Zero)))
                        {
                            \_SB.WTGP (0x0D, Zero)
                            Or (UPWR, 0x02, UPWR) /* \_SB_.PCI0.XHC_.UPWR */
                        }

                        If (LAnd (LEqual (HP02, Zero), LEqual (SP01, Zero)))
                        {
                            \_SB.WTGP (0x2B, Zero)
                            Or (UPWR, 0x04, UPWR) /* \_SB_.PCI0.XHC_.UPWR */
                        }
                    }
                }
                Else
                {
                    If (And (UPWR, 0x02))
                    {
                        \_SB.WTGP (0x0D, One)
                    }

                    If (And (UPWR, 0x04))
                    {
                        \_SB.WTGP (0x2B, One)
                    }
                }
            }
        }
    }
}

