package org.apache.poi.hwpf.model.types;

import java.util.Arrays;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.stream.Stream;
import org.apache.poi.hwpf.model.TabDescriptor;
import org.apache.poi.hwpf.model.types.PAPAbstractType;
import org.apache.poi.hwpf.usermodel.BorderCode;
import org.apache.poi.hwpf.usermodel.DateAndTime;
import org.apache.poi.hwpf.usermodel.DropCapSpecifier;
import org.apache.poi.hwpf.usermodel.LineSpacingDescriptor;
import org.apache.poi.hwpf.usermodel.ShadingDescriptor;
import org.apache.poi.util.BitField;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public abstract class PAPAbstractType {
    protected static final byte BRCL_DOUBLE = 2;
    protected static final byte BRCL_SHADOW = 3;
    protected static final byte BRCL_SINGLE = 0;
    protected static final byte BRCL_THICK = 1;
    protected static final byte BRCP_BAR_TO_LEFT_OF_PARAGRAPH = 16;
    protected static final byte BRCP_BORDER_ABOVE = 1;
    protected static final byte BRCP_BORDER_BELOW = 2;
    protected static final byte BRCP_BOX_AROUND = 15;
    protected static final byte BRCP_NONE = 0;
    protected static final boolean FMINHEIGHT_AT_LEAST = true;
    protected static final boolean FMINHEIGHT_EXACT = false;
    protected static final byte WALIGNFONT_AUTO = 4;
    protected static final byte WALIGNFONT_CENTERED = 1;
    protected static final byte WALIGNFONT_HANGING = 0;
    protected static final byte WALIGNFONT_ROMAN = 2;
    protected static final byte WALIGNFONT_VARIABLE = 3;
    protected boolean field_10_fNoLnn;
    protected LineSpacingDescriptor field_11_lspd;
    protected int field_12_dyaBefore;
    protected int field_13_dyaAfter;
    protected boolean field_14_fInTable;
    protected boolean field_15_finTableW97;
    protected boolean field_16_fTtp;
    protected int field_17_dxaAbs;
    protected int field_18_dyaAbs;
    protected int field_19_dxaWidth;
    protected int field_1_istd;
    protected boolean field_20_fBrLnAbove;
    protected boolean field_21_fBrLnBelow;
    protected byte field_22_pcVert;
    protected byte field_23_pcHorz;
    protected byte field_24_wr;
    protected boolean field_25_fNoAutoHyph;
    protected int field_26_dyaHeight;
    protected boolean field_27_fMinHeight;
    protected DropCapSpecifier field_28_dcs;
    protected int field_29_dyaFromText;
    protected boolean field_2_fSideBySide;
    protected int field_30_dxaFromText;
    protected boolean field_31_fLocked;
    protected boolean field_32_fWidowControl;
    protected boolean field_33_fKinsoku;
    protected boolean field_34_fWordWrap;
    protected boolean field_35_fOverflowPunct;
    protected boolean field_36_fTopLinePunct;
    protected boolean field_37_fAutoSpaceDE;
    protected boolean field_38_fAutoSpaceDN;
    protected int field_39_wAlignFont;
    protected boolean field_3_fKeep;
    protected short field_40_fontAlign;
    protected byte field_41_lvl;
    protected boolean field_42_fBiDi;
    protected boolean field_43_fNumRMIns;
    protected boolean field_44_fCrLf;
    protected boolean field_45_fUsePgsuSettings;
    protected boolean field_46_fAdjustRight;
    protected int field_47_itap;
    protected boolean field_48_fInnerTableCell;
    protected boolean field_49_fOpenTch;
    protected boolean field_4_fKeepFollow;
    protected boolean field_50_fTtpEmbedded;
    protected short field_51_dxcRight;
    protected short field_52_dxcLeft;
    protected short field_53_dxcLeft1;
    protected boolean field_54_fDyaBeforeAuto;
    protected boolean field_55_fDyaAfterAuto;
    protected int field_56_dxaRight;
    protected int field_57_dxaLeft;
    protected int field_58_dxaLeft1;
    protected byte field_59_jc;
    protected boolean field_5_fPageBreakBefore;
    protected BorderCode field_60_brcTop;
    protected BorderCode field_61_brcLeft;
    protected BorderCode field_62_brcBottom;
    protected BorderCode field_63_brcRight;
    protected BorderCode field_64_brcBetween;
    protected BorderCode field_65_brcBar;
    protected ShadingDescriptor field_66_shd;
    protected byte[] field_67_anld;
    protected byte[] field_68_phe;
    protected boolean field_69_fPropRMark;
    protected byte field_6_brcl;
    protected int field_70_ibstPropRMark;
    protected DateAndTime field_71_dttmPropRMark;
    protected int field_72_itbdMac;
    protected int[] field_73_rgdxaTab;
    protected TabDescriptor[] field_74_rgtbd;
    protected byte[] field_75_numrm;
    protected byte[] field_76_ptap;
    protected boolean field_77_fNoAllowOverlap;
    protected long field_78_ipgp;
    protected long field_79_rsid;
    protected byte field_7_brcp;
    protected byte field_8_ilvl;
    protected int field_9_ilfo;
    private static final BitField fVertical = new BitField(1);
    private static final BitField fBackward = new BitField(2);
    private static final BitField fRotateFont = new BitField(4);

    public PAPAbstractType() {
        this.field_11_lspd = new LineSpacingDescriptor();
        this.field_11_lspd = new LineSpacingDescriptor();
        this.field_28_dcs = new DropCapSpecifier();
        this.field_32_fWidowControl = true;
        this.field_41_lvl = (byte) 9;
        this.field_60_brcTop = new BorderCode();
        this.field_61_brcLeft = new BorderCode();
        this.field_62_brcBottom = new BorderCode();
        this.field_63_brcRight = new BorderCode();
        this.field_64_brcBetween = new BorderCode();
        this.field_65_brcBar = new BorderCode();
        this.field_66_shd = new ShadingDescriptor();
        this.field_67_anld = new byte[0];
        this.field_68_phe = new byte[0];
        this.field_71_dttmPropRMark = new DateAndTime();
        this.field_73_rgdxaTab = new int[0];
        this.field_74_rgtbd = new TabDescriptor[0];
        this.field_75_numrm = new byte[0];
        this.field_76_ptap = new byte[0];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ TabDescriptor[] lambda$new$0(int i) {
        return new TabDescriptor[i];
    }

    @Internal
    public byte[] getAnld() {
        return this.field_67_anld;
    }

    @Internal
    public BorderCode getBrcBar() {
        return this.field_65_brcBar;
    }

    @Internal
    public BorderCode getBrcBetween() {
        return this.field_64_brcBetween;
    }

    @Internal
    public BorderCode getBrcBottom() {
        return this.field_62_brcBottom;
    }

    @Internal
    public BorderCode getBrcLeft() {
        return this.field_61_brcLeft;
    }

    @Internal
    public BorderCode getBrcRight() {
        return this.field_63_brcRight;
    }

    @Internal
    public BorderCode getBrcTop() {
        return this.field_60_brcTop;
    }

    @Internal
    public byte getBrcl() {
        return this.field_6_brcl;
    }

    @Internal
    public byte getBrcp() {
        return this.field_7_brcp;
    }

    @Internal
    public DropCapSpecifier getDcs() {
        return this.field_28_dcs;
    }

    @Internal
    public DateAndTime getDttmPropRMark() {
        return this.field_71_dttmPropRMark;
    }

    @Internal
    public int getDxaAbs() {
        return this.field_17_dxaAbs;
    }

    @Internal
    public int getDxaFromText() {
        return this.field_30_dxaFromText;
    }

    @Internal
    public int getDxaLeft() {
        return this.field_57_dxaLeft;
    }

    @Internal
    public int getDxaLeft1() {
        return this.field_58_dxaLeft1;
    }

    @Internal
    public int getDxaRight() {
        return this.field_56_dxaRight;
    }

    @Internal
    public int getDxaWidth() {
        return this.field_19_dxaWidth;
    }

    @Internal
    public short getDxcLeft() {
        return this.field_52_dxcLeft;
    }

    @Internal
    public short getDxcLeft1() {
        return this.field_53_dxcLeft1;
    }

    @Internal
    public short getDxcRight() {
        return this.field_51_dxcRight;
    }

    @Internal
    public int getDyaAbs() {
        return this.field_18_dyaAbs;
    }

    @Internal
    public int getDyaAfter() {
        return this.field_13_dyaAfter;
    }

    @Internal
    public int getDyaBefore() {
        return this.field_12_dyaBefore;
    }

    @Internal
    public int getDyaFromText() {
        return this.field_29_dyaFromText;
    }

    @Internal
    public int getDyaHeight() {
        return this.field_26_dyaHeight;
    }

    @Internal
    public boolean getFAdjustRight() {
        return this.field_46_fAdjustRight;
    }

    @Internal
    public boolean getFAutoSpaceDE() {
        return this.field_37_fAutoSpaceDE;
    }

    @Internal
    public boolean getFAutoSpaceDN() {
        return this.field_38_fAutoSpaceDN;
    }

    @Internal
    public boolean getFBiDi() {
        return this.field_42_fBiDi;
    }

    @Internal
    public boolean getFBrLnAbove() {
        return this.field_20_fBrLnAbove;
    }

    @Internal
    public boolean getFBrLnBelow() {
        return this.field_21_fBrLnBelow;
    }

    @Internal
    public boolean getFCrLf() {
        return this.field_44_fCrLf;
    }

    @Internal
    public boolean getFDyaAfterAuto() {
        return this.field_55_fDyaAfterAuto;
    }

    @Internal
    public boolean getFDyaBeforeAuto() {
        return this.field_54_fDyaBeforeAuto;
    }

    @Internal
    public boolean getFInTable() {
        return this.field_14_fInTable;
    }

    @Internal
    public boolean getFInnerTableCell() {
        return this.field_48_fInnerTableCell;
    }

    @Internal
    public boolean getFKeep() {
        return this.field_3_fKeep;
    }

    @Internal
    public boolean getFKeepFollow() {
        return this.field_4_fKeepFollow;
    }

    @Internal
    public boolean getFKinsoku() {
        return this.field_33_fKinsoku;
    }

    @Internal
    public boolean getFLocked() {
        return this.field_31_fLocked;
    }

    @Internal
    public boolean getFMinHeight() {
        return this.field_27_fMinHeight;
    }

    @Internal
    public boolean getFNoAllowOverlap() {
        return this.field_77_fNoAllowOverlap;
    }

    @Internal
    public boolean getFNoAutoHyph() {
        return this.field_25_fNoAutoHyph;
    }

    @Internal
    public boolean getFNoLnn() {
        return this.field_10_fNoLnn;
    }

    @Internal
    public boolean getFNumRMIns() {
        return this.field_43_fNumRMIns;
    }

    @Internal
    public boolean getFOpenTch() {
        return this.field_49_fOpenTch;
    }

    @Internal
    public boolean getFOverflowPunct() {
        return this.field_35_fOverflowPunct;
    }

    @Internal
    public boolean getFPageBreakBefore() {
        return this.field_5_fPageBreakBefore;
    }

    @Internal
    public boolean getFPropRMark() {
        return this.field_69_fPropRMark;
    }

    @Internal
    public boolean getFSideBySide() {
        return this.field_2_fSideBySide;
    }

    @Internal
    public boolean getFTopLinePunct() {
        return this.field_36_fTopLinePunct;
    }

    @Internal
    public boolean getFTtp() {
        return this.field_16_fTtp;
    }

    @Internal
    public boolean getFTtpEmbedded() {
        return this.field_50_fTtpEmbedded;
    }

    @Internal
    public boolean getFUsePgsuSettings() {
        return this.field_45_fUsePgsuSettings;
    }

    @Internal
    public boolean getFWidowControl() {
        return this.field_32_fWidowControl;
    }

    @Internal
    public boolean getFWordWrap() {
        return this.field_34_fWordWrap;
    }

    @Internal
    public boolean getFinTableW97() {
        return this.field_15_finTableW97;
    }

    @Internal
    public short getFontAlign() {
        return this.field_40_fontAlign;
    }

    @Internal
    public int getIbstPropRMark() {
        return this.field_70_ibstPropRMark;
    }

    @Internal
    public int getIlfo() {
        return this.field_9_ilfo;
    }

    @Internal
    public byte getIlvl() {
        return this.field_8_ilvl;
    }

    @Internal
    public long getIpgp() {
        return this.field_78_ipgp;
    }

    @Internal
    public int getIstd() {
        return this.field_1_istd;
    }

    @Internal
    public int getItap() {
        return this.field_47_itap;
    }

    @Internal
    public int getItbdMac() {
        return this.field_72_itbdMac;
    }

    @Internal
    public byte getJc() {
        return this.field_59_jc;
    }

    @Internal
    public LineSpacingDescriptor getLspd() {
        return this.field_11_lspd;
    }

    @Internal
    public byte getLvl() {
        return this.field_41_lvl;
    }

    @Internal
    public byte[] getNumrm() {
        return this.field_75_numrm;
    }

    @Internal
    public byte getPcHorz() {
        return this.field_23_pcHorz;
    }

    @Internal
    public byte getPcVert() {
        return this.field_22_pcVert;
    }

    @Internal
    public byte[] getPhe() {
        return this.field_68_phe;
    }

    @Internal
    public byte[] getPtap() {
        return this.field_76_ptap;
    }

    @Internal
    public int[] getRgdxaTab() {
        return this.field_73_rgdxaTab;
    }

    @Internal
    public TabDescriptor[] getRgtbd() {
        return this.field_74_rgtbd;
    }

    @Internal
    public long getRsid() {
        return this.field_79_rsid;
    }

    @Internal
    public ShadingDescriptor getShd() {
        return this.field_66_shd;
    }

    @Internal
    public int getWAlignFont() {
        return this.field_39_wAlignFont;
    }

    @Internal
    public byte getWr() {
        return this.field_24_wr;
    }

    @Internal
    public boolean isFBackward() {
        return fBackward.isSet(this.field_40_fontAlign);
    }

    @Internal
    public boolean isFRotateFont() {
        return fRotateFont.isSet(this.field_40_fontAlign);
    }

    @Internal
    public boolean isFVertical() {
        return fVertical.isSet(this.field_40_fontAlign);
    }

    @Internal
    public void setAnld(byte[] bArr) {
        this.field_67_anld = bArr;
    }

    @Internal
    public void setBrcBar(BorderCode borderCode) {
        this.field_65_brcBar = borderCode;
    }

    @Internal
    public void setBrcBetween(BorderCode borderCode) {
        this.field_64_brcBetween = borderCode;
    }

    @Internal
    public void setBrcBottom(BorderCode borderCode) {
        this.field_62_brcBottom = borderCode;
    }

    @Internal
    public void setBrcLeft(BorderCode borderCode) {
        this.field_61_brcLeft = borderCode;
    }

    @Internal
    public void setBrcRight(BorderCode borderCode) {
        this.field_63_brcRight = borderCode;
    }

    @Internal
    public void setBrcTop(BorderCode borderCode) {
        this.field_60_brcTop = borderCode;
    }

    @Internal
    public void setBrcl(byte b) {
        this.field_6_brcl = b;
    }

    @Internal
    public void setBrcp(byte b) {
        this.field_7_brcp = b;
    }

    @Internal
    public void setDcs(DropCapSpecifier dropCapSpecifier) {
        this.field_28_dcs = dropCapSpecifier;
    }

    @Internal
    public void setDttmPropRMark(DateAndTime dateAndTime) {
        this.field_71_dttmPropRMark = dateAndTime;
    }

    @Internal
    public void setDxaAbs(int i) {
        this.field_17_dxaAbs = i;
    }

    @Internal
    public void setDxaFromText(int i) {
        this.field_30_dxaFromText = i;
    }

    @Internal
    public void setDxaLeft(int i) {
        this.field_57_dxaLeft = i;
    }

    @Internal
    public void setDxaLeft1(int i) {
        this.field_58_dxaLeft1 = i;
    }

    @Internal
    public void setDxaRight(int i) {
        this.field_56_dxaRight = i;
    }

    @Internal
    public void setDxaWidth(int i) {
        this.field_19_dxaWidth = i;
    }

    @Internal
    public void setDxcLeft(short s) {
        this.field_52_dxcLeft = s;
    }

    @Internal
    public void setDxcLeft1(short s) {
        this.field_53_dxcLeft1 = s;
    }

    @Internal
    public void setDxcRight(short s) {
        this.field_51_dxcRight = s;
    }

    @Internal
    public void setDyaAbs(int i) {
        this.field_18_dyaAbs = i;
    }

    @Internal
    public void setDyaAfter(int i) {
        this.field_13_dyaAfter = i;
    }

    @Internal
    public void setDyaBefore(int i) {
        this.field_12_dyaBefore = i;
    }

    @Internal
    public void setDyaFromText(int i) {
        this.field_29_dyaFromText = i;
    }

    @Internal
    public void setDyaHeight(int i) {
        this.field_26_dyaHeight = i;
    }

    @Internal
    public void setFAdjustRight(boolean z) {
        this.field_46_fAdjustRight = z;
    }

    @Internal
    public void setFAutoSpaceDE(boolean z) {
        this.field_37_fAutoSpaceDE = z;
    }

    @Internal
    public void setFAutoSpaceDN(boolean z) {
        this.field_38_fAutoSpaceDN = z;
    }

    @Internal
    public void setFBackward(boolean z) {
        this.field_40_fontAlign = (short) fBackward.setBoolean(this.field_40_fontAlign, z);
    }

    @Internal
    public void setFBiDi(boolean z) {
        this.field_42_fBiDi = z;
    }

    @Internal
    public void setFBrLnAbove(boolean z) {
        this.field_20_fBrLnAbove = z;
    }

    @Internal
    public void setFBrLnBelow(boolean z) {
        this.field_21_fBrLnBelow = z;
    }

    @Internal
    public void setFCrLf(boolean z) {
        this.field_44_fCrLf = z;
    }

    @Internal
    public void setFDyaAfterAuto(boolean z) {
        this.field_55_fDyaAfterAuto = z;
    }

    @Internal
    public void setFDyaBeforeAuto(boolean z) {
        this.field_54_fDyaBeforeAuto = z;
    }

    @Internal
    public void setFInTable(boolean z) {
        this.field_14_fInTable = z;
    }

    @Internal
    public void setFInnerTableCell(boolean z) {
        this.field_48_fInnerTableCell = z;
    }

    @Internal
    public void setFKeep(boolean z) {
        this.field_3_fKeep = z;
    }

    @Internal
    public void setFKeepFollow(boolean z) {
        this.field_4_fKeepFollow = z;
    }

    @Internal
    public void setFKinsoku(boolean z) {
        this.field_33_fKinsoku = z;
    }

    @Internal
    public void setFLocked(boolean z) {
        this.field_31_fLocked = z;
    }

    @Internal
    public void setFMinHeight(boolean z) {
        this.field_27_fMinHeight = z;
    }

    @Internal
    public void setFNoAllowOverlap(boolean z) {
        this.field_77_fNoAllowOverlap = z;
    }

    @Internal
    public void setFNoAutoHyph(boolean z) {
        this.field_25_fNoAutoHyph = z;
    }

    @Internal
    public void setFNoLnn(boolean z) {
        this.field_10_fNoLnn = z;
    }

    @Internal
    public void setFNumRMIns(boolean z) {
        this.field_43_fNumRMIns = z;
    }

    @Internal
    public void setFOpenTch(boolean z) {
        this.field_49_fOpenTch = z;
    }

    @Internal
    public void setFOverflowPunct(boolean z) {
        this.field_35_fOverflowPunct = z;
    }

    @Internal
    public void setFPageBreakBefore(boolean z) {
        this.field_5_fPageBreakBefore = z;
    }

    @Internal
    public void setFPropRMark(boolean z) {
        this.field_69_fPropRMark = z;
    }

    @Internal
    public void setFRotateFont(boolean z) {
        this.field_40_fontAlign = (short) fRotateFont.setBoolean(this.field_40_fontAlign, z);
    }

    @Internal
    public void setFSideBySide(boolean z) {
        this.field_2_fSideBySide = z;
    }

    @Internal
    public void setFTopLinePunct(boolean z) {
        this.field_36_fTopLinePunct = z;
    }

    @Internal
    public void setFTtp(boolean z) {
        this.field_16_fTtp = z;
    }

    @Internal
    public void setFTtpEmbedded(boolean z) {
        this.field_50_fTtpEmbedded = z;
    }

    @Internal
    public void setFUsePgsuSettings(boolean z) {
        this.field_45_fUsePgsuSettings = z;
    }

    @Internal
    public void setFVertical(boolean z) {
        this.field_40_fontAlign = (short) fVertical.setBoolean(this.field_40_fontAlign, z);
    }

    @Internal
    public void setFWidowControl(boolean z) {
        this.field_32_fWidowControl = z;
    }

    @Internal
    public void setFWordWrap(boolean z) {
        this.field_34_fWordWrap = z;
    }

    @Internal
    public void setFinTableW97(boolean z) {
        this.field_15_finTableW97 = z;
    }

    @Internal
    public void setFontAlign(short s) {
        this.field_40_fontAlign = s;
    }

    @Internal
    public void setIbstPropRMark(int i) {
        this.field_70_ibstPropRMark = i;
    }

    @Internal
    public void setIlfo(int i) {
        this.field_9_ilfo = i;
    }

    @Internal
    public void setIlvl(byte b) {
        this.field_8_ilvl = b;
    }

    @Internal
    public void setIpgp(long j) {
        this.field_78_ipgp = j;
    }

    @Internal
    public void setIstd(int i) {
        this.field_1_istd = i;
    }

    @Internal
    public void setItap(int i) {
        this.field_47_itap = i;
    }

    @Internal
    public void setItbdMac(int i) {
        this.field_72_itbdMac = i;
    }

    @Internal
    public void setJc(byte b) {
        this.field_59_jc = b;
    }

    @Internal
    public void setLspd(LineSpacingDescriptor lineSpacingDescriptor) {
        this.field_11_lspd = lineSpacingDescriptor;
    }

    @Internal
    public void setLvl(byte b) {
        this.field_41_lvl = b;
    }

    @Internal
    public void setNumrm(byte[] bArr) {
        this.field_75_numrm = bArr;
    }

    @Internal
    public void setPcHorz(byte b) {
        this.field_23_pcHorz = b;
    }

    @Internal
    public void setPcVert(byte b) {
        this.field_22_pcVert = b;
    }

    @Internal
    public void setPhe(byte[] bArr) {
        this.field_68_phe = bArr;
    }

    @Internal
    public void setPtap(byte[] bArr) {
        this.field_76_ptap = bArr;
    }

    @Internal
    public void setRgdxaTab(int[] iArr) {
        this.field_73_rgdxaTab = iArr;
    }

    @Internal
    public void setRgtbd(TabDescriptor[] tabDescriptorArr) {
        this.field_74_rgtbd = tabDescriptorArr;
    }

    @Internal
    public void setRsid(long j) {
        this.field_79_rsid = j;
    }

    @Internal
    public void setShd(ShadingDescriptor shadingDescriptor) {
        this.field_66_shd = shadingDescriptor;
    }

    @Internal
    public void setWAlignFont(int i) {
        this.field_39_wAlignFont = i;
    }

    @Internal
    public void setWr(byte b) {
        this.field_24_wr = b;
    }

    public String toString() {
        return "[PAP]\n    .istd                 =  (" + getIstd() + " )\n    .fSideBySide          =  (" + getFSideBySide() + " )\n    .fKeep                =  (" + getFKeep() + " )\n    .fKeepFollow          =  (" + getFKeepFollow() + " )\n    .fPageBreakBefore     =  (" + getFPageBreakBefore() + " )\n    .brcl                 =  (" + ((int) getBrcl()) + " )\n    .brcp                 =  (" + ((int) getBrcp()) + " )\n    .ilvl                 =  (" + ((int) getIlvl()) + " )\n    .ilfo                 =  (" + getIlfo() + " )\n    .fNoLnn               =  (" + getFNoLnn() + " )\n    .lspd                 =  (" + getLspd() + " )\n    .dyaBefore            =  (" + getDyaBefore() + " )\n    .dyaAfter             =  (" + getDyaAfter() + " )\n    .fInTable             =  (" + getFInTable() + " )\n    .finTableW97          =  (" + getFinTableW97() + " )\n    .fTtp                 =  (" + getFTtp() + " )\n    .dxaAbs               =  (" + getDxaAbs() + " )\n    .dyaAbs               =  (" + getDyaAbs() + " )\n    .dxaWidth             =  (" + getDxaWidth() + " )\n    .fBrLnAbove           =  (" + getFBrLnAbove() + " )\n    .fBrLnBelow           =  (" + getFBrLnBelow() + " )\n    .pcVert               =  (" + ((int) getPcVert()) + " )\n    .pcHorz               =  (" + ((int) getPcHorz()) + " )\n    .wr                   =  (" + ((int) getWr()) + " )\n    .fNoAutoHyph          =  (" + getFNoAutoHyph() + " )\n    .dyaHeight            =  (" + getDyaHeight() + " )\n    .fMinHeight           =  (" + getFMinHeight() + " )\n    .dcs                  =  (" + getDcs() + " )\n    .dyaFromText          =  (" + getDyaFromText() + " )\n    .dxaFromText          =  (" + getDxaFromText() + " )\n    .fLocked              =  (" + getFLocked() + " )\n    .fWidowControl        =  (" + getFWidowControl() + " )\n    .fKinsoku             =  (" + getFKinsoku() + " )\n    .fWordWrap            =  (" + getFWordWrap() + " )\n    .fOverflowPunct       =  (" + getFOverflowPunct() + " )\n    .fTopLinePunct        =  (" + getFTopLinePunct() + " )\n    .fAutoSpaceDE         =  (" + getFAutoSpaceDE() + " )\n    .fAutoSpaceDN         =  (" + getFAutoSpaceDN() + " )\n    .wAlignFont           =  (" + getWAlignFont() + " )\n    .fontAlign            =  (" + ((int) getFontAlign()) + " )\n         .fVertical                = " + isFVertical() + "\n         .fBackward                = " + isFBackward() + "\n         .fRotateFont              = " + isFRotateFont() + "\n    .lvl                  =  (" + ((int) getLvl()) + " )\n    .fBiDi                =  (" + getFBiDi() + " )\n    .fNumRMIns            =  (" + getFNumRMIns() + " )\n    .fCrLf                =  (" + getFCrLf() + " )\n    .fUsePgsuSettings     =  (" + getFUsePgsuSettings() + " )\n    .fAdjustRight         =  (" + getFAdjustRight() + " )\n    .itap                 =  (" + getItap() + " )\n    .fInnerTableCell      =  (" + getFInnerTableCell() + " )\n    .fOpenTch             =  (" + getFOpenTch() + " )\n    .fTtpEmbedded         =  (" + getFTtpEmbedded() + " )\n    .dxcRight             =  (" + ((int) getDxcRight()) + " )\n    .dxcLeft              =  (" + ((int) getDxcLeft()) + " )\n    .dxcLeft1             =  (" + ((int) getDxcLeft1()) + " )\n    .fDyaBeforeAuto       =  (" + getFDyaBeforeAuto() + " )\n    .fDyaAfterAuto        =  (" + getFDyaAfterAuto() + " )\n    .dxaRight             =  (" + getDxaRight() + " )\n    .dxaLeft              =  (" + getDxaLeft() + " )\n    .dxaLeft1             =  (" + getDxaLeft1() + " )\n    .jc                   =  (" + ((int) getJc()) + " )\n    .brcTop               =  (" + getBrcTop() + " )\n    .brcLeft              =  (" + getBrcLeft() + " )\n    .brcBottom            =  (" + getBrcBottom() + " )\n    .brcRight             =  (" + getBrcRight() + " )\n    .brcBetween           =  (" + getBrcBetween() + " )\n    .brcBar               =  (" + getBrcBar() + " )\n    .shd                  =  (" + getShd() + " )\n    .anld                 =  (" + Arrays.toString(getAnld()) + " )\n    .phe                  =  (" + Arrays.toString(getPhe()) + " )\n    .fPropRMark           =  (" + getFPropRMark() + " )\n    .ibstPropRMark        =  (" + getIbstPropRMark() + " )\n    .dttmPropRMark        =  (" + getDttmPropRMark() + " )\n    .itbdMac              =  (" + getItbdMac() + " )\n    .rgdxaTab             =  (" + Arrays.toString(getRgdxaTab()) + " )\n    .rgtbd                =  (" + Arrays.toString(getRgtbd()) + " )\n    .numrm                =  (" + Arrays.toString(getNumrm()) + " )\n    .ptap                 =  (" + Arrays.toString(getPtap()) + " )\n    .fNoAllowOverlap      =  (" + getFNoAllowOverlap() + " )\n    .ipgp                 =  (" + getIpgp() + " )\n    .rsid                 =  (" + getRsid() + " )\n[/PAP]\n";
    }

    public PAPAbstractType(PAPAbstractType pAPAbstractType) {
        this.field_1_istd = pAPAbstractType.field_1_istd;
        this.field_2_fSideBySide = pAPAbstractType.field_2_fSideBySide;
        this.field_3_fKeep = pAPAbstractType.field_3_fKeep;
        this.field_4_fKeepFollow = pAPAbstractType.field_4_fKeepFollow;
        this.field_5_fPageBreakBefore = pAPAbstractType.field_5_fPageBreakBefore;
        this.field_6_brcl = pAPAbstractType.field_6_brcl;
        this.field_7_brcp = pAPAbstractType.field_7_brcp;
        this.field_8_ilvl = pAPAbstractType.field_8_ilvl;
        this.field_9_ilfo = pAPAbstractType.field_9_ilfo;
        this.field_10_fNoLnn = pAPAbstractType.field_10_fNoLnn;
        LineSpacingDescriptor lineSpacingDescriptor = pAPAbstractType.field_11_lspd;
        this.field_11_lspd = lineSpacingDescriptor == null ? null : lineSpacingDescriptor.copy();
        this.field_12_dyaBefore = pAPAbstractType.field_12_dyaBefore;
        this.field_13_dyaAfter = pAPAbstractType.field_13_dyaAfter;
        this.field_14_fInTable = pAPAbstractType.field_14_fInTable;
        this.field_15_finTableW97 = pAPAbstractType.field_15_finTableW97;
        this.field_16_fTtp = pAPAbstractType.field_16_fTtp;
        this.field_17_dxaAbs = pAPAbstractType.field_17_dxaAbs;
        this.field_18_dyaAbs = pAPAbstractType.field_18_dyaAbs;
        this.field_19_dxaWidth = pAPAbstractType.field_19_dxaWidth;
        this.field_20_fBrLnAbove = pAPAbstractType.field_20_fBrLnAbove;
        this.field_21_fBrLnBelow = pAPAbstractType.field_21_fBrLnBelow;
        this.field_22_pcVert = pAPAbstractType.field_22_pcVert;
        this.field_23_pcHorz = pAPAbstractType.field_23_pcHorz;
        this.field_24_wr = pAPAbstractType.field_24_wr;
        this.field_25_fNoAutoHyph = pAPAbstractType.field_25_fNoAutoHyph;
        this.field_26_dyaHeight = pAPAbstractType.field_26_dyaHeight;
        this.field_27_fMinHeight = pAPAbstractType.field_27_fMinHeight;
        DropCapSpecifier dropCapSpecifier = pAPAbstractType.field_28_dcs;
        this.field_28_dcs = dropCapSpecifier == null ? null : dropCapSpecifier.copy();
        this.field_29_dyaFromText = pAPAbstractType.field_29_dyaFromText;
        this.field_30_dxaFromText = pAPAbstractType.field_30_dxaFromText;
        this.field_31_fLocked = pAPAbstractType.field_31_fLocked;
        this.field_32_fWidowControl = pAPAbstractType.field_32_fWidowControl;
        this.field_33_fKinsoku = pAPAbstractType.field_33_fKinsoku;
        this.field_34_fWordWrap = pAPAbstractType.field_34_fWordWrap;
        this.field_35_fOverflowPunct = pAPAbstractType.field_35_fOverflowPunct;
        this.field_36_fTopLinePunct = pAPAbstractType.field_36_fTopLinePunct;
        this.field_37_fAutoSpaceDE = pAPAbstractType.field_37_fAutoSpaceDE;
        this.field_38_fAutoSpaceDN = pAPAbstractType.field_38_fAutoSpaceDN;
        this.field_39_wAlignFont = pAPAbstractType.field_39_wAlignFont;
        this.field_40_fontAlign = pAPAbstractType.field_40_fontAlign;
        this.field_41_lvl = pAPAbstractType.field_41_lvl;
        this.field_42_fBiDi = pAPAbstractType.field_42_fBiDi;
        this.field_43_fNumRMIns = pAPAbstractType.field_43_fNumRMIns;
        this.field_44_fCrLf = pAPAbstractType.field_44_fCrLf;
        this.field_45_fUsePgsuSettings = pAPAbstractType.field_45_fUsePgsuSettings;
        this.field_46_fAdjustRight = pAPAbstractType.field_46_fAdjustRight;
        this.field_47_itap = pAPAbstractType.field_47_itap;
        this.field_48_fInnerTableCell = pAPAbstractType.field_48_fInnerTableCell;
        this.field_49_fOpenTch = pAPAbstractType.field_49_fOpenTch;
        this.field_50_fTtpEmbedded = pAPAbstractType.field_50_fTtpEmbedded;
        this.field_51_dxcRight = pAPAbstractType.field_51_dxcRight;
        this.field_52_dxcLeft = pAPAbstractType.field_52_dxcLeft;
        this.field_53_dxcLeft1 = pAPAbstractType.field_53_dxcLeft1;
        this.field_54_fDyaBeforeAuto = pAPAbstractType.field_54_fDyaBeforeAuto;
        this.field_55_fDyaAfterAuto = pAPAbstractType.field_55_fDyaAfterAuto;
        this.field_56_dxaRight = pAPAbstractType.field_56_dxaRight;
        this.field_57_dxaLeft = pAPAbstractType.field_57_dxaLeft;
        this.field_58_dxaLeft1 = pAPAbstractType.field_58_dxaLeft1;
        this.field_59_jc = pAPAbstractType.field_59_jc;
        BorderCode borderCode = pAPAbstractType.field_60_brcTop;
        this.field_60_brcTop = borderCode == null ? null : borderCode.copy();
        BorderCode borderCode2 = pAPAbstractType.field_61_brcLeft;
        this.field_61_brcLeft = borderCode2 == null ? null : borderCode2.copy();
        BorderCode borderCode3 = pAPAbstractType.field_62_brcBottom;
        this.field_62_brcBottom = borderCode3 == null ? null : borderCode3.copy();
        BorderCode borderCode4 = pAPAbstractType.field_63_brcRight;
        this.field_63_brcRight = borderCode4 == null ? null : borderCode4.copy();
        BorderCode borderCode5 = pAPAbstractType.field_64_brcBetween;
        this.field_64_brcBetween = borderCode5 == null ? null : borderCode5.copy();
        BorderCode borderCode6 = pAPAbstractType.field_65_brcBar;
        this.field_65_brcBar = borderCode6 == null ? null : borderCode6.copy();
        ShadingDescriptor shadingDescriptor = pAPAbstractType.field_66_shd;
        this.field_66_shd = shadingDescriptor == null ? null : shadingDescriptor.copy();
        byte[] bArr = pAPAbstractType.field_67_anld;
        this.field_67_anld = bArr == null ? null : (byte[]) bArr.clone();
        byte[] bArr2 = pAPAbstractType.field_68_phe;
        this.field_68_phe = bArr2 == null ? null : (byte[]) bArr2.clone();
        this.field_69_fPropRMark = pAPAbstractType.field_69_fPropRMark;
        this.field_70_ibstPropRMark = pAPAbstractType.field_70_ibstPropRMark;
        DateAndTime dateAndTime = pAPAbstractType.field_71_dttmPropRMark;
        this.field_71_dttmPropRMark = dateAndTime == null ? null : dateAndTime.copy();
        this.field_72_itbdMac = pAPAbstractType.field_72_itbdMac;
        int[] iArr = pAPAbstractType.field_73_rgdxaTab;
        this.field_73_rgdxaTab = iArr == null ? null : (int[]) iArr.clone();
        TabDescriptor[] tabDescriptorArr = pAPAbstractType.field_74_rgtbd;
        this.field_74_rgtbd = tabDescriptorArr == null ? null : (TabDescriptor[]) Stream.of((Object[]) tabDescriptorArr).map(new Function() { // from class: com.sunia.HTREnginev2.pjk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((TabDescriptor) obj).copy();
            }
        }).toArray(new IntFunction() { // from class: com.sunia.HTREnginev2.qjk
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                TabDescriptor[] lambda$new$0;
                lambda$new$0 = PAPAbstractType.lambda$new$0(i);
                return lambda$new$0;
            }
        });
        byte[] bArr3 = pAPAbstractType.field_75_numrm;
        this.field_75_numrm = bArr3 == null ? null : (byte[]) bArr3.clone();
        byte[] bArr4 = pAPAbstractType.field_76_ptap;
        this.field_76_ptap = bArr4 != null ? (byte[]) bArr4.clone() : null;
        this.field_77_fNoAllowOverlap = pAPAbstractType.field_77_fNoAllowOverlap;
        this.field_78_ipgp = pAPAbstractType.field_78_ipgp;
        this.field_79_rsid = pAPAbstractType.field_79_rsid;
    }
}
