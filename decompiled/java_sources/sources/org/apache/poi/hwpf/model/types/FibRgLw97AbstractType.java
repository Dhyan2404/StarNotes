package org.apache.poi.hwpf.model.types;

import java.util.Objects;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;

@Internal
/* loaded from: classes12.dex */
public abstract class FibRgLw97AbstractType {
    protected int field_10_ccpTxbx;
    protected int field_11_ccpHdrTxbx;

    @Deprecated
    protected int field_12_reserved4;

    @Deprecated
    protected int field_13_reserved5;

    @Deprecated
    protected int field_14_reserved6;

    @Deprecated
    protected int field_15_reserved7;

    @Deprecated
    protected int field_16_reserved8;

    @Deprecated
    protected int field_17_reserved9;

    @Deprecated
    protected int field_18_reserved10;

    @Deprecated
    protected int field_19_reserved11;
    protected int field_1_cbMac;

    @Deprecated
    protected int field_20_reserved12;

    @Deprecated
    protected int field_21_reserved13;

    @Deprecated
    protected int field_22_reserved14;

    @Deprecated
    protected int field_2_reserved1;

    @Deprecated
    protected int field_3_reserved2;
    protected int field_4_ccpText;
    protected int field_5_ccpFtn;
    protected int field_6_ccpHdd;

    @Deprecated
    protected int field_7_reserved3;
    protected int field_8_ccpAtn;
    protected int field_9_ccpEdn;

    public static int getSize() {
        return 88;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        FibRgLw97AbstractType fibRgLw97AbstractType = (FibRgLw97AbstractType) obj;
        return this.field_1_cbMac == fibRgLw97AbstractType.field_1_cbMac && this.field_2_reserved1 == fibRgLw97AbstractType.field_2_reserved1 && this.field_3_reserved2 == fibRgLw97AbstractType.field_3_reserved2 && this.field_4_ccpText == fibRgLw97AbstractType.field_4_ccpText && this.field_5_ccpFtn == fibRgLw97AbstractType.field_5_ccpFtn && this.field_6_ccpHdd == fibRgLw97AbstractType.field_6_ccpHdd && this.field_7_reserved3 == fibRgLw97AbstractType.field_7_reserved3 && this.field_8_ccpAtn == fibRgLw97AbstractType.field_8_ccpAtn && this.field_9_ccpEdn == fibRgLw97AbstractType.field_9_ccpEdn && this.field_10_ccpTxbx == fibRgLw97AbstractType.field_10_ccpTxbx && this.field_11_ccpHdrTxbx == fibRgLw97AbstractType.field_11_ccpHdrTxbx && this.field_12_reserved4 == fibRgLw97AbstractType.field_12_reserved4 && this.field_13_reserved5 == fibRgLw97AbstractType.field_13_reserved5 && this.field_14_reserved6 == fibRgLw97AbstractType.field_14_reserved6 && this.field_15_reserved7 == fibRgLw97AbstractType.field_15_reserved7 && this.field_16_reserved8 == fibRgLw97AbstractType.field_16_reserved8 && this.field_17_reserved9 == fibRgLw97AbstractType.field_17_reserved9 && this.field_18_reserved10 == fibRgLw97AbstractType.field_18_reserved10 && this.field_19_reserved11 == fibRgLw97AbstractType.field_19_reserved11 && this.field_20_reserved12 == fibRgLw97AbstractType.field_20_reserved12 && this.field_21_reserved13 == fibRgLw97AbstractType.field_21_reserved13 && this.field_22_reserved14 == fibRgLw97AbstractType.field_22_reserved14;
    }

    public void fillFields(byte[] bArr, int i) {
        this.field_1_cbMac = LittleEndian.getInt(bArr, i + 0);
        this.field_2_reserved1 = LittleEndian.getInt(bArr, i + 4);
        this.field_3_reserved2 = LittleEndian.getInt(bArr, i + 8);
        this.field_4_ccpText = LittleEndian.getInt(bArr, i + 12);
        this.field_5_ccpFtn = LittleEndian.getInt(bArr, i + 16);
        this.field_6_ccpHdd = LittleEndian.getInt(bArr, i + 20);
        this.field_7_reserved3 = LittleEndian.getInt(bArr, i + 24);
        this.field_8_ccpAtn = LittleEndian.getInt(bArr, i + 28);
        this.field_9_ccpEdn = LittleEndian.getInt(bArr, i + 32);
        this.field_10_ccpTxbx = LittleEndian.getInt(bArr, i + 36);
        this.field_11_ccpHdrTxbx = LittleEndian.getInt(bArr, i + 40);
        this.field_12_reserved4 = LittleEndian.getInt(bArr, i + 44);
        this.field_13_reserved5 = LittleEndian.getInt(bArr, i + 48);
        this.field_14_reserved6 = LittleEndian.getInt(bArr, i + 52);
        this.field_15_reserved7 = LittleEndian.getInt(bArr, i + 56);
        this.field_16_reserved8 = LittleEndian.getInt(bArr, i + 60);
        this.field_17_reserved9 = LittleEndian.getInt(bArr, i + 64);
        this.field_18_reserved10 = LittleEndian.getInt(bArr, i + 68);
        this.field_19_reserved11 = LittleEndian.getInt(bArr, i + 72);
        this.field_20_reserved12 = LittleEndian.getInt(bArr, i + 76);
        this.field_21_reserved13 = LittleEndian.getInt(bArr, i + 80);
        this.field_22_reserved14 = LittleEndian.getInt(bArr, i + 84);
    }

