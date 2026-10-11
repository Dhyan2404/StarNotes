package org.apache.poi.hwpf.model.types;

import com.google.android.material.progressindicator.C5355f;
import java.util.Arrays;
import org.apache.poi.hwpf.usermodel.BorderCode;
import org.apache.poi.hwpf.usermodel.DateAndTime;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public abstract class SEPAbstractType {
    public static final byte BKC_EVEN_PAGE = 3;
    public static final byte BKC_NEW_COLUMN = 1;
    public static final byte BKC_NEW_PAGE = 2;
    public static final byte BKC_NO_BREAK = 0;
    public static final byte BKC_ODD_PAGE = 4;
    public static final boolean DMORIENTPAGE_LANDSCAPE = false;
    public static final boolean DMORIENTPAGE_PORTRAIT = true;
    public static final byte NFCPGN_ARABIC = 0;
    public static final byte NFCPGN_LETTER_LOWER_CASE = 4;
    public static final byte NFCPGN_LETTER_UPPER_CASE = 3;
    public static final byte NFCPGN_ROMAN_LOWER_CASE = 2;
    public static final byte NFCPGN_ROMAN_UPPER_CASE = 1;
    protected byte field_10_grpfIhdt;
    protected int field_11_nLnnMod;
    protected int field_12_dxaLnn;
    protected int field_13_dxaPgn;
    protected int field_14_dyaPgn;
    protected boolean field_15_fLBetween;
    protected byte field_16_vjc;
    protected int field_17_dmBinFirst;
    protected int field_18_dmBinOther;
    protected int field_19_dmPaperReq;
    protected byte field_1_bkc;
    protected BorderCode field_20_brcTop;
    protected BorderCode field_21_brcLeft;
    protected BorderCode field_22_brcBottom;
    protected BorderCode field_23_brcRight;
    protected boolean field_24_fPropMark;
    protected int field_25_ibstPropRMark;
    protected DateAndTime field_26_dttmPropRMark;
    protected int field_27_dxtCharSpace;
    protected int field_28_dyaLinePitch;
    protected int field_29_clm;
    protected boolean field_2_fTitlePage;
    protected int field_30_unused2;
    protected boolean field_31_dmOrientPage;
    protected byte field_32_iHeadingPgn;
    protected int field_33_pgnStart;
    protected int field_34_lnnMin;
    protected int field_35_wTextFlow;
    protected short field_36_unused3;
    protected int field_37_pgbProp;
    protected short field_38_unused4;
    protected int field_39_xaPage;
    protected boolean field_3_fAutoPgn;
    protected int field_40_yaPage;
    protected int field_41_xaPageNUp;
    protected int field_42_yaPageNUp;
    protected int field_43_dxaLeft;
    protected int field_44_dxaRight;
    protected int field_45_dyaTop;
    protected int field_46_dyaBottom;
    protected int field_47_dzaGutter;
    protected int field_48_dyaHdrTop;
    protected int field_49_dyaHdrBottom;
    protected byte field_4_nfcPgn;
    protected int field_50_ccolM1;
    protected boolean field_51_fEvenlySpaced;
    protected byte field_52_unused5;
    protected int field_53_dxaColumns;
    protected int[] field_54_rgdxaColumn;
    protected int field_55_dxaColumnWidth;
    protected byte field_56_dmOrientFirst;
    protected byte field_57_fLayout;
    protected short field_58_unused6;
    protected byte[] field_59_olstAnm;
    protected boolean field_5_fUnlocked;
    protected byte field_6_cnsPgn;
    protected boolean field_7_fPgnRestart;
    protected boolean field_8_fEndNote;
    protected byte field_9_lnc;

    public SEPAbstractType() {
        this.field_1_bkc = (byte) 2;
        this.field_8_fEndNote = true;
        this.field_13_dxaPgn = 720;
        this.field_14_dyaPgn = 720;
        this.field_31_dmOrientPage = true;
        this.field_33_pgnStart = 1;
        this.field_39_xaPage = 12240;
        this.field_40_yaPage = 15840;
        this.field_41_xaPageNUp = 12240;
        this.field_42_yaPageNUp = 15840;
        this.field_43_dxaLeft = C5355f.f31984k;
        this.field_44_dxaRight = C5355f.f31984k;
        this.field_45_dyaTop = 1440;
        this.field_46_dyaBottom = 1440;
        this.field_48_dyaHdrTop = 720;
        this.field_49_dyaHdrBottom = 720;
        this.field_51_fEvenlySpaced = true;
        this.field_53_dxaColumns = 720;
    }

    public byte getBkc() {
        return this.field_1_bkc;
    }

    public BorderCode getBrcBottom() {
        return this.field_22_brcBottom;
    }

    public BorderCode getBrcLeft() {
        return this.field_21_brcLeft;
    }

    public BorderCode getBrcRight() {
        return this.field_23_brcRight;
    }

    public BorderCode getBrcTop() {
        return this.field_20_brcTop;
    }

    public int getCcolM1() {
        return this.field_50_ccolM1;
    }

    public int getClm() {
        return this.field_29_clm;
    }

    public byte getCnsPgn() {
        return this.field_6_cnsPgn;
    }

    public int getDmBinFirst() {
        return this.field_17_dmBinFirst;
    }

    public int getDmBinOther() {
        return this.field_18_dmBinOther;
    }

    public byte getDmOrientFirst() {
        return this.field_56_dmOrientFirst;
    }

    public boolean getDmOrientPage() {
        return this.field_31_dmOrientPage;
    }

    public int getDmPaperReq() {
        return this.field_19_dmPaperReq;
    }

    public DateAndTime getDttmPropRMark() {
        return this.field_26_dttmPropRMark;
    }

    public int getDxaColumnWidth() {
        return this.field_55_dxaColumnWidth;
    }

    public int getDxaColumns() {
        return this.field_53_dxaColumns;
    }

    public int getDxaLeft() {
        return this.field_43_dxaLeft;
    }

    public int getDxaLnn() {
        return this.field_12_dxaLnn;
    }

    public int getDxaPgn() {
        return this.field_13_dxaPgn;
    }

    public int getDxaRight() {
        return this.field_44_dxaRight;
    }

    public int getDxtCharSpace() {
        return this.field_27_dxtCharSpace;
    }

    public int getDyaBottom() {
        return this.field_46_dyaBottom;
    }

    public int getDyaHdrBottom() {
        return this.field_49_dyaHdrBottom;
    }

    public int getDyaHdrTop() {
        return this.field_48_dyaHdrTop;
    }

    public int getDyaLinePitch() {
        return this.field_28_dyaLinePitch;
    }

    public int getDyaPgn() {
        return this.field_14_dyaPgn;
    }

    public int getDyaTop() {
        return this.field_45_dyaTop;
    }

    public int getDzaGutter() {
        return this.field_47_dzaGutter;
    }

    public boolean getFAutoPgn() {
        return this.field_3_fAutoPgn;
    }

    public boolean getFEndNote() {
        return this.field_8_fEndNote;
    }

    public boolean getFEvenlySpaced() {
        return this.field_51_fEvenlySpaced;
    }

    public boolean getFLBetween() {
        return this.field_15_fLBetween;
    }

    public byte getFLayout() {
        return this.field_57_fLayout;
    }

    public boolean getFPgnRestart() {
        return this.field_7_fPgnRestart;
    }

    public boolean getFPropMark() {
        return this.field_24_fPropMark;
    }

    public boolean getFTitlePage() {
        return this.field_2_fTitlePage;
    }

    public boolean getFUnlocked() {
        return this.field_5_fUnlocked;
    }

    public byte getGrpfIhdt() {
        return this.field_10_grpfIhdt;
    }

    public byte getIHeadingPgn() {
        return this.field_32_iHeadingPgn;
    }

    public int getIbstPropRMark() {
        return this.field_25_ibstPropRMark;
    }

    public byte getLnc() {
        return this.field_9_lnc;
    }

    public int getLnnMin() {
        return this.field_34_lnnMin;
    }

    public int getNLnnMod() {
        return this.field_11_nLnnMod;
    }

    public byte getNfcPgn() {
        return this.field_4_nfcPgn;
    }

    public byte[] getOlstAnm() {
        return this.field_59_olstAnm;
    }

    public int getPgbProp() {
        return this.field_37_pgbProp;
    }

    public int getPgnStart() {
        return this.field_33_pgnStart;
    }

    public int[] getRgdxaColumn() {
        return this.field_54_rgdxaColumn;
    }

    public int getUnused2() {
        return this.field_30_unused2;
    }

    public short getUnused3() {
        return this.field_36_unused3;
    }

    public short getUnused4() {
        return this.field_38_unused4;
    }

    public byte getUnused5() {
        return this.field_52_unused5;
    }

    public short getUnused6() {
        return this.field_58_unused6;
    }

    public byte getVjc() {
        return this.field_16_vjc;
    }

    public int getWTextFlow() {
        return this.field_35_wTextFlow;
    }

    public int getXaPage() {
        return this.field_39_xaPage;
    }

    public int getXaPageNUp() {
        return this.field_41_xaPageNUp;
    }

    public int getYaPage() {
        return this.field_40_yaPage;
    }

    public int getYaPageNUp() {
        return this.field_42_yaPageNUp;
    }

    public void setBkc(byte b) {
        this.field_1_bkc = b;
    }

    public void setBrcBottom(BorderCode borderCode) {
        this.field_22_brcBottom = borderCode;
    }

    public void setBrcLeft(BorderCode borderCode) {
        this.field_21_brcLeft = borderCode;
    }

    public void setBrcRight(BorderCode borderCode) {
        this.field_23_brcRight = borderCode;
    }

    public void setBrcTop(BorderCode borderCode) {
        this.field_20_brcTop = borderCode;
    }

    public void setCcolM1(int i) {
        this.field_50_ccolM1 = i;
    }

    public void setClm(int i) {
        this.field_29_clm = i;
    }

    public void setCnsPgn(byte b) {
        this.field_6_cnsPgn = b;
    }

    public void setDmBinFirst(int i) {
        this.field_17_dmBinFirst = i;
    }

    public void setDmBinOther(int i) {
        this.field_18_dmBinOther = i;
    }

    public void setDmOrientFirst(byte b) {
        this.field_56_dmOrientFirst = b;
    }

    public void setDmOrientPage(boolean z) {
        this.field_31_dmOrientPage = z;
    }

    public void setDmPaperReq(int i) {
        this.field_19_dmPaperReq = i;
    }

    public void setDttmPropRMark(DateAndTime dateAndTime) {
        this.field_26_dttmPropRMark = dateAndTime;
    }

    public void setDxaColumnWidth(int i) {
        this.field_55_dxaColumnWidth = i;
    }

    public void setDxaColumns(int i) {
        this.field_53_dxaColumns = i;
    }

    public void setDxaLeft(int i) {
        this.field_43_dxaLeft = i;
    }

    public void setDxaLnn(int i) {
        this.field_12_dxaLnn = i;
    }

    public void setDxaPgn(int i) {
        this.field_13_dxaPgn = i;
    }

    public void setDxaRight(int i) {
        this.field_44_dxaRight = i;
    }

    public void setDxtCharSpace(int i) {
        this.field_27_dxtCharSpace = i;
    }

    public void setDyaBottom(int i) {
        this.field_46_dyaBottom = i;
    }

    public void setDyaHdrBottom(int i) {
        this.field_49_dyaHdrBottom = i;
    }

    public void setDyaHdrTop(int i) {
        this.field_48_dyaHdrTop = i;
    }

    public void setDyaLinePitch(int i) {
        this.field_28_dyaLinePitch = i;
    }

    public void setDyaPgn(int i) {
        this.field_14_dyaPgn = i;
    }

    public void setDyaTop(int i) {
        this.field_45_dyaTop = i;
    }

    public void setDzaGutter(int i) {
        this.field_47_dzaGutter = i;
    }

    public void setFAutoPgn(boolean z) {
        this.field_3_fAutoPgn = z;
    }

    public void setFEndNote(boolean z) {
        this.field_8_fEndNote = z;
    }

    public void setFEvenlySpaced(boolean z) {
        this.field_51_fEvenlySpaced = z;
    }

    public void setFLBetween(boolean z) {
        this.field_15_fLBetween = z;
    }

    public void setFLayout(byte b) {
        this.field_57_fLayout = b;
    }

    public void setFPgnRestart(boolean z) {
        this.field_7_fPgnRestart = z;
    }

    public void setFPropMark(boolean z) {
        this.field_24_fPropMark = z;
    }

    public void setFTitlePage(boolean z) {
        this.field_2_fTitlePage = z;
    }

    public void setFUnlocked(boolean z) {
        this.field_5_fUnlocked = z;
    }

    public void setGrpfIhdt(byte b) {
        this.field_10_grpfIhdt = b;
    }

    public void setIHeadingPgn(byte b) {
        this.field_32_iHeadingPgn = b;
    }

    public void setIbstPropRMark(int i) {
        this.field_25_ibstPropRMark = i;
    }

    public void setLnc(byte b) {
        this.field_9_lnc = b;
    }

    public void setLnnMin(int i) {
        this.field_34_lnnMin = i;
    }

    public void setNLnnMod(int i) {
        this.field_11_nLnnMod = i;
    }

    public void setNfcPgn(byte b) {
        this.field_4_nfcPgn = b;
    }

    public void setOlstAnm(byte[] bArr) {
        this.field_59_olstAnm = bArr;
    }

    public void setPgbProp(int i) {
        this.field_37_pgbProp = i;
    }

    public void setPgnStart(int i) {
        this.field_33_pgnStart = i;
    }

    public void setRgdxaColumn(int[] iArr) {
        this.field_54_rgdxaColumn = iArr;
    }

    public void setUnused2(int i) {
        this.field_30_unused2 = i;
    }

    public void setUnused3(short s) {
        this.field_36_unused3 = s;
    }

    public void setUnused4(short s) {
        this.field_38_unused4 = s;
    }

    public void setUnused5(byte b) {
        this.field_52_unused5 = b;
    }

    public void setUnused6(short s) {
        this.field_58_unused6 = s;
    }

    public void setVjc(byte b) {
        this.field_16_vjc = b;
    }

    public void setWTextFlow(int i) {
        this.field_35_wTextFlow = i;
    }

    public void setXaPage(int i) {
        this.field_39_xaPage = i;
    }

    public void setXaPageNUp(int i) {
        this.field_41_xaPageNUp = i;
    }

    public void setYaPage(int i) {
        this.field_40_yaPage = i;
    }

    public void setYaPageNUp(int i) {
        this.field_42_yaPageNUp = i;
    }

    public String toString() {
        return "[SEP]\n    .bkc                  =  (" + ((int) getBkc()) + " )\n    .fTitlePage           =  (" + getFTitlePage() + " )\n    .fAutoPgn             =  (" + getFAutoPgn() + " )\n    .nfcPgn               =  (" + ((int) getNfcPgn()) + " )\n    .fUnlocked            =  (" + getFUnlocked() + " )\n    .cnsPgn               =  (" + ((int) getCnsPgn()) + " )\n    .fPgnRestart          =  (" + getFPgnRestart() + " )\n    .fEndNote             =  (" + getFEndNote() + " )\n    .lnc                  =  (" + ((int) getLnc()) + " )\n    .grpfIhdt             =  (" + ((int) getGrpfIhdt()) + " )\n    .nLnnMod              =  (" + getNLnnMod() + " )\n    .dxaLnn               =  (" + getDxaLnn() + " )\n    .dxaPgn               =  (" + getDxaPgn() + " )\n    .dyaPgn               =  (" + getDyaPgn() + " )\n    .fLBetween            =  (" + getFLBetween() + " )\n    .vjc                  =  (" + ((int) getVjc()) + " )\n    .dmBinFirst           =  (" + getDmBinFirst() + " )\n    .dmBinOther           =  (" + getDmBinOther() + " )\n    .dmPaperReq           =  (" + getDmPaperReq() + " )\n    .brcTop               =  (" + getBrcTop() + " )\n    .brcLeft              =  (" + getBrcLeft() + " )\n    .brcBottom            =  (" + getBrcBottom() + " )\n    .brcRight             =  (" + getBrcRight() + " )\n    .fPropMark            =  (" + getFPropMark() + " )\n    .ibstPropRMark        =  (" + getIbstPropRMark() + " )\n    .dttmPropRMark        =  (" + getDttmPropRMark() + " )\n    .dxtCharSpace         =  (" + getDxtCharSpace() + " )\n    .dyaLinePitch         =  (" + getDyaLinePitch() + " )\n    .clm                  =  (" + getClm() + " )\n    .unused2              =  (" + getUnused2() + " )\n    .dmOrientPage         =  (" + getDmOrientPage() + " )\n    .iHeadingPgn          =  (" + ((int) getIHeadingPgn()) + " )\n    .pgnStart             =  (" + getPgnStart() + " )\n    .lnnMin               =  (" + getLnnMin() + " )\n    .wTextFlow            =  (" + getWTextFlow() + " )\n    .unused3              =  (" + ((int) getUnused3()) + " )\n    .pgbProp              =  (" + getPgbProp() + " )\n    .unused4              =  (" + ((int) getUnused4()) + " )\n    .xaPage               =  (" + getXaPage() + " )\n    .yaPage               =  (" + getYaPage() + " )\n    .xaPageNUp            =  (" + getXaPageNUp() + " )\n    .yaPageNUp            =  (" + getYaPageNUp() + " )\n    .dxaLeft              =  (" + getDxaLeft() + " )\n    .dxaRight             =  (" + getDxaRight() + " )\n    .dyaTop               =  (" + getDyaTop() + " )\n    .dyaBottom            =  (" + getDyaBottom() + " )\n    .dzaGutter            =  (" + getDzaGutter() + " )\n    .dyaHdrTop            =  (" + getDyaHdrTop() + " )\n    .dyaHdrBottom         =  (" + getDyaHdrBottom() + " )\n    .ccolM1               =  (" + getCcolM1() + " )\n    .fEvenlySpaced        =  (" + getFEvenlySpaced() + " )\n    .unused5              =  (" + ((int) getUnused5()) + " )\n    .dxaColumns           =  (" + getDxaColumns() + " )\n    .rgdxaColumn          =  (" + Arrays.toString(getRgdxaColumn()) + " )\n    .dxaColumnWidth       =  (" + getDxaColumnWidth() + " )\n    .dmOrientFirst        =  (" + ((int) getDmOrientFirst()) + " )\n    .fLayout              =  (" + ((int) getFLayout()) + " )\n    .unused6              =  (" + ((int) getUnused6()) + " )\n    .olstAnm              =  (" + Arrays.toString(getOlstAnm()) + " )\n[/SEP]\n";
    }

    public SEPAbstractType(SEPAbstractType sEPAbstractType) {
        this.field_1_bkc = sEPAbstractType.field_1_bkc;
        this.field_2_fTitlePage = sEPAbstractType.field_2_fTitlePage;
        this.field_3_fAutoPgn = sEPAbstractType.field_3_fAutoPgn;
        this.field_4_nfcPgn = sEPAbstractType.field_4_nfcPgn;
        this.field_5_fUnlocked = sEPAbstractType.field_5_fUnlocked;
        this.field_6_cnsPgn = sEPAbstractType.field_6_cnsPgn;
        this.field_7_fPgnRestart = sEPAbstractType.field_7_fPgnRestart;
        this.field_8_fEndNote = sEPAbstractType.field_8_fEndNote;
        this.field_9_lnc = sEPAbstractType.field_9_lnc;
        this.field_10_grpfIhdt = sEPAbstractType.field_10_grpfIhdt;
        this.field_11_nLnnMod = sEPAbstractType.field_11_nLnnMod;
        this.field_12_dxaLnn = sEPAbstractType.field_12_dxaLnn;
        this.field_13_dxaPgn = sEPAbstractType.field_13_dxaPgn;
        this.field_14_dyaPgn = sEPAbstractType.field_14_dyaPgn;
        this.field_15_fLBetween = sEPAbstractType.field_15_fLBetween;
        this.field_16_vjc = sEPAbstractType.field_16_vjc;
        this.field_17_dmBinFirst = sEPAbstractType.field_17_dmBinFirst;
        this.field_18_dmBinOther = sEPAbstractType.field_18_dmBinOther;
        this.field_19_dmPaperReq = sEPAbstractType.field_19_dmPaperReq;
        BorderCode borderCode = sEPAbstractType.field_20_brcTop;
        this.field_20_brcTop = borderCode == null ? null : borderCode.copy();
        BorderCode borderCode2 = sEPAbstractType.field_21_brcLeft;
        this.field_21_brcLeft = borderCode2 == null ? null : borderCode2.copy();
        BorderCode borderCode3 = sEPAbstractType.field_22_brcBottom;
        this.field_22_brcBottom = borderCode3 == null ? null : borderCode3.copy();
        BorderCode borderCode4 = sEPAbstractType.field_23_brcRight;
        this.field_23_brcRight = borderCode4 == null ? null : borderCode4.copy();
        this.field_24_fPropMark = sEPAbstractType.field_24_fPropMark;
        this.field_25_ibstPropRMark = sEPAbstractType.field_25_ibstPropRMark;
        DateAndTime dateAndTime = sEPAbstractType.field_26_dttmPropRMark;
        this.field_26_dttmPropRMark = dateAndTime == null ? null : dateAndTime.copy();
        this.field_27_dxtCharSpace = sEPAbstractType.field_27_dxtCharSpace;
        this.field_28_dyaLinePitch = sEPAbstractType.field_28_dyaLinePitch;
        this.field_29_clm = sEPAbstractType.field_29_clm;
        this.field_30_unused2 = sEPAbstractType.field_30_unused2;
        this.field_31_dmOrientPage = sEPAbstractType.field_31_dmOrientPage;
        this.field_32_iHeadingPgn = sEPAbstractType.field_32_iHeadingPgn;
        this.field_33_pgnStart = sEPAbstractType.field_33_pgnStart;
        this.field_34_lnnMin = sEPAbstractType.field_34_lnnMin;
        this.field_35_wTextFlow = sEPAbstractType.field_35_wTextFlow;
        this.field_36_unused3 = sEPAbstractType.field_36_unused3;
        this.field_37_pgbProp = sEPAbstractType.field_37_pgbProp;
        this.field_38_unused4 = sEPAbstractType.field_38_unused4;
        this.field_39_xaPage = sEPAbstractType.field_39_xaPage;
        this.field_40_yaPage = sEPAbstractType.field_40_yaPage;
        this.field_41_xaPageNUp = sEPAbstractType.field_41_xaPageNUp;
        this.field_42_yaPageNUp = sEPAbstractType.field_42_yaPageNUp;
        this.field_43_dxaLeft = sEPAbstractType.field_43_dxaLeft;
        this.field_44_dxaRight = sEPAbstractType.field_44_dxaRight;
        this.field_45_dyaTop = sEPAbstractType.field_45_dyaTop;
        this.field_46_dyaBottom = sEPAbstractType.field_46_dyaBottom;
        this.field_47_dzaGutter = sEPAbstractType.field_47_dzaGutter;
        this.field_48_dyaHdrTop = sEPAbstractType.field_48_dyaHdrTop;
        this.field_49_dyaHdrBottom = sEPAbstractType.field_49_dyaHdrBottom;
        this.field_50_ccolM1 = sEPAbstractType.field_50_ccolM1;
        this.field_51_fEvenlySpaced = sEPAbstractType.field_51_fEvenlySpaced;
        this.field_52_unused5 = sEPAbstractType.field_52_unused5;
        this.field_53_dxaColumns = sEPAbstractType.field_53_dxaColumns;
        int[] iArr = sEPAbstractType.field_54_rgdxaColumn;
        this.field_54_rgdxaColumn = iArr == null ? null : (int[]) iArr.clone();
        this.field_55_dxaColumnWidth = sEPAbstractType.field_55_dxaColumnWidth;
        this.field_56_dmOrientFirst = sEPAbstractType.field_56_dmOrientFirst;
        this.field_57_fLayout = sEPAbstractType.field_57_fLayout;
        this.field_58_unused6 = sEPAbstractType.field_58_unused6;
        byte[] bArr = sEPAbstractType.field_59_olstAnm;
        this.field_59_olstAnm = bArr != null ? (byte[]) bArr.clone() : null;
    }
}
