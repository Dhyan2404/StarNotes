package org.apache.poi.hwpf.model.types;

import java.util.Objects;
import org.apache.poi.util.BitField;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;

@Internal
/* loaded from: classes12.dex */
public abstract class LFOLVLBaseAbstractType {
    protected int field_1_iStartAt;
    protected int field_2_flags;
    private static final BitField iLvl = new BitField(15);
    private static final BitField fStartAt = new BitField(16);
    private static final BitField fFormatting = new BitField(32);
    private static final BitField grfhic = new BitField(16320);
    private static final BitField unused1 = new BitField(536854528);
    private static final BitField unused2 = new BitField(-536870912);

    public static int getSize() {
        return 8;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        LFOLVLBaseAbstractType lFOLVLBaseAbstractType = (LFOLVLBaseAbstractType) obj;
        return this.field_1_iStartAt == lFOLVLBaseAbstractType.field_1_iStartAt && this.field_2_flags == lFOLVLBaseAbstractType.field_2_flags;
    }

    public void fillFields(byte[] bArr, int i) {
        this.field_1_iStartAt = LittleEndian.getInt(bArr, i + 0);
        this.field_2_flags = LittleEndian.getInt(bArr, i + 4);
    }

    @Internal
    public int getFlags() {
        return this.field_2_flags;
    }

    @Internal
    public short getGrfhic() {
        return (short) grfhic.getValue(this.field_2_flags);
    }

    @Internal
    public byte getILvl() {
        return (byte) iLvl.getValue(this.field_2_flags);
    }

    @Internal
    public int getIStartAt() {
        return this.field_1_iStartAt;
    }

    @Internal
    @Deprecated
    public short getUnused1() {
        return (short) unused1.getValue(this.field_2_flags);
    }

    @Internal
    @Deprecated
    public byte getUnused2() {
        return (byte) unused2.getValue(this.field_2_flags);
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.field_1_iStartAt), Integer.valueOf(this.field_2_flags));
    }

    @Internal
    public boolean isFFormatting() {
        return fFormatting.isSet(this.field_2_flags);
    }

    @Internal
    public boolean isFStartAt() {
        return fStartAt.isSet(this.field_2_flags);
    }

    public void serialize(byte[] bArr, int i) {
        LittleEndian.putInt(bArr, i + 0, this.field_1_iStartAt);
        LittleEndian.putInt(bArr, i + 4, this.field_2_flags);
    }

    @Internal
    public void setFFormatting(boolean z) {
        this.field_2_flags = fFormatting.setBoolean(this.field_2_flags, z);
    }

    @Internal
    public void setFStartAt(boolean z) {
        this.field_2_flags = fStartAt.setBoolean(this.field_2_flags, z);
    }

    @Internal
    public void setFlags(int i) {
        this.field_2_flags = i;
    }

    @Internal
    public void setGrfhic(short s) {
        this.field_2_flags = grfhic.setValue(this.field_2_flags, s);
    }

    @Internal
    public void setILvl(byte b) {
        this.field_2_flags = iLvl.setValue(this.field_2_flags, b);
    }

    @Internal
    public void setIStartAt(int i) {
        this.field_1_iStartAt = i;
    }

    @Internal
    public void setUnused1(short s) {
        this.field_2_flags = unused1.setValue(this.field_2_flags, s);
    }

    @Internal
    public void setUnused2(byte b) {
        this.field_2_flags = unused2.setValue(this.field_2_flags, b);
    }

    public String toString() {
        return "[LFOLVLBase]\n    .iStartAt             =  (" + getIStartAt() + " )\n    .flags                =  (" + getFlags() + " )\n         .iLvl                     = " + ((int) getILvl()) + "\n         .fStartAt                 = " + isFStartAt() + "\n         .fFormatting              = " + isFFormatting() + "\n         .grfhic                   = " + ((int) getGrfhic()) + "\n         .unused1                  = " + ((int) getUnused1()) + "\n         .unused2                  = " + ((int) getUnused2()) + "\n[/LFOLVLBase]\n";
    }

    public byte[] serialize() {
        byte[] bArr = new byte[getSize()];
        serialize(bArr, 0);
        return bArr;
    }
}
