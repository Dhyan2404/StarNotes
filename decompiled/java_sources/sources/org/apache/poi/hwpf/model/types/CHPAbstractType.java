package org.apache.poi.hwpf.model.types;

import java.util.Arrays;
import org.apache.poi.hwpf.model.Colorref;
import org.apache.poi.hwpf.model.Hyphenation;
import org.apache.poi.hwpf.usermodel.BorderCode;
import org.apache.poi.hwpf.usermodel.DateAndTime;
import org.apache.poi.hwpf.usermodel.ShadingDescriptor;
import org.apache.poi.util.BitField;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public abstract class CHPAbstractType {
    protected static final byte ISS_NONE = 0;
    protected static final byte ISS_SUBSCRIPTED = 2;
    protected static final byte ISS_SUPERSCRIPTED = 1;
    protected static final byte KCD_CIRCLE = 3;
    protected static final byte KCD_COMMA = 2;
    protected static final byte KCD_DOT = 1;
    protected static final byte KCD_NON = 0;
    protected static final byte KCD_UNDER_DOT = 4;
    protected static final byte KUL_BY_WORD = 2;
    protected static final byte KUL_DASH = 7;
    protected static final byte KUL_DASHED_HEAVY = 23;
    protected static final byte KUL_DASH_LONG = 39;
    protected static final byte KUL_DASH_LONG_HEAVY = 55;
    protected static final byte KUL_DOT = 8;
    protected static final byte KUL_DOTTED = 4;
    protected static final byte KUL_DOTTED_HEAVY = 20;
    protected static final byte KUL_DOT_DASH = 9;
    protected static final byte KUL_DOT_DASH_HEAVY = 25;
    protected static final byte KUL_DOT_DOT_DASH = 10;
    protected static final byte KUL_DOT_DOT_DASH_HEAVY = 26;
    protected static final byte KUL_DOUBLE = 3;
    protected static final byte KUL_HIDDEN = 5;
    protected static final byte KUL_NONE = 0;
    protected static final byte KUL_SINGLE = 1;
    protected static final byte KUL_THICK = 6;
    protected static final byte KUL_WAVE = 11;
    protected static final byte KUL_WAVE_DOUBLE = 43;
    protected static final byte KUL_WAVE_HEAVY = 27;
    protected static final byte LBRCRJ_BOTH = 3;
    protected static final byte LBRCRJ_LEFT = 1;
    protected static final byte LBRCRJ_NONE = 0;
    protected static final byte LBRCRJ_RIGHT = 2;
    protected static final byte SFXTTEXT_BACKGROUND_BLINK = 2;
    protected static final byte SFXTTEXT_LAS_VEGAS_LIGHTS = 1;
    protected static final byte SFXTTEXT_MARCHING_ANTS = 4;
    protected static final byte SFXTTEXT_MARCHING_RED_ANTS = 5;
    protected static final byte SFXTTEXT_NO = 0;
    protected static final byte SFXTTEXT_SHIMMER = 6;
    protected static final byte SFXTTEXT_SPARKLE_TEXT = 3;
    protected int field_10_pctCharWidth;
    protected int field_11_lidDefault;
    protected int field_12_lidFE;
    protected byte field_13_kcd;
    protected boolean field_14_fUndetermine;
    protected byte field_15_iss;
    protected boolean field_16_fSpecSymbol;
    protected byte field_17_idct;
    protected byte field_18_idctHint;
    protected byte field_19_kul;
    protected int field_1_grpfChp;
    protected Hyphenation field_20_hresi;
    protected int field_21_hpsKern;
    protected short field_22_hpsPos;
    protected ShadingDescriptor field_23_shd;
    protected BorderCode field_24_brc;
    protected int field_25_ibstRMark;
    protected byte field_26_sfxtText;
    protected boolean field_27_fDblBdr;
    protected boolean field_28_fBorderWS;
    protected short field_29_ufel;
    protected int field_2_hps;
    protected byte field_30_copt;
    protected int field_31_hpsAsci;
    protected int field_32_hpsFE;
    protected int field_33_hpsBi;
    protected int field_34_ftcSym;
    protected int field_35_xchSym;
    protected int field_36_fcPic;
    protected int field_37_fcObj;
    protected int field_38_lTagObj;
    protected int field_39_fcData;
    protected int field_3_ftcAscii;
    protected Hyphenation field_40_hresiOld;
    protected int field_41_ibstRMarkDel;
    protected DateAndTime field_42_dttmRMark;
    protected DateAndTime field_43_dttmRMarkDel;
    protected int field_44_istd;
    protected int field_45_idslRMReason;
    protected int field_46_idslReasonDel;
    protected int field_47_cpg;
    protected short field_48_Highlight;
    protected short field_49_CharsetFlags;
    protected int field_4_ftcFE;
    protected short field_50_chse;
    protected boolean field_51_fPropRMark;
    protected int field_52_ibstPropRMark;
    protected DateAndTime field_53_dttmPropRMark;
    protected boolean field_54_fConflictOrig;
    protected boolean field_55_fConflictOtherDel;
    protected int field_56_wConflict;
    protected int field_57_IbstConflict;
    protected DateAndTime field_58_dttmConflict;
    protected boolean field_59_fDispFldRMark;
    protected int field_5_ftcOther;
    protected int field_60_ibstDispFldRMark;
    protected DateAndTime field_61_dttmDispFldRMark;
    protected byte[] field_62_xstDispFldRMark;
    protected int field_63_fcObjp;
    protected byte field_64_lbrCRJ;
    protected boolean field_65_fSpecVanish;
    protected boolean field_66_fHasOldProps;
    protected boolean field_67_fSdtVanish;
    protected int field_68_wCharScale;
    protected int field_6_ftcBi;
    protected int field_7_dxaSpace;
    protected Colorref field_8_cv;
    protected byte field_9_ico;
    private static final BitField fBold = new BitField(1);
    private static final BitField fItalic = new BitField(2);
    private static final BitField fRMarkDel = new BitField(4);
    private static final BitField fOutline = new BitField(8);
    private static final BitField fFldVanish = new BitField(16);
    private static final BitField fSmallCaps = new BitField(32);
    private static final BitField fCaps = new BitField(64);
    private static final BitField fVanish = new BitField(128);
    private static final BitField fRMark = new BitField(256);
    private static final BitField fSpec = new BitField(512);
    private static final BitField fStrike = new BitField(1024);
    private static final BitField fObj = new BitField(2048);
    private static final BitField fShadow = new BitField(4096);
    private static final BitField fLowerCase = new BitField(8192);
    private static final BitField fData = new BitField(16384);
    private static final BitField fOle2 = new BitField(32768);
    private static final BitField fEmboss = new BitField(65536);
    private static final BitField fImprint = new BitField(131072);
    private static final BitField fDStrike = new BitField(262144);
    private static final BitField fUsePgsuSettings = new BitField(524288);
    private static final BitField fBoldBi = new BitField(1048576);
    private static final BitField fComplexScripts = new BitField(1048576);
    private static final BitField fItalicBi = new BitField(2097152);
    private static final BitField fBiDi = new BitField(4194304);
    private static final BitField fIcoBi = new BitField(8388608);
    private static final BitField fNonGlyph = new BitField(16777216);
    private static final BitField fBoldOther = new BitField(33554432);
    private static final BitField fItalicOther = new BitField(67108864);
    private static final BitField fNoProof = new BitField(134217728);
    private static final BitField fWebHidden = new BitField(268435456);
    private static final BitField fFitText = new BitField(536870912);
    private static final BitField fCalc = new BitField(1073741824);
    private static final BitField fFmtLineProp = new BitField(Integer.MIN_VALUE);
    private static final BitField itypFELayout = new BitField(255);
    private static final BitField fTNY = new BitField(256);
    private static final BitField fWarichu = new BitField(512);
    private static final BitField fKumimoji = new BitField(1024);
    private static final BitField fRuby = new BitField(2048);
    private static final BitField fLSFitText = new BitField(4096);
    private static final BitField spare = new BitField(57344);
    private static final BitField iWarichuBracket = new BitField(7);
    private static final BitField fWarichuNoOpenBracket = new BitField(8);
    private static final BitField fTNYCompress = new BitField(16);
    private static final BitField fTNYFetchTxm = new BitField(32);
    private static final BitField fCellFitText = new BitField(64);
    private static final BitField unused = new BitField(128);
    private static final BitField icoHighlight = new BitField(31);
    private static final BitField fHighlight = new BitField(32);
    private static final BitField fChsDiff = new BitField(1);
    private static final BitField fMacChs = new BitField(32);

    public CHPAbstractType() {
        this.field_2_hps = 20;
        this.field_8_cv = new Colorref();
        this.field_11_lidDefault = 1024;
        this.field_12_lidFE = 1024;
        this.field_20_hresi = new Hyphenation();
        this.field_23_shd = new ShadingDescriptor();
        this.field_24_brc = new BorderCode();
        this.field_36_fcPic = -1;
        this.field_40_hresiOld = new Hyphenation();
        this.field_42_dttmRMark = new DateAndTime();
        this.field_43_dttmRMarkDel = new DateAndTime();
        this.field_44_istd = 10;
        this.field_53_dttmPropRMark = new DateAndTime();
        this.field_58_dttmConflict = new DateAndTime();
        this.field_61_dttmDispFldRMark = new DateAndTime();
        this.field_62_xstDispFldRMark = new byte[32];
        this.field_68_wCharScale = 100;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        CHPAbstractType cHPAbstractType = (CHPAbstractType) obj;
        if (this.field_1_grpfChp != cHPAbstractType.field_1_grpfChp || this.field_2_hps != cHPAbstractType.field_2_hps || this.field_3_ftcAscii != cHPAbstractType.field_3_ftcAscii || this.field_4_ftcFE != cHPAbstractType.field_4_ftcFE || this.field_5_ftcOther != cHPAbstractType.field_5_ftcOther || this.field_6_ftcBi != cHPAbstractType.field_6_ftcBi || this.field_7_dxaSpace != cHPAbstractType.field_7_dxaSpace) {
            return false;
        }
        Colorref colorref = this.field_8_cv;
        if (colorref == null) {
            if (cHPAbstractType.field_8_cv != null) {
                return false;
            }
        } else if (!colorref.equals(cHPAbstractType.field_8_cv)) {
            return false;
        }
        if (this.field_9_ico != cHPAbstractType.field_9_ico || this.field_10_pctCharWidth != cHPAbstractType.field_10_pctCharWidth || this.field_11_lidDefault != cHPAbstractType.field_11_lidDefault || this.field_12_lidFE != cHPAbstractType.field_12_lidFE || this.field_13_kcd != cHPAbstractType.field_13_kcd || this.field_14_fUndetermine != cHPAbstractType.field_14_fUndetermine || this.field_15_iss != cHPAbstractType.field_15_iss || this.field_16_fSpecSymbol != cHPAbstractType.field_16_fSpecSymbol || this.field_17_idct != cHPAbstractType.field_17_idct || this.field_18_idctHint != cHPAbstractType.field_18_idctHint || this.field_19_kul != cHPAbstractType.field_19_kul) {
            return false;
        }
        Hyphenation hyphenation = this.field_20_hresi;
        if (hyphenation == null) {
            if (cHPAbstractType.field_20_hresi != null) {
                return false;
            }
        } else if (!hyphenation.equals(cHPAbstractType.field_20_hresi)) {
            return false;
        }
        if (this.field_21_hpsKern != cHPAbstractType.field_21_hpsKern || this.field_22_hpsPos != cHPAbstractType.field_22_hpsPos) {
            return false;
        }
        ShadingDescriptor shadingDescriptor = this.field_23_shd;
        if (shadingDescriptor == null) {
            if (cHPAbstractType.field_23_shd != null) {
                return false;
            }
        } else if (!shadingDescriptor.equals(cHPAbstractType.field_23_shd)) {
            return false;
        }
        BorderCode borderCode = this.field_24_brc;
        if (borderCode == null) {
            if (cHPAbstractType.field_24_brc != null) {
                return false;
            }
        } else if (!borderCode.equals(cHPAbstractType.field_24_brc)) {
            return false;
        }
        if (this.field_25_ibstRMark != cHPAbstractType.field_25_ibstRMark || this.field_26_sfxtText != cHPAbstractType.field_26_sfxtText || this.field_27_fDblBdr != cHPAbstractType.field_27_fDblBdr || this.field_28_fBorderWS != cHPAbstractType.field_28_fBorderWS || this.field_29_ufel != cHPAbstractType.field_29_ufel || this.field_30_copt != cHPAbstractType.field_30_copt || this.field_31_hpsAsci != cHPAbstractType.field_31_hpsAsci || this.field_32_hpsFE != cHPAbstractType.field_32_hpsFE || this.field_33_hpsBi != cHPAbstractType.field_33_hpsBi || this.field_34_ftcSym != cHPAbstractType.field_34_ftcSym || this.field_35_xchSym != cHPAbstractType.field_35_xchSym || this.field_36_fcPic != cHPAbstractType.field_36_fcPic || this.field_37_fcObj != cHPAbstractType.field_37_fcObj || this.field_38_lTagObj != cHPAbstractType.field_38_lTagObj || this.field_39_fcData != cHPAbstractType.field_39_fcData) {
            return false;
        }
        Hyphenation hyphenation2 = this.field_40_hresiOld;
        if (hyphenation2 == null) {
            if (cHPAbstractType.field_40_hresiOld != null) {
                return false;
            }
        } else if (!hyphenation2.equals(cHPAbstractType.field_40_hresiOld)) {
            return false;
        }
        if (this.field_41_ibstRMarkDel != cHPAbstractType.field_41_ibstRMarkDel) {
            return false;
        }
        DateAndTime dateAndTime = this.field_42_dttmRMark;
        if (dateAndTime == null) {
            if (cHPAbstractType.field_42_dttmRMark != null) {
                return false;
            }
        } else if (!dateAndTime.equals(cHPAbstractType.field_42_dttmRMark)) {
            return false;
        }
        DateAndTime dateAndTime2 = this.field_43_dttmRMarkDel;
        if (dateAndTime2 == null) {
            if (cHPAbstractType.field_43_dttmRMarkDel != null) {
                return false;
            }
        } else if (!dateAndTime2.equals(cHPAbstractType.field_43_dttmRMarkDel)) {
            return false;
        }
        if (this.field_44_istd != cHPAbstractType.field_44_istd || this.field_45_idslRMReason != cHPAbstractType.field_45_idslRMReason || this.field_46_idslReasonDel != cHPAbstractType.field_46_idslReasonDel || this.field_47_cpg != cHPAbstractType.field_47_cpg || this.field_48_Highlight != cHPAbstractType.field_48_Highlight || this.field_49_CharsetFlags != cHPAbstractType.field_49_CharsetFlags || this.field_50_chse != cHPAbstractType.field_50_chse || this.field_51_fPropRMark != cHPAbstractType.field_51_fPropRMark || this.field_52_ibstPropRMark != cHPAbstractType.field_52_ibstPropRMark) {
            return false;
        }
        DateAndTime dateAndTime3 = this.field_53_dttmPropRMark;
        if (dateAndTime3 == null) {
            if (cHPAbstractType.field_53_dttmPropRMark != null) {
                return false;
            }
        } else if (!dateAndTime3.equals(cHPAbstractType.field_53_dttmPropRMark)) {
            return false;
        }
        if (this.field_54_fConflictOrig != cHPAbstractType.field_54_fConflictOrig || this.field_55_fConflictOtherDel != cHPAbstractType.field_55_fConflictOtherDel || this.field_56_wConflict != cHPAbstractType.field_56_wConflict || this.field_57_IbstConflict != cHPAbstractType.field_57_IbstConflict) {
            return false;
        }
        DateAndTime dateAndTime4 = this.field_58_dttmConflict;
        if (dateAndTime4 == null) {
            if (cHPAbstractType.field_58_dttmConflict != null) {
                return false;
            }
        } else if (!dateAndTime4.equals(cHPAbstractType.field_58_dttmConflict)) {
            return false;
        }
        if (this.field_59_fDispFldRMark != cHPAbstractType.field_59_fDispFldRMark || this.field_60_ibstDispFldRMark != cHPAbstractType.field_60_ibstDispFldRMark) {
            return false;
        }
        DateAndTime dateAndTime5 = this.field_61_dttmDispFldRMark;
        if (dateAndTime5 == null) {
            if (cHPAbstractType.field_61_dttmDispFldRMark != null) {
                return false;
            }
        } else if (!dateAndTime5.equals(cHPAbstractType.field_61_dttmDispFldRMark)) {
            return false;
        }
        return Arrays.equals(this.field_62_xstDispFldRMark, cHPAbstractType.field_62_xstDispFldRMark) && this.field_63_fcObjp == cHPAbstractType.field_63_fcObjp && this.field_64_lbrCRJ == cHPAbstractType.field_64_lbrCRJ && this.field_65_fSpecVanish == cHPAbstractType.field_65_fSpecVanish && this.field_66_fHasOldProps == cHPAbstractType.field_66_fHasOldProps && this.field_67_fSdtVanish == cHPAbstractType.field_67_fSdtVanish && this.field_68_wCharScale == cHPAbstractType.field_68_wCharScale;
    }

    @Internal
    public BorderCode getBrc() {
        return this.field_24_brc;
    }

    @Internal
    public short getCharsetFlags() {
        return this.field_49_CharsetFlags;
    }

    @Internal
    public short getChse() {
        return this.field_50_chse;
    }

    @Internal
    public byte getCopt() {
        return this.field_30_copt;
    }

    @Internal
    public int getCpg() {
        return this.field_47_cpg;
    }

    @Internal
    public Colorref getCv() {
        return this.field_8_cv;
    }

    @Internal
    public DateAndTime getDttmConflict() {
        return this.field_58_dttmConflict;
    }

    @Internal
    public DateAndTime getDttmDispFldRMark() {
        return this.field_61_dttmDispFldRMark;
    }

    @Internal
    public DateAndTime getDttmPropRMark() {
        return this.field_53_dttmPropRMark;
    }

    @Internal
    public DateAndTime getDttmRMark() {
        return this.field_42_dttmRMark;
    }

    @Internal
    public DateAndTime getDttmRMarkDel() {
        return this.field_43_dttmRMarkDel;
    }

    @Internal
    public int getDxaSpace() {
        return this.field_7_dxaSpace;
    }

    @Internal
    public boolean getFBorderWS() {
        return this.field_28_fBorderWS;
    }

    @Internal
    public boolean getFConflictOrig() {
        return this.field_54_fConflictOrig;
    }

    @Internal
    public boolean getFConflictOtherDel() {
        return this.field_55_fConflictOtherDel;
    }

    @Internal
    public boolean getFDblBdr() {
        return this.field_27_fDblBdr;
    }

    @Internal
    public boolean getFDispFldRMark() {
        return this.field_59_fDispFldRMark;
    }

    @Internal
    public boolean getFHasOldProps() {
        return this.field_66_fHasOldProps;
    }

    @Internal
    public boolean getFPropRMark() {
        return this.field_51_fPropRMark;
    }

    @Internal
    public boolean getFSdtVanish() {
        return this.field_67_fSdtVanish;
    }

    @Internal
    public boolean getFSpecSymbol() {
        return this.field_16_fSpecSymbol;
    }

    @Internal
    public boolean getFSpecVanish() {
        return this.field_65_fSpecVanish;
    }

    @Internal
    public boolean getFUndetermine() {
        return this.field_14_fUndetermine;
    }

    @Internal
    public int getFcData() {
        return this.field_39_fcData;
    }

    @Internal
    public int getFcObj() {
        return this.field_37_fcObj;
    }

    @Internal
    public int getFcObjp() {
        return this.field_63_fcObjp;
    }

    @Internal
    public int getFcPic() {
        return this.field_36_fcPic;
    }

    @Internal
    public int getFtcAscii() {
        return this.field_3_ftcAscii;
    }

    @Internal
    public int getFtcBi() {
        return this.field_6_ftcBi;
    }

    @Internal
    public int getFtcFE() {
        return this.field_4_ftcFE;
    }

    @Internal
    public int getFtcOther() {
        return this.field_5_ftcOther;
    }

    @Internal
    public int getFtcSym() {
        return this.field_34_ftcSym;
    }

    @Internal
    public int getGrpfChp() {
        return this.field_1_grpfChp;
    }

    @Internal
    public short getHighlight() {
        return this.field_48_Highlight;
    }

    @Internal
    public int getHps() {
        return this.field_2_hps;
    }

    @Internal
    public int getHpsAsci() {
        return this.field_31_hpsAsci;
    }

    @Internal
    public int getHpsBi() {
        return this.field_33_hpsBi;
    }

    @Internal
    public int getHpsFE() {
        return this.field_32_hpsFE;
    }

    @Internal
    public int getHpsKern() {
        return this.field_21_hpsKern;
    }

    @Internal
    public short getHpsPos() {
        return this.field_22_hpsPos;
    }

    @Internal
    public Hyphenation getHresi() {
        return this.field_20_hresi;
    }

    @Internal
    public Hyphenation getHresiOld() {
        return this.field_40_hresiOld;
    }

    @Internal
    public byte getIWarichuBracket() {
        return (byte) iWarichuBracket.getValue(this.field_30_copt);
    }

    @Internal
    public int getIbstConflict() {
        return this.field_57_IbstConflict;
    }

    @Internal
    public int getIbstDispFldRMark() {
        return this.field_60_ibstDispFldRMark;
    }

    @Internal
    public int getIbstPropRMark() {
        return this.field_52_ibstPropRMark;
    }

    @Internal
    public int getIbstRMark() {
        return this.field_25_ibstRMark;
    }

    @Internal
    public int getIbstRMarkDel() {
        return this.field_41_ibstRMarkDel;
    }

    @Internal
    public byte getIco() {
        return this.field_9_ico;
    }

    @Internal
    public byte getIcoHighlight() {
        return (byte) icoHighlight.getValue(this.field_48_Highlight);
    }

    @Internal
    public byte getIdct() {
        return this.field_17_idct;
    }

    @Internal
    public byte getIdctHint() {
        return this.field_18_idctHint;
    }

    @Internal
    public int getIdslRMReason() {
        return this.field_45_idslRMReason;
    }

    @Internal
    public int getIdslReasonDel() {
        return this.field_46_idslReasonDel;
    }

    @Internal
    public byte getIss() {
        return this.field_15_iss;
    }

    @Internal
    public int getIstd() {
        return this.field_44_istd;
    }

    @Internal
    public short getItypFELayout() {
        return (short) itypFELayout.getValue(this.field_29_ufel);
    }

    @Internal
    public byte getKcd() {
        return this.field_13_kcd;
    }

    @Internal
    public byte getKul() {
        return this.field_19_kul;
    }

    @Internal
    public int getLTagObj() {
        return this.field_38_lTagObj;
    }

    @Internal
    public byte getLbrCRJ() {
        return this.field_64_lbrCRJ;
    }

    @Internal
    public int getLidDefault() {
        return this.field_11_lidDefault;
    }

    @Internal
    public int getLidFE() {
        return this.field_12_lidFE;
    }

    @Internal
    public int getPctCharWidth() {
        return this.field_10_pctCharWidth;
    }

    @Internal
    public byte getSfxtText() {
        return this.field_26_sfxtText;
    }

    @Internal
    public ShadingDescriptor getShd() {
        return this.field_23_shd;
    }

    @Internal
    public byte getSpare() {
        return (byte) spare.getValue(this.field_29_ufel);
    }

    @Internal
    public short getUfel() {
        return this.field_29_ufel;
    }

    @Internal
    public int getWCharScale() {
        return this.field_68_wCharScale;
    }

    @Internal
    public int getWConflict() {
        return this.field_56_wConflict;
    }

    @Internal
    public int getXchSym() {
        return this.field_35_xchSym;
    }

    @Internal
    public byte[] getXstDispFldRMark() {
        return this.field_62_xstDispFldRMark;
    }

    public int hashCode() {
        return Arrays.deepHashCode(new Object[]{Integer.valueOf(this.field_1_grpfChp), Integer.valueOf(this.field_2_hps), Integer.valueOf(this.field_3_ftcAscii), Integer.valueOf(this.field_4_ftcFE), Integer.valueOf(this.field_5_ftcOther), Integer.valueOf(this.field_6_ftcBi), Integer.valueOf(this.field_7_dxaSpace), this.field_8_cv, Byte.valueOf(this.field_9_ico), Integer.valueOf(this.field_10_pctCharWidth), Integer.valueOf(this.field_11_lidDefault), Integer.valueOf(this.field_12_lidFE), Byte.valueOf(this.field_13_kcd), Boolean.valueOf(this.field_14_fUndetermine), Byte.valueOf(this.field_15_iss), Boolean.valueOf(this.field_16_fSpecSymbol), Byte.valueOf(this.field_17_idct), Byte.valueOf(this.field_18_idctHint), Byte.valueOf(this.field_19_kul), this.field_20_hresi, Integer.valueOf(this.field_21_hpsKern), Short.valueOf(this.field_22_hpsPos), this.field_23_shd, this.field_24_brc, Integer.valueOf(this.field_25_ibstRMark), Byte.valueOf(this.field_26_sfxtText), Boolean.valueOf(this.field_27_fDblBdr), Boolean.valueOf(this.field_28_fBorderWS), Short.valueOf(this.field_29_ufel), Byte.valueOf(this.field_30_copt), Integer.valueOf(this.field_31_hpsAsci), Integer.valueOf(this.field_32_hpsFE), Integer.valueOf(this.field_33_hpsBi), Integer.valueOf(this.field_34_ftcSym), Integer.valueOf(this.field_35_xchSym), Integer.valueOf(this.field_36_fcPic), Integer.valueOf(this.field_37_fcObj), Integer.valueOf(this.field_38_lTagObj), Integer.valueOf(this.field_39_fcData), this.field_40_hresiOld, Integer.valueOf(this.field_41_ibstRMarkDel), this.field_42_dttmRMark, this.field_43_dttmRMarkDel, Integer.valueOf(this.field_44_istd), Integer.valueOf(this.field_45_idslRMReason), Integer.valueOf(this.field_46_idslReasonDel), Integer.valueOf(this.field_47_cpg), Short.valueOf(this.field_48_Highlight), Short.valueOf(this.field_49_CharsetFlags), Short.valueOf(this.field_50_chse), Boolean.valueOf(this.field_51_fPropRMark), Integer.valueOf(this.field_52_ibstPropRMark), this.field_53_dttmPropRMark, Boolean.valueOf(this.field_54_fConflictOrig), Boolean.valueOf(this.field_55_fConflictOtherDel), Integer.valueOf(this.field_56_wConflict), Integer.valueOf(this.field_57_IbstConflict), this.field_58_dttmConflict, Boolean.valueOf(this.field_59_fDispFldRMark), Integer.valueOf(this.field_60_ibstDispFldRMark), this.field_61_dttmDispFldRMark, this.field_62_xstDispFldRMark, Integer.valueOf(this.field_63_fcObjp), Byte.valueOf(this.field_64_lbrCRJ), Boolean.valueOf(this.field_65_fSpecVanish), Boolean.valueOf(this.field_66_fHasOldProps), Boolean.valueOf(this.field_67_fSdtVanish), Integer.valueOf(this.field_68_wCharScale)});
    }

    @Internal
    public boolean isFBiDi() {
        return fBiDi.isSet(this.field_1_grpfChp);
    }

    @Internal
    public boolean isFBold() {
        return fBold.isSet(this.field_1_grpfChp);
    }

    @Internal
    public boolean isFBoldBi() {
        return fBoldBi.isSet(this.field_1_grpfChp);
    }

    @Internal
    public boolean isFBoldOther() {
        return fBoldOther.isSet(this.field_1_grpfChp);
    }

    @Internal
    public boolean isFCalc() {
        return fCalc.isSet(this.field_1_grpfChp);
    }

    @Internal
    public boolean isFCaps() {
        return fCaps.isSet(this.field_1_grpfChp);
    }

    @Internal
    public boolean isFCellFitText() {
        return fCellFitText.isSet(this.field_30_copt);
    }

    @Internal
    public boolean isFChsDiff() {
        return fChsDiff.isSet(this.field_49_CharsetFlags);
    }

    @Internal
    public boolean isFComplexScripts() {
        return fComplexScripts.isSet(this.field_1_grpfChp);
    }

    @Internal
    public boolean isFDStrike() {
        return fDStrike.isSet(this.field_1_grpfChp);
    }

    @Internal
    public boolean isFData() {
        return fData.isSet(this.field_1_grpfChp);
    }

    @Internal
    public boolean isFEmboss() {
        return fEmboss.isSet(this.field_1_grpfChp);
    }

    @Internal
    public boolean isFFitText() {
        return fFitText.isSet(this.field_1_grpfChp);
    }

    @Internal
    public boolean isFFldVanish() {
        return fFldVanish.isSet(this.field_1_grpfChp);
    }

    @Internal
    public boolean isFFmtLineProp() {
        return fFmtLineProp.isSet(this.field_1_grpfChp);
    }

    @Internal
    public boolean isFHighlight() {
        return fHighlight.isSet(this.field_48_Highlight);
    }

    @Internal
    public boolean isFIcoBi() {
        return fIcoBi.isSet(this.field_1_grpfChp);
    }

    @Internal
    public boolean isFImprint() {
        return fImprint.isSet(this.field_1_grpfChp);
    }

    @Internal
    public boolean isFItalic() {
        return fItalic.isSet(this.field_1_grpfChp);
    }

    @Internal
    public boolean isFItalicBi() {
        return fItalicBi.isSet(this.field_1_grpfChp);
    }

    @Internal
    public boolean isFItalicOther() {
        return fItalicOther.isSet(this.field_1_grpfChp);
    }

    @Internal
    public boolean isFKumimoji() {
        return fKumimoji.isSet(this.field_29_ufel);
    }

    @Internal
    public boolean isFLSFitText() {
        return fLSFitText.isSet(this.field_29_ufel);
    }

    @Internal
    public boolean isFLowerCase() {
        return fLowerCase.isSet(this.field_1_grpfChp);
    }

    @Internal
    public boolean isFMacChs() {
        return fMacChs.isSet(this.field_49_CharsetFlags);
    }

    @Internal
    public boolean isFNoProof() {
        return fNoProof.isSet(this.field_1_grpfChp);
    }

    @Internal
    public boolean isFNonGlyph() {
        return fNonGlyph.isSet(this.field_1_grpfChp);
    }

    @Internal
    public boolean isFObj() {
        return fObj.isSet(this.field_1_grpfChp);
    }

    @Internal
    public boolean isFOle2() {
        return fOle2.isSet(this.field_1_grpfChp);
    }

    @Internal
    public boolean isFOutline() {
        return fOutline.isSet(this.field_1_grpfChp);
    }

    @Internal
    public boolean isFRMark() {
        return fRMark.isSet(this.field_1_grpfChp);
    }

    @Internal
    public boolean isFRMarkDel() {
        return fRMarkDel.isSet(this.field_1_grpfChp);
    }

    @Internal
    public boolean isFRuby() {
        return fRuby.isSet(this.field_29_ufel);
    }

    @Internal
    public boolean isFShadow() {
        return fShadow.isSet(this.field_1_grpfChp);
    }

    @Internal
    public boolean isFSmallCaps() {
        return fSmallCaps.isSet(this.field_1_grpfChp);
    }

    @Internal
    public boolean isFSpec() {
        return fSpec.isSet(this.field_1_grpfChp);
    }

    @Internal
    public boolean isFStrike() {
        return fStrike.isSet(this.field_1_grpfChp);
    }

    @Internal
    public boolean isFTNY() {
        return fTNY.isSet(this.field_29_ufel);
    }

    @Internal
    public boolean isFTNYCompress() {
        return fTNYCompress.isSet(this.field_30_copt);
    }

    @Internal
    public boolean isFTNYFetchTxm() {
        return fTNYFetchTxm.isSet(this.field_30_copt);
    }

    @Internal
    public boolean isFUsePgsuSettings() {
        return fUsePgsuSettings.isSet(this.field_1_grpfChp);
    }

    @Internal
    public boolean isFVanish() {
        return fVanish.isSet(this.field_1_grpfChp);
    }

    @Internal
    public boolean isFWarichu() {
        return fWarichu.isSet(this.field_29_ufel);
    }

    @Internal
    public boolean isFWarichuNoOpenBracket() {
        return fWarichuNoOpenBracket.isSet(this.field_30_copt);
    }

    @Internal
    public boolean isFWebHidden() {
        return fWebHidden.isSet(this.field_1_grpfChp);
    }

    @Internal
    public boolean isUnused() {
        return unused.isSet(this.field_30_copt);
    }

    @Internal
    public void setBrc(BorderCode borderCode) {
        this.field_24_brc = borderCode;
    }

    @Internal
    public void setCharsetFlags(short s) {
        this.field_49_CharsetFlags = s;
    }

    @Internal
    public void setChse(short s) {
        this.field_50_chse = s;
    }

    @Internal
    public void setCopt(byte b) {
        this.field_30_copt = b;
    }

    @Internal
    public void setCpg(int i) {
        this.field_47_cpg = i;
    }

    @Internal
    public void setCv(Colorref colorref) {
        this.field_8_cv = colorref;
    }

    @Internal
    public void setDttmConflict(DateAndTime dateAndTime) {
        this.field_58_dttmConflict = dateAndTime;
    }

    @Internal
    public void setDttmDispFldRMark(DateAndTime dateAndTime) {
        this.field_61_dttmDispFldRMark = dateAndTime;
    }

    @Internal
    public void setDttmPropRMark(DateAndTime dateAndTime) {
        this.field_53_dttmPropRMark = dateAndTime;
    }

    @Internal
    public void setDttmRMark(DateAndTime dateAndTime) {
        this.field_42_dttmRMark = dateAndTime;
    }

    @Internal
    public void setDttmRMarkDel(DateAndTime dateAndTime) {
        this.field_43_dttmRMarkDel = dateAndTime;
    }

    @Internal
    public void setDxaSpace(int i) {
        this.field_7_dxaSpace = i;
    }

    @Internal
    public void setFBiDi(boolean z) {
        this.field_1_grpfChp = fBiDi.setBoolean(this.field_1_grpfChp, z);
    }

    @Internal
    public void setFBold(boolean z) {
        this.field_1_grpfChp = fBold.setBoolean(this.field_1_grpfChp, z);
    }

    @Internal
    public void setFBoldBi(boolean z) {
        this.field_1_grpfChp = fBoldBi.setBoolean(this.field_1_grpfChp, z);
    }

    @Internal
    public void setFBoldOther(boolean z) {
        this.field_1_grpfChp = fBoldOther.setBoolean(this.field_1_grpfChp, z);
    }

    @Internal
    public void setFBorderWS(boolean z) {
        this.field_28_fBorderWS = z;
    }

    @Internal
    public void setFCalc(boolean z) {
        this.field_1_grpfChp = fCalc.setBoolean(this.field_1_grpfChp, z);
    }

    @Internal
    public void setFCaps(boolean z) {
        this.field_1_grpfChp = fCaps.setBoolean(this.field_1_grpfChp, z);
    }

    @Internal
    public void setFCellFitText(boolean z) {
        this.field_30_copt = (byte) fCellFitText.setBoolean(this.field_30_copt, z);
    }

    @Internal
    public void setFChsDiff(boolean z) {
        this.field_49_CharsetFlags = (short) fChsDiff.setBoolean(this.field_49_CharsetFlags, z);
    }

    @Internal
    public void setFComplexScripts(boolean z) {
        this.field_1_grpfChp = fComplexScripts.setBoolean(this.field_1_grpfChp, z);
    }

    @Internal
    public void setFConflictOrig(boolean z) {
        this.field_54_fConflictOrig = z;
    }

    @Internal
    public void setFConflictOtherDel(boolean z) {
        this.field_55_fConflictOtherDel = z;
    }

    @Internal
    public void setFDStrike(boolean z) {
        this.field_1_grpfChp = fDStrike.setBoolean(this.field_1_grpfChp, z);
    }

    @Internal
    public void setFData(boolean z) {
        this.field_1_grpfChp = fData.setBoolean(this.field_1_grpfChp, z);
    }

    @Internal
    public void setFDblBdr(boolean z) {
        this.field_27_fDblBdr = z;
    }

    @Internal
    public void setFDispFldRMark(boolean z) {
        this.field_59_fDispFldRMark = z;
    }

    @Internal
    public void setFEmboss(boolean z) {
        this.field_1_grpfChp = fEmboss.setBoolean(this.field_1_grpfChp, z);
    }

    @Internal
    public void setFFitText(boolean z) {
        this.field_1_grpfChp = fFitText.setBoolean(this.field_1_grpfChp, z);
    }

    @Internal
    public void setFFldVanish(boolean z) {
        this.field_1_grpfChp = fFldVanish.setBoolean(this.field_1_grpfChp, z);
    }

    @Internal
    public void setFFmtLineProp(boolean z) {
        this.field_1_grpfChp = fFmtLineProp.setBoolean(this.field_1_grpfChp, z);
    }

    @Internal
    public void setFHasOldProps(boolean z) {
        this.field_66_fHasOldProps = z;
    }

    @Internal
    public void setFHighlight(boolean z) {
        this.field_48_Highlight = (short) fHighlight.setBoolean(this.field_48_Highlight, z);
    }

    @Internal
    public void setFIcoBi(boolean z) {
        this.field_1_grpfChp = fIcoBi.setBoolean(this.field_1_grpfChp, z);
    }

    @Internal
    public void setFImprint(boolean z) {
        this.field_1_grpfChp = fImprint.setBoolean(this.field_1_grpfChp, z);
    }

    @Internal
    public void setFItalic(boolean z) {
        this.field_1_grpfChp = fItalic.setBoolean(this.field_1_grpfChp, z);
    }

    @Internal
    public void setFItalicBi(boolean z) {
        this.field_1_grpfChp = fItalicBi.setBoolean(this.field_1_grpfChp, z);
    }

    @Internal
    public void setFItalicOther(boolean z) {
        this.field_1_grpfChp = fItalicOther.setBoolean(this.field_1_grpfChp, z);
    }

    @Internal
    public void setFKumimoji(boolean z) {
        this.field_29_ufel = (short) fKumimoji.setBoolean(this.field_29_ufel, z);
    }

    @Internal
    public void setFLSFitText(boolean z) {
        this.field_29_ufel = (short) fLSFitText.setBoolean(this.field_29_ufel, z);
    }

    @Internal
    public void setFLowerCase(boolean z) {
        this.field_1_grpfChp = fLowerCase.setBoolean(this.field_1_grpfChp, z);
    }

    @Internal
    public void setFMacChs(boolean z) {
        this.field_49_CharsetFlags = (short) fMacChs.setBoolean(this.field_49_CharsetFlags, z);
    }

    @Internal
    public void setFNoProof(boolean z) {
        this.field_1_grpfChp = fNoProof.setBoolean(this.field_1_grpfChp, z);
    }

    @Internal
    public void setFNonGlyph(boolean z) {
        this.field_1_grpfChp = fNonGlyph.setBoolean(this.field_1_grpfChp, z);
    }

    @Internal
    public void setFObj(boolean z) {
        this.field_1_grpfChp = fObj.setBoolean(this.field_1_grpfChp, z);
    }

    @Internal
    public void setFOle2(boolean z) {
        this.field_1_grpfChp = fOle2.setBoolean(this.field_1_grpfChp, z);
    }

    @Internal
    public void setFOutline(boolean z) {
        this.field_1_grpfChp = fOutline.setBoolean(this.field_1_grpfChp, z);
    }

    @Internal
    public void setFPropRMark(boolean z) {
        this.field_51_fPropRMark = z;
    }

    @Internal
    public void setFRMark(boolean z) {
        this.field_1_grpfChp = fRMark.setBoolean(this.field_1_grpfChp, z);
    }

    @Internal
    public void setFRMarkDel(boolean z) {
        this.field_1_grpfChp = fRMarkDel.setBoolean(this.field_1_grpfChp, z);
    }

    @Internal
    public void setFRuby(boolean z) {
        this.field_29_ufel = (short) fRuby.setBoolean(this.field_29_ufel, z);
    }

    @Internal
    public void setFSdtVanish(boolean z) {
        this.field_67_fSdtVanish = z;
    }

    @Internal
    public void setFShadow(boolean z) {
        this.field_1_grpfChp = fShadow.setBoolean(this.field_1_grpfChp, z);
    }

    @Internal
    public void setFSmallCaps(boolean z) {
        this.field_1_grpfChp = fSmallCaps.setBoolean(this.field_1_grpfChp, z);
    }

    @Internal
    public void setFSpec(boolean z) {
        this.field_1_grpfChp = fSpec.setBoolean(this.field_1_grpfChp, z);
    }

    @Internal
    public void setFSpecSymbol(boolean z) {
        this.field_16_fSpecSymbol = z;
    }

    @Internal
    public void setFSpecVanish(boolean z) {
        this.field_65_fSpecVanish = z;
    }

    @Internal
    public void setFStrike(boolean z) {
        this.field_1_grpfChp = fStrike.setBoolean(this.field_1_grpfChp, z);
    }

    @Internal
    public void setFTNY(boolean z) {
        this.field_29_ufel = (short) fTNY.setBoolean(this.field_29_ufel, z);
    }

    @Internal
    public void setFTNYCompress(boolean z) {
        this.field_30_copt = (byte) fTNYCompress.setBoolean(this.field_30_copt, z);
    }

    @Internal
    public void setFTNYFetchTxm(boolean z) {
        this.field_30_copt = (byte) fTNYFetchTxm.setBoolean(this.field_30_copt, z);
    }

    @Internal
    public void setFUndetermine(boolean z) {
        this.field_14_fUndetermine = z;
    }

    @Internal
    public void setFUsePgsuSettings(boolean z) {
        this.field_1_grpfChp = fUsePgsuSettings.setBoolean(this.field_1_grpfChp, z);
    }

    @Internal
    public void setFVanish(boolean z) {
        this.field_1_grpfChp = fVanish.setBoolean(this.field_1_grpfChp, z);
    }

    @Internal
    public void setFWarichu(boolean z) {
        this.field_29_ufel = (short) fWarichu.setBoolean(this.field_29_ufel, z);
    }

    @Internal
    public void setFWarichuNoOpenBracket(boolean z) {
        this.field_30_copt = (byte) fWarichuNoOpenBracket.setBoolean(this.field_30_copt, z);
    }

    @Internal
    public void setFWebHidden(boolean z) {
        this.field_1_grpfChp = fWebHidden.setBoolean(this.field_1_grpfChp, z);
    }

    @Internal
    public void setFcData(int i) {
        this.field_39_fcData = i;
    }

    @Internal
    public void setFcObj(int i) {
        this.field_37_fcObj = i;
    }

    @Internal
    public void setFcObjp(int i) {
        this.field_63_fcObjp = i;
    }

    @Internal
    public void setFcPic(int i) {
        this.field_36_fcPic = i;
    }

    @Internal
    public void setFtcAscii(int i) {
        this.field_3_ftcAscii = i;
    }

    @Internal
    public void setFtcBi(int i) {
        this.field_6_ftcBi = i;
    }

    @Internal
    public void setFtcFE(int i) {
        this.field_4_ftcFE = i;
    }

    @Internal
    public void setFtcOther(int i) {
        this.field_5_ftcOther = i;
    }

    @Internal
    public void setFtcSym(int i) {
        this.field_34_ftcSym = i;
    }

    @Internal
    public void setGrpfChp(int i) {
        this.field_1_grpfChp = i;
    }

    @Internal
    public void setHighlight(short s) {
        this.field_48_Highlight = s;
    }

    @Internal
    public void setHps(int i) {
        this.field_2_hps = i;
    }

    @Internal
    public void setHpsAsci(int i) {
        this.field_31_hpsAsci = i;
    }

    @Internal
    public void setHpsBi(int i) {
        this.field_33_hpsBi = i;
    }

    @Internal
    public void setHpsFE(int i) {
        this.field_32_hpsFE = i;
    }

    @Internal
    public void setHpsKern(int i) {
        this.field_21_hpsKern = i;
    }

    @Internal
    public void setHpsPos(short s) {
        this.field_22_hpsPos = s;
    }

    @Internal
    public void setHresi(Hyphenation hyphenation) {
        this.field_20_hresi = hyphenation;
    }

    @Internal
    public void setHresiOld(Hyphenation hyphenation) {
        this.field_40_hresiOld = hyphenation;
    }

    @Internal
    public void setIWarichuBracket(byte b) {
        this.field_30_copt = (byte) iWarichuBracket.setValue(this.field_30_copt, b);
    }

    @Internal
    public void setIbstConflict(int i) {
        this.field_57_IbstConflict = i;
    }

    @Internal
    public void setIbstDispFldRMark(int i) {
        this.field_60_ibstDispFldRMark = i;
    }

    @Internal
    public void setIbstPropRMark(int i) {
        this.field_52_ibstPropRMark = i;
    }

    @Internal
    public void setIbstRMark(int i) {
        this.field_25_ibstRMark = i;
    }

    @Internal
    public void setIbstRMarkDel(int i) {
        this.field_41_ibstRMarkDel = i;
    }

    @Internal
    public void setIco(byte b) {
        this.field_9_ico = b;
    }

    @Internal
    public void setIcoHighlight(byte b) {
        this.field_48_Highlight = (short) icoHighlight.setValue(this.field_48_Highlight, b);
    }

    @Internal
    public void setIdct(byte b) {
        this.field_17_idct = b;
    }

    @Internal
    public void setIdctHint(byte b) {
        this.field_18_idctHint = b;
    }

    @Internal
    public void setIdslRMReason(int i) {
        this.field_45_idslRMReason = i;
    }

    @Internal
    public void setIdslReasonDel(int i) {
        this.field_46_idslReasonDel = i;
    }

    @Internal
    public void setIss(byte b) {
        this.field_15_iss = b;
    }

    @Internal
    public void setIstd(int i) {
        this.field_44_istd = i;
    }

    @Internal
    public void setItypFELayout(short s) {
        this.field_29_ufel = (short) itypFELayout.setValue(this.field_29_ufel, s);
    }

    @Internal
    public void setKcd(byte b) {
        this.field_13_kcd = b;
    }

    @Internal
    public void setKul(byte b) {
        this.field_19_kul = b;
    }

    @Internal
    public void setLTagObj(int i) {
        this.field_38_lTagObj = i;
    }

    @Internal
    public void setLbrCRJ(byte b) {
        this.field_64_lbrCRJ = b;
    }

    @Internal
    public void setLidDefault(int i) {
        this.field_11_lidDefault = i;
    }

    @Internal
    public void setLidFE(int i) {
        this.field_12_lidFE = i;
    }

    @Internal
    public void setPctCharWidth(int i) {
        this.field_10_pctCharWidth = i;
    }

    @Internal
    public void setSfxtText(byte b) {
        this.field_26_sfxtText = b;
    }

    @Internal
    public void setShd(ShadingDescriptor shadingDescriptor) {
        this.field_23_shd = shadingDescriptor;
    }

    @Internal
    public void setSpare(byte b) {
        this.field_29_ufel = (short) spare.setValue(this.field_29_ufel, b);
    }

    @Internal
    public void setUfel(short s) {
        this.field_29_ufel = s;
    }

    @Internal
    public void setUnused(boolean z) {
        this.field_30_copt = (byte) unused.setBoolean(this.field_30_copt, z);
    }

    @Internal
    public void setWCharScale(int i) {
        this.field_68_wCharScale = i;
    }

    @Internal
    public void setWConflict(int i) {
        this.field_56_wConflict = i;
    }

    @Internal
    public void setXchSym(int i) {
        this.field_35_xchSym = i;
    }

    @Internal
    public void setXstDispFldRMark(byte[] bArr) {
        this.field_62_xstDispFldRMark = bArr;
    }

    public String toString() {
        return "[CHP]\n    .grpfChp              =  (" + getGrpfChp() + " )\n         .fBold                    = " + isFBold() + "\n         .fItalic                  = " + isFItalic() + "\n         .fRMarkDel                = " + isFRMarkDel() + "\n         .fOutline                 = " + isFOutline() + "\n         .fFldVanish               = " + isFFldVanish() + "\n         .fSmallCaps               = " + isFSmallCaps() + "\n         .fCaps                    = " + isFCaps() + "\n         .fVanish                  = " + isFVanish() + "\n         .fRMark                   = " + isFRMark() + "\n         .fSpec                    = " + isFSpec() + "\n         .fStrike                  = " + isFStrike() + "\n         .fObj                     = " + isFObj() + "\n         .fShadow                  = " + isFShadow() + "\n         .fLowerCase               = " + isFLowerCase() + "\n         .fData                    = " + isFData() + "\n         .fOle2                    = " + isFOle2() + "\n         .fEmboss                  = " + isFEmboss() + "\n         .fImprint                 = " + isFImprint() + "\n         .fDStrike                 = " + isFDStrike() + "\n         .fUsePgsuSettings         = " + isFUsePgsuSettings() + "\n         .fBoldBi                  = " + isFBoldBi() + "\n         .fComplexScripts          = " + isFComplexScripts() + "\n         .fItalicBi                = " + isFItalicBi() + "\n         .fBiDi                    = " + isFBiDi() + "\n         .fIcoBi                   = " + isFIcoBi() + "\n         .fNonGlyph                = " + isFNonGlyph() + "\n         .fBoldOther               = " + isFBoldOther() + "\n         .fItalicOther             = " + isFItalicOther() + "\n         .fNoProof                 = " + isFNoProof() + "\n         .fWebHidden               = " + isFWebHidden() + "\n         .fFitText                 = " + isFFitText() + "\n         .fCalc                    = " + isFCalc() + "\n         .fFmtLineProp             = " + isFFmtLineProp() + "\n    .hps                  =  (" + getHps() + " )\n    .ftcAscii             =  (" + getFtcAscii() + " )\n    .ftcFE                =  (" + getFtcFE() + " )\n    .ftcOther             =  (" + getFtcOther() + " )\n    .ftcBi                =  (" + getFtcBi() + " )\n    .dxaSpace             =  (" + getDxaSpace() + " )\n    .cv                   =  (" + getCv() + " )\n    .ico                  =  (" + ((int) getIco()) + " )\n    .pctCharWidth         =  (" + getPctCharWidth() + " )\n    .lidDefault           =  (" + getLidDefault() + " )\n    .lidFE                =  (" + getLidFE() + " )\n    .kcd                  =  (" + ((int) getKcd()) + " )\n    .fUndetermine         =  (" + getFUndetermine() + " )\n    .iss                  =  (" + ((int) getIss()) + " )\n    .fSpecSymbol          =  (" + getFSpecSymbol() + " )\n    .idct                 =  (" + ((int) getIdct()) + " )\n    .idctHint             =  (" + ((int) getIdctHint()) + " )\n    .kul                  =  (" + ((int) getKul()) + " )\n    .hresi                =  (" + getHresi() + " )\n    .hpsKern              =  (" + getHpsKern() + " )\n    .hpsPos               =  (" + ((int) getHpsPos()) + " )\n    .shd                  =  (" + getShd() + " )\n    .brc                  =  (" + getBrc() + " )\n    .ibstRMark            =  (" + getIbstRMark() + " )\n    .sfxtText             =  (" + ((int) getSfxtText()) + " )\n    .fDblBdr              =  (" + getFDblBdr() + " )\n    .fBorderWS            =  (" + getFBorderWS() + " )\n    .ufel                 =  (" + ((int) getUfel()) + " )\n         .itypFELayout             = " + ((int) getItypFELayout()) + "\n         .fTNY                     = " + isFTNY() + "\n         .fWarichu                 = " + isFWarichu() + "\n         .fKumimoji                = " + isFKumimoji() + "\n         .fRuby                    = " + isFRuby() + "\n         .fLSFitText               = " + isFLSFitText() + "\n         .spare                    = " + ((int) getSpare()) + "\n    .copt                 =  (" + ((int) getCopt()) + " )\n         .iWarichuBracket          = " + ((int) getIWarichuBracket()) + "\n         .fWarichuNoOpenBracket     = " + isFWarichuNoOpenBracket() + "\n         .fTNYCompress             = " + isFTNYCompress() + "\n         .fTNYFetchTxm             = " + isFTNYFetchTxm() + "\n         .fCellFitText             = " + isFCellFitText() + "\n         .unused                   = " + isUnused() + "\n    .hpsAsci              =  (" + getHpsAsci() + " )\n    .hpsFE                =  (" + getHpsFE() + " )\n    .hpsBi                =  (" + getHpsBi() + " )\n    .ftcSym               =  (" + getFtcSym() + " )\n    .xchSym               =  (" + getXchSym() + " )\n    .fcPic                =  (" + getFcPic() + " )\n    .fcObj                =  (" + getFcObj() + " )\n    .lTagObj              =  (" + getLTagObj() + " )\n    .fcData               =  (" + getFcData() + " )\n    .hresiOld             =  (" + getHresiOld() + " )\n    .ibstRMarkDel         =  (" + getIbstRMarkDel() + " )\n    .dttmRMark            =  (" + getDttmRMark() + " )\n    .dttmRMarkDel         =  (" + getDttmRMarkDel() + " )\n    .istd                 =  (" + getIstd() + " )\n    .idslRMReason         =  (" + getIdslRMReason() + " )\n    .idslReasonDel        =  (" + getIdslReasonDel() + " )\n    .cpg                  =  (" + getCpg() + " )\n    .Highlight            =  (" + ((int) getHighlight()) + " )\n         .icoHighlight             = " + ((int) getIcoHighlight()) + "\n         .fHighlight               = " + isFHighlight() + "\n    .CharsetFlags         =  (" + ((int) getCharsetFlags()) + " )\n         .fChsDiff                 = " + isFChsDiff() + "\n         .fMacChs                  = " + isFMacChs() + "\n    .chse                 =  (" + ((int) getChse()) + " )\n    .fPropRMark           =  (" + getFPropRMark() + " )\n    .ibstPropRMark        =  (" + getIbstPropRMark() + " )\n    .dttmPropRMark        =  (" + getDttmPropRMark() + " )\n    .fConflictOrig        =  (" + getFConflictOrig() + " )\n    .fConflictOtherDel    =  (" + getFConflictOtherDel() + " )\n    .wConflict            =  (" + getWConflict() + " )\n    .IbstConflict         =  (" + getIbstConflict() + " )\n    .dttmConflict         =  (" + getDttmConflict() + " )\n    .fDispFldRMark        =  (" + getFDispFldRMark() + " )\n    .ibstDispFldRMark     =  (" + getIbstDispFldRMark() + " )\n    .dttmDispFldRMark     =  (" + getDttmDispFldRMark() + " )\n    .xstDispFldRMark      =  (" + Arrays.toString(getXstDispFldRMark()) + " )\n    .fcObjp               =  (" + getFcObjp() + " )\n    .lbrCRJ               =  (" + ((int) getLbrCRJ()) + " )\n    .fSpecVanish          =  (" + getFSpecVanish() + " )\n    .fHasOldProps         =  (" + getFHasOldProps() + " )\n    .fSdtVanish           =  (" + getFSdtVanish() + " )\n    .wCharScale           =  (" + getWCharScale() + " )\n[/CHP]\n";
    }

    public CHPAbstractType(CHPAbstractType cHPAbstractType) {
        this.field_1_grpfChp = cHPAbstractType.field_1_grpfChp;
        this.field_2_hps = cHPAbstractType.field_2_hps;
        this.field_3_ftcAscii = cHPAbstractType.field_3_ftcAscii;
        this.field_4_ftcFE = cHPAbstractType.field_4_ftcFE;
        this.field_5_ftcOther = cHPAbstractType.field_5_ftcOther;
        this.field_6_ftcBi = cHPAbstractType.field_6_ftcBi;
        this.field_7_dxaSpace = cHPAbstractType.field_7_dxaSpace;
        Colorref colorref = cHPAbstractType.field_8_cv;
        this.field_8_cv = colorref == null ? null : colorref.copy();
        this.field_9_ico = cHPAbstractType.field_9_ico;
        this.field_10_pctCharWidth = cHPAbstractType.field_10_pctCharWidth;
        this.field_11_lidDefault = cHPAbstractType.field_11_lidDefault;
        this.field_12_lidFE = cHPAbstractType.field_12_lidFE;
        this.field_13_kcd = cHPAbstractType.field_13_kcd;
        this.field_14_fUndetermine = cHPAbstractType.field_14_fUndetermine;
        this.field_15_iss = cHPAbstractType.field_15_iss;
        this.field_16_fSpecSymbol = cHPAbstractType.field_16_fSpecSymbol;
        this.field_17_idct = cHPAbstractType.field_17_idct;
        this.field_18_idctHint = cHPAbstractType.field_18_idctHint;
        this.field_19_kul = cHPAbstractType.field_19_kul;
        Hyphenation hyphenation = cHPAbstractType.field_20_hresi;
        this.field_20_hresi = hyphenation == null ? null : hyphenation.copy();
        this.field_21_hpsKern = cHPAbstractType.field_21_hpsKern;
        this.field_22_hpsPos = cHPAbstractType.field_22_hpsPos;
        ShadingDescriptor shadingDescriptor = cHPAbstractType.field_23_shd;
        this.field_23_shd = shadingDescriptor == null ? null : shadingDescriptor.copy();
        BorderCode borderCode = cHPAbstractType.field_24_brc;
        this.field_24_brc = borderCode == null ? null : borderCode.copy();
        this.field_25_ibstRMark = cHPAbstractType.field_25_ibstRMark;
        this.field_26_sfxtText = cHPAbstractType.field_26_sfxtText;
        this.field_27_fDblBdr = cHPAbstractType.field_27_fDblBdr;
        this.field_28_fBorderWS = cHPAbstractType.field_28_fBorderWS;
        this.field_29_ufel = cHPAbstractType.field_29_ufel;
        this.field_30_copt = cHPAbstractType.field_30_copt;
        this.field_31_hpsAsci = cHPAbstractType.field_31_hpsAsci;
        this.field_32_hpsFE = cHPAbstractType.field_32_hpsFE;
        this.field_33_hpsBi = cHPAbstractType.field_33_hpsBi;
        this.field_34_ftcSym = cHPAbstractType.field_34_ftcSym;
        this.field_35_xchSym = cHPAbstractType.field_35_xchSym;
        this.field_36_fcPic = cHPAbstractType.field_36_fcPic;
        this.field_37_fcObj = cHPAbstractType.field_37_fcObj;
        this.field_38_lTagObj = cHPAbstractType.field_38_lTagObj;
        this.field_39_fcData = cHPAbstractType.field_39_fcData;
        Hyphenation hyphenation2 = cHPAbstractType.field_40_hresiOld;
        this.field_40_hresiOld = hyphenation2 == null ? null : hyphenation2.copy();
        this.field_41_ibstRMarkDel = cHPAbstractType.field_41_ibstRMarkDel;
        DateAndTime dateAndTime = cHPAbstractType.field_42_dttmRMark;
        this.field_42_dttmRMark = dateAndTime == null ? null : dateAndTime.copy();
        DateAndTime dateAndTime2 = cHPAbstractType.field_43_dttmRMarkDel;
        this.field_43_dttmRMarkDel = dateAndTime2 == null ? null : dateAndTime2.copy();
        this.field_44_istd = cHPAbstractType.field_44_istd;
        this.field_45_idslRMReason = cHPAbstractType.field_45_idslRMReason;
        this.field_46_idslReasonDel = cHPAbstractType.field_46_idslReasonDel;
        this.field_47_cpg = cHPAbstractType.field_47_cpg;
        this.field_48_Highlight = cHPAbstractType.field_48_Highlight;
        this.field_49_CharsetFlags = cHPAbstractType.field_49_CharsetFlags;
        this.field_50_chse = cHPAbstractType.field_50_chse;
        this.field_51_fPropRMark = cHPAbstractType.field_51_fPropRMark;
        this.field_52_ibstPropRMark = cHPAbstractType.field_52_ibstPropRMark;
        DateAndTime dateAndTime3 = cHPAbstractType.field_53_dttmPropRMark;
        this.field_53_dttmPropRMark = dateAndTime3 == null ? null : dateAndTime3.copy();
        this.field_54_fConflictOrig = cHPAbstractType.field_54_fConflictOrig;
        this.field_55_fConflictOtherDel = cHPAbstractType.field_55_fConflictOtherDel;
        this.field_56_wConflict = cHPAbstractType.field_56_wConflict;
        this.field_57_IbstConflict = cHPAbstractType.field_57_IbstConflict;
        DateAndTime dateAndTime4 = cHPAbstractType.field_58_dttmConflict;
        this.field_58_dttmConflict = dateAndTime4 == null ? null : dateAndTime4.copy();
        this.field_59_fDispFldRMark = cHPAbstractType.field_59_fDispFldRMark;
        this.field_60_ibstDispFldRMark = cHPAbstractType.field_60_ibstDispFldRMark;
        DateAndTime dateAndTime5 = cHPAbstractType.field_61_dttmDispFldRMark;
        this.field_61_dttmDispFldRMark = dateAndTime5 == null ? null : dateAndTime5.copy();
        byte[] bArr = cHPAbstractType.field_62_xstDispFldRMark;
        this.field_62_xstDispFldRMark = bArr != null ? (byte[]) bArr.clone() : null;
        this.field_63_fcObjp = cHPAbstractType.field_63_fcObjp;
        this.field_64_lbrCRJ = cHPAbstractType.field_64_lbrCRJ;
        this.field_65_fSpecVanish = cHPAbstractType.field_65_fSpecVanish;
        this.field_66_fHasOldProps = cHPAbstractType.field_66_fHasOldProps;
        this.field_67_fSdtVanish = cHPAbstractType.field_67_fSdtVanish;
        this.field_68_wCharScale = cHPAbstractType.field_68_wCharScale;
    }
}
