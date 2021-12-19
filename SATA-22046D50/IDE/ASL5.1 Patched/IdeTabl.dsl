/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20140926-64 [Oct 24 2014]
 * Copyright (c) 2000 - 2014 Intel Corporation
 * 
 * Disassembly of IdeTabl.aml, Sun Jan 10 18:58:50 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000495 (1173)
 *     Revision         0x01
 *     Checksum         0x01
 *     OEM ID           "IdeRef"
 *     OEM Table ID     "IdeTable"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120711 (538052369)
 */
DefinitionBlock ("IdeTabl.aml", "SSDT", 1, "IdeRef", "IdeTable", 0x00003030)
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

    External (_SB_.PCI0.SAT0, DeviceObj)
    External (_SB_.PCI0.SAT1, DeviceObj)
    External (DSSP, UnknownObj)
    External (FHPP, UnknownObj)

    Scope (\)
    {
        Name (STFE, Buffer (0x07)
        {
             0x10, 0x06, 0x00, 0x00, 0x00, 0x00, 0xEF         /* ....... */
        })
        Name (STFD, Buffer (0x07)
        {
             0x90, 0x06, 0x00, 0x00, 0x00, 0x00, 0xEF         /* ....... */
        })
        Name (FZTF, Buffer (0x07)
        {
             0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF5         /* ....... */
        })
        Name (DCFL, Buffer (0x07)
        {
             0xC1, 0x00, 0x00, 0x00, 0x00, 0x00, 0xB1         /* ....... */
        })
        Name (SCBF, Buffer (0x15) {})
        Name (CMDC, Zero)
        Method (GTFB, 2, Serialized)
        {
            Multiply (CMDC, 0x38, Local0)
            CreateField (SCBF, Local0, 0x38, CMDX)
            Multiply (CMDC, 0x07, Local0)
            CreateByteField (SCBF, Add (Local0, One), A001)
            Store (Arg0, CMDX) /* \GTFB.CMDX */
            Store (Arg1, A001) /* \GTFB.A001 */
            Increment (CMDC)
        }
    }

    Scope (\_SB.PCI0.SAT0)
    {
        Name (REGF, One)
        Method (_REG, 2, NotSerialized)  // _REG: Region Availability
        {
            If (LEqual (Arg0, 0x02))
            {
                Store (Arg1, REGF) /* \_SB_.PCI0.SAT0.REGF */
            }
        }

        Name (TMD0, Buffer (0x14) {})
        CreateDWordField (TMD0, Zero, PIO0)
        CreateDWordField (TMD0, 0x04, DMA0)
        CreateDWordField (TMD0, 0x08, PIO1)
        CreateDWordField (TMD0, 0x0C, DMA1)
        CreateDWordField (TMD0, 0x10, CHNF)
        Device (CHN0)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
            {
                Store (0x78, PIO0) /* \_SB_.PCI0.SAT0.PIO0 */
                Store (0x14, DMA0) /* \_SB_.PCI0.SAT0.DMA0 */
                Store (0x78, PIO1) /* \_SB_.PCI0.SAT0.PIO1 */
                Store (0x14, DMA1) /* \_SB_.PCI0.SAT0.DMA1 */
                Store (0x05, CHNF) /* \_SB_.PCI0.SAT0.CHNF */
                Return (TMD0) /* \_SB_.PCI0.SAT0.TMD0 */
            }

            Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
            {
            }

            Device (DRV0)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                {
                    Store (Zero, CMDC) /* \CMDC */
                    If (LOr (DSSP, FHPP))
                    {
                        GTFB (STFD, 0x06)
                    }
                    Else
                    {
                        GTFB (STFE, 0x06)
                    }

                    GTFB (DCFL, Zero)
                    GTFB (FZTF, Zero)
                    Return (SCBF) /* \SCBF */
                }
            }

            Device (DRV1)
            {
                Name (_ADR, One)  // _ADR: Address
                Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                {
                    Store (Zero, CMDC) /* \CMDC */
                    If (LOr (DSSP, FHPP))
                    {
                        GTFB (STFD, 0x06)
                    }
                    Else
                    {
                        GTFB (STFE, 0x06)
                    }

                    GTFB (DCFL, Zero)
                    GTFB (FZTF, Zero)
                    Return (SCBF) /* \SCBF */
                }
            }
        }

        Device (CHN1)
        {
            Name (_ADR, One)  // _ADR: Address
            Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
            {
                Store (0x78, PIO0) /* \_SB_.PCI0.SAT0.PIO0 */
                Store (0x14, DMA0) /* \_SB_.PCI0.SAT0.DMA0 */
                Store (0x78, PIO1) /* \_SB_.PCI0.SAT0.PIO1 */
                Store (0x14, DMA1) /* \_SB_.PCI0.SAT0.DMA1 */
                Store (0x05, CHNF) /* \_SB_.PCI0.SAT0.CHNF */
                Return (TMD0) /* \_SB_.PCI0.SAT0.TMD0 */
            }

            Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
            {
            }

            Device (DRV0)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                {
                    Store (Zero, CMDC) /* \CMDC */
                    If (LOr (DSSP, FHPP))
                    {
                        GTFB (STFD, 0x06)
                    }
                    Else
                    {
                        GTFB (STFE, 0x06)
                    }

                    GTFB (DCFL, Zero)
                    GTFB (FZTF, Zero)
                    Return (SCBF) /* \SCBF */
                }
            }

            Device (DRV1)
            {
                Name (_ADR, One)  // _ADR: Address
                Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                {
                    Store (Zero, CMDC) /* \CMDC */
                    If (LOr (DSSP, FHPP))
                    {
                        GTFB (STFD, 0x06)
                    }
                    Else
                    {
                        GTFB (STFE, 0x06)
                    }

                    GTFB (DCFL, Zero)
                    GTFB (FZTF, Zero)
                    Return (SCBF) /* \SCBF */
                }
            }
        }
    }

    Scope (\_SB.PCI0.SAT1)
    {
        Name (REGF, One)
        Method (_REG, 2, NotSerialized)  // _REG: Region Availability
        {
            If (LEqual (Arg0, 0x02))
            {
                Store (Arg1, REGF) /* \_SB_.PCI0.SAT1.REGF */
            }
        }

        Name (TMD0, Buffer (0x14) {})
        CreateDWordField (TMD0, Zero, PIO0)
        CreateDWordField (TMD0, 0x04, DMA0)
        CreateDWordField (TMD0, 0x08, PIO1)
        CreateDWordField (TMD0, 0x0C, DMA1)
        CreateDWordField (TMD0, 0x10, CHNF)
        Device (CHN0)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
            {
                Store (0x78, PIO0) /* \_SB_.PCI0.SAT1.PIO0 */
                Store (0x14, DMA0) /* \_SB_.PCI0.SAT1.DMA0 */
                Store (0x78, PIO1) /* \_SB_.PCI0.SAT1.PIO1 */
                Store (0x14, DMA1) /* \_SB_.PCI0.SAT1.DMA1 */
                Store (One, CHNF) /* \_SB_.PCI0.SAT1.CHNF */
                Return (TMD0) /* \_SB_.PCI0.SAT1.TMD0 */
            }

            Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
            {
            }

            Device (DRV0)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                {
                    Store (Zero, CMDC) /* \CMDC */
                    If (LOr (DSSP, FHPP))
                    {
                        GTFB (STFD, 0x06)
                    }
                    Else
                    {
                        GTFB (STFE, 0x06)
                    }

                    GTFB (DCFL, Zero)
                    GTFB (FZTF, Zero)
                    Return (SCBF) /* \SCBF */
                }
            }
        }

        Device (CHN1)
        {
            Name (_ADR, One)  // _ADR: Address
            Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
            {
                Store (0x78, PIO0) /* \_SB_.PCI0.SAT1.PIO0 */
                Store (0x14, DMA0) /* \_SB_.PCI0.SAT1.DMA0 */
                Store (0x78, PIO1) /* \_SB_.PCI0.SAT1.PIO1 */
                Store (0x14, DMA1) /* \_SB_.PCI0.SAT1.DMA1 */
                Store (One, CHNF) /* \_SB_.PCI0.SAT1.CHNF */
                Return (TMD0) /* \_SB_.PCI0.SAT1.TMD0 */
            }

            Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
            {
            }

            Device (DRV0)
            {
                Name (_ADR, One)  // _ADR: Address
                Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                {
                    Store (Zero, CMDC) /* \CMDC */
                    If (LOr (DSSP, FHPP))
                    {
                        GTFB (STFD, 0x06)
                    }
                    Else
                    {
                        GTFB (STFE, 0x06)
                    }

                    GTFB (DCFL, Zero)
                    GTFB (FZTF, Zero)
                    Return (SCBF) /* \SCBF */
                }
            }
        }
    }
}