    @Internal
    public int getCbMac() {
        return this.field_1_cbMac;
    }

    @Internal
    public int getCcpAtn() {
        return this.field_8_ccpAtn;
    }

    @Internal
    public int getCcpEdn() {
        return this.field_9_ccpEdn;
    }

    @Internal
    public int getCcpFtn() {
        return this.field_5_ccpFtn;
    }

    @Internal
    public int getCcpHdd() {
        return this.field_6_ccpHdd;
    }

    @Internal
    public int getCcpHdrTxbx() {
        return this.field_11_ccpHdrTxbx;
    }

    @Internal
    public int getCcpText() {
        return this.field_4_ccpText;
    }

    @Internal
    public int getCcpTxbx() {
        return this.field_10_ccpTxbx;
    }

    @Internal
    public int getReserved1() {
        return this.field_2_reserved1;
    }

    @Internal
    public int getReserved10() {
        return this.field_18_reserved10;
    }

    @Internal
    public int getReserved11() {
        return this.field_19_reserved11;
    }

    @Internal
    public int getReserved12() {
        return this.field_20_reserved12;
    }

    @Internal
    public int getReserved13() {
        return this.field_21_reserved13;
    }

    @Internal
    public int getReserved14() {
        return this.field_22_reserved14;
    }

    @Internal
    public int getReserved2() {
        return this.field_3_reserved2;
    }

    @Internal
    public int getReserved3() {
        return this.field_7_reserved3;
    }

    @Internal
    public int getReserved4() {
        return this.field_12_reserved4;
    }

    @Internal
    public int getReserved5() {
        return this.field_13_reserved5;
    }

    @Internal
    public int getReserved6() {
        return this.field_14_reserved6;
    }

    @Internal
    public int getReserved7() {
        return this.field_15_reserved7;
    }

    @Internal
    public int getReserved8() {
        return this.field_16_reserved8;
    }

