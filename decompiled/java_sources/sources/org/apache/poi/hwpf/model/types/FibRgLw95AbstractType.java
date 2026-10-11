package org.apache.poi.hwpf.model.types;

import java.util.Objects;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;

@Internal
/* loaded from: classes12.dex */
public abstract class FibRgLw95AbstractType {
    protected int field_10_ccpAtn;
    protected int field_11_ccpEdn;
    protected int field_12_ccpTxbx;
    protected int field_13_ccpHdrTxbx;

    @Deprecated
    protected int field_14_reserved5;
    protected int field_1_cbMac;

    @Deprecated
    protected int field_2_reserved1;

    @Deprecated
    protected int field_3_reserved2;

    @Deprecated
    protected int field_4_reserved3;

    @Deprecated
    protected int field_5_reserved4;
    protected int field_6_ccpText;
    protected int field_7_ccpFtn;
    protected int field_8_ccpHdd;
    protected int field_9_ccpMcr;

    public static int getSize() {
        return 56;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        FibRgLw95AbstractType fibRgLw95AbstractType = (FibRgLw95AbstractType) obj;
        return this.field_1_cbMac == fibRgLw95AbstractType.field_1_cbMac && this.field_2_reserved1 == fibRgLw95AbstractType.field_2_reserved1 && this.field_3_reserved2 == fibRgLw95AbstractType.field_3_reserved2 && this.field_4_reserved3 == fibRgLw95AbstractType.field_4_reserved3 && this.field_5_reserved4 == fibRgLw95AbstractType.field_5_reserved4 && this.field_6_ccpText == fibRgLw95AbstractType.field_6_ccpText && this.field_7_ccpFtn == fibRgLw95AbstractType.field_7_ccpFtn && this.field_8_ccpHdd == fibRgLw95AbstractType.field_8_ccpHdd && this.field_9_ccpMcr == fibRgLw95AbstractType.field_9_ccpMcr && this.field_10_ccpAtn == fibRgLw95AbstractType.field_10_ccpAtn && this.field_11_ccpEdn == fibRgLw95AbstractType.field_11_ccpEdn && this.field_12_ccpTxbx == fibRgLw95AbstractType.field_12_ccpTxbx && this.field_13_ccpHdrTxbx == fibRgLw95AbstractType.field_13_ccpHdrTxbx && this.field_14_reserved5 == fibRgLw95AbstractType.field_14_reserved5;
    }

    public void fillFields(byte[] bArr, int i) {
        this.field_1_cbMac = LittleEndian.getInt(bArr, i + 0);
        this.field_2_reserved1 = LittleEndian.getInt(bArr, i + 4);
        this.field_3_reserved2 = LittleEndian.getInt(bArr, i + 8);
        this.field_4_reserved3 = LittleEndian.getInt(bArr, i + 12);
        this.field_5_reserved4 = LittleEndian.getInt(bArr, i + 16);
        this.field_6_ccpText = LittleEndian.getInt(bArr, i + 20);
        this.field_7_ccpFtn = LittleEndian.getInt(bArr, i + 24);
        this.field_8_ccpHdd = LittleEndian.getInt(bArr, i + 28);
        this.field_9_ccpMcr = LittleEndian.getInt(bArr, i + 32);
        this.field_10_ccpAtn = LittleEndian.getInt(bArr, i + 36);
        this.field_11_ccpEdn = LittleEndian.getInt(bArr, i + 40);
        this.field_12_ccpTxbx = LittleEndian.getInt(bArr, i + 44);
        this.field_13_ccpHdrTxbx = LittleEndian.getInt(bArr, i + 48);
        this.field_14_reserved5 = LittleEndian.getInt(bArr, i + 52);
    }

    @Internal
    public int getCbMac() {
        return this.field_1_cbMac;
    }

    @Internal
    public int getCcpAtn() {
        return this.field_10_ccpAtn;
    }

    @Internal
    public int getCcpEdn() {
        return this.field_11_ccpEdn;
    }

    @Internal
    public int getCcpFtn() {
        return this.field_7_ccpFtn;
    }

    @Internal
    public int getCcpHdd() {
        return this.field_8_ccpHdd;
    }

    @Internal
    public int getCcpHdrTxbx() {
        return this.field_13_ccpHdrTxbx;
    }

    @Internal
    public int getCcpMcr() {
        return this.field_9_ccpMcr;
    }

    @Internal
    public int getCcpText() {
        return this.field_6_ccpText;
    }

    @Internal
    public int getCcpTxbx() {
        return this.field_12_ccpTxbx;
    }

    @Internal
    public int getReserved1() {
        return this.field_2_reserved1;
    }

    @Internal
    public int getReserved2() {
        return this.field_3_reserved2;
    }

    @Internal
    public int getReserved3() {
        return this.field_4_reserved3;
    }

