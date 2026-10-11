package org.apache.poi.hwpf.model.types;

import java.util.Objects;
import org.apache.poi.util.BitField;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;

@Internal
/* loaded from: classes12.dex */
public abstract class FFDataBaseAbstractType {
    protected static final byte ITYPETXT_CALC = 0;
    public static final byte ITYPETXT_CURDATE = 0;
    public static final byte ITYPETXT_CURTIME = 0;
    public static final byte ITYPETXT_DATE = 0;
    public static final byte ITYPETXT_NUM = 0;
    public static final byte ITYPETXT_REG = 0;
    public static final byte ITYPE_CHCK = 1;
    public static final byte ITYPE_DROP = 2;
    public static final byte ITYPE_TEXT = 0;
    protected long field_1_version;
    protected short field_2_bits;
    protected int field_3_cch;
    protected int field_4_hps;
    private static final BitField iType = new BitField(3);
    private static final BitField iRes = new BitField(124);
    private static final BitField fOwnHelp = new BitField(128);
    private static final BitField fOwnStat = new BitField(256);
    private static final BitField fProt = new BitField(512);
    private static final BitField iSize = new BitField(1024);
    private static final BitField iTypeTxt = new BitField(14336);
    private static final BitField fRecalc = new BitField(16384);
    private static final BitField fHasListBox = new BitField(32768);

    public static int getSize() {
        return 10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        FFDataBaseAbstractType fFDataBaseAbstractType = (FFDataBaseAbstractType) obj;
        return this.field_1_version == fFDataBaseAbstractType.field_1_version && this.field_2_bits == fFDataBaseAbstractType.field_2_bits && this.field_3_cch == fFDataBaseAbstractType.field_3_cch && this.field_4_hps == fFDataBaseAbstractType.field_4_hps;
    }

    public void fillFields(byte[] bArr, int i) {
        this.field_1_version = LittleEndian.getUInt(bArr, i + 0);
        this.field_2_bits = LittleEndian.getShort(bArr, i + 4);
        this.field_3_cch = LittleEndian.getShort(bArr, i + 6);
        this.field_4_hps = LittleEndian.getShort(bArr, i + 8);
    }

    @Internal
    public short getBits() {
        return this.field_2_bits;
    }

    @Internal
    public int getCch() {
        return this.field_3_cch;
    }

    @Internal
    public int getHps() {
        return this.field_4_hps;
    }

    @Internal
    public byte getIRes() {
        return (byte) iRes.getValue(this.field_2_bits);
    }

    @Internal
    public byte getIType() {
        return (byte) iType.getValue(this.field_2_bits);
    }

    @Internal
    public byte getITypeTxt() {
        return (byte) iTypeTxt.getValue(this.field_2_bits);
    }

    @Internal
    public long getVersion() {
        return this.field_1_version;
    }

    public int hashCode() {
        return Objects.hash(Long.valueOf(this.field_1_version), Short.valueOf(this.field_2_bits), Integer.valueOf(this.field_3_cch), Integer.valueOf(this.field_4_hps));
    }

    @Internal
    public boolean isFHasListBox() {
        return fHasListBox.isSet(this.field_2_bits);
    }

    @Internal
    public boolean isFOwnHelp() {
        return fOwnHelp.isSet(this.field_2_bits);
    }

    @Internal
    public boolean isFOwnStat() {
        return fOwnStat.isSet(this.field_2_bits);
    }

    @Internal
    public boolean isFProt() {
        return fProt.isSet(this.field_2_bits);
    }

    @Internal
    public boolean isFRecalc() {
        return fRecalc.isSet(this.field_2_bits);
    }

    @Internal
    public boolean isISize() {
        return iSize.isSet(this.field_2_bits);
    }

    public void serialize(byte[] bArr, int i) {
        LittleEndian.putUInt(bArr, i + 0, this.field_1_version);
        LittleEndian.putShort(bArr, i + 4, this.field_2_bits);
        LittleEndian.putUShort(bArr, i + 6, this.field_3_cch);
        LittleEndian.putUShort(bArr, i + 8, this.field_4_hps);
    }

    @Internal
    public void setBits(short s) {
        this.field_2_bits = s;
    }

    @Internal
    public void setCch(int i) {
        this.field_3_cch = i;
    }

    @Internal
    public void setFHasListBox(boolean z) {
        this.field_2_bits = (short) fHasListBox.setBoolean(this.field_2_bits, z);
    }

    @Internal
    public void setFOwnHelp(boolean z) {
        this.field_2_bits = (short) fOwnHelp.setBoolean(this.field_2_bits, z);
    }

    @Internal
    public void setFOwnStat(boolean z) {
        this.field_2_bits = (short) fOwnStat.setBoolean(this.field_2_bits, z);
    }

    @Internal
    public void setFProt(boolean z) {
        this.field_2_bits = (short) fProt.setBoolean(this.field_2_bits, z);
    }

    @Internal
    public void setFRecalc(boolean z) {
        this.field_2_bits = (short) fRecalc.setBoolean(this.field_2_bits, z);
    }

    @Internal
    public void setHps(int i) {
        this.field_4_hps = i;
    }

    @Internal
    public void setIRes(byte b) {
        this.field_2_bits = (short) iRes.setValue(this.field_2_bits, b);
    }

    @Internal
    public void setISize(boolean z) {
        this.field_2_bits = (short) iSize.setBoolean(this.field_2_bits, z);
    }

    @Internal
    public void setIType(byte b) {
        this.field_2_bits = (short) iType.setValue(this.field_2_bits, b);
    }

    @Internal
    public void setITypeTxt(byte b) {
        this.field_2_bits = (short) iTypeTxt.setValue(this.field_2_bits, b);
    }

    @Internal
    public void setVersion(long j) {
        this.field_1_version = j;
    }

    public String toString() {
        return "[FFDataBase]\n    .version              =  ( " + this.field_1_version + " )\n    .bits                 =  ( " + ((int) this.field_2_bits) + " )\n         .iType                    = " + ((int) getIType()) + "\n         .iRes                     = " + ((int) getIRes()) + "\n         .fOwnHelp                 = " + isFOwnHelp() + "\n         .fOwnStat                 = " + isFOwnStat() + "\n         .fProt                    = " + isFProt() + "\n         .iSize                    = " + isISize() + "\n         .iTypeTxt                 = " + ((int) getITypeTxt()) + "\n         .fRecalc                  = " + isFRecalc() + "\n         .fHasListBox              = " + isFHasListBox() + "\n    .cch                  =  ( " + this.field_3_cch + " )\n    .hps                  =  ( " + this.field_4_hps + " )\n[/FFDataBase]";
    }

    public byte[] serialize() {
        byte[] bArr = new byte[getSize()];
        serialize(bArr, 0);
        return bArr;
    }
}
