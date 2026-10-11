package org.apache.poi.hwpf.model.types;

import java.util.Arrays;
import org.apache.poi.hwpf.model.Grfhic;
import org.apache.poi.util.BitField;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;

@Internal
/* loaded from: classes12.dex */
public abstract class LVLFAbstractType {
    protected short field_10_ilvlRestartLim;
    protected int field_1_iStartAt;
    protected byte field_2_nfc;
    protected byte field_3_info;
    protected byte field_5_ixchFollow;
    protected int field_6_dxaIndentSav;
    protected int field_7_unused2;
    protected short field_8_cbGrpprlChpx;
    protected short field_9_cbGrpprlPapx;

    /* renamed from: jc */
    private static final BitField f111450jc = new BitField(3);
    private static final BitField fLegal = new BitField(4);
    private static final BitField fNoRestart = new BitField(8);
    private static final BitField fIndentSav = new BitField(16);
    private static final BitField fConverted = new BitField(32);
    private static final BitField unused1 = new BitField(64);
    private static final BitField fTentative = new BitField(128);
    protected byte[] field_4_rgbxchNums = new byte[9];
    protected Grfhic field_11_grfhic = new Grfhic();

    public static int getSize() {
        return 28;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        LVLFAbstractType lVLFAbstractType = (LVLFAbstractType) obj;
        if (this.field_1_iStartAt != lVLFAbstractType.field_1_iStartAt || this.field_2_nfc != lVLFAbstractType.field_2_nfc || this.field_3_info != lVLFAbstractType.field_3_info || !Arrays.equals(this.field_4_rgbxchNums, lVLFAbstractType.field_4_rgbxchNums) || this.field_5_ixchFollow != lVLFAbstractType.field_5_ixchFollow || this.field_6_dxaIndentSav != lVLFAbstractType.field_6_dxaIndentSav || this.field_7_unused2 != lVLFAbstractType.field_7_unused2 || this.field_8_cbGrpprlChpx != lVLFAbstractType.field_8_cbGrpprlChpx || this.field_9_cbGrpprlPapx != lVLFAbstractType.field_9_cbGrpprlPapx || this.field_10_ilvlRestartLim != lVLFAbstractType.field_10_ilvlRestartLim) {
            return false;
        }
        Grfhic grfhic = this.field_11_grfhic;
        if (grfhic == null) {
            if (lVLFAbstractType.field_11_grfhic != null) {
                return false;
            }
        } else if (!grfhic.equals(lVLFAbstractType.field_11_grfhic)) {
            return false;
        }
        return true;
    }

    public void fillFields(byte[] bArr, int i) {
        this.field_1_iStartAt = LittleEndian.getInt(bArr, i + 0);
        this.field_2_nfc = bArr[i + 4];
        this.field_3_info = bArr[i + 5];
        int i2 = i + 6;
        this.field_4_rgbxchNums = Arrays.copyOfRange(bArr, i2, i2 + 9);
        this.field_5_ixchFollow = bArr[i + 15];
        this.field_6_dxaIndentSav = LittleEndian.getInt(bArr, i + 16);
        this.field_7_unused2 = LittleEndian.getInt(bArr, i + 20);
        this.field_8_cbGrpprlChpx = LittleEndian.getUByte(bArr, i + 24);
        this.field_9_cbGrpprlPapx = LittleEndian.getUByte(bArr, i + 25);
        this.field_10_ilvlRestartLim = LittleEndian.getUByte(bArr, i + 26);
        this.field_11_grfhic = new Grfhic(bArr, i + 27);
    }

    @Internal
    public short getCbGrpprlChpx() {
        return this.field_8_cbGrpprlChpx;
    }

    @Internal
    public short getCbGrpprlPapx() {
        return this.field_9_cbGrpprlPapx;
    }

    @Internal
    public int getDxaIndentSav() {
        return this.field_6_dxaIndentSav;
    }

    @Internal
    public Grfhic getGrfhic() {
        return this.field_11_grfhic;
    }

    @Internal
    public int getIStartAt() {
        return this.field_1_iStartAt;
    }

    @Internal
    public short getIlvlRestartLim() {
        return this.field_10_ilvlRestartLim;
    }

    @Internal
    public byte getInfo() {
        return this.field_3_info;
    }

    @Internal
    public byte getIxchFollow() {
        return this.field_5_ixchFollow;
    }

    @Internal
    public byte getJc() {
        return (byte) f111450jc.getValue(this.field_3_info);
    }

    @Internal
    public byte getNfc() {
        return this.field_2_nfc;
    }

    @Internal
    public byte[] getRgbxchNums() {
        return this.field_4_rgbxchNums;
    }

    @Internal
    public int getUnused2() {
        return this.field_7_unused2;
    }

    public int hashCode() {
        return Arrays.deepHashCode(new Object[]{Integer.valueOf(this.field_1_iStartAt), Byte.valueOf(this.field_2_nfc), Byte.valueOf(this.field_3_info), this.field_4_rgbxchNums, Byte.valueOf(this.field_5_ixchFollow), Integer.valueOf(this.field_6_dxaIndentSav), Integer.valueOf(this.field_7_unused2), Short.valueOf(this.field_8_cbGrpprlChpx), Short.valueOf(this.field_9_cbGrpprlPapx), Short.valueOf(this.field_10_ilvlRestartLim), this.field_11_grfhic});
    }

