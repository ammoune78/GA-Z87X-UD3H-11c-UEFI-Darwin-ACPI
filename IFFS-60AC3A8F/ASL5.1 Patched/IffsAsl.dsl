/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20140926-64 [Oct 24 2014]
 * Copyright (c) 2000 - 2014 Intel Corporation
 * 
 * Disassembly of IffsAsl.aml, Sun Jan 10 18:58:51 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000D0 (208)
 *     Revision         0x01
 *     Checksum         0x8B
 *     OEM ID           "Iffs"
 *     OEM Table ID     "IffsAsl"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120711 (538052369)
 */
DefinitionBlock ("IffsAsl.aml", "SSDT", 1, "Iffs", "IffsAsl", 0x00003030)
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


    Scope (\_SB)
    {
        Device (IFFS)
        {
            OperationRegion (FFSN, SystemMemory, 0xFFFF0000, 0xAA55)
            Field (FFSN, AnyAcc, Lock, Preserve)
            {
                FFSA,   8, 
                FFSS,   8, 
                FFST,   16, 
                FFSP,   32
            }

            Name (_HID, EisaId ("INT3392"))  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _CID: Compatible ID
            Method (GFFS, 0, Serialized)
            {
                Return (FFSS) /* \_SB_.IFFS.FFSS */
            }

            Method (SFFS, 1, Serialized)
            {
                And (Arg0, FFSA, FFSS) /* \_SB_.IFFS.FFSS */
                Return (FFSS) /* \_SB_.IFFS.FFSS */
            }

            Method (GFTV, 0, Serialized)
            {
                Return (FFST) /* \_SB_.IFFS.FFST */
            }

            Method (SFTV, 1, Serialized)
            {
                If (LLessEqual (Arg0, 0x05A0))
                {
                    Store (Arg0, FFST) /* \_SB_.IFFS.FFST */
                }
                Else
                {
                    And (FFSS, 0xFFFE, FFSS) /* \_SB_.IFFS.FFSS */
                    Store (0x0A, FFST) /* \_SB_.IFFS.FFST */
                }

                Return (FFST) /* \_SB_.IFFS.FFST */
            }
        }
    }
}

