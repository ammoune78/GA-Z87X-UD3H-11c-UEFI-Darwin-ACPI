/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20140926-64 [Oct 24 2014]
 * Copyright (c) 2000 - 2014 Intel Corporation
 * 
 * Disassembly of PtidDevc.aml, Sun Jan 10 18:58:51 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00002028 (8232)
 *     Revision         0x01
 *     Checksum         0xC5
 *     OEM ID           "TrmRef"
 *     OEM Table ID     "PtidDevc"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120711 (538052369)
 */
DefinitionBlock ("PtidDevc.aml", "SSDT", 1, "TrmRef", "PtidDevc", 0x00003030)
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
    External (_SB_.PCI0.LPCB.H_EC.ECWT, MethodObj)    // Warning: Unresolved method, guessing 6 arguments

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

    External (_SB_.PCI0.LPCB.H_EC.AMBT, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.B1CI, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.B1DC, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.B1DI, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.B1FC, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.B1FV, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.B1MH, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.B1ML, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.B1RC, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.B2CI, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.B2DI, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.B2FC, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.B2FV, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.B2MH, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.B2ML, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.B2RC, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.BKAP, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.BPWR, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.CFS2, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.CFSP, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.CPAP, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.CPUP, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.CVRT, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.DIM0, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.DIM1, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.ECAV, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.FANT, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PCAD, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PDT0, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PDT1, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PDT2, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PDT3, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PEC0, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PEC1, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PEC2, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PEC3, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PECC, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PECD, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PECH, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PECI, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PEHI, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PEPL, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PEPM, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PEWL, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PLAP, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PMAX, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PMDT, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PPDT, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PPWR, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PRC0, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PRC1, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PRCL, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PRCM, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PRCS, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PRFC, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PRIN, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PRS0, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PRS1, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PRS2, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PRS3, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PRS4, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PSTE, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PWFC, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PWRL, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.SKNT, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.TER1, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.TER2, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.TSD0, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.TSD1, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.TSD2, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.TSD3, UnknownObj)
    External (_TZ_.TZ00._TMP, IntObj)
    External (_TZ_.TZ01._TMP, IntObj)
    External (BFS2, UnknownObj)
    External (BFS3, UnknownObj)
    External (BFS4, UnknownObj)
    External (BHB_, UnknownObj)
    External (BID_, UnknownObj)
    External (DTS1, UnknownObj)
    External (DTS2, UnknownObj)
    External (DTS3, UnknownObj)
    External (DTS4, UnknownObj)
    External (PAMT, IntObj)
    External (PDTS, UnknownObj)

    Scope (\_SB)
    {
        Device (PTID)
        {
            Name (_HID, EisaId ("INT340E") /* Motherboard Resources */)  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _CID: Compatible ID
            Name (IVER, 0x00030000)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Name (TSDL, Package (0x2A)
            {
                Zero, 
                "CPU Core 0 DTS", 
                Zero, 
                "CPU Core 1 DTS", 
                Zero, 
                "CPU Core 2 DTS", 
                Zero, 
                "CPU Core 3 DTS", 
                Zero, 
                "CPU Core Package DTS", 
                0x03, 
                "CPU Core VR (IMVP) Temperature", 
                0x03, 
                "Heat Exchanger Fan Temperature", 
                0x03, 
                "Skin Temperature", 
                0x03, 
                "Ambient Temperature", 
                0x02, 
                "Channel 0 DIMM Temperature", 
                0x02, 
                "Channel 1 DIMM Temperature", 
                Zero, 
                "CPU Package Temperature", 
                0x05, 
                "PCH DTS Temperature from PCH", 
                Zero, 
                "CPU PECI reading", 
                0x05, 
                "SA DTS Temperature from PCH", 
                0x02, 
                "TS-on-DIMM0 Temperature", 
                0x02, 
                "TS-on-DIMM1 Temperature", 
                0x02, 
                "TS-on-DIMM2 Temperature", 
                0x02, 
                "TS-on-DIMM3 Temperature", 
                0x02, 
                "TZ00 _TMP", 
                0x02, 
                "TZ01 _TMP"
            })
            Name (PSDL, Package (0x26)
            {
                0x0B, 
                "Platform Power (mW)", 
                0x0B, 
                "Brick Power cW(100ths)", 
                0x0B, 
                "Battery Discharge Power cW(100ths)", 
                0x0B, 
                "Platform Average Power (mW)", 
                0x0B, 
                "Brick Average Power cW(0.01)", 
                0x0B, 
                "Battery Discharge Average Power cW(0.01)", 
                0x0C, 
                "Battery 1 Design Capacity (mWh)", 
                0x0C, 
                "Battery 1 Remaining Capacity (mWh)", 
                0x0C, 
                "Battery 1 Full Charge Capacity (mWh)", 
                0x0C, 
                "Battery 1 Full Resolution Voltage (mV)", 
                0x0C, 
                "Battery 1 Full Resolution Discharge Current (mA)", 
                0x0C, 
                "Battery 1 Full Resolution Charge Current (mA)", 
                0x0C, 
                "Battery 2 Remaining Capacity (mWh)", 
                0x0C, 
                "Battery 2 Full Charge Capacity (mWh)", 
                0x0C, 
                "Battery 2 Full Resolution Voltage (mV)", 
                0x0C, 
                "Battery 2 Full Resolution Discharge Current (mA)", 
                0x0C, 
                "Battery 2 Full Resolution Charge Current (mA)", 
                0x0C, 
                "Battery Pack 1 maximum power (mW)", 
                0x0C, 
                "Battery Pack 2 maximum power (mW)"
            })
            Name (OSDL, Package (0x0F)
            {
                Zero, 
                "CPU Fan #1 Speed", 
                "RPM", 
                Zero, 
                "CPU Fan #2 Speed", 
                "RPM", 
                0x03, 
                "Skin Temp 0", 
                "RAW", 
                0x03, 
                "Thermistor 1 ", 
                "RAW", 
                0x03, 
                "Thermistor 2 ", 
                "RAW"
            })
            Method (TSDD, 0, Serialized)
            {
                Name (TMPV, Package (0x15)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                })
                Store (Add (Multiply (DTS1, 0x0A), 0x0AAC), Index (TMPV, 
                    Zero))
                Store (Add (Multiply (DTS2, 0x0A), 0x0AAC), Index (TMPV, 
                    One))
                Store (Add (Multiply (DTS3, 0x0A), 0x0AAC), Index (TMPV, 
                    0x02))
                Store (Add (Multiply (DTS4, 0x0A), 0x0AAC), Index (TMPV, 
                    0x03))
                Store (Add (Multiply (PDTS, 0x0A), 0x0AAC), Index (TMPV, 
                    0x04))
                If (LEqual (\_SB.PCI0.LPCB.H_EC.ECAV, One))
                {
                    Store (Add (Multiply (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.CVRT)), 0x0A), 0x0AAC), 
                        Index (TMPV, 0x05))
                    Store (Add (Multiply (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.FANT)), 0x0A), 0x0AAC), 
                        Index (TMPV, 0x06))
                    Store (Add (Multiply (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.SKNT)), 0x0A), 0x0AAC), 
                        Index (TMPV, 0x07))
                    Store (Add (Multiply (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.AMBT)), 0x0A), 0x0AAC), 
                        Index (TMPV, 0x08))
                    Store (Add (Multiply (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.DIM0)), 0x0A), 0x0AAC), 
                        Index (TMPV, 0x09))
                    Store (Add (Multiply (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.DIM1)), 0x0A), 0x0AAC), 
                        Index (TMPV, 0x0A))
                    Store (Add (Multiply (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PMAX)), 0x0A), 0x0AAC), 
                        Index (TMPV, 0x0B))
                    Store (Add (Multiply (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PPDT)), 0x0A), 0x0AAC), 
                        Index (TMPV, 0x0C))
                    Store (Add (Multiply (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PECH)), 0x0A), 0x0AAC), 
                        Index (TMPV, 0x0D))
                    Store (Add (Multiply (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PMDT)), 0x0A), 0x0AAC), 
                        Index (TMPV, 0x0E))
                    Store (Add (Multiply (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.TSD0)), 0x0A), 0x0AAC), 
                        Index (TMPV, 0x0F))
                    Store (Add (Multiply (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.TSD1)), 0x0A), 0x0AAC), 
                        Index (TMPV, 0x10))
                    Store (Add (Multiply (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.TSD2)), 0x0A), 0x0AAC), 
                        Index (TMPV, 0x11))
                    Store (Add (Multiply (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.TSD3)), 0x0A), 0x0AAC), 
                        Index (TMPV, 0x12))
                }

                Store (\_TZ.TZ00._TMP, Index (TMPV, 0x13))
                If (CondRefOf (\_TZ.TZ01))
                {
                    Store (\_TZ.TZ01._TMP, Index (TMPV, 0x14))
                }

                Return (TMPV) /* \_SB_.PTID.TSDD.TMPV */
            }

            Method (PSDD, 0, Serialized)
            {
                Name (PWRV, Package (0x13)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                })
                If (LEqual (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.ECAV)), One))
                {
                    Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.CPUP)), Index (PWRV, Zero))
                    Multiply (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.BPWR)), 0x0A, Index (PWRV, One))
                    Multiply (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PPWR)), 0x0A, Index (PWRV, 0x02))
                    Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.CPAP)), Index (PWRV, 0x03))
                    Multiply (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.BKAP)), 0x0A, Index (PWRV, 0x04))
                    Multiply (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PLAP)), 0x0A, Index (PWRV, 0x05))
                    Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.B1DC)), Index (PWRV, 0x06))
                    Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.B1RC)), Index (PWRV, 0x07))
                    Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.B1FC)), Index (PWRV, 0x08))
                    Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.B1FV)), Index (PWRV, 0x09))
                    Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.B1DI)), Index (PWRV, 0x0A))
                    Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.B1CI)), Index (PWRV, 0x0B))
                    Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.B2RC)), Index (PWRV, 0x0C))
                    Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.B2FC)), Index (PWRV, 0x0D))
                    Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.B2FV)), Index (PWRV, 0x0E))
                    Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.B2DI)), Index (PWRV, 0x0F))
                    Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.B2CI)), Index (PWRV, 0x10))
                    Add (ShiftLeft (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.B1MH)), 0x08), \_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.B1ML)), 
                        Local0)
                    If (Local0)
                    {
                        Not (Or (0xFFFF0000, Local0, Local0), Local0)
                        Multiply (Add (One, Local0, Local0), 0x0A, Local0)
                    }

                    Store (Local0, Index (PWRV, 0x11))
                    Add (ShiftLeft (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.B2MH)), 0x08), \_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.B2ML)), 
                        Local0)
                    If (Local0)
                    {
                        Not (Or (0xFFFF0000, Local0, Local0), Local0)
                        Multiply (Add (One, Local0, Local0), 0x0A, Local0)
                    }

                    Store (Local0, Index (PWRV, 0x12))
                }

                Return (PWRV) /* \_SB_.PTID.PSDD.PWRV */
            }

            Method (OSDD, 0, Serialized)
            {
                Name (OSDV, Package (0x05)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                })
                If (LEqual (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.ECAV)), One))
                {
                    Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.CFSP)), Index (OSDV, Zero))
                    If (LOr (LOr (LEqual (BID, BHB), LEqual (BID, BFS2)), LOr (
                        LEqual (BID, BFS3), LEqual (BID, BFS4))))
                    {
                        Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.CFS2)), Index (OSDV, One))
                    }

                    Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.SKNT)), Index (OSDV, 0x02))
                    If (LOr (LOr (LEqual (BID, BHB), LEqual (BID, BFS2)), LOr (
                        LEqual (BID, BFS3), LEqual (BID, BFS4))))
                    {
                        Store (ShiftLeft (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.TER1)), 0x02), Index (OSDV, 0x03
                            ))
                        Store (ShiftLeft (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.TER2)), 0x02), Index (OSDV, 0x04
                            ))
                    }
                }

                Return (OSDV) /* \_SB_.PTID.OSDD.OSDV */
            }

            Method (SDSP, 0, NotSerialized)
            {
                Return (0x0A)
            }

            Name (PADA, Package (0x0A)
            {
                One, 
                Ones, 
                Ones, 
                0x1A, 
                Ones, 
                Ones, 
                Ones, 
                Ones, 
                Ones, 
                Ones
            })
            Name (PADD, Package (0x0A)
            {
                0x02, 
                0x06A4, 
                0x06A0, 
                0x1A, 
                0x62, 
                0x63, 
                0x60, 
                0x61, 
                0x65, 
                0x64
            })
            Method (PADT, 0, NotSerialized)
            {
                If (PAMT)
                {
                    Return (PADA) /* \_SB_.PTID.PADA */
                }

                Return (PADD) /* \_SB_.PTID.PADD */
            }

            Method (RPMD, 0, Serialized)
            {
                Name (MTMP, Buffer (0x1A) {})
                If (LEqual (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.ECAV)), One))
                {
                    Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PRCL)), Index (MTMP, Zero))
                    Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PRC0)), Index (MTMP, One))
                    Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PRC1)), Index (MTMP, 0x02))
                    Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PRCM)), Index (MTMP, 0x03))
                    Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PRIN)), Index (MTMP, 0x04))
                    Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PSTE)), Index (MTMP, 0x05))
                    Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PCAD)), Index (MTMP, 0x06))
                    Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PEWL)), Index (MTMP, 0x07))
                    Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PWRL)), Index (MTMP, 0x08))
                    Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PECD)), Index (MTMP, 0x09))
                    Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PEHI)), Index (MTMP, 0x0A))
                    Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PECI)), Index (MTMP, 0x0B))
                    Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PEPL)), Index (MTMP, 0x0C))
                    Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PEPM)), Index (MTMP, 0x0D))
                    Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PWFC)), Index (MTMP, 0x0E))
                    Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PECC)), Index (MTMP, 0x0F))
                    Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PDT0)), Index (MTMP, 0x10))
                    Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PDT1)), Index (MTMP, 0x11))
                    Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PDT2)), Index (MTMP, 0x12))
                    Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PDT3)), Index (MTMP, 0x13))
                    Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PRFC)), Index (MTMP, 0x14))
                    Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PRS0)), Index (MTMP, 0x15))
                    Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PRS1)), Index (MTMP, 0x16))
                    Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PRS2)), Index (MTMP, 0x17))
                    Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PRS3)), Index (MTMP, 0x18))
                    Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PRS4)), Index (MTMP, 0x19))
                }

                Return (MTMP) /* \_SB_.PTID.RPMD.MTMP */
            }

            Method (WPMD, 1, NotSerialized)
            {
                If (LNotEqual (SizeOf (Arg0), 0x1A))
                {
                    Return (Ones)
                }

                If (LEqual (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.ECAV)), One))
                {
                    \_SB.PCI0.LPCB.H_EC.ECWT (DerefOf (Index (Arg0, Zero)), RefOf (\_SB.PCI0.LPCB.H_EC.PRCL))
                    \_SB.PCI0.LPCB.H_EC.ECWT (DerefOf (Index (Arg0, One)), RefOf (\_SB.PCI0.LPCB.H_EC.PRC0))
                    \_SB.PCI0.LPCB.H_EC.ECWT (DerefOf (Index (Arg0, 0x02)), RefOf (\_SB.PCI0.LPCB.H_EC.PRC1))
                    \_SB.PCI0.LPCB.H_EC.ECWT (DerefOf (Index (Arg0, 0x03)), RefOf (\_SB.PCI0.LPCB.H_EC.PRCM)) 
                    \_SB.PCI0.LPCB.H_EC.ECWT (DerefOf (Index (Arg0, 0x04)), RefOf (\_SB.PCI0.LPCB.H_EC.PRIN)) 
                    \_SB.PCI0.LPCB.H_EC.ECWT (DerefOf (Index (Arg0, 0x05)), RefOf (\_SB.PCI0.LPCB.H_EC.PSTE)) 
                    \_SB.PCI0.LPCB.H_EC.ECWT (DerefOf (Index (Arg0, 0x06)), RefOf (\_SB.PCI0.LPCB.H_EC.PCAD)) 
                    \_SB.PCI0.LPCB.H_EC.ECWT (DerefOf (Index (Arg0, 0x07)), RefOf (\_SB.PCI0.LPCB.H_EC.PEWL)) 
                    \_SB.PCI0.LPCB.H_EC.ECWT (DerefOf (Index (Arg0, 0x08)), RefOf (\_SB.PCI0.LPCB.H_EC.PWRL)) 
                    \_SB.PCI0.LPCB.H_EC.ECWT (DerefOf (Index (Arg0, 0x09)), RefOf (\_SB.PCI0.LPCB.H_EC.PECD)) 
                    \_SB.PCI0.LPCB.H_EC.ECWT (DerefOf (Index (Arg0, 0x0A)), RefOf (\_SB.PCI0.LPCB.H_EC.PEHI)) 
                    \_SB.PCI0.LPCB.H_EC.ECWT (DerefOf (Index (Arg0, 0x0B)), RefOf (\_SB.PCI0.LPCB.H_EC.PECI)) 
                    \_SB.PCI0.LPCB.H_EC.ECWT (DerefOf (Index (Arg0, 0x0C)), RefOf (\_SB.PCI0.LPCB.H_EC.PEPL)) 
                    \_SB.PCI0.LPCB.H_EC.ECWT (DerefOf (Index (Arg0, 0x0D)), RefOf (\_SB.PCI0.LPCB.H_EC.PEPM)) 
                    \_SB.PCI0.LPCB.H_EC.ECWT (DerefOf (Index (Arg0, 0x0E)), RefOf (\_SB.PCI0.LPCB.H_EC.PWFC)) 
                    \_SB.PCI0.LPCB.H_EC.ECWT (DerefOf (Index (Arg0, 0x0F)), RefOf (\_SB.PCI0.LPCB.H_EC.PECC)) 
                    \_SB.PCI0.LPCB.H_EC.ECWT (DerefOf (Index (Arg0, 0x10)), RefOf (\_SB.PCI0.LPCB.H_EC.PDT0)) 
                    \_SB.PCI0.LPCB.H_EC.ECWT (DerefOf (Index (Arg0, 0x11)), RefOf (\_SB.PCI0.LPCB.H_EC.PDT1)) 
                    \_SB.PCI0.LPCB.H_EC.ECWT (DerefOf (Index (Arg0, 0x12)), RefOf (\_SB.PCI0.LPCB.H_EC.PDT2)) 
                    \_SB.PCI0.LPCB.H_EC.ECWT (DerefOf (Index (Arg0, 0x13)), RefOf (\_SB.PCI0.LPCB.H_EC.PDT3)) 
                    \_SB.PCI0.LPCB.H_EC.ECWT (DerefOf (Index (Arg0, 0x14)), RefOf (\_SB.PCI0.LPCB.H_EC.PRFC)) 
                    \_SB.PCI0.LPCB.H_EC.ECWT (DerefOf (Index (Arg0, 0x15)), RefOf (\_SB.PCI0.LPCB.H_EC.PRS0)) 
                    \_SB.PCI0.LPCB.H_EC.ECWT (DerefOf (Index (Arg0, 0x16)), RefOf (\_SB.PCI0.LPCB.H_EC.PRS1)) 
                    \_SB.PCI0.LPCB.H_EC.ECWT (DerefOf (Index (Arg0, 0x17)), RefOf (\_SB.PCI0.LPCB.H_EC.PRS2)) 
                    \_SB.PCI0.LPCB.H_EC.ECWT (DerefOf (Index (Arg0, 0x18)), RefOf (\_SB.PCI0.LPCB.H_EC.PRS3)) 
                    \_SB.PCI0.LPCB.H_EC.ECWT (DerefOf (Index (Arg0, 0x19)), RefOf (\_SB.PCI0.LPCB.H_EC.PRS4)) 
                    \_SB.PCI0.LPCB.H_EC.ECMD (0x67)
                }
                
                Return (Zero)
            }

            Method (ISPC, 0, NotSerialized)
            {
                If (LEqual (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.ECAV)), One))
                {
                    \_SB.PCI0.LPCB.H_EC.ECMD (0x65)
                }
                
                Return (Zero)
            }

            Method (ENPC, 0, NotSerialized)
            {
                If (LEqual (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.ECAV)), One))
                {
                    \_SB.PCI0.LPCB.H_EC.ECMD (0x66)
                }
                
                Return (Zero)
            }

            Method (RPCS, 0, NotSerialized)
            {
                If (LEqual (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.ECAV)), One))
                {
                    Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PRCS)), Local0)
                }

                Return (Local0)
            }

            Method (RPEC, 0, NotSerialized)
            {
                Store (Zero, Local0)
                If (LEqual (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.ECAV)), One))
                {
                    Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PEC0)), Local1)
                    Or (Local0, Local1, Local0)
                    Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PEC1)), Local1)
                    Or (Local0, ShiftLeft (Local1, 0x08), Local0)
                    Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PEC2)), Local1)
                    Or (Local0, ShiftLeft (Local1, 0x10), Local0)
                    Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PEC3)), Local1)
                    Or (Local0, ShiftLeft (Local1, 0x18), Local0)
                }

                Return (Local0)
            }
        }
    }
}