    @Internal
    public boolean isFConverted() {
        return fConverted.isSet(this.field_3_info);
    }

    @Internal
    public boolean isFIndentSav() {
        return fIndentSav.isSet(this.field_3_info);
    }

    @Internal
    public boolean isFLegal() {
        return fLegal.isSet(this.field_3_info);
    }

    @Internal
    public boolean isFNoRestart() {
        return fNoRestart.isSet(this.field_3_info);
    }

    @Internal
    public boolean isFTentative() {
        return fTentative.isSet(this.field_3_info);
    }

    @Internal
    @Deprecated
    public boolean isUnused1() {
        return unused1.isSet(this.field_3_info);
    }

    public void serialize(byte[] bArr, int i) {
        LittleEndian.putInt(bArr, i + 0, this.field_1_iStartAt);
        bArr[i + 4] = this.field_2_nfc;
        bArr[i + 5] = this.field_3_info;
        byte[] bArr2 = this.field_4_rgbxchNums;
        System.arraycopy(bArr2, 0, bArr, i + 6, bArr2.length);
        bArr[i + 15] = this.field_5_ixchFollow;
        LittleEndian.putInt(bArr, i + 16, this.field_6_dxaIndentSav);
        LittleEndian.putInt(bArr, i + 20, this.field_7_unused2);
        LittleEndian.putUByte(bArr, i + 24, this.field_8_cbGrpprlChpx);
        LittleEndian.putUByte(bArr, i + 25, this.field_9_cbGrpprlPapx);
        LittleEndian.putUByte(bArr, i + 26, this.field_10_ilvlRestartLim);
        this.field_11_grfhic.serialize(bArr, i + 27);
    }

    @Internal
    public void setCbGrpprlChpx(short s) {
        this.field_8_cbGrpprlChpx = s;
    }

    @Internal
    public void setCbGrpprlPapx(short s) {
        this.field_9_cbGrpprlPapx = s;
    }

    @Internal
    public void setDxaIndentSav(int i) {
        this.field_6_dxaIndentSav = i;
    }

    @Internal
    public void setFConverted(boolean z) {
        this.field_3_info = (byte) fConverted.setBoolean(this.field_3_info, z);
    }

    @Internal
    public void setFIndentSav(boolean z) {
        this.field_3_info = (byte) fIndentSav.setBoolean(this.field_3_info, z);
    }

    @Internal
    public void setFLegal(boolean z) {
        this.field_3_info = (byte) fLegal.setBoolean(this.field_3_info, z);
    }

    @Internal
    public void setFNoRestart(boolean z) {
        this.field_3_info = (byte) fNoRestart.setBoolean(this.field_3_info, z);
    }

    @Internal
    public void setFTentative(boolean z) {
        this.field_3_info = (byte) fTentative.setBoolean(this.field_3_info, z);
    }

    @Internal
    public void setGrfhic(Grfhic grfhic) {
        this.field_11_grfhic = grfhic;
    }

    @Internal
    public void setIStartAt(int i) {
        this.field_1_iStartAt = i;
    }

    @Internal
    public void setIlvlRestartLim(short s) {
        this.field_10_ilvlRestartLim = s;
    }

    @Internal
    public void setInfo(byte b) {
        this.field_3_info = b;
    }

    @Internal
    public void setIxchFollow(byte b) {
        this.field_5_ixchFollow = b;
    }

    @Internal
    public void setJc(byte b) {
        this.field_3_info = (byte) f111450jc.setValue(this.field_3_info, b);
    }

    @Internal
    public void setNfc(byte b) {
        this.field_2_nfc = b;
    }

    @Internal
    public void setRgbxchNums(byte[] bArr) {
        this.field_4_rgbxchNums = bArr;
    }

    @Internal
    public void setUnused1(boolean z) {
        this.field_3_info = (byte) unused1.setBoolean(this.field_3_info, z);
    }

    @Internal
    public void setUnused2(int i) {
        this.field_7_unused2 = i;
    }

    public String toString() {
        return "[LVLF]\n    .iStartAt             =  (" + getIStartAt() + " )\n    .nfc                  =  (" + ((int) getNfc()) + " )\n    .info                 =  (" + ((int) getInfo()) + " )\n         .jc                       = " + ((int) getJc()) + "\n         .fLegal                   = " + isFLegal() + "\n         .fNoRestart               = " + isFNoRestart() + "\n         .fIndentSav               = " + isFIndentSav() + "\n         .fConverted               = " + isFConverted() + "\n         .unused1                  = " + isUnused1() + "\n         .fTentative               = " + isFTentative() + "\n    .rgbxchNums           =  (" + Arrays.toString(getRgbxchNums()) + " )\n    .ixchFollow           =  (" + ((int) getIxchFollow()) + " )\n    .dxaIndentSav         =  (" + getDxaIndentSav() + " )\n    .unused2              =  (" + getUnused2() + " )\n    .cbGrpprlChpx         =  (" + ((int) getCbGrpprlChpx()) + " )\n    .cbGrpprlPapx         =  (" + ((int) getCbGrpprlPapx()) + " )\n    .ilvlRestartLim       =  (" + ((int) getIlvlRestartLim()) + " )\n    .grfhic               =  (" + getGrfhic() + " )\n[/LVLF]\n";
    }

    public byte[] serialize() {
        byte[] bArr = new byte[getSize()];
        serialize(bArr, 0);
        return bArr;
    }
}
