package org.apache.poi.hwpf.model.types;

import java.util.Arrays;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;

@Internal
/* loaded from: classes12.dex */
public abstract class PICFAbstractType {
    protected int field_10_padding2;
    protected short field_11_dxaGoal;
    protected short field_12_dyaGoal;
    protected int field_13_mx;
    protected int field_14_my;
    protected short field_15_dxaReserved1;
    protected short field_16_dyaReserved1;
    protected short field_17_dxaReserved2;
    protected short field_18_dyaReserved2;
    protected byte field_19_fReserved;
    protected int field_1_lcb;
    protected byte field_20_bpp;
    protected byte[] field_21_brcTop80 = new byte[4];
    protected byte[] field_22_brcLeft80 = new byte[4];
    protected byte[] field_23_brcBottom80 = new byte[4];
    protected byte[] field_24_brcRight80 = new byte[4];
    protected short field_25_dxaReserved3;
    protected short field_26_dyaReserved3;
    protected short field_27_cProps;
    protected int field_2_cbHeader;
    protected short field_3_mm;
    protected short field_4_xExt;
    protected short field_5_yExt;
    protected short field_6_swHMF;
    protected int field_7_grf;
    protected int field_8_padding;
    protected int field_9_mmPM;

    public static int getSize() {
        return 68;
    }

    public void fillFields(byte[] bArr, int i) {
        this.field_1_lcb = LittleEndian.getInt(bArr, i + 0);
        this.field_2_cbHeader = LittleEndian.getShort(bArr, i + 4);
        this.field_3_mm = LittleEndian.getShort(bArr, i + 6);
        this.field_4_xExt = LittleEndian.getShort(bArr, i + 8);
        this.field_5_yExt = LittleEndian.getShort(bArr, i + 10);
        this.field_6_swHMF = LittleEndian.getShort(bArr, i + 12);
        this.field_7_grf = LittleEndian.getInt(bArr, i + 14);
        this.field_8_padding = LittleEndian.getInt(bArr, i + 18);
        this.field_9_mmPM = LittleEndian.getShort(bArr, i + 22);
        this.field_10_padding2 = LittleEndian.getInt(bArr, i + 24);
        this.field_11_dxaGoal = LittleEndian.getShort(bArr, i + 28);
        this.field_12_dyaGoal = LittleEndian.getShort(bArr, i + 30);
        this.field_13_mx = LittleEndian.getShort(bArr, i + 32);
        this.field_14_my = LittleEndian.getShort(bArr, i + 34);
        this.field_15_dxaReserved1 = LittleEndian.getShort(bArr, i + 36);
        this.field_16_dyaReserved1 = LittleEndian.getShort(bArr, i + 38);
        this.field_17_dxaReserved2 = LittleEndian.getShort(bArr, i + 40);
        this.field_18_dyaReserved2 = LittleEndian.getShort(bArr, i + 42);
        this.field_19_fReserved = bArr[i + 44];
        this.field_20_bpp = bArr[i + 45];
        int i2 = i + 46;
        this.field_21_brcTop80 = Arrays.copyOfRange(bArr, i2, i2 + 4);
        int i3 = i + 50;
        this.field_22_brcLeft80 = Arrays.copyOfRange(bArr, i3, i3 + 4);
        int i4 = i + 54;
        this.field_23_brcBottom80 = Arrays.copyOfRange(bArr, i4, i4 + 4);
        int i5 = i + 58;
        this.field_24_brcRight80 = Arrays.copyOfRange(bArr, i5, i5 + 4);
        this.field_25_dxaReserved3 = LittleEndian.getShort(bArr, i + 62);
        this.field_26_dyaReserved3 = LittleEndian.getShort(bArr, i + 64);
        this.field_27_cProps = LittleEndian.getShort(bArr, i + 66);
    }

    @Internal
    public byte getBpp() {
        return this.field_20_bpp;
    }

    @Internal
    public byte[] getBrcBottom80() {
        return this.field_23_brcBottom80;
    }

    @Internal
    public byte[] getBrcLeft80() {
        return this.field_22_brcLeft80;
    }

    @Internal
    public byte[] getBrcRight80() {
        return this.field_24_brcRight80;
    }

    @Internal
    public byte[] getBrcTop80() {
        return this.field_21_brcTop80;
    }

    @Internal
    public short getCProps() {
        return this.field_27_cProps;
    }

    @Internal
    public int getCbHeader() {
        return this.field_2_cbHeader;
    }

    @Internal
    public short getDxaGoal() {
        return this.field_11_dxaGoal;
    }

