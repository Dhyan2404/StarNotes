package org.apache.poi.hwpf.model.types;

import org.apache.poi.hwpf.usermodel.BorderCode;
import org.apache.poi.hwpf.usermodel.ShadingDescriptor;
import org.apache.poi.util.BitField;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public abstract class TCAbstractType {
    protected byte field_10_ftsCellPaddingBottom;
    protected byte field_11_ftsCellPaddingRight;
    protected short field_12_wCellSpacingLeft;
    protected short field_13_wCellSpacingTop;
    protected short field_14_wCellSpacingBottom;
    protected short field_15_wCellSpacingRight;
    protected byte field_16_ftsCellSpacingLeft;
    protected byte field_17_ftsCellSpacingTop;
    protected byte field_18_ftsCellSpacingBottom;
    protected byte field_19_ftsCellSpacingRight;
    protected short field_1_rgf;
    protected BorderCode field_20_brcTop;
    protected BorderCode field_21_brcLeft;
    protected BorderCode field_22_brcBottom;
    protected BorderCode field_23_brcRight;
    protected short field_2_wWidth;
    protected ShadingDescriptor field_3_shd;
    protected short field_4_wCellPaddingLeft;
    protected short field_5_wCellPaddingTop;
    protected short field_6_wCellPaddingBottom;
    protected short field_7_wCellPaddingRight;
    protected byte field_8_ftsCellPaddingLeft;
    protected byte field_9_ftsCellPaddingTop;
    private static final BitField fFirstMerged = new BitField(1);
    private static final BitField fMerged = new BitField(2);
    private static final BitField fVertical = new BitField(4);
    private static final BitField fBackward = new BitField(8);
    private static final BitField fRotateFont = new BitField(16);
    private static final BitField fVertMerge = new BitField(32);
    private static final BitField fVertRestart = new BitField(64);
    private static final BitField vertAlign = new BitField(384);
    private static final BitField ftsWidth = new BitField(3584);
    private static final BitField fFitText = new BitField(4096);
    private static final BitField fNoWrap = new BitField(8192);
    private static final BitField fUnused = new BitField(49152);

    public TCAbstractType() {
        this.field_3_shd = new ShadingDescriptor();
        this.field_20_brcTop = new BorderCode();
        this.field_21_brcLeft = new BorderCode();
        this.field_22_brcBottom = new BorderCode();
        this.field_23_brcRight = new BorderCode();
    }

    @Internal
    public BorderCode getBrcBottom() {
        return this.field_22_brcBottom;
    }

    @Internal
    public BorderCode getBrcLeft() {
        return this.field_21_brcLeft;
    }

    @Internal
    public BorderCode getBrcRight() {
        return this.field_23_brcRight;
    }

    @Internal
    public BorderCode getBrcTop() {
        return this.field_20_brcTop;
    }

    @Internal
    public byte getFUnused() {
        return (byte) fUnused.getValue(this.field_1_rgf);
    }

    @Internal
    public byte getFtsCellPaddingBottom() {
        return this.field_10_ftsCellPaddingBottom;
    }

    @Internal
    public byte getFtsCellPaddingLeft() {
        return this.field_8_ftsCellPaddingLeft;
    }

    @Internal
    public byte getFtsCellPaddingRight() {
        return this.field_11_ftsCellPaddingRight;
    }

    @Internal
    public byte getFtsCellPaddingTop() {
        return this.field_9_ftsCellPaddingTop;
    }

    @Internal
    public byte getFtsCellSpacingBottom() {
        return this.field_18_ftsCellSpacingBottom;
    }

    @Internal
    public byte getFtsCellSpacingLeft() {
        return this.field_16_ftsCellSpacingLeft;
    }

    @Internal
    public byte getFtsCellSpacingRight() {
        return this.field_19_ftsCellSpacingRight;
    }

    @Internal
    public byte getFtsCellSpacingTop() {
        return this.field_17_ftsCellSpacingTop;
    }

    @Internal
    public byte getFtsWidth() {
        return (byte) ftsWidth.getValue(this.field_1_rgf);
    }

    @Internal
    public short getRgf() {
        return this.field_1_rgf;
    }

    @Internal
    public ShadingDescriptor getShd() {
        return this.field_3_shd;
    }

    @Internal
    public byte getVertAlign() {
        return (byte) vertAlign.getValue(this.field_1_rgf);
    }

    @Internal
    public short getWCellPaddingBottom() {
        return this.field_6_wCellPaddingBottom;
    }

    @Internal
    public short getWCellPaddingLeft() {
        return this.field_4_wCellPaddingLeft;
    }

    @Internal
    public short getWCellPaddingRight() {
        return this.field_7_wCellPaddingRight;
    }

    @Internal
    public short getWCellPaddingTop() {
        return this.field_5_wCellPaddingTop;
    }

    @Internal
    public short getWCellSpacingBottom() {
        return this.field_14_wCellSpacingBottom;
    }

    @Internal
    public short getWCellSpacingLeft() {
        return this.field_12_wCellSpacingLeft;
    }

    @Internal
    public short getWCellSpacingRight() {
        return this.field_15_wCellSpacingRight;
    }

    @Internal
    public short getWCellSpacingTop() {
        return this.field_13_wCellSpacingTop;
    }

    @Internal
    public short getWWidth() {
        return this.field_2_wWidth;
    }

    @Internal
    public boolean isFBackward() {
        return fBackward.isSet(this.field_1_rgf);
    }

    @Internal
    public boolean isFFirstMerged() {
        return fFirstMerged.isSet(this.field_1_rgf);
    }

    @Internal
    public boolean isFFitText() {
        return fFitText.isSet(this.field_1_rgf);
    }

    @Internal
    public boolean isFMerged() {
        return fMerged.isSet(this.field_1_rgf);
    }

    @Internal
    public boolean isFNoWrap() {
        return fNoWrap.isSet(this.field_1_rgf);
    }

    @Internal
    public boolean isFRotateFont() {
        return fRotateFont.isSet(this.field_1_rgf);
    }

    @Internal
    public boolean isFVertMerge() {
        return fVertMerge.isSet(this.field_1_rgf);
    }

    @Internal
    public boolean isFVertRestart() {
        return fVertRestart.isSet(this.field_1_rgf);
    }

    @Internal
    public boolean isFVertical() {
        return fVertical.isSet(this.field_1_rgf);
    }

    @Internal
    public void setBrcBottom(BorderCode borderCode) {
        this.field_22_brcBottom = borderCode;
    }

    @Internal
    public void setBrcLeft(BorderCode borderCode) {
        this.field_21_brcLeft = borderCode;
    }

    @Internal
    public void setBrcRight(BorderCode borderCode) {
        this.field_23_brcRight = borderCode;
    }

    @Internal
    public void setBrcTop(BorderCode borderCode) {
        this.field_20_brcTop = borderCode;
    }

    @Internal
    public void setFBackward(boolean z) {
        this.field_1_rgf = (short) fBackward.setBoolean(this.field_1_rgf, z);
    }

    @Internal
    public void setFFirstMerged(boolean z) {
        this.field_1_rgf = (short) fFirstMerged.setBoolean(this.field_1_rgf, z);
    }

    @Internal
    public void setFFitText(boolean z) {
        this.field_1_rgf = (short) fFitText.setBoolean(this.field_1_rgf, z);
    }

    @Internal
    public void setFMerged(boolean z) {
        this.field_1_rgf = (short) fMerged.setBoolean(this.field_1_rgf, z);
    }

    @Internal
    public void setFNoWrap(boolean z) {
        this.field_1_rgf = (short) fNoWrap.setBoolean(this.field_1_rgf, z);
    }

    @Internal
    public void setFRotateFont(boolean z) {
        this.field_1_rgf = (short) fRotateFont.setBoolean(this.field_1_rgf, z);
    }

    @Internal
    public void setFUnused(byte b) {
        this.field_1_rgf = (short) fUnused.setValue(this.field_1_rgf, b);
    }

    @Internal
    public void setFVertMerge(boolean z) {
        this.field_1_rgf = (short) fVertMerge.setBoolean(this.field_1_rgf, z);
    }

    @Internal
    public void setFVertRestart(boolean z) {
        this.field_1_rgf = (short) fVertRestart.setBoolean(this.field_1_rgf, z);
    }

    @Internal
    public void setFVertical(boolean z) {
        this.field_1_rgf = (short) fVertical.setBoolean(this.field_1_rgf, z);
    }

    @Internal
    public void setFtsCellPaddingBottom(byte b) {
        this.field_10_ftsCellPaddingBottom = b;
    }

    @Internal
    public void setFtsCellPaddingLeft(byte b) {
        this.field_8_ftsCellPaddingLeft = b;
    }

    @Internal
    public void setFtsCellPaddingRight(byte b) {
        this.field_11_ftsCellPaddingRight = b;
    }

    @Internal
    public void setFtsCellPaddingTop(byte b) {
        this.field_9_ftsCellPaddingTop = b;
    }

    @Internal
    public void setFtsCellSpacingBottom(byte b) {
        this.field_18_ftsCellSpacingBottom = b;
    }

    @Internal
    public void setFtsCellSpacingLeft(byte b) {
        this.field_16_ftsCellSpacingLeft = b;
    }

    @Internal
    public void setFtsCellSpacingRight(byte b) {
        this.field_19_ftsCellSpacingRight = b;
    }

    @Internal
    public void setFtsCellSpacingTop(byte b) {
        this.field_17_ftsCellSpacingTop = b;
    }

    @Internal
    public void setFtsWidth(byte b) {
        this.field_1_rgf = (short) ftsWidth.setValue(this.field_1_rgf, b);
    }

    @Internal
    public void setRgf(short s) {
        this.field_1_rgf = s;
    }

    @Internal
    public void setShd(ShadingDescriptor shadingDescriptor) {
        this.field_3_shd = shadingDescriptor;
    }

    @Internal
    public void setVertAlign(byte b) {
        this.field_1_rgf = (short) vertAlign.setValue(this.field_1_rgf, b);
    }

    @Internal
    public void setWCellPaddingBottom(short s) {
        this.field_6_wCellPaddingBottom = s;
    }

    @Internal
    public void setWCellPaddingLeft(short s) {
        this.field_4_wCellPaddingLeft = s;
    }

    @Internal
    public void setWCellPaddingRight(short s) {
        this.field_7_wCellPaddingRight = s;
    }

    @Internal
    public void setWCellPaddingTop(short s) {
        this.field_5_wCellPaddingTop = s;
    }

    @Internal
    public void setWCellSpacingBottom(short s) {
        this.field_14_wCellSpacingBottom = s;
    }

    @Internal
    public void setWCellSpacingLeft(short s) {
        this.field_12_wCellSpacingLeft = s;
    }

    @Internal
    public void setWCellSpacingRight(short s) {
        this.field_15_wCellSpacingRight = s;
    }

    @Internal
    public void setWCellSpacingTop(short s) {
        this.field_13_wCellSpacingTop = s;
    }

    @Internal
    public void setWWidth(short s) {
        this.field_2_wWidth = s;
    }

    public String toString() {
        return "[TC]\n    .rgf                  =  (" + ((int) getRgf()) + " )\n         .fFirstMerged             = " + isFFirstMerged() + "\n         .fMerged                  = " + isFMerged() + "\n         .fVertical                = " + isFVertical() + "\n         .fBackward                = " + isFBackward() + "\n         .fRotateFont              = " + isFRotateFont() + "\n         .fVertMerge               = " + isFVertMerge() + "\n         .fVertRestart             = " + isFVertRestart() + "\n         .vertAlign                = " + ((int) getVertAlign()) + "\n         .ftsWidth                 = " + ((int) getFtsWidth()) + "\n         .fFitText                 = " + isFFitText() + "\n         .fNoWrap                  = " + isFNoWrap() + "\n         .fUnused                  = " + ((int) getFUnused()) + "\n    .wWidth               =  (" + ((int) getWWidth()) + " )\n    .shd                  =  (" + getShd() + " )\n    .wCellPaddingLeft     =  (" + ((int) getWCellPaddingLeft()) + " )\n    .wCellPaddingTop      =  (" + ((int) getWCellPaddingTop()) + " )\n    .wCellPaddingBottom   =  (" + ((int) getWCellPaddingBottom()) + " )\n    .wCellPaddingRight    =  (" + ((int) getWCellPaddingRight()) + " )\n    .ftsCellPaddingLeft   =  (" + ((int) getFtsCellPaddingLeft()) + " )\n    .ftsCellPaddingTop    =  (" + ((int) getFtsCellPaddingTop()) + " )\n    .ftsCellPaddingBottom =  (" + ((int) getFtsCellPaddingBottom()) + " )\n    .ftsCellPaddingRight  =  (" + ((int) getFtsCellPaddingRight()) + " )\n    .wCellSpacingLeft     =  (" + ((int) getWCellSpacingLeft()) + " )\n    .wCellSpacingTop      =  (" + ((int) getWCellSpacingTop()) + " )\n    .wCellSpacingBottom   =  (" + ((int) getWCellSpacingBottom()) + " )\n    .wCellSpacingRight    =  (" + ((int) getWCellSpacingRight()) + " )\n    .ftsCellSpacingLeft   =  (" + ((int) getFtsCellSpacingLeft()) + " )\n    .ftsCellSpacingTop    =  (" + ((int) getFtsCellSpacingTop()) + " )\n    .ftsCellSpacingBottom =  (" + ((int) getFtsCellSpacingBottom()) + " )\n    .ftsCellSpacingRight  =  (" + ((int) getFtsCellSpacingRight()) + " )\n    .brcTop               =  (" + getBrcTop() + " )\n    .brcLeft              =  (" + getBrcLeft() + " )\n    .brcBottom            =  (" + getBrcBottom() + " )\n    .brcRight             =  (" + getBrcRight() + " )\n[/TC]\n";
    }

    public TCAbstractType(TCAbstractType tCAbstractType) {
        this.field_1_rgf = tCAbstractType.field_1_rgf;
        this.field_2_wWidth = tCAbstractType.field_2_wWidth;
        ShadingDescriptor shadingDescriptor = tCAbstractType.field_3_shd;
        this.field_3_shd = shadingDescriptor == null ? null : shadingDescriptor.copy();
        this.field_4_wCellPaddingLeft = tCAbstractType.field_4_wCellPaddingLeft;
        this.field_5_wCellPaddingTop = tCAbstractType.field_5_wCellPaddingTop;
        this.field_6_wCellPaddingBottom = tCAbstractType.field_6_wCellPaddingBottom;
        this.field_7_wCellPaddingRight = tCAbstractType.field_7_wCellPaddingRight;
        this.field_8_ftsCellPaddingLeft = tCAbstractType.field_8_ftsCellPaddingLeft;
        this.field_9_ftsCellPaddingTop = tCAbstractType.field_9_ftsCellPaddingTop;
        this.field_10_ftsCellPaddingBottom = tCAbstractType.field_10_ftsCellPaddingBottom;
        this.field_11_ftsCellPaddingRight = tCAbstractType.field_11_ftsCellPaddingRight;
        this.field_12_wCellSpacingLeft = tCAbstractType.field_12_wCellSpacingLeft;
        this.field_13_wCellSpacingTop = tCAbstractType.field_13_wCellSpacingTop;
        this.field_14_wCellSpacingBottom = tCAbstractType.field_14_wCellSpacingBottom;
        this.field_15_wCellSpacingRight = tCAbstractType.field_15_wCellSpacingRight;
        this.field_16_ftsCellSpacingLeft = tCAbstractType.field_16_ftsCellSpacingLeft;
        this.field_17_ftsCellSpacingTop = tCAbstractType.field_17_ftsCellSpacingTop;
        this.field_18_ftsCellSpacingBottom = tCAbstractType.field_18_ftsCellSpacingBottom;
        this.field_19_ftsCellSpacingRight = tCAbstractType.field_19_ftsCellSpacingRight;
        BorderCode borderCode = tCAbstractType.field_20_brcTop;
        this.field_20_brcTop = borderCode == null ? null : borderCode.copy();
        BorderCode borderCode2 = tCAbstractType.field_21_brcLeft;
        this.field_21_brcLeft = borderCode2 == null ? null : borderCode2.copy();
        BorderCode borderCode3 = tCAbstractType.field_22_brcBottom;
        this.field_22_brcBottom = borderCode3 == null ? null : borderCode3.copy();
        BorderCode borderCode4 = tCAbstractType.field_23_brcRight;
        this.field_23_brcRight = borderCode4 != null ? borderCode4.copy() : null;
    }
}
