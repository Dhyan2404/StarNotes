package org.apache.poi.hwpf.model.types;

import net.p110sf.saxon.ma.json.JsonParser;
import org.apache.poi.util.BitField;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;

@Internal
/* loaded from: classes12.dex */
public abstract class FSPAAbstractType {
    protected int field_1_spid;
    protected int field_2_xaLeft;
    protected int field_3_yaTop;
    protected int field_4_xaRight;
    protected int field_5_yaBottom;
    protected short field_6_flags;
    protected int field_7_cTxbx;
    private static BitField fHdr = new BitField(1);

    /* renamed from: bx */
    private static BitField f111447bx = new BitField(6);

    /* renamed from: by */
    private static BitField f111448by = new BitField(24);

    /* renamed from: wr */
    private static BitField f111449wr = new BitField(JsonParser.DUPLICATES_SPECIFIED);
    private static BitField wrk = new BitField(7680);
    private static BitField fRcaSimple = new BitField(8192);
    private static BitField fBelowText = new BitField(16384);
    private static BitField fAnchorLock = new BitField(32768);

    public static int getSize() {
        return 26;
    }

    public void fillFields(byte[] bArr, int i) {
        this.field_1_spid = LittleEndian.getInt(bArr, i + 0);
        this.field_2_xaLeft = LittleEndian.getInt(bArr, i + 4);
        this.field_3_yaTop = LittleEndian.getInt(bArr, i + 8);
        this.field_4_xaRight = LittleEndian.getInt(bArr, i + 12);
        this.field_5_yaBottom = LittleEndian.getInt(bArr, i + 16);
        this.field_6_flags = LittleEndian.getShort(bArr, i + 20);
        this.field_7_cTxbx = LittleEndian.getInt(bArr, i + 22);
    }

    @Internal
    public byte getBx() {
        return (byte) f111447bx.getValue(this.field_6_flags);
    }

    @Internal
    public byte getBy() {
        return (byte) f111448by.getValue(this.field_6_flags);
    }

    @Internal
    public int getCTxbx() {
        return this.field_7_cTxbx;
    }

    @Internal
    public short getFlags() {
        return this.field_6_flags;
    }

    @Internal
    public int getSpid() {
        return this.field_1_spid;
    }

    @Internal
    public byte getWr() {
        return (byte) f111449wr.getValue(this.field_6_flags);
    }

    @Internal
    public byte getWrk() {
        return (byte) wrk.getValue(this.field_6_flags);
    }

    @Internal
    public int getXaLeft() {
        return this.field_2_xaLeft;
    }

    @Internal
    public int getXaRight() {
        return this.field_4_xaRight;
    }

    @Internal
    public int getYaBottom() {
        return this.field_5_yaBottom;
    }

    @Internal
    public int getYaTop() {
        return this.field_3_yaTop;
    }

    @Internal
    public boolean isFAnchorLock() {
        return fAnchorLock.isSet(this.field_6_flags);
    }

    @Internal
    public boolean isFBelowText() {
        return fBelowText.isSet(this.field_6_flags);
    }

    @Internal
    public boolean isFHdr() {
        return fHdr.isSet(this.field_6_flags);
    }

    @Internal
    public boolean isFRcaSimple() {
        return fRcaSimple.isSet(this.field_6_flags);
    }

    public void serialize(byte[] bArr, int i) {
        LittleEndian.putInt(bArr, i + 0, this.field_1_spid);
        LittleEndian.putInt(bArr, i + 4, this.field_2_xaLeft);
        LittleEndian.putInt(bArr, i + 8, this.field_3_yaTop);
        LittleEndian.putInt(bArr, i + 12, this.field_4_xaRight);
        LittleEndian.putInt(bArr, i + 16, this.field_5_yaBottom);
        LittleEndian.putShort(bArr, i + 20, this.field_6_flags);
        LittleEndian.putInt(bArr, i + 22, this.field_7_cTxbx);
    }

    @Internal
    public void setBx(byte b) {
        this.field_6_flags = (short) f111447bx.setValue(this.field_6_flags, b);
    }

    @Internal
    public void setBy(byte b) {
        this.field_6_flags = (short) f111448by.setValue(this.field_6_flags, b);
    }

    @Internal
    public void setCTxbx(int i) {
        this.field_7_cTxbx = i;
    }

    @Internal
    public void setFAnchorLock(boolean z) {
        this.field_6_flags = (short) fAnchorLock.setBoolean(this.field_6_flags, z);
    }

    @Internal
    public void setFBelowText(boolean z) {
        this.field_6_flags = (short) fBelowText.setBoolean(this.field_6_flags, z);
    }

    @Internal
    public void setFHdr(boolean z) {
        this.field_6_flags = (short) fHdr.setBoolean(this.field_6_flags, z);
    }

    @Internal
    public void setFRcaSimple(boolean z) {
        this.field_6_flags = (short) fRcaSimple.setBoolean(this.field_6_flags, z);
    }

    @Internal
    public void setFlags(short s) {
        this.field_6_flags = s;
    }

    @Internal
    public void setSpid(int i) {
        this.field_1_spid = i;
    }

    @Internal
    public void setWr(byte b) {
        this.field_6_flags = (short) f111449wr.setValue(this.field_6_flags, b);
    }

    @Internal
    public void setWrk(byte b) {
        this.field_6_flags = (short) wrk.setValue(this.field_6_flags, b);
    }

    @Internal
    public void setXaLeft(int i) {
        this.field_2_xaLeft = i;
    }

    @Internal
    public void setXaRight(int i) {
        this.field_4_xaRight = i;
    }

    @Internal
    public void setYaBottom(int i) {
        this.field_5_yaBottom = i;
    }

    @Internal
    public void setYaTop(int i) {
        this.field_3_yaTop = i;
    }

    public String toString() {
        return "[FSPA]\n    .spid                 =  (" + getSpid() + " )\n    .xaLeft               =  (" + getXaLeft() + " )\n    .yaTop                =  (" + getYaTop() + " )\n    .xaRight              =  (" + getXaRight() + " )\n    .yaBottom             =  (" + getYaBottom() + " )\n    .flags                =  (" + ((int) getFlags()) + " )\n         .fHdr                     = " + isFHdr() + "\n         .bx                       = " + ((int) getBx()) + "\n         .by                       = " + ((int) getBy()) + "\n         .wr                       = " + ((int) getWr()) + "\n         .wrk                      = " + ((int) getWrk()) + "\n         .fRcaSimple               = " + isFRcaSimple() + "\n         .fBelowText               = " + isFBelowText() + "\n         .fAnchorLock              = " + isFAnchorLock() + "\n    .cTxbx                =  (" + getCTxbx() + " )\n[/FSPA]\n";
    }
}
