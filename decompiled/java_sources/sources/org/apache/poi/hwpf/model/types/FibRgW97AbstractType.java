package org.apache.poi.hwpf.model.types;

import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;

@Internal
/* loaded from: classes12.dex */
public abstract class FibRgW97AbstractType {

    @Deprecated
    protected short field_10_reserved10;

    @Deprecated
    protected short field_11_reserved11;

    @Deprecated
    protected short field_12_reserved12;

    @Deprecated
    protected short field_13_reserved13;
    protected short field_14_lidFE;

    @Deprecated
    protected short field_1_reserved1;

    @Deprecated
    protected short field_2_reserved2;

    @Deprecated
    protected short field_3_reserved3;

    @Deprecated
    protected short field_4_reserved4;

    @Deprecated
    protected short field_5_reserved5;

    @Deprecated
    protected short field_6_reserved6;

    @Deprecated
    protected short field_7_reserved7;

    @Deprecated
    protected short field_8_reserved8;

    @Deprecated
    protected short field_9_reserved9;

    public static int getSize() {
        return 28;
    }

    public void fillFields(byte[] bArr, int i) {
        this.field_1_reserved1 = LittleEndian.getShort(bArr, i + 0);
        this.field_2_reserved2 = LittleEndian.getShort(bArr, i + 2);
        this.field_3_reserved3 = LittleEndian.getShort(bArr, i + 4);
        this.field_4_reserved4 = LittleEndian.getShort(bArr, i + 6);
        this.field_5_reserved5 = LittleEndian.getShort(bArr, i + 8);
        this.field_6_reserved6 = LittleEndian.getShort(bArr, i + 10);
        this.field_7_reserved7 = LittleEndian.getShort(bArr, i + 12);
        this.field_8_reserved8 = LittleEndian.getShort(bArr, i + 14);
        this.field_9_reserved9 = LittleEndian.getShort(bArr, i + 16);
        this.field_10_reserved10 = LittleEndian.getShort(bArr, i + 18);
        this.field_11_reserved11 = LittleEndian.getShort(bArr, i + 20);
        this.field_12_reserved12 = LittleEndian.getShort(bArr, i + 22);
        this.field_13_reserved13 = LittleEndian.getShort(bArr, i + 24);
        this.field_14_lidFE = LittleEndian.getShort(bArr, i + 26);
    }

    @Internal
    public short getLidFE() {
        return this.field_14_lidFE;
    }

    @Internal
    public short getReserved1() {
        return this.field_1_reserved1;
    }

    @Internal
    public short getReserved10() {
        return this.field_10_reserved10;
    }

    @Internal
    public short getReserved11() {
        return this.field_11_reserved11;
    }

    @Internal
    public short getReserved12() {
        return this.field_12_reserved12;
    }

    @Internal
    public short getReserved13() {
        return this.field_13_reserved13;
    }

    @Internal
    public short getReserved2() {
        return this.field_2_reserved2;
    }

    @Internal
    public short getReserved3() {
        return this.field_3_reserved3;
    }

    @Internal
    public short getReserved4() {
        return this.field_4_reserved4;
    }

    @Internal
    public short getReserved5() {
        return this.field_5_reserved5;
    }

    @Internal
    public short getReserved6() {
        return this.field_6_reserved6;
    }

    @Internal
    public short getReserved7() {
        return this.field_7_reserved7;
    }

    @Internal
    public short getReserved8() {
        return this.field_8_reserved8;
    }

    @Internal
    public short getReserved9() {
        return this.field_9_reserved9;
    }

    public void serialize(byte[] bArr, int i) {
        LittleEndian.putShort(bArr, i + 0, this.field_1_reserved1);
        LittleEndian.putShort(bArr, i + 2, this.field_2_reserved2);
        LittleEndian.putShort(bArr, i + 4, this.field_3_reserved3);
        LittleEndian.putShort(bArr, i + 6, this.field_4_reserved4);
        LittleEndian.putShort(bArr, i + 8, this.field_5_reserved5);
        LittleEndian.putShort(bArr, i + 10, this.field_6_reserved6);
        LittleEndian.putShort(bArr, i + 12, this.field_7_reserved7);
        LittleEndian.putShort(bArr, i + 14, this.field_8_reserved8);
        LittleEndian.putShort(bArr, i + 16, this.field_9_reserved9);
        LittleEndian.putShort(bArr, i + 18, this.field_10_reserved10);
        LittleEndian.putShort(bArr, i + 20, this.field_11_reserved11);
        LittleEndian.putShort(bArr, i + 22, this.field_12_reserved12);
        LittleEndian.putShort(bArr, i + 24, this.field_13_reserved13);
        LittleEndian.putShort(bArr, i + 26, this.field_14_lidFE);
    }

    @Internal
    public void setLidFE(short s) {
        this.field_14_lidFE = s;
    }

    @Internal
    public void setReserved1(short s) {
        this.field_1_reserved1 = s;
    }

    @Internal
    public void setReserved10(short s) {
        this.field_10_reserved10 = s;
    }

    @Internal
    public void setReserved11(short s) {
        this.field_11_reserved11 = s;
    }

    @Internal
    public void setReserved12(short s) {
        this.field_12_reserved12 = s;
    }

    @Internal
    public void setReserved13(short s) {
        this.field_13_reserved13 = s;
    }

    @Internal
    public void setReserved2(short s) {
        this.field_2_reserved2 = s;
    }

    @Internal
    public void setReserved3(short s) {
        this.field_3_reserved3 = s;
    }

    @Internal
    public void setReserved4(short s) {
        this.field_4_reserved4 = s;
    }

    @Internal
    public void setReserved5(short s) {
        this.field_5_reserved5 = s;
    }

    @Internal
    public void setReserved6(short s) {
        this.field_6_reserved6 = s;
    }

    @Internal
    public void setReserved7(short s) {
        this.field_7_reserved7 = s;
    }

    @Internal
    public void setReserved8(short s) {
        this.field_8_reserved8 = s;
    }

    @Internal
    public void setReserved9(short s) {
        this.field_9_reserved9 = s;
    }

    public String toString() {
        return "[FibRgW97]\n    .reserved1            =  (" + ((int) getReserved1()) + " )\n    .reserved2            =  (" + ((int) getReserved2()) + " )\n    .reserved3            =  (" + ((int) getReserved3()) + " )\n    .reserved4            =  (" + ((int) getReserved4()) + " )\n    .reserved5            =  (" + ((int) getReserved5()) + " )\n    .reserved6            =  (" + ((int) getReserved6()) + " )\n    .reserved7            =  (" + ((int) getReserved7()) + " )\n    .reserved8            =  (" + ((int) getReserved8()) + " )\n    .reserved9            =  (" + ((int) getReserved9()) + " )\n    .reserved10           =  (" + ((int) getReserved10()) + " )\n    .reserved11           =  (" + ((int) getReserved11()) + " )\n    .reserved12           =  (" + ((int) getReserved12()) + " )\n    .reserved13           =  (" + ((int) getReserved13()) + " )\n    .lidFE                =  (" + ((int) getLidFE()) + " )\n[/FibRgW97]\n";
    }

    public byte[] serialize() {
        byte[] bArr = new byte[getSize()];
        serialize(bArr, 0);
        return bArr;
    }
}