    @Internal
    public int getReserved9() {
        return this.field_17_reserved9;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.field_1_cbMac), Integer.valueOf(this.field_2_reserved1), Integer.valueOf(this.field_3_reserved2), Integer.valueOf(this.field_4_ccpText), Integer.valueOf(this.field_5_ccpFtn), Integer.valueOf(this.field_6_ccpHdd), Integer.valueOf(this.field_7_reserved3), Integer.valueOf(this.field_8_ccpAtn), Integer.valueOf(this.field_9_ccpEdn), Integer.valueOf(this.field_10_ccpTxbx), Integer.valueOf(this.field_11_ccpHdrTxbx), Integer.valueOf(this.field_12_reserved4), Integer.valueOf(this.field_13_reserved5), Integer.valueOf(this.field_14_reserved6), Integer.valueOf(this.field_15_reserved7), Integer.valueOf(this.field_16_reserved8), Integer.valueOf(this.field_17_reserved9), Integer.valueOf(this.field_18_reserved10), Integer.valueOf(this.field_19_reserved11), Integer.valueOf(this.field_20_reserved12), Integer.valueOf(this.field_21_reserved13), Integer.valueOf(this.field_22_reserved14));
    }

    public void serialize(byte[] bArr, int i) {
        LittleEndian.putInt(bArr, i + 0, this.field_1_cbMac);
        LittleEndian.putInt(bArr, i + 4, this.field_2_reserved1);
        LittleEndian.putInt(bArr, i + 8, this.field_3_reserved2);
        LittleEndian.putInt(bArr, i + 12, this.field_4_ccpText);
        LittleEndian.putInt(bArr, i + 16, this.field_5_ccpFtn);
        LittleEndian.putInt(bArr, i + 20, this.field_6_ccpHdd);
        LittleEndian.putInt(bArr, i + 24, this.field_7_reserved3);
        LittleEndian.putInt(bArr, i + 28, this.field_8_ccpAtn);
        LittleEndian.putInt(bArr, i + 32, this.field_9_ccpEdn);
        LittleEndian.putInt(bArr, i + 36, this.field_10_ccpTxbx);
        LittleEndian.putInt(bArr, i + 40, this.field_11_ccpHdrTxbx);
        LittleEndian.putInt(bArr, i + 44, this.field_12_reserved4);
        LittleEndian.putInt(bArr, i + 48, this.field_13_reserved5);
        LittleEndian.putInt(bArr, i + 52, this.field_14_reserved6);
        LittleEndian.putInt(bArr, i + 56, this.field_15_reserved7);
        LittleEndian.putInt(bArr, i + 60, this.field_16_reserved8);
        LittleEndian.putInt(bArr, i + 64, this.field_17_reserved9);
        LittleEndian.putInt(bArr, i + 68, this.field_18_reserved10);
        LittleEndian.putInt(bArr, i + 72, this.field_19_reserved11);
        LittleEndian.putInt(bArr, i + 76, this.field_20_reserved12);
        LittleEndian.putInt(bArr, i + 80, this.field_21_reserved13);
        LittleEndian.putInt(bArr, i + 84, this.field_22_reserved14);
    }

    @Internal
    public void setCbMac(int i) {
        this.field_1_cbMac = i;
    }

    @Internal
    public void setCcpAtn(int i) {
        this.field_8_ccpAtn = i;
    }

    @Internal
    public void setCcpEdn(int i) {
        this.field_9_ccpEdn = i;
    }

    @Internal
    public void setCcpFtn(int i) {
        this.field_5_ccpFtn = i;
    }

    @Internal
    public void setCcpHdd(int i) {
        this.field_6_ccpHdd = i;
    }

    @Internal
    public void setCcpHdrTxbx(int i) {
        this.field_11_ccpHdrTxbx = i;
    }

    @Internal
    public void setCcpText(int i) {
        this.field_4_ccpText = i;
    }

    @Internal
    public void setCcpTxbx(int i) {
        this.field_10_ccpTxbx = i;
    }

    @Internal
    public void setReserved1(int i) {
        this.field_2_reserved1 = i;
    }

    @Internal
    public void setReserved10(int i) {
        this.field_18_reserved10 = i;
    }

    @Internal
    public void setReserved11(int i) {
        this.field_19_reserved11 = i;
    }

    @Internal
    public void setReserved12(int i) {
        this.field_20_reserved12 = i;
    }

    @Internal
    public void setReserved13(int i) {
        this.field_21_reserved13 = i;
    }

    @Internal
    public void setReserved14(int i) {
        this.field_22_reserved14 = i;
    }

    @Internal
    public void setReserved2(int i) {
        this.field_3_reserved2 = i;
    }

    @Internal
    public void setReserved3(int i) {
        this.field_7_reserved3 = i;
    }

    @Internal
    public void setReserved4(int i) {
        this.field_12_reserved4 = i;
    }

    @Internal
    public void setReserved5(int i) {
        this.field_13_reserved5 = i;
    }

    @Internal
    public void setReserved6(int i) {
        this.field_14_reserved6 = i;
    }

    @Internal
    public void setReserved7(int i) {
        this.field_15_reserved7 = i;
    }

    @Internal
    public void setReserved8(int i) {
        this.field_16_reserved8 = i;
    }

    @Internal
    public void setReserved9(int i) {
        this.field_17_reserved9 = i;
    }

    public String toString() {
        return "[FibRgLw97]\n    .cbMac                =  (" + getCbMac() + " )\n    .reserved1            =  (" + getReserved1() + " )\n    .reserved2            =  (" + getReserved2() + " )\n    .ccpText              =  (" + getCcpText() + " )\n    .ccpFtn               =  (" + getCcpFtn() + " )\n    .ccpHdd               =  (" + getCcpHdd() + " )\n    .reserved3            =  (" + getReserved3() + " )\n    .ccpAtn               =  (" + getCcpAtn() + " )\n    .ccpEdn               =  (" + getCcpEdn() + " )\n    .ccpTxbx              =  (" + getCcpTxbx() + " )\n    .ccpHdrTxbx           =  (" + getCcpHdrTxbx() + " )\n    .reserved4            =  (" + getReserved4() + " )\n    .reserved5            =  (" + getReserved5() + " )\n    .reserved6            =  (" + getReserved6() + " )\n    .reserved7            =  (" + getReserved7() + " )\n    .reserved8            =  (" + getReserved8() + " )\n    .reserved9            =  (" + getReserved9() + " )\n    .reserved10           =  (" + getReserved10() + " )\n    .reserved11           =  (" + getReserved11() + " )\n    .reserved12           =  (" + getReserved12() + " )\n    .reserved13           =  (" + getReserved13() + " )\n    .reserved14           =  (" + getReserved14() + " )\n[/FibRgLw97]\n";
    }

    public byte[] serialize() {
        byte[] bArr = new byte[getSize()];
        serialize(bArr, 0);
        return bArr;
    }
}
