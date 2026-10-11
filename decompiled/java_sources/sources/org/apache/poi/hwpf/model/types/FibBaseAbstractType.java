package org.apache.poi.hwpf.model.types;

import org.apache.poi.util.BitField;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;

@Internal
/* loaded from: classes12.dex */
public abstract class FibBaseAbstractType {
    protected byte field_10_flags2;

    @Deprecated
    protected short field_11_Chs;

    @Deprecated
    protected short field_12_chsTables;

    @Deprecated
    protected int field_13_fcMin;

    @Deprecated
    protected int field_14_fcMac;
    protected int field_1_wIdent;
    protected int field_2_nFib;
    protected int field_3_unused;
    protected int field_4_lid;
    protected int field_5_pnNext;
    protected short field_6_flags1;
    protected int field_7_nFibBack;
    protected int field_8_lKey;

    @Deprecated
    protected byte field_9_envr;
    private static final BitField fDot = new BitField(1);
    private static final BitField fGlsy = new BitField(2);
    private static final BitField fComplex = new BitField(4);
    private static final BitField fHasPic = new BitField(8);
    private static final BitField cQuickSaves = new BitField(240);
    private static final BitField fEncrypted = new BitField(256);
    private static final BitField fWhichTblStm = new BitField(512);
    private static final BitField fReadOnlyRecommended = new BitField(1024);
    private static final BitField fWriteReservation = new BitField(2048);
    private static final BitField fExtChar = new BitField(4096);
    private static final BitField fLoadOverride = new BitField(8192);
    private static final BitField fFarEast = new BitField(16384);
    private static final BitField fObfuscated = new BitField(32768);
    private static final BitField fMac = new BitField(1);
    private static final BitField fEmptySpecial = new BitField(2);
    private static final BitField fLoadOverridePage = new BitField(4);
    private static final BitField reserved1 = new BitField(8);
    private static final BitField reserved2 = new BitField(16);
    private static final BitField fSpare0 = new BitField(254);

    public static int getSize() {
        return 32;
    }

    public void fillFields(byte[] bArr, int i) {
        this.field_1_wIdent = LittleEndian.getShort(bArr, i + 0);
        this.field_2_nFib = LittleEndian.getShort(bArr, i + 2);
        this.field_3_unused = LittleEndian.getShort(bArr, i + 4);
        this.field_4_lid = LittleEndian.getShort(bArr, i + 6);
        this.field_5_pnNext = LittleEndian.getShort(bArr, i + 8);
        this.field_6_flags1 = LittleEndian.getShort(bArr, i + 10);
        this.field_7_nFibBack = LittleEndian.getShort(bArr, i + 12);
        this.field_8_lKey = LittleEndian.getInt(bArr, i + 14);
        this.field_9_envr = bArr[i + 18];
        this.field_10_flags2 = bArr[i + 19];
        this.field_11_Chs = LittleEndian.getShort(bArr, i + 20);
        this.field_12_chsTables = LittleEndian.getShort(bArr, i + 22);
        this.field_13_fcMin = LittleEndian.getInt(bArr, i + 24);
        this.field_14_fcMac = LittleEndian.getInt(bArr, i + 28);
    }

    @Internal
    public byte getCQuickSaves() {
        return (byte) cQuickSaves.getValue(this.field_6_flags1);
    }

    @Internal
    public short getChs() {
        return this.field_11_Chs;
    }

    @Internal
    public short getChsTables() {
        return this.field_12_chsTables;
    }

    @Internal
    public byte getEnvr() {
        return this.field_9_envr;
    }

    @Internal
    @Deprecated
    public byte getFSpare0() {
        return (byte) fSpare0.getValue(this.field_10_flags2);
    }

    @Internal
    public int getFcMac() {
        return this.field_14_fcMac;
    }

    @Internal
    public int getFcMin() {
        return this.field_13_fcMin;
    }

    @Internal
    public short getFlags1() {
        return this.field_6_flags1;
    }

    @Internal
    public byte getFlags2() {
        return this.field_10_flags2;
    }

    @Internal
    public int getLKey() {
        return this.field_8_lKey;
    }

    @Internal
    public int getLid() {
        return this.field_4_lid;
    }

    @Internal
    public int getNFib() {
        return this.field_2_nFib;
    }

    @Internal
    public int getNFibBack() {
        return this.field_7_nFibBack;
    }

    @Internal
    public int getPnNext() {
        return this.field_5_pnNext;
    }

    @Internal
    public int getUnused() {
        return this.field_3_unused;
    }

    @Internal
    public int getWIdent() {
        return this.field_1_wIdent;
    }

    @Internal
    public boolean isFComplex() {
        return fComplex.isSet(this.field_6_flags1);
    }

    @Internal
    public boolean isFDot() {
        return fDot.isSet(this.field_6_flags1);
    }

    @Internal
    @Deprecated
    public boolean isFEmptySpecial() {
        return fEmptySpecial.isSet(this.field_10_flags2);
    }