    @Internal
    public short getDxaReserved1() {
        return this.field_15_dxaReserved1;
    }

    @Internal
    public short getDxaReserved2() {
        return this.field_17_dxaReserved2;
    }

    @Internal
    public short getDxaReserved3() {
        return this.field_25_dxaReserved3;
    }

    @Internal
    public short getDyaGoal() {
        return this.field_12_dyaGoal;
    }

    @Internal
    public short getDyaReserved1() {
        return this.field_16_dyaReserved1;
    }

    @Internal
    public short getDyaReserved2() {
        return this.field_18_dyaReserved2;
    }

    @Internal
    public short getDyaReserved3() {
        return this.field_26_dyaReserved3;
    }

    @Internal
    public byte getFReserved() {
        return this.field_19_fReserved;
    }

    @Internal
    public int getGrf() {
        return this.field_7_grf;
    }

    @Internal
    public int getLcb() {
        return this.field_1_lcb;
    }

    @Internal
    public short getMm() {
        return this.field_3_mm;
    }

    @Internal
    public int getMmPM() {
        return this.field_9_mmPM;
    }

    @Internal
    public int getMx() {
        return this.field_13_mx;
    }

    @Internal
    public int getMy() {
        return this.field_14_my;
    }

    @Internal
    public int getPadding() {
        return this.field_8_padding;
    }

    @Internal
    public int getPadding2() {
        return this.field_10_padding2;
    }

    @Internal
    public short getSwHMF() {
        return this.field_6_swHMF;
    }

    @Internal
    public short getXExt() {
        return this.field_4_xExt;
    }

    @Internal
    public short getYExt() {
        return this.field_5_yExt;
    }

    public void serialize(byte[] bArr, int i) {
        LittleEndian.putInt(bArr, i + 0, this.field_1_lcb);
        LittleEndian.putUShort(bArr, i + 4, this.field_2_cbHeader);
        LittleEndian.putShort(bArr, i + 6, this.field_3_mm);
        LittleEndian.putShort(bArr, i + 8, this.field_4_xExt);
        LittleEndian.putShort(bArr, i + 10, this.field_5_yExt);
        LittleEndian.putShort(bArr, i + 12, this.field_6_swHMF);
        LittleEndian.putInt(bArr, i + 14, this.field_7_grf);
        LittleEndian.putInt(bArr, i + 18, this.field_8_padding);
        LittleEndian.putUShort(bArr, i + 22, this.field_9_mmPM);
        LittleEndian.putInt(bArr, i + 24, this.field_10_padding2);
        LittleEndian.putShort(bArr, i + 28, this.field_11_dxaGoal);
        LittleEndian.putShort(bArr, i + 30, this.field_12_dyaGoal);
        LittleEndian.putUShort(bArr, i + 32, this.field_13_mx);
        LittleEndian.putUShort(bArr, i + 34, this.field_14_my);
        LittleEndian.putShort(bArr, i + 36, this.field_15_dxaReserved1);
        LittleEndian.putShort(bArr, i + 38, this.field_16_dyaReserved1);
        LittleEndian.putShort(bArr, i + 40, this.field_17_dxaReserved2);
        LittleEndian.putShort(bArr, i + 42, this.field_18_dyaReserved2);
        bArr[i + 44] = this.field_19_fReserved;
        bArr[i + 45] = this.field_20_bpp;
        byte[] bArr2 = this.field_21_brcTop80;
        System.arraycopy(bArr2, 0, bArr, i + 46, bArr2.length);
        byte[] bArr3 = this.field_22_brcLeft80;
        System.arraycopy(bArr3, 0, bArr, i + 50, bArr3.length);
        byte[] bArr4 = this.field_23_brcBottom80;
        System.arraycopy(bArr4, 0, bArr, i + 54, bArr4.length);
        byte[] bArr5 = this.field_24_brcRight80;
        System.arraycopy(bArr5, 0, bArr, i + 58, bArr5.length);
        LittleEndian.putShort(bArr, i + 62, this.field_25_dxaReserved3);
        LittleEndian.putShort(bArr, i + 64, this.field_26_dyaReserved3);
        LittleEndian.putShort(bArr, i + 66, this.field_27_cProps);
    }

    @Internal
    public void setBpp(byte b) {
        this.field_20_bpp = b;
    }

    @Internal
    public void setBrcBottom80(byte[] bArr) {
        this.field_23_brcBottom80 = bArr;
    }

    @Internal
    public void setBrcLeft80(byte[] bArr) {
        this.field_22_brcLeft80 = bArr;
    }