    @Internal
    public int getReserved4() {
        return this.field_5_reserved4;
    }

    @Internal
    public int getReserved5() {
        return this.field_14_reserved5;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.field_1_cbMac), Integer.valueOf(this.field_2_reserved1), Integer.valueOf(this.field_3_reserved2), Integer.valueOf(this.field_4_reserved3), Integer.valueOf(this.field_5_reserved4), Integer.valueOf(this.field_6_ccpText), Integer.valueOf(this.field_7_ccpFtn), Integer.valueOf(this.field_8_ccpHdd), Integer.valueOf(this.field_9_ccpMcr), Integer.valueOf(this.field_10_ccpAtn), Integer.valueOf(this.field_11_ccpEdn), Integer.valueOf(this.field_12_ccpTxbx), Integer.valueOf(this.field_13_ccpHdrTxbx), Integer.valueOf(this.field_14_reserved5));
    }

    public void serialize(byte[] bArr, int i) {
        LittleEndian.putInt(bArr, i + 0, this.field_1_cbMac);
        LittleEndian.putInt(bArr, i + 4, this.field_2_reserved1);
        LittleEndian.putInt(bArr, i + 8, this.field_3_reserved2);
        LittleEndian.putInt(bArr, i + 12, this.field_4_reserved3);
        LittleEndian.putInt(bArr, i + 16, this.field_5_reserved4);
        LittleEndian.putInt(bArr, i + 20, this.field_6_ccpText);
        LittleEndian.putInt(bArr, i + 24, this.field_7_ccpFtn);
        LittleEndian.putInt(bArr, i + 28, this.field_8_ccpHdd);
        LittleEndian.putInt(bArr, i + 32, this.field_9_ccpMcr);
        LittleEndian.putInt(bArr, i + 36, this.field_10_ccpAtn);
        LittleEndian.putInt(bArr, i + 40, this.field_11_ccpEdn);
        LittleEndian.putInt(bArr, i + 44, this.field_12_ccpTxbx);
        LittleEndian.putInt(bArr, i + 48, this.field_13_ccpHdrTxbx);
        LittleEndian.putInt(bArr, i + 52, this.field_14_reserved5);
    }

    @Internal
    public void setCbMac(int i) {
        this.field_1_cbMac = i;
    }

    @Internal
    public void setCcpAtn(int i) {
        this.field_10_ccpAtn = i;
    }

    @Internal
    public void setCcpEdn(int i) {
        this.field_11_ccpEdn = i;
    }

    @Internal
    public void setCcpFtn(int i) {
        this.field_7_ccpFtn = i;
    }

    @Internal
    public void setCcpHdd(int i) {
        this.field_8_ccpHdd = i;
    }

    @Internal
    public void setCcpHdrTxbx(int i) {
        this.field_13_ccpHdrTxbx = i;
    }

    @Internal
    public void setCcpMcr(int i) {
        this.field_9_ccpMcr = i;
    }

    @Internal
    public void setCcpText(int i) {
        this.field_6_ccpText = i;
    }

    @Internal
    public void setCcpTxbx(int i) {
        this.field_12_ccpTxbx = i;
    }

    @Internal
    public void setReserved1(int i) {
        this.field_2_reserved1 = i;
    }

    @Internal
    public void setReserved2(int i) {
        this.field_3_reserved2 = i;
    }

    @Internal
    public void setReserved3(int i) {
        this.field_4_reserved3 = i;
    }

    @Internal
    public void setReserved4(int i) {
        this.field_5_reserved4 = i;
    }

    @Internal
    public void setReserved5(int i) {
        this.field_14_reserved5 = i;
    }

    public String toString() {
        return "[FibRgLw95]\n    .cbMac                =  (" + getCbMac() + " )\n    .reserved1            =  (" + getReserved1() + " )\n    .reserved2            =  (" + getReserved2() + " )\n    .reserved3            =  (" + getReserved3() + " )\n    .reserved4            =  (" + getReserved4() + " )\n    .ccpText              =  (" + getCcpText() + " )\n    .ccpFtn               =  (" + getCcpFtn() + " )\n    .ccpHdd               =  (" + getCcpHdd() + " )\n    .ccpMcr               =  (" + getCcpMcr() + " )\n    .ccpAtn               =  (" + getCcpAtn() + " )\n    .ccpEdn               =  (" + getCcpEdn() + " )\n    .ccpTxbx              =  (" + getCcpTxbx() + " )\n    .ccpHdrTxbx           =  (" + getCcpHdrTxbx() + " )\n    .reserved5            =  (" + getReserved5() + " )\n[/FibRgLw95]\n";
    }

    public byte[] serialize() {
        byte[] bArr = new byte[getSize()];
        serialize(bArr, 0);
        return bArr;
    }
}
