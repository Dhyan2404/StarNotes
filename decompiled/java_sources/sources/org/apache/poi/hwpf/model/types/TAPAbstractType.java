package org.apache.poi.hwpf.model.types;

import com.onyx.engine.sdk.archive.ArchiveFormatCode;
import java.util.Arrays;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.stream.Stream;
import org.apache.poi.hwpf.model.types.TAPAbstractType;
import org.apache.poi.hwpf.usermodel.BorderCode;
import org.apache.poi.hwpf.usermodel.ShadingDescriptor;
import org.apache.poi.hwpf.usermodel.TableAutoformatLookSpecifier;
import org.apache.poi.hwpf.usermodel.TableCellDescriptor;
import org.apache.poi.util.BitField;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public abstract class TAPAbstractType {
    protected short field_10_wWidthIndent;
    protected short field_11_wWidthBefore;
    protected short field_12_wWidthAfter;
    protected int field_13_widthAndFitsFlags;
    protected int field_14_dxaAbs;
    protected int field_15_dyaAbs;
    protected int field_16_dxaFromText;
    protected int field_17_dyaFromText;
    protected int field_18_dxaFromTextRight;
    protected int field_19_dyaFromTextBottom;
    protected short field_1_istd;
    protected byte field_20_fBiDi;
    protected byte field_21_fRTL;
    protected byte field_22_fNoAllowOverlap;
    protected byte field_23_fSpare;
    protected int field_24_grpfTap;
    protected int field_25_internalFlags;
    protected short field_26_itcMac;
    protected int field_27_dxaAdjust;
    protected int field_28_dxaWebView;
    protected int field_29_dxaRTEWrapWidth;
    protected short field_2_jc;
    protected int field_30_dxaColWidthWwd;
    protected short field_31_pctWwd;
    protected int field_32_viewFlags;
    protected short[] field_33_rgdxaCenter;
    protected short[] field_34_rgdxaCenterPrint;
    protected ShadingDescriptor field_35_shdTable;
    protected BorderCode field_36_brcBottom;
    protected BorderCode field_37_brcTop;
    protected BorderCode field_38_brcLeft;
    protected BorderCode field_39_brcRight;
    protected int field_3_dxaGapHalf;
    protected BorderCode field_40_brcVertical;
    protected BorderCode field_41_brcHorizontal;
    protected short field_42_wCellPaddingDefaultTop;
    protected short field_43_wCellPaddingDefaultLeft;
    protected short field_44_wCellPaddingDefaultBottom;
    protected short field_45_wCellPaddingDefaultRight;
    protected byte field_46_ftsCellPaddingDefaultTop;
    protected byte field_47_ftsCellPaddingDefaultLeft;
    protected byte field_48_ftsCellPaddingDefaultBottom;
    protected byte field_49_ftsCellPaddingDefaultRight;
    protected int field_4_dyaRowHeight;
    protected short field_50_wCellSpacingDefaultTop;
    protected short field_51_wCellSpacingDefaultLeft;
    protected short field_52_wCellSpacingDefaultBottom;
    protected short field_53_wCellSpacingDefaultRight;
    protected byte field_54_ftsCellSpacingDefaultTop;
    protected byte field_55_ftsCellSpacingDefaultLeft;
    protected byte field_56_ftsCellSpacingDefaultBottom;
    protected byte field_57_ftsCellSpacingDefaultRight;
    protected short field_58_wCellPaddingOuterTop;
    protected short field_59_wCellPaddingOuterLeft;
    protected boolean field_5_fCantSplit;
    protected short field_60_wCellPaddingOuterBottom;
    protected short field_61_wCellPaddingOuterRight;
    protected byte field_62_ftsCellPaddingOuterTop;
    protected byte field_63_ftsCellPaddingOuterLeft;
    protected byte field_64_ftsCellPaddingOuterBottom;
    protected byte field_65_ftsCellPaddingOuterRight;
    protected short field_66_wCellSpacingOuterTop;
    protected short field_67_wCellSpacingOuterLeft;
    protected short field_68_wCellSpacingOuterBottom;
    protected short field_69_wCellSpacingOuterRight;
    protected boolean field_6_fCantSplit90;
    protected byte field_70_ftsCellSpacingOuterTop;
    protected byte field_71_ftsCellSpacingOuterLeft;
    protected byte field_72_ftsCellSpacingOuterBottom;
    protected byte field_73_ftsCellSpacingOuterRight;
    protected TableCellDescriptor[] field_74_rgtc;
    protected ShadingDescriptor[] field_75_rgshd;
    protected byte field_76_fPropRMark;
    protected byte field_77_fHasOldProps;
    protected short field_78_cHorzBands;
    protected short field_79_cVertBands;
    protected boolean field_7_fTableHeader;
    protected BorderCode field_80_rgbrcInsideDefault_0;
    protected BorderCode field_81_rgbrcInsideDefault_1;
    protected TableAutoformatLookSpecifier field_8_tlp;
    protected short field_9_wWidth;
    private static final BitField fAutofit = new BitField(1);
    private static final BitField fKeepFollow = new BitField(2);
    private static final BitField ftsWidth = new BitField(28);
    private static final BitField ftsWidthIndent = new BitField(224);
    private static final BitField ftsWidthBefore = new BitField(1792);
    private static final BitField ftsWidthAfter = new BitField(14336);
    private static final BitField fNeverBeenAutofit = new BitField(16384);
    private static final BitField fInvalAutofit = new BitField(32768);
    private static final BitField widthAndFitsFlags_empty1 = new BitField(ArchiveFormatCode.ARCHIVE_FORMAT_AR);
    private static final BitField fVert = new BitField(524288);
    private static final BitField pcVert = new BitField(3145728);
    private static final BitField pcHorz = new BitField(12582912);
    private static final BitField widthAndFitsFlags_empty2 = new BitField(-16777216);
    private static final BitField fFirstRow = new BitField(1);
    private static final BitField fLastRow = new BitField(2);
    private static final BitField fOutline = new BitField(4);
    private static final BitField fOrigWordTableRules = new BitField(8);
    private static final BitField fCellSpacing = new BitField(16);
    private static final BitField grpfTap_unused = new BitField(65504);
    private static final BitField fWrapToWwd = new BitField(1);
    private static final BitField fNotPageView = new BitField(2);
    private static final BitField viewFlags_unused1 = new BitField(4);
    private static final BitField fWebView = new BitField(8);
    private static final BitField fAdjusted = new BitField(16);
    private static final BitField viewFlags_unused2 = new BitField(65504);

    public TAPAbstractType() {
        this.field_8_tlp = new TableAutoformatLookSpecifier();
        this.field_33_rgdxaCenter = new short[0];
        this.field_34_rgdxaCenterPrint = new short[0];
        this.field_35_shdTable = new ShadingDescriptor();
        this.field_36_brcBottom = new BorderCode();
        this.field_37_brcTop = new BorderCode();
        this.field_38_brcLeft = new BorderCode();
        this.field_39_brcRight = new BorderCode();
        this.field_40_brcVertical = new BorderCode();
        this.field_41_brcHorizontal = new BorderCode();
        this.field_74_rgtc = new TableCellDescriptor[0];
        this.field_75_rgshd = new ShadingDescriptor[0];
        this.field_80_rgbrcInsideDefault_0 = new BorderCode();
        this.field_81_rgbrcInsideDefault_1 = new BorderCode();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ TableCellDescriptor[] lambda$new$0(int i) {
        return new TableCellDescriptor[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ShadingDescriptor[] lambda$new$1(int i) {
        return new ShadingDescriptor[i];
    }

    @Internal
    public BorderCode getBrcBottom() {
        return this.field_36_brcBottom;
    }

    @Internal
    public BorderCode getBrcHorizontal() {
        return this.field_41_brcHorizontal;
    }

    @Internal
    public BorderCode getBrcLeft() {
        return this.field_38_brcLeft;
    }

    @Internal
    public BorderCode getBrcRight() {
        return this.field_39_brcRight;
    }

    @Internal
    public BorderCode getBrcTop() {
        return this.field_37_brcTop;
    }

    @Internal
    public BorderCode getBrcVertical() {
        return this.field_40_brcVertical;
    }

    @Internal
    public short getCHorzBands() {
        return this.field_78_cHorzBands;
    }

    @Internal
    public short getCVertBands() {
        return this.field_79_cVertBands;
    }

    @Internal
    public int getDxaAbs() {
        return this.field_14_dxaAbs;
    }

    @Internal
    public int getDxaAdjust() {
        return this.field_27_dxaAdjust;
    }

    @Internal
    public int getDxaColWidthWwd() {
        return this.field_30_dxaColWidthWwd;
    }

    @Internal
    public int getDxaFromText() {
        return this.field_16_dxaFromText;
    }

    @Internal
    public int getDxaFromTextRight() {
        return this.field_18_dxaFromTextRight;
    }

    @Internal
    public int getDxaGapHalf() {
        return this.field_3_dxaGapHalf;
    }

    @Internal
    public int getDxaRTEWrapWidth() {
        return this.field_29_dxaRTEWrapWidth;
    }

    @Internal
    public int getDxaWebView() {
        return this.field_28_dxaWebView;
    }

    @Internal
    public int getDyaAbs() {
        return this.field_15_dyaAbs;
    }

    @Internal
    public int getDyaFromText() {
        return this.field_17_dyaFromText;
    }

    @Internal
    public int getDyaFromTextBottom() {
        return this.field_19_dyaFromTextBottom;
    }

    @Internal
    public int getDyaRowHeight() {
        return this.field_4_dyaRowHeight;
    }

    @Internal
    public byte getFBiDi() {
        return this.field_20_fBiDi;
    }

    @Internal
    public boolean getFCantSplit() {
        return this.field_5_fCantSplit;
    }

    @Internal
    public boolean getFCantSplit90() {
        return this.field_6_fCantSplit90;
    }

    @Internal
    public byte getFHasOldProps() {
        return this.field_77_fHasOldProps;
    }

    @Internal
    public byte getFNoAllowOverlap() {
        return this.field_22_fNoAllowOverlap;
    }

    @Internal
    public byte getFPropRMark() {
        return this.field_76_fPropRMark;
    }

    @Internal
    public byte getFRTL() {
        return this.field_21_fRTL;
    }

    @Internal
    public byte getFSpare() {
        return this.field_23_fSpare;
    }

    @Internal
    public boolean getFTableHeader() {
        return this.field_7_fTableHeader;
    }

    @Internal
    public byte getFtsCellPaddingDefaultBottom() {
        return this.field_48_ftsCellPaddingDefaultBottom;
    }

    @Internal
    public byte getFtsCellPaddingDefaultLeft() {
        return this.field_47_ftsCellPaddingDefaultLeft;
    }

    @Internal
    public byte getFtsCellPaddingDefaultRight() {
        return this.field_49_ftsCellPaddingDefaultRight;
    }

    @Internal
    public byte getFtsCellPaddingDefaultTop() {
        return this.field_46_ftsCellPaddingDefaultTop;
    }

    @Internal
    public byte getFtsCellPaddingOuterBottom() {
        return this.field_64_ftsCellPaddingOuterBottom;
    }

    @Internal
    public byte getFtsCellPaddingOuterLeft() {
        return this.field_63_ftsCellPaddingOuterLeft;
    }

    @Internal
    public byte getFtsCellPaddingOuterRight() {
        return this.field_65_ftsCellPaddingOuterRight;
    }

    @Internal
    public byte getFtsCellPaddingOuterTop() {
        return this.field_62_ftsCellPaddingOuterTop;
    }

    @Internal
    public byte getFtsCellSpacingDefaultBottom() {
        return this.field_56_ftsCellSpacingDefaultBottom;
    }

    @Internal
    public byte getFtsCellSpacingDefaultLeft() {
        return this.field_55_ftsCellSpacingDefaultLeft;
    }

    @Internal
    public byte getFtsCellSpacingDefaultRight() {
        return this.field_57_ftsCellSpacingDefaultRight;
    }

    @Internal
    public byte getFtsCellSpacingDefaultTop() {
        return this.field_54_ftsCellSpacingDefaultTop;
    }

    @Internal
    public byte getFtsCellSpacingOuterBottom() {
        return this.field_72_ftsCellSpacingOuterBottom;
    }

    @Internal
    public byte getFtsCellSpacingOuterLeft() {
        return this.field_71_ftsCellSpacingOuterLeft;
    }

    @Internal
    public byte getFtsCellSpacingOuterRight() {
        return this.field_73_ftsCellSpacingOuterRight;
    }

    @Internal
    public byte getFtsCellSpacingOuterTop() {
        return this.field_70_ftsCellSpacingOuterTop;
    }

    @Internal
    public byte getFtsWidth() {
        return (byte) ftsWidth.getValue(this.field_13_widthAndFitsFlags);
    }

    @Internal
    public byte getFtsWidthAfter() {
        return (byte) ftsWidthAfter.getValue(this.field_13_widthAndFitsFlags);
    }

    @Internal
    public byte getFtsWidthBefore() {
        return (byte) ftsWidthBefore.getValue(this.field_13_widthAndFitsFlags);
    }

    @Internal
    public byte getFtsWidthIndent() {
        return (byte) ftsWidthIndent.getValue(this.field_13_widthAndFitsFlags);
    }

    @Internal
    public int getGrpfTap() {
        return this.field_24_grpfTap;
    }

    @Internal
    public short getGrpfTap_unused() {
        return (short) grpfTap_unused.getValue(this.field_25_internalFlags);
    }

    @Internal
    public int getInternalFlags() {
        return this.field_25_internalFlags;
    }

    @Internal
    public short getIstd() {
        return this.field_1_istd;
    }

    @Internal
    public short getItcMac() {
        return this.field_26_itcMac;
    }

    @Internal
    public short getJc() {
        return this.field_2_jc;
    }

    @Internal
    public byte getPcHorz() {
        return (byte) pcHorz.getValue(this.field_13_widthAndFitsFlags);
    }

    @Internal
    public byte getPcVert() {
        return (byte) pcVert.getValue(this.field_13_widthAndFitsFlags);
    }

    @Internal
    public short getPctWwd() {
        return this.field_31_pctWwd;
    }

    @Internal
    public BorderCode getRgbrcInsideDefault_0() {
        return this.field_80_rgbrcInsideDefault_0;
    }

    @Internal
    public BorderCode getRgbrcInsideDefault_1() {
        return this.field_81_rgbrcInsideDefault_1;
    }

    @Internal
    public short[] getRgdxaCenter() {
        return this.field_33_rgdxaCenter;
    }

    @Internal
    public short[] getRgdxaCenterPrint() {
        return this.field_34_rgdxaCenterPrint;
    }

    @Internal
    public ShadingDescriptor[] getRgshd() {
        return this.field_75_rgshd;
    }

    @Internal
    public TableCellDescriptor[] getRgtc() {
        return this.field_74_rgtc;
    }

    @Internal
    public ShadingDescriptor getShdTable() {
        return this.field_35_shdTable;
    }

    @Internal
    public TableAutoformatLookSpecifier getTlp() {
        return this.field_8_tlp;
    }

    @Internal
    public int getViewFlags() {
        return this.field_32_viewFlags;
    }

    @Internal
    public short getViewFlags_unused2() {
        return (short) viewFlags_unused2.getValue(this.field_32_viewFlags);
    }

    @Internal
    public short getWCellPaddingDefaultBottom() {
        return this.field_44_wCellPaddingDefaultBottom;
    }

    @Internal
    public short getWCellPaddingDefaultLeft() {
        return this.field_43_wCellPaddingDefaultLeft;
    }

    @Internal
    public short getWCellPaddingDefaultRight() {
        return this.field_45_wCellPaddingDefaultRight;
    }

    @Internal
    public short getWCellPaddingDefaultTop() {
        return this.field_42_wCellPaddingDefaultTop;
    }

    @Internal
    public short getWCellPaddingOuterBottom() {
        return this.field_60_wCellPaddingOuterBottom;
    }

    @Internal
    public short getWCellPaddingOuterLeft() {
        return this.field_59_wCellPaddingOuterLeft;
    }

    @Internal
    public short getWCellPaddingOuterRight() {
        return this.field_61_wCellPaddingOuterRight;
    }

    @Internal
    public short getWCellPaddingOuterTop() {
        return this.field_58_wCellPaddingOuterTop;
    }

    @Internal
    public short getWCellSpacingDefaultBottom() {
        return this.field_52_wCellSpacingDefaultBottom;
    }

    @Internal
    public short getWCellSpacingDefaultLeft() {
        return this.field_51_wCellSpacingDefaultLeft;
    }

    @Internal
    public short getWCellSpacingDefaultRight() {
        return this.field_53_wCellSpacingDefaultRight;
    }

    @Internal
    public short getWCellSpacingDefaultTop() {
        return this.field_50_wCellSpacingDefaultTop;
    }

    @Internal
    public short getWCellSpacingOuterBottom() {
        return this.field_68_wCellSpacingOuterBottom;
    }

    @Internal
    public short getWCellSpacingOuterLeft() {
        return this.field_67_wCellSpacingOuterLeft;
    }

    @Internal
    public short getWCellSpacingOuterRight() {
        return this.field_69_wCellSpacingOuterRight;
    }

    @Internal
    public short getWCellSpacingOuterTop() {
        return this.field_66_wCellSpacingOuterTop;
    }

    @Internal
    public short getWWidth() {
        return this.field_9_wWidth;
    }

    @Internal
    public short getWWidthAfter() {
        return this.field_12_wWidthAfter;
    }

    @Internal
    public short getWWidthBefore() {
        return this.field_11_wWidthBefore;
    }

    @Internal
    public short getWWidthIndent() {
        return this.field_10_wWidthIndent;
    }

    @Internal
    public int getWidthAndFitsFlags() {
        return this.field_13_widthAndFitsFlags;
    }

    @Internal
    public byte getWidthAndFitsFlags_empty1() {
        return (byte) widthAndFitsFlags_empty1.getValue(this.field_13_widthAndFitsFlags);
    }

    @Internal
    public short getWidthAndFitsFlags_empty2() {
        return (short) widthAndFitsFlags_empty2.getValue(this.field_13_widthAndFitsFlags);
    }

    @Internal
    public boolean isFAdjusted() {
        return fAdjusted.isSet(this.field_32_viewFlags);
    }

    @Internal
    public boolean isFAutofit() {
        return fAutofit.isSet(this.field_13_widthAndFitsFlags);
    }

    @Internal
    public boolean isFCellSpacing() {
        return fCellSpacing.isSet(this.field_25_internalFlags);
    }

    @Internal
    public boolean isFFirstRow() {
        return fFirstRow.isSet(this.field_25_internalFlags);
    }

    @Internal
    public boolean isFInvalAutofit() {
        return fInvalAutofit.isSet(this.field_13_widthAndFitsFlags);
    }

    @Internal
    public boolean isFKeepFollow() {
        return fKeepFollow.isSet(this.field_13_widthAndFitsFlags);
    }

    @Internal
    public boolean isFLastRow() {
        return fLastRow.isSet(this.field_25_internalFlags);
    }

    @Internal
    public boolean isFNeverBeenAutofit() {
        return fNeverBeenAutofit.isSet(this.field_13_widthAndFitsFlags);
    }

    @Internal
    public boolean isFNotPageView() {
        return fNotPageView.isSet(this.field_32_viewFlags);
    }

    @Internal
    public boolean isFOrigWordTableRules() {
        return fOrigWordTableRules.isSet(this.field_25_internalFlags);
    }

    @Internal
    public boolean isFOutline() {
        return fOutline.isSet(this.field_25_internalFlags);
    }

    @Internal
    public boolean isFVert() {
        return fVert.isSet(this.field_13_widthAndFitsFlags);
    }

    @Internal
    public boolean isFWebView() {
        return fWebView.isSet(this.field_32_viewFlags);
    }

    @Internal
    public boolean isFWrapToWwd() {
        return fWrapToWwd.isSet(this.field_32_viewFlags);
    }

    @Internal
    public boolean isViewFlags_unused1() {
        return viewFlags_unused1.isSet(this.field_32_viewFlags);
    }

    @Internal
    public void setBrcBottom(BorderCode borderCode) {
        this.field_36_brcBottom = borderCode;
    }

    @Internal
    public void setBrcHorizontal(BorderCode borderCode) {
        this.field_41_brcHorizontal = borderCode;
    }

    @Internal
    public void setBrcLeft(BorderCode borderCode) {
        this.field_38_brcLeft = borderCode;
    }

    @Internal
    public void setBrcRight(BorderCode borderCode) {
        this.field_39_brcRight = borderCode;
    }

    @Internal
    public void setBrcTop(BorderCode borderCode) {
        this.field_37_brcTop = borderCode;
    }

    @Internal
    public void setBrcVertical(BorderCode borderCode) {
        this.field_40_brcVertical = borderCode;
    }

    @Internal
    public void setCHorzBands(short s) {
        this.field_78_cHorzBands = s;
    }

    @Internal
    public void setCVertBands(short s) {
        this.field_79_cVertBands = s;
    }

    @Internal
    public void setDxaAbs(int i) {
        this.field_14_dxaAbs = i;
    }

    @Internal
    public void setDxaAdjust(int i) {
        this.field_27_dxaAdjust = i;
    }

    @Internal
    public void setDxaColWidthWwd(int i) {
        this.field_30_dxaColWidthWwd = i;
    }

    @Internal
    public void setDxaFromText(int i) {
        this.field_16_dxaFromText = i;
    }

    @Internal
    public void setDxaFromTextRight(int i) {
        this.field_18_dxaFromTextRight = i;
    }

    @Internal
    public void setDxaGapHalf(int i) {
        this.field_3_dxaGapHalf = i;
    }

    @Internal
    public void setDxaRTEWrapWidth(int i) {
        this.field_29_dxaRTEWrapWidth = i;
    }

    @Internal
    public void setDxaWebView(int i) {
        this.field_28_dxaWebView = i;
    }

    @Internal
    public void setDyaAbs(int i) {
        this.field_15_dyaAbs = i;
    }

    @Internal
    public void setDyaFromText(int i) {
        this.field_17_dyaFromText = i;
    }

    @Internal
    public void setDyaFromTextBottom(int i) {
        this.field_19_dyaFromTextBottom = i;
    }

    @Internal
    public void setDyaRowHeight(int i) {
        this.field_4_dyaRowHeight = i;
    }

    @Internal
    public void setFAdjusted(boolean z) {
        this.field_32_viewFlags = fAdjusted.setBoolean(this.field_32_viewFlags, z);
    }

    @Internal
    public void setFAutofit(boolean z) {
        this.field_13_widthAndFitsFlags = fAutofit.setBoolean(this.field_13_widthAndFitsFlags, z);
    }

    @Internal
    public void setFBiDi(byte b) {
        this.field_20_fBiDi = b;
    }

    @Internal
    public void setFCantSplit(boolean z) {
        this.field_5_fCantSplit = z;
    }

    @Internal
    public void setFCantSplit90(boolean z) {
        this.field_6_fCantSplit90 = z;
    }

    @Internal
    public void setFCellSpacing(boolean z) {
        this.field_25_internalFlags = fCellSpacing.setBoolean(this.field_25_internalFlags, z);
    }

    @Internal
    public void setFFirstRow(boolean z) {
        this.field_25_internalFlags = fFirstRow.setBoolean(this.field_25_internalFlags, z);
    }

    @Internal
    public void setFHasOldProps(byte b) {
        this.field_77_fHasOldProps = b;
    }

    @Internal
    public void setFInvalAutofit(boolean z) {
        this.field_13_widthAndFitsFlags = fInvalAutofit.setBoolean(this.field_13_widthAndFitsFlags, z);
    }

    @Internal
    public void setFKeepFollow(boolean z) {
        this.field_13_widthAndFitsFlags = fKeepFollow.setBoolean(this.field_13_widthAndFitsFlags, z);
    }

    @Internal
    public void setFLastRow(boolean z) {
        this.field_25_internalFlags = fLastRow.setBoolean(this.field_25_internalFlags, z);
    }

    @Internal
    public void setFNeverBeenAutofit(boolean z) {
        this.field_13_widthAndFitsFlags = fNeverBeenAutofit.setBoolean(this.field_13_widthAndFitsFlags, z);
    }

    @Internal
    public void setFNoAllowOverlap(byte b) {
        this.field_22_fNoAllowOverlap = b;
    }

    @Internal
    public void setFNotPageView(boolean z) {
        this.field_32_viewFlags = fNotPageView.setBoolean(this.field_32_viewFlags, z);
    }

    @Internal
    public void setFOrigWordTableRules(boolean z) {
        this.field_25_internalFlags = fOrigWordTableRules.setBoolean(this.field_25_internalFlags, z);
    }

    @Internal
    public void setFOutline(boolean z) {
        this.field_25_internalFlags = fOutline.setBoolean(this.field_25_internalFlags, z);
    }

    @Internal
    public void setFPropRMark(byte b) {
        this.field_76_fPropRMark = b;
    }

    @Internal
    public void setFRTL(byte b) {
        this.field_21_fRTL = b;
    }

    @Internal
    public void setFSpare(byte b) {
        this.field_23_fSpare = b;
    }

    @Internal
    public void setFTableHeader(boolean z) {
        this.field_7_fTableHeader = z;
    }

    @Internal
    public void setFVert(boolean z) {
        this.field_13_widthAndFitsFlags = fVert.setBoolean(this.field_13_widthAndFitsFlags, z);
    }

    @Internal
    public void setFWebView(boolean z) {
        this.field_32_viewFlags = fWebView.setBoolean(this.field_32_viewFlags, z);
    }

    @Internal
    public void setFWrapToWwd(boolean z) {
        this.field_32_viewFlags = fWrapToWwd.setBoolean(this.field_32_viewFlags, z);
    }

    @Internal
    public void setFtsCellPaddingDefaultBottom(byte b) {
        this.field_48_ftsCellPaddingDefaultBottom = b;
    }

    @Internal
    public void setFtsCellPaddingDefaultLeft(byte b) {
        this.field_47_ftsCellPaddingDefaultLeft = b;
    }

    @Internal
    public void setFtsCellPaddingDefaultRight(byte b) {
        this.field_49_ftsCellPaddingDefaultRight = b;
    }

    @Internal
    public void setFtsCellPaddingDefaultTop(byte b) {
        this.field_46_ftsCellPaddingDefaultTop = b;
    }

    @Internal
    public void setFtsCellPaddingOuterBottom(byte b) {
        this.field_64_ftsCellPaddingOuterBottom = b;
    }

    @Internal
    public void setFtsCellPaddingOuterLeft(byte b) {
        this.field_63_ftsCellPaddingOuterLeft = b;
    }

    @Internal
    public void setFtsCellPaddingOuterRight(byte b) {
        this.field_65_ftsCellPaddingOuterRight = b;
    }

    @Internal
    public void setFtsCellPaddingOuterTop(byte b) {
        this.field_62_ftsCellPaddingOuterTop = b;
    }

    @Internal
    public void setFtsCellSpacingDefaultBottom(byte b) {
        this.field_56_ftsCellSpacingDefaultBottom = b;
    }

    @Internal
    public void setFtsCellSpacingDefaultLeft(byte b) {
        this.field_55_ftsCellSpacingDefaultLeft = b;
    }

    @Internal
    public void setFtsCellSpacingDefaultRight(byte b) {
        this.field_57_ftsCellSpacingDefaultRight = b;
    }

    @Internal
    public void setFtsCellSpacingDefaultTop(byte b) {
        this.field_54_ftsCellSpacingDefaultTop = b;
    }

    @Internal
    public void setFtsCellSpacingOuterBottom(byte b) {
        this.field_72_ftsCellSpacingOuterBottom = b;
    }

    @Internal
    public void setFtsCellSpacingOuterLeft(byte b) {
        this.field_71_ftsCellSpacingOuterLeft = b;
    }

    @Internal
    public void setFtsCellSpacingOuterRight(byte b) {
        this.field_73_ftsCellSpacingOuterRight = b;
    }

    @Internal
    public void setFtsCellSpacingOuterTop(byte b) {
        this.field_70_ftsCellSpacingOuterTop = b;
    }

    @Internal
    public void setFtsWidth(byte b) {
        this.field_13_widthAndFitsFlags = ftsWidth.setValue(this.field_13_widthAndFitsFlags, b);
    }

    @Internal
    public void setFtsWidthAfter(byte b) {
        this.field_13_widthAndFitsFlags = ftsWidthAfter.setValue(this.field_13_widthAndFitsFlags, b);
    }

    @Internal
    public void setFtsWidthBefore(byte b) {
        this.field_13_widthAndFitsFlags = ftsWidthBefore.setValue(this.field_13_widthAndFitsFlags, b);
    }

    @Internal
    public void setFtsWidthIndent(byte b) {
        this.field_13_widthAndFitsFlags = ftsWidthIndent.setValue(this.field_13_widthAndFitsFlags, b);
    }

    @Internal
    public void setGrpfTap(int i) {
        this.field_24_grpfTap = i;
    }

    @Internal
    public void setGrpfTap_unused(short s) {
        this.field_25_internalFlags = grpfTap_unused.setValue(this.field_25_internalFlags, s);
    }

    @Internal
    public void setInternalFlags(int i) {
        this.field_25_internalFlags = i;
    }

    @Internal
    public void setIstd(short s) {
        this.field_1_istd = s;
    }

    @Internal
    public void setItcMac(short s) {
        this.field_26_itcMac = s;
    }

    @Internal
    public void setJc(short s) {
        this.field_2_jc = s;
    }

    @Internal
    public void setPcHorz(byte b) {
        this.field_13_widthAndFitsFlags = pcHorz.setValue(this.field_13_widthAndFitsFlags, b);
    }

    @Internal
    public void setPcVert(byte b) {
        this.field_13_widthAndFitsFlags = pcVert.setValue(this.field_13_widthAndFitsFlags, b);
    }

    @Internal
    public void setPctWwd(short s) {
        this.field_31_pctWwd = s;
    }

    @Internal
    public void setRgbrcInsideDefault_0(BorderCode borderCode) {
        this.field_80_rgbrcInsideDefault_0 = borderCode;
    }

    @Internal
    public void setRgbrcInsideDefault_1(BorderCode borderCode) {
        this.field_81_rgbrcInsideDefault_1 = borderCode;
    }

    @Internal
    public void setRgdxaCenter(short[] sArr) {
        this.field_33_rgdxaCenter = sArr;
    }

    @Internal
    public void setRgdxaCenterPrint(short[] sArr) {
        this.field_34_rgdxaCenterPrint = sArr;
    }

    @Internal
    public void setRgshd(ShadingDescriptor[] shadingDescriptorArr) {
        this.field_75_rgshd = shadingDescriptorArr;
    }

    @Internal
    public void setRgtc(TableCellDescriptor[] tableCellDescriptorArr) {
        this.field_74_rgtc = tableCellDescriptorArr;
    }

    @Internal
    public void setShdTable(ShadingDescriptor shadingDescriptor) {
        this.field_35_shdTable = shadingDescriptor;
    }

    @Internal
    public void setTlp(TableAutoformatLookSpecifier tableAutoformatLookSpecifier) {
        this.field_8_tlp = tableAutoformatLookSpecifier;
    }

    @Internal
    public void setViewFlags(int i) {
        this.field_32_viewFlags = i;
    }

    @Internal
    public void setViewFlags_unused1(boolean z) {
        this.field_32_viewFlags = viewFlags_unused1.setBoolean(this.field_32_viewFlags, z);
    }

    @Internal
    public void setViewFlags_unused2(short s) {
        this.field_32_viewFlags = viewFlags_unused2.setValue(this.field_32_viewFlags, s);
    }

    @Internal
    public void setWCellPaddingDefaultBottom(short s) {
        this.field_44_wCellPaddingDefaultBottom = s;
    }

    @Internal
    public void setWCellPaddingDefaultLeft(short s) {
        this.field_43_wCellPaddingDefaultLeft = s;
    }

    @Internal
    public void setWCellPaddingDefaultRight(short s) {
        this.field_45_wCellPaddingDefaultRight = s;
    }

    @Internal
    public void setWCellPaddingDefaultTop(short s) {
        this.field_42_wCellPaddingDefaultTop = s;
    }

    @Internal
    public void setWCellPaddingOuterBottom(short s) {
        this.field_60_wCellPaddingOuterBottom = s;
    }

    @Internal
    public void setWCellPaddingOuterLeft(short s) {
        this.field_59_wCellPaddingOuterLeft = s;
    }

    @Internal
    public void setWCellPaddingOuterRight(short s) {
        this.field_61_wCellPaddingOuterRight = s;
    }

    @Internal
    public void setWCellPaddingOuterTop(short s) {
        this.field_58_wCellPaddingOuterTop = s;
    }

    @Internal
    public void setWCellSpacingDefaultBottom(short s) {
        this.field_52_wCellSpacingDefaultBottom = s;
    }

    @Internal
    public void setWCellSpacingDefaultLeft(short s) {
        this.field_51_wCellSpacingDefaultLeft = s;
    }

    @Internal
    public void setWCellSpacingDefaultRight(short s) {
        this.field_53_wCellSpacingDefaultRight = s;
    }

    @Internal
    public void setWCellSpacingDefaultTop(short s) {
        this.field_50_wCellSpacingDefaultTop = s;
    }

    @Internal
    public void setWCellSpacingOuterBottom(short s) {
        this.field_68_wCellSpacingOuterBottom = s;
    }

    @Internal
    public void setWCellSpacingOuterLeft(short s) {
        this.field_67_wCellSpacingOuterLeft = s;
    }

    @Internal
    public void setWCellSpacingOuterRight(short s) {
        this.field_69_wCellSpacingOuterRight = s;
    }

    @Internal
    public void setWCellSpacingOuterTop(short s) {
        this.field_66_wCellSpacingOuterTop = s;
    }

    @Internal
    public void setWWidth(short s) {
        this.field_9_wWidth = s;
    }

    @Internal
    public void setWWidthAfter(short s) {
        this.field_12_wWidthAfter = s;
    }

    @Internal
    public void setWWidthBefore(short s) {
        this.field_11_wWidthBefore = s;
    }

    @Internal
    public void setWWidthIndent(short s) {
        this.field_10_wWidthIndent = s;
    }

    @Internal
    public void setWidthAndFitsFlags(int i) {
        this.field_13_widthAndFitsFlags = i;
    }

    @Internal
    public void setWidthAndFitsFlags_empty1(byte b) {
        this.field_13_widthAndFitsFlags = widthAndFitsFlags_empty1.setValue(this.field_13_widthAndFitsFlags, b);
    }

    @Internal
    public void setWidthAndFitsFlags_empty2(short s) {
        this.field_13_widthAndFitsFlags = widthAndFitsFlags_empty2.setValue(this.field_13_widthAndFitsFlags, s);
    }

    public String toString() {
        return "[TAP]\n    .istd                 =  (" + ((int) getIstd()) + " )\n    .jc                   =  (" + ((int) getJc()) + " )\n    .dxaGapHalf           =  (" + getDxaGapHalf() + " )\n    .dyaRowHeight         =  (" + getDyaRowHeight() + " )\n    .fCantSplit           =  (" + getFCantSplit() + " )\n    .fCantSplit90         =  (" + getFCantSplit90() + " )\n    .fTableHeader         =  (" + getFTableHeader() + " )\n    .tlp                  =  (" + getTlp() + " )\n    .wWidth               =  (" + ((int) getWWidth()) + " )\n    .wWidthIndent         =  (" + ((int) getWWidthIndent()) + " )\n    .wWidthBefore         =  (" + ((int) getWWidthBefore()) + " )\n    .wWidthAfter          =  (" + ((int) getWWidthAfter()) + " )\n    .widthAndFitsFlags    =  (" + getWidthAndFitsFlags() + " )\n         .fAutofit                 = " + isFAutofit() + "\n         .fKeepFollow              = " + isFKeepFollow() + "\n         .ftsWidth                 = " + ((int) getFtsWidth()) + "\n         .ftsWidthIndent           = " + ((int) getFtsWidthIndent()) + "\n         .ftsWidthBefore           = " + ((int) getFtsWidthBefore()) + "\n         .ftsWidthAfter            = " + ((int) getFtsWidthAfter()) + "\n         .fNeverBeenAutofit        = " + isFNeverBeenAutofit() + "\n         .fInvalAutofit            = " + isFInvalAutofit() + "\n         .widthAndFitsFlags_empty1     = " + ((int) getWidthAndFitsFlags_empty1()) + "\n         .fVert                    = " + isFVert() + "\n         .pcVert                   = " + ((int) getPcVert()) + "\n         .pcHorz                   = " + ((int) getPcHorz()) + "\n         .widthAndFitsFlags_empty2     = " + ((int) getWidthAndFitsFlags_empty2()) + "\n    .dxaAbs               =  (" + getDxaAbs() + " )\n    .dyaAbs               =  (" + getDyaAbs() + " )\n    .dxaFromText          =  (" + getDxaFromText() + " )\n    .dyaFromText          =  (" + getDyaFromText() + " )\n    .dxaFromTextRight     =  (" + getDxaFromTextRight() + " )\n    .dyaFromTextBottom    =  (" + getDyaFromTextBottom() + " )\n    .fBiDi                =  (" + ((int) getFBiDi()) + " )\n    .fRTL                 =  (" + ((int) getFRTL()) + " )\n    .fNoAllowOverlap      =  (" + ((int) getFNoAllowOverlap()) + " )\n    .fSpare               =  (" + ((int) getFSpare()) + " )\n    .grpfTap              =  (" + getGrpfTap() + " )\n    .internalFlags        =  (" + getInternalFlags() + " )\n         .fFirstRow                = " + isFFirstRow() + "\n         .fLastRow                 = " + isFLastRow() + "\n         .fOutline                 = " + isFOutline() + "\n         .fOrigWordTableRules      = " + isFOrigWordTableRules() + "\n         .fCellSpacing             = " + isFCellSpacing() + "\n         .grpfTap_unused           = " + ((int) getGrpfTap_unused()) + "\n    .itcMac               =  (" + ((int) getItcMac()) + " )\n    .dxaAdjust            =  (" + getDxaAdjust() + " )\n    .dxaWebView           =  (" + getDxaWebView() + " )\n    .dxaRTEWrapWidth      =  (" + getDxaRTEWrapWidth() + " )\n    .dxaColWidthWwd       =  (" + getDxaColWidthWwd() + " )\n    .pctWwd               =  (" + ((int) getPctWwd()) + " )\n    .viewFlags            =  (" + getViewFlags() + " )\n         .fWrapToWwd               = " + isFWrapToWwd() + "\n         .fNotPageView             = " + isFNotPageView() + "\n         .viewFlags_unused1        = " + isViewFlags_unused1() + "\n         .fWebView                 = " + isFWebView() + "\n         .fAdjusted                = " + isFAdjusted() + "\n         .viewFlags_unused2        = " + ((int) getViewFlags_unused2()) + "\n    .rgdxaCenter          =  (" + Arrays.toString(getRgdxaCenter()) + " )\n    .rgdxaCenterPrint     =  (" + Arrays.toString(getRgdxaCenterPrint()) + " )\n    .shdTable             =  (" + getShdTable() + " )\n    .brcBottom            =  (" + getBrcBottom() + " )\n    .brcTop               =  (" + getBrcTop() + " )\n    .brcLeft              =  (" + getBrcLeft() + " )\n    .brcRight             =  (" + getBrcRight() + " )\n    .brcVertical          =  (" + getBrcVertical() + " )\n    .brcHorizontal        =  (" + getBrcHorizontal() + " )\n    .wCellPaddingDefaultTop =  (" + ((int) getWCellPaddingDefaultTop()) + " )\n    .wCellPaddingDefaultLeft =  (" + ((int) getWCellPaddingDefaultLeft()) + " )\n    .wCellPaddingDefaultBottom =  (" + ((int) getWCellPaddingDefaultBottom()) + " )\n    .wCellPaddingDefaultRight =  (" + ((int) getWCellPaddingDefaultRight()) + " )\n    .ftsCellPaddingDefaultTop =  (" + ((int) getFtsCellPaddingDefaultTop()) + " )\n    .ftsCellPaddingDefaultLeft =  (" + ((int) getFtsCellPaddingDefaultLeft()) + " )\n    .ftsCellPaddingDefaultBottom =  (" + ((int) getFtsCellPaddingDefaultBottom()) + " )\n    .ftsCellPaddingDefaultRight =  (" + ((int) getFtsCellPaddingDefaultRight()) + " )\n    .wCellSpacingDefaultTop =  (" + ((int) getWCellSpacingDefaultTop()) + " )\n    .wCellSpacingDefaultLeft =  (" + ((int) getWCellSpacingDefaultLeft()) + " )\n    .wCellSpacingDefaultBottom =  (" + ((int) getWCellSpacingDefaultBottom()) + " )\n    .wCellSpacingDefaultRight =  (" + ((int) getWCellSpacingDefaultRight()) + " )\n    .ftsCellSpacingDefaultTop =  (" + ((int) getFtsCellSpacingDefaultTop()) + " )\n    .ftsCellSpacingDefaultLeft =  (" + ((int) getFtsCellSpacingDefaultLeft()) + " )\n    .ftsCellSpacingDefaultBottom =  (" + ((int) getFtsCellSpacingDefaultBottom()) + " )\n    .ftsCellSpacingDefaultRight =  (" + ((int) getFtsCellSpacingDefaultRight()) + " )\n    .wCellPaddingOuterTop =  (" + ((int) getWCellPaddingOuterTop()) + " )\n    .wCellPaddingOuterLeft =  (" + ((int) getWCellPaddingOuterLeft()) + " )\n    .wCellPaddingOuterBottom =  (" + ((int) getWCellPaddingOuterBottom()) + " )\n    .wCellPaddingOuterRight =  (" + ((int) getWCellPaddingOuterRight()) + " )\n    .ftsCellPaddingOuterTop =  (" + ((int) getFtsCellPaddingOuterTop()) + " )\n    .ftsCellPaddingOuterLeft =  (" + ((int) getFtsCellPaddingOuterLeft()) + " )\n    .ftsCellPaddingOuterBottom =  (" + ((int) getFtsCellPaddingOuterBottom()) + " )\n    .ftsCellPaddingOuterRight =  (" + ((int) getFtsCellPaddingOuterRight()) + " )\n    .wCellSpacingOuterTop =  (" + ((int) getWCellSpacingOuterTop()) + " )\n    .wCellSpacingOuterLeft =  (" + ((int) getWCellSpacingOuterLeft()) + " )\n    .wCellSpacingOuterBottom =  (" + ((int) getWCellSpacingOuterBottom()) + " )\n    .wCellSpacingOuterRight =  (" + ((int) getWCellSpacingOuterRight()) + " )\n    .ftsCellSpacingOuterTop =  (" + ((int) getFtsCellSpacingOuterTop()) + " )\n    .ftsCellSpacingOuterLeft =  (" + ((int) getFtsCellSpacingOuterLeft()) + " )\n    .ftsCellSpacingOuterBottom =  (" + ((int) getFtsCellSpacingOuterBottom()) + " )\n    .ftsCellSpacingOuterRight =  (" + ((int) getFtsCellSpacingOuterRight()) + " )\n    .rgtc                 =  (" + Arrays.toString(getRgtc()) + " )\n    .rgshd                =  (" + Arrays.toString(getRgshd()) + " )\n    .fPropRMark           =  (" + ((int) getFPropRMark()) + " )\n    .fHasOldProps         =  (" + ((int) getFHasOldProps()) + " )\n    .cHorzBands           =  (" + ((int) getCHorzBands()) + " )\n    .cVertBands           =  (" + ((int) getCVertBands()) + " )\n    .rgbrcInsideDefault_0 =  (" + getRgbrcInsideDefault_0() + " )\n    .rgbrcInsideDefault_1 =  (" + getRgbrcInsideDefault_1() + " )\n[/TAP]\n";
    }

    public TAPAbstractType(TAPAbstractType tAPAbstractType) {
        this.field_1_istd = tAPAbstractType.field_1_istd;
        this.field_2_jc = tAPAbstractType.field_2_jc;
        this.field_3_dxaGapHalf = tAPAbstractType.field_3_dxaGapHalf;
        this.field_4_dyaRowHeight = tAPAbstractType.field_4_dyaRowHeight;
        this.field_5_fCantSplit = tAPAbstractType.field_5_fCantSplit;
        this.field_6_fCantSplit90 = tAPAbstractType.field_6_fCantSplit90;
        this.field_7_fTableHeader = tAPAbstractType.field_7_fTableHeader;
        TableAutoformatLookSpecifier tableAutoformatLookSpecifier = tAPAbstractType.field_8_tlp;
        this.field_8_tlp = tableAutoformatLookSpecifier == null ? null : tableAutoformatLookSpecifier.copy();
        this.field_9_wWidth = tAPAbstractType.field_9_wWidth;
        this.field_10_wWidthIndent = tAPAbstractType.field_10_wWidthIndent;
        this.field_11_wWidthBefore = tAPAbstractType.field_11_wWidthBefore;
        this.field_12_wWidthAfter = tAPAbstractType.field_12_wWidthAfter;
        this.field_13_widthAndFitsFlags = tAPAbstractType.field_13_widthAndFitsFlags;
        this.field_14_dxaAbs = tAPAbstractType.field_14_dxaAbs;
        this.field_15_dyaAbs = tAPAbstractType.field_15_dyaAbs;
        this.field_16_dxaFromText = tAPAbstractType.field_16_dxaFromText;
        this.field_17_dyaFromText = tAPAbstractType.field_17_dyaFromText;
        this.field_18_dxaFromTextRight = tAPAbstractType.field_18_dxaFromTextRight;
        this.field_19_dyaFromTextBottom = tAPAbstractType.field_19_dyaFromTextBottom;
        this.field_20_fBiDi = tAPAbstractType.field_20_fBiDi;
        this.field_21_fRTL = tAPAbstractType.field_21_fRTL;
        this.field_22_fNoAllowOverlap = tAPAbstractType.field_22_fNoAllowOverlap;
        this.field_23_fSpare = tAPAbstractType.field_23_fSpare;
        this.field_24_grpfTap = tAPAbstractType.field_24_grpfTap;
        this.field_25_internalFlags = tAPAbstractType.field_25_internalFlags;
        this.field_26_itcMac = tAPAbstractType.field_26_itcMac;
        this.field_27_dxaAdjust = tAPAbstractType.field_27_dxaAdjust;
        this.field_28_dxaWebView = tAPAbstractType.field_28_dxaWebView;
        this.field_29_dxaRTEWrapWidth = tAPAbstractType.field_29_dxaRTEWrapWidth;
        this.field_30_dxaColWidthWwd = tAPAbstractType.field_30_dxaColWidthWwd;
        this.field_31_pctWwd = tAPAbstractType.field_31_pctWwd;
        this.field_32_viewFlags = tAPAbstractType.field_32_viewFlags;
        short[] sArr = tAPAbstractType.field_33_rgdxaCenter;
        this.field_33_rgdxaCenter = sArr == null ? null : (short[]) sArr.clone();
        short[] sArr2 = tAPAbstractType.field_34_rgdxaCenterPrint;
        this.field_34_rgdxaCenterPrint = sArr2 == null ? null : (short[]) sArr2.clone();
        ShadingDescriptor shadingDescriptor = tAPAbstractType.field_35_shdTable;
        this.field_35_shdTable = shadingDescriptor == null ? null : shadingDescriptor.copy();
        BorderCode borderCode = tAPAbstractType.field_36_brcBottom;
        this.field_36_brcBottom = borderCode == null ? null : borderCode.copy();
        BorderCode borderCode2 = tAPAbstractType.field_37_brcTop;
        this.field_37_brcTop = borderCode2 == null ? null : borderCode2.copy();
        BorderCode borderCode3 = tAPAbstractType.field_38_brcLeft;
        this.field_38_brcLeft = borderCode3 == null ? null : borderCode3.copy();
        BorderCode borderCode4 = tAPAbstractType.field_39_brcRight;
        this.field_39_brcRight = borderCode4 == null ? null : borderCode4.copy();
        BorderCode borderCode5 = tAPAbstractType.field_40_brcVertical;
        this.field_40_brcVertical = borderCode5 == null ? null : borderCode5.copy();
        BorderCode borderCode6 = tAPAbstractType.field_41_brcHorizontal;
        this.field_41_brcHorizontal = borderCode6 == null ? null : borderCode6.copy();
        this.field_42_wCellPaddingDefaultTop = tAPAbstractType.field_42_wCellPaddingDefaultTop;
        this.field_43_wCellPaddingDefaultLeft = tAPAbstractType.field_43_wCellPaddingDefaultLeft;
        this.field_44_wCellPaddingDefaultBottom = tAPAbstractType.field_44_wCellPaddingDefaultBottom;
        this.field_45_wCellPaddingDefaultRight = tAPAbstractType.field_45_wCellPaddingDefaultRight;
        this.field_46_ftsCellPaddingDefaultTop = tAPAbstractType.field_46_ftsCellPaddingDefaultTop;
        this.field_47_ftsCellPaddingDefaultLeft = tAPAbstractType.field_47_ftsCellPaddingDefaultLeft;
        this.field_48_ftsCellPaddingDefaultBottom = tAPAbstractType.field_48_ftsCellPaddingDefaultBottom;
        this.field_49_ftsCellPaddingDefaultRight = tAPAbstractType.field_49_ftsCellPaddingDefaultRight;
        this.field_50_wCellSpacingDefaultTop = tAPAbstractType.field_50_wCellSpacingDefaultTop;
        this.field_51_wCellSpacingDefaultLeft = tAPAbstractType.field_51_wCellSpacingDefaultLeft;
        this.field_52_wCellSpacingDefaultBottom = tAPAbstractType.field_52_wCellSpacingDefaultBottom;
        this.field_53_wCellSpacingDefaultRight = tAPAbstractType.field_53_wCellSpacingDefaultRight;
        this.field_54_ftsCellSpacingDefaultTop = tAPAbstractType.field_54_ftsCellSpacingDefaultTop;
        this.field_55_ftsCellSpacingDefaultLeft = tAPAbstractType.field_55_ftsCellSpacingDefaultLeft;
        this.field_56_ftsCellSpacingDefaultBottom = tAPAbstractType.field_56_ftsCellSpacingDefaultBottom;
        this.field_57_ftsCellSpacingDefaultRight = tAPAbstractType.field_57_ftsCellSpacingDefaultRight;
        this.field_58_wCellPaddingOuterTop = tAPAbstractType.field_58_wCellPaddingOuterTop;
        this.field_59_wCellPaddingOuterLeft = tAPAbstractType.field_59_wCellPaddingOuterLeft;
        this.field_60_wCellPaddingOuterBottom = tAPAbstractType.field_60_wCellPaddingOuterBottom;
        this.field_61_wCellPaddingOuterRight = tAPAbstractType.field_61_wCellPaddingOuterRight;
        this.field_62_ftsCellPaddingOuterTop = tAPAbstractType.field_62_ftsCellPaddingOuterTop;
        this.field_63_ftsCellPaddingOuterLeft = tAPAbstractType.field_63_ftsCellPaddingOuterLeft;
        this.field_64_ftsCellPaddingOuterBottom = tAPAbstractType.field_64_ftsCellPaddingOuterBottom;
        this.field_65_ftsCellPaddingOuterRight = tAPAbstractType.field_65_ftsCellPaddingOuterRight;
        this.field_66_wCellSpacingOuterTop = tAPAbstractType.field_66_wCellSpacingOuterTop;
        this.field_67_wCellSpacingOuterLeft = tAPAbstractType.field_67_wCellSpacingOuterLeft;
        this.field_68_wCellSpacingOuterBottom = tAPAbstractType.field_68_wCellSpacingOuterBottom;
        this.field_69_wCellSpacingOuterRight = tAPAbstractType.field_69_wCellSpacingOuterRight;
        this.field_70_ftsCellSpacingOuterTop = tAPAbstractType.field_70_ftsCellSpacingOuterTop;
        this.field_71_ftsCellSpacingOuterLeft = tAPAbstractType.field_71_ftsCellSpacingOuterLeft;
        this.field_72_ftsCellSpacingOuterBottom = tAPAbstractType.field_72_ftsCellSpacingOuterBottom;
        this.field_73_ftsCellSpacingOuterRight = tAPAbstractType.field_73_ftsCellSpacingOuterRight;
        TableCellDescriptor[] tableCellDescriptorArr = tAPAbstractType.field_74_rgtc;
        this.field_74_rgtc = tableCellDescriptorArr == null ? null : (TableCellDescriptor[]) Stream.of((Object[]) tableCellDescriptorArr).map(new Function() { // from class: com.sunia.HTREnginev2.v6n
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((TableCellDescriptor) obj).copy();
            }
        }).toArray(new IntFunction() { // from class: com.sunia.HTREnginev2.w6n
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                TableCellDescriptor[] lambda$new$0;
                lambda$new$0 = TAPAbstractType.lambda$new$0(i);
                return lambda$new$0;
            }
        });
        ShadingDescriptor[] shadingDescriptorArr = tAPAbstractType.field_75_rgshd;
        this.field_75_rgshd = shadingDescriptorArr == null ? null : (ShadingDescriptor[]) Stream.of((Object[]) shadingDescriptorArr).map(new Function() { // from class: com.sunia.HTREnginev2.x6n
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((ShadingDescriptor) obj).copy();
            }
        }).toArray(new IntFunction() { // from class: com.sunia.HTREnginev2.y6n
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                ShadingDescriptor[] lambda$new$1;
                lambda$new$1 = TAPAbstractType.lambda$new$1(i);
                return lambda$new$1;
            }
        });
        this.field_76_fPropRMark = tAPAbstractType.field_76_fPropRMark;
        this.field_77_fHasOldProps = tAPAbstractType.field_77_fHasOldProps;
        this.field_78_cHorzBands = tAPAbstractType.field_78_cHorzBands;
        this.field_79_cVertBands = tAPAbstractType.field_79_cVertBands;
        BorderCode borderCode7 = tAPAbstractType.field_80_rgbrcInsideDefault_0;
        this.field_80_rgbrcInsideDefault_0 = borderCode7 == null ? null : borderCode7.copy();
        BorderCode borderCode8 = tAPAbstractType.field_81_rgbrcInsideDefault_1;
        this.field_81_rgbrcInsideDefault_1 = borderCode8 != null ? borderCode8.copy() : null;
    }
}