    @Internal
    public void setBrcRight80(byte[] bArr) {
        this.field_24_brcRight80 = bArr;
    }

    @Internal
    public void setBrcTop80(byte[] bArr) {
        this.field_21_brcTop80 = bArr;
    }

    @Internal
    public void setCProps(short s) {
        this.field_27_cProps = s;
    }

    @Internal
    public void setCbHeader(int i) {
        this.field_2_cbHeader = i;
    }

    @Internal
    public void setDxaGoal(short s) {
        this.field_11_dxaGoal = s;
    }

    @Internal
    public void setDxaReserved1(short s) {
        this.field_15_dxaReserved1 = s;
    }

    @Internal
    public void setDxaReserved2(short s) {
        this.field_17_dxaReserved2 = s;
    }

    @Internal
    public void setDxaReserved3(short s) {
        this.field_25_dxaReserved3 = s;
    }

    @Internal
    public void setDyaGoal(short s) {
        this.field_12_dyaGoal = s;
    }

    @Internal
    public void setDyaReserved1(short s) {
        this.field_16_dyaReserved1 = s;
    }

    @Internal
    public void setDyaReserved2(short s) {
        this.field_18_dyaReserved2 = s;
    }

    @Internal
    public void setDyaReserved3(short s) {
        this.field_26_dyaReserved3 = s;
    }

    @Internal
    public void setFReserved(byte b) {
        this.field_19_fReserved = b;
    }

    @Internal
    public void setGrf(int i) {
        this.field_7_grf = i;
    }

    @Internal
    public void setLcb(int i) {
        this.field_1_lcb = i;
    }

    @Internal
    public void setMm(short s) {
        this.field_3_mm = s;
    }

    @Internal
    public void setMmPM(int i) {
        this.field_9_mmPM = i;
    }

    @Internal
    public void setMx(int i) {
        this.field_13_mx = i;
    }

    @Internal
    public void setMy(int i) {
        this.field_14_my = i;
    }

    @Internal
    public void setPadding(int i) {
        this.field_8_padding = i;
    }

    @Internal
    public void setPadding2(int i) {
        this.field_10_padding2 = i;
    }

    @Internal
    public void setSwHMF(short s) {
        this.field_6_swHMF = s;
    }

    @Internal
    public void setXExt(short s) {
        this.field_4_xExt = s;
    }

    @Internal
    public void setYExt(short s) {
        this.field_5_yExt = s;
    }

    public String toString() {
        return "[PICF]\n    .lcb                  =  (" + getLcb() + " )\n    .cbHeader             =  (" + getCbHeader() + " )\n    .mm                   =  (" + ((int) getMm()) + " )\n    .xExt                 =  (" + ((int) getXExt()) + " )\n    .yExt                 =  (" + ((int) getYExt()) + " )\n    .swHMF                =  (" + ((int) getSwHMF()) + " )\n    .grf                  =  (" + getGrf() + " )\n    .padding              =  (" + getPadding() + " )\n    .mmPM                 =  (" + getMmPM() + " )\n    .padding2             =  (" + getPadding2() + " )\n    .dxaGoal              =  (" + ((int) getDxaGoal()) + " )\n    .dyaGoal              =  (" + ((int) getDyaGoal()) + " )\n    .mx                   =  (" + getMx() + " )\n    .my                   =  (" + getMy() + " )\n    .dxaReserved1         =  (" + ((int) getDxaReserved1()) + " )\n    .dyaReserved1         =  (" + ((int) getDyaReserved1()) + " )\n    .dxaReserved2         =  (" + ((int) getDxaReserved2()) + " )\n    .dyaReserved2         =  (" + ((int) getDyaReserved2()) + " )\n    .fReserved            =  (" + ((int) getFReserved()) + " )\n    .bpp                  =  (" + ((int) getBpp()) + " )\n    .brcTop80             =  (" + Arrays.toString(getBrcTop80()) + " )\n    .brcLeft80            =  (" + Arrays.toString(getBrcLeft80()) + " )\n    .brcBottom80          =  (" + Arrays.toString(getBrcBottom80()) + " )\n    .brcRight80           =  (" + Arrays.toString(getBrcRight80()) + " )\n    .dxaReserved3         =  (" + ((int) getDxaReserved3()) + " )\n    .dyaReserved3         =  (" + ((int) getDyaReserved3()) + " )\n    .cProps               =  (" + ((int) getCProps()) + " )\n[/PICF]\n";
    }

    public byte[] serialize() {
        byte[] bArr = new byte[getSize()];
        serialize(bArr, 0);
        return bArr;
    }
}