    @Internal
    public boolean isFEncrypted() {
        return fEncrypted.isSet(this.field_6_flags1);
    }

    @Internal
    public boolean isFExtChar() {
        return fExtChar.isSet(this.field_6_flags1);
    }

    @Internal
    public boolean isFFarEast() {
        return fFarEast.isSet(this.field_6_flags1);
    }

    @Internal
    public boolean isFGlsy() {
        return fGlsy.isSet(this.field_6_flags1);
    }

    @Internal
    public boolean isFHasPic() {
        return fHasPic.isSet(this.field_6_flags1);
    }

    @Internal
    public boolean isFLoadOverride() {
        return fLoadOverride.isSet(this.field_6_flags1);
    }

    @Internal
    public boolean isFLoadOverridePage() {
        return fLoadOverridePage.isSet(this.field_10_flags2);
    }

    @Internal
    @Deprecated
    public boolean isFMac() {
        return fMac.isSet(this.field_10_flags2);
    }

    @Internal
    public boolean isFObfuscated() {
        return fObfuscated.isSet(this.field_6_flags1);
    }

    @Internal
    public boolean isFReadOnlyRecommended() {
        return fReadOnlyRecommended.isSet(this.field_6_flags1);
    }

    @Internal
    public boolean isFWhichTblStm() {
        return fWhichTblStm.isSet(this.field_6_flags1);
    }

    @Internal
    public boolean isFWriteReservation() {
        return fWriteReservation.isSet(this.field_6_flags1);
    }

    @Internal
    @Deprecated
    public boolean isReserved1() {
        return reserved1.isSet(this.field_10_flags2);
    }

    @Internal
    @Deprecated
    public boolean isReserved2() {
        return reserved2.isSet(this.field_10_flags2);
    }

    public void serialize(byte[] bArr, int i) {
        LittleEndian.putUShort(bArr, i + 0, this.field_1_wIdent);
        LittleEndian.putUShort(bArr, i + 2, this.field_2_nFib);
        LittleEndian.putUShort(bArr, i + 4, this.field_3_unused);
        LittleEndian.putUShort(bArr, i + 6, this.field_4_lid);
        LittleEndian.putUShort(bArr, i + 8, this.field_5_pnNext);
        LittleEndian.putShort(bArr, i + 10, this.field_6_flags1);
        LittleEndian.putUShort(bArr, i + 12, this.field_7_nFibBack);
        LittleEndian.putInt(bArr, i + 14, this.field_8_lKey);
        bArr[i + 18] = this.field_9_envr;
        bArr[i + 19] = this.field_10_flags2;
        LittleEndian.putShort(bArr, i + 20, this.field_11_Chs);
        LittleEndian.putShort(bArr, i + 22, this.field_12_chsTables);
        LittleEndian.putInt(bArr, i + 24, this.field_13_fcMin);
        LittleEndian.putInt(bArr, i + 28, this.field_14_fcMac);
    }

    @Internal
    public void setCQuickSaves(byte b) {
        this.field_6_flags1 = (short) cQuickSaves.setValue(this.field_6_flags1, b);
    }

    @Internal
    public void setChs(short s) {
        this.field_11_Chs = s;
    }

    @Internal
    public void setChsTables(short s) {
        this.field_12_chsTables = s;
    }

    @Internal
    public void setEnvr(byte b) {
        this.field_9_envr = b;
    }

    @Internal
    public void setFComplex(boolean z) {
        this.field_6_flags1 = (short) fComplex.setBoolean(this.field_6_flags1, z);
    }

    @Internal
    public void setFDot(boolean z) {
        this.field_6_flags1 = (short) fDot.setBoolean(this.field_6_flags1, z);
    }

    @Internal
    public void setFEmptySpecial(boolean z) {
        this.field_10_flags2 = (byte) fEmptySpecial.setBoolean(this.field_10_flags2, z);
    }

    @Internal
    public void setFEncrypted(boolean z) {
        this.field_6_flags1 = (short) fEncrypted.setBoolean(this.field_6_flags1, z);
    }

    @Internal
    public void setFExtChar(boolean z) {
        this.field_6_flags1 = (short) fExtChar.setBoolean(this.field_6_flags1, z);
    }

    @Internal
    public void setFFarEast(boolean z) {
        this.field_6_flags1 = (short) fFarEast.setBoolean(this.field_6_flags1, z);
    }

    @Internal
    public void setFGlsy(boolean z) {
        this.field_6_flags1 = (short) fGlsy.setBoolean(this.field_6_flags1, z);
    }

    @Internal
    public void setFHasPic(boolean z) {
        this.field_6_flags1 = (short) fHasPic.setBoolean(this.field_6_flags1, z);
    }

    @Internal
    public void setFLoadOverride(boolean z) {
        this.field_6_flags1 = (short) fLoadOverride.setBoolean(this.field_6_flags1, z);
    }

