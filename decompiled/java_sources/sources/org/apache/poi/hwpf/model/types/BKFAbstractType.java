package org.apache.poi.hwpf.model.types;

import org.apache.poi.util.BitField;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;

@Internal
/* loaded from: classes12.dex */
public abstract class BKFAbstractType {
    protected short field_1_ibkl;
    protected short field_2_bkf_flags;
    private static final BitField itcFirst = new BitField(127);
    private static final BitField fPub = new BitField(128);
    private static final BitField itcLim = new BitField(32512);
    private static final BitField fCol = new BitField(32768);

    public BKFAbstractType() {
    }

    public static int getSize() {
        return 4;
    }

    public void fillFields(byte[] bArr, int i) {
        this.field_1_ibkl = LittleEndian.getShort(bArr, i + 0);
        this.field_2_bkf_flags = LittleEndian.getShort(bArr, i + 2);
    }

    public short getBkf_flags() {
        return this.field_2_bkf_flags;
    }

    public short getIbkl() {
        return this.field_1_ibkl;
    }

    public byte getItcFirst() {
        return (byte) itcFirst.getValue(this.field_2_bkf_flags);
    }

    public byte getItcLim() {
        return (byte) itcLim.getValue(this.field_2_bkf_flags);
    }

    public boolean isFCol() {
        return fCol.isSet(this.field_2_bkf_flags);
    }

    public boolean isFPub() {
        return fPub.isSet(this.field_2_bkf_flags);
    }

    public void serialize(byte[] bArr, int i) {
        LittleEndian.putShort(bArr, i + 0, this.field_1_ibkl);
        LittleEndian.putShort(bArr, i + 2, this.field_2_bkf_flags);
    }

    public void setBkf_flags(short s) {
        this.field_2_bkf_flags = s;
    }

    public void setFCol(boolean z) {
        this.field_2_bkf_flags = (short) fCol.setBoolean(this.field_2_bkf_flags, z);
    }

    public void setFPub(boolean z) {
        this.field_2_bkf_flags = (short) fPub.setBoolean(this.field_2_bkf_flags, z);
    }

    public void setIbkl(short s) {
        this.field_1_ibkl = s;
    }

    public void setItcFirst(byte b) {
        this.field_2_bkf_flags = (short) itcFirst.setValue(this.field_2_bkf_flags, b);
    }

    public void setItcLim(byte b) {
        this.field_2_bkf_flags = (short) itcLim.setValue(this.field_2_bkf_flags, b);
    }

    public String toString() {
        return "[BKF]\n    .ibkl                 =  (" + ((int) getIbkl()) + " )\n    .bkf_flags            =  (" + ((int) getBkf_flags()) + " )\n         .itcFirst                 = " + ((int) getItcFirst()) + "\n         .fPub                     = " + isFPub() + "\n         .itcLim                   = " + ((int) getItcLim()) + "\n         .fCol                     = " + isFCol() + "\n[/BKF]\n";
    }

    public BKFAbstractType(BKFAbstractType bKFAbstractType) {
        this.field_1_ibkl = bKFAbstractType.field_1_ibkl;
        this.field_2_bkf_flags = bKFAbstractType.field_2_bkf_flags;
    }
}