    @Internal
    public void setFLoadOverridePage(boolean z) {
        this.field_10_flags2 = (byte) fLoadOverridePage.setBoolean(this.field_10_flags2, z);
    }

    @Internal
    public void setFMac(boolean z) {
        this.field_10_flags2 = (byte) fMac.setBoolean(this.field_10_flags2, z);
    }

    @Internal
    public void setFObfuscated(boolean z) {
        this.field_6_flags1 = (short) fObfuscated.setBoolean(this.field_6_flags1, z);
    }

    @Internal
    public void setFReadOnlyRecommended(boolean z) {
        this.field_6_flags1 = (short) fReadOnlyRecommended.setBoolean(this.field_6_flags1, z);
    }

    @Internal
    public void setFSpare0(byte b) {
        this.field_10_flags2 = (byte) fSpare0.setValue(this.field_10_flags2, b);
    }

    @Internal
    public void setFWhichTblStm(boolean z) {
        this.field_6_flags1 = (short) fWhichTblStm.setBoolean(this.field_6_flags1, z);
    }

    @Internal
    public void setFWriteReservation(boolean z) {
        this.field_6_flags1 = (short) fWriteReservation.setBoolean(this.field_6_flags1, z);
    }

    @Internal
    public void setFcMac(int i) {
        this.field_14_fcMac = i;
    }

    @Internal
    public void setFcMin(int i) {
        this.field_13_fcMin = i;
    }

    @Internal
    public void setFlags1(short s) {
        this.field_6_flags1 = s;
    }

    @Internal
    public void setFlags2(byte b) {
        this.field_10_flags2 = b;
    }

    @Internal
    public void setLKey(int i) {
        this.field_8_lKey = i;
    }

    @Internal
    public void setLid(int i) {
        this.field_4_lid = i;
    }

    @Internal
    public void setNFib(int i) {
        this.field_2_nFib = i;
    }

    @Internal
    public void setNFibBack(int i) {
        this.field_7_nFibBack = i;
    }

    @Internal
    public void setPnNext(int i) {
        this.field_5_pnNext = i;
    }

    @Internal
    public void setReserved1(boolean z) {
        this.field_10_flags2 = (byte) reserved1.setBoolean(this.field_10_flags2, z);
    }

    @Internal
    public void setReserved2(boolean z) {
        this.field_10_flags2 = (byte) reserved2.setBoolean(this.field_10_flags2, z);
    }

    @Internal
    public void setUnused(int i) {
        this.field_3_unused = i;
    }

    @Internal
    public void setWIdent(int i) {
        this.field_1_wIdent = i;
    }

    public String toString() {
        return "[FibBase]\n    .wIdent               =  (" + getWIdent() + " )\n    .nFib                 =  (" + getNFib() + " )\n    .unused               =  (" + getUnused() + " )\n    .lid                  =  (" + getLid() + " )\n    .pnNext               =  (" + getPnNext() + " )\n    .flags1               =  (" + ((int) getFlags1()) + " )\n         .fDot                     = " + isFDot() + "\n         .fGlsy                    = " + isFGlsy() + "\n         .fComplex                 = " + isFComplex() + "\n         .fHasPic                  = " + isFHasPic() + "\n         .cQuickSaves              = " + ((int) getCQuickSaves()) + "\n         .fEncrypted               = " + isFEncrypted() + "\n         .fWhichTblStm             = " + isFWhichTblStm() + "\n         .fReadOnlyRecommended     = " + isFReadOnlyRecommended() + "\n         .fWriteReservation        = " + isFWriteReservation() + "\n         .fExtChar                 = " + isFExtChar() + "\n         .fLoadOverride            = " + isFLoadOverride() + "\n         .fFarEast                 = " + isFFarEast() + "\n         .fObfuscated              = " + isFObfuscated() + "\n    .nFibBack             =  (" + getNFibBack() + " )\n    .lKey                 =  (" + getLKey() + " )\n    .envr                 =  (" + ((int) getEnvr()) + " )\n    .flags2               =  (" + ((int) getFlags2()) + " )\n         .fMac                     = " + isFMac() + "\n         .fEmptySpecial            = " + isFEmptySpecial() + "\n         .fLoadOverridePage        = " + isFLoadOverridePage() + "\n         .reserved1                = " + isReserved1() + "\n         .reserved2                = " + isReserved2() + "\n         .fSpare0                  = " + ((int) getFSpare0()) + "\n    .Chs                  =  (" + ((int) getChs()) + " )\n    .chsTables            =  (" + ((int) getChsTables()) + " )\n    .fcMin                =  (" + getFcMin() + " )\n    .fcMac                =  (" + getFcMac() + " )\n[/FibBase]\n";
    }

    public byte[] serialize() {
        byte[] bArr = new byte[getSize()];
        serialize(bArr, 0);
        return bArr;
    }
}
