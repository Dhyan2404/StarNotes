package org.apache.poi.hwpf.model.types;

import java.util.Arrays;
import org.apache.poi.hwpf.model.Grfhic;
import org.apache.poi.util.BitField;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;

@Internal
/* loaded from: classes12.dex */
public abstract class LSTFAbstractType {
    protected int field_1_lsid;
    protected int field_2_tplc;
    protected byte field_4_flags;
    private static final BitField fSimpleList = new BitField(1);
    private static final BitField unused1 = new BitField(2);
    private static final BitField fAutoNum = new BitField(4);
    private static final BitField unused2 = new BitField(8);
    private static final BitField fHybrid = new BitField(16);
    private static final BitField reserved1 = new BitField(224);
    protected short[] field_3_rgistdPara = new short[0];
    protected Grfhic field_5_grfhic = new Grfhic();

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
        LSTFAbstractType lSTFAbstractType = (LSTFAbstractType) obj;
        if (this.field_1_lsid != lSTFAbstractType.field_1_lsid || this.field_2_tplc != lSTFAbstractType.field_2_tplc || !Arrays.equals(this.field_3_rgistdPara, lSTFAbstractType.field_3_rgistdPara) || this.field_4_flags != lSTFAbstractType.field_4_flags) {
            return false;
        }
        Grfhic grfhic = this.field_5_grfhic;
        if (grfhic == null) {
            if (lSTFAbstractType.field_5_grfhic != null) {
                return false;
            }
        } else if (!grfhic.equals(lSTFAbstractType.field_5_grfhic)) {
            return false;
        }
        return true;
    }

    public void fillFields(byte[] bArr, int i) {
        this.field_1_lsid = LittleEndian.getInt(bArr, i + 0);
        this.field_2_tplc = LittleEndian.getInt(bArr, i + 4);
        this.field_3_rgistdPara = LittleEndian.getShortArray(bArr, i + 8, 18);
        this.field_4_flags = bArr[i + 26];
        this.field_5_grfhic = new Grfhic(bArr, i + 27);
    }

    @Internal
    public byte getFlags() {
        return this.field_4_flags;
    }

    @Internal
    public Grfhic getGrfhic() {
        return this.field_5_grfhic;
    }

    @Internal
    public int getLsid() {
        return this.field_1_lsid;
    }

    @Internal
    @Deprecated
    public byte getReserved1() {
        return (byte) reserved1.getValue(this.field_4_flags);
    }

    @Internal
    public short[] getRgistdPara() {
        return this.field_3_rgistdPara;
    }

    @Internal
    public int getTplc() {
        return this.field_2_tplc;
    }

    public int hashCode() {
        return Arrays.deepHashCode(new Object[]{Integer.valueOf(this.field_1_lsid), Integer.valueOf(this.field_2_tplc), this.field_3_rgistdPara, Byte.valueOf(this.field_4_flags), this.field_5_grfhic});
    }

    @Internal
    public boolean isFAutoNum() {
        return fAutoNum.isSet(this.field_4_flags);
    }

    @Internal
    public boolean isFHybrid() {
        return fHybrid.isSet(this.field_4_flags);
    }

    @Internal
    public boolean isFSimpleList() {
        return fSimpleList.isSet(this.field_4_flags);
    }

    @Internal
    @Deprecated
    public boolean isUnused1() {
        return unused1.isSet(this.field_4_flags);
    }

    @Internal
    @Deprecated
    public boolean isUnused2() {
        return unused2.isSet(this.field_4_flags);
    }

    public void serialize(byte[] bArr, int i) {
        LittleEndian.putInt(bArr, i + 0, this.field_1_lsid);
        LittleEndian.putInt(bArr, i + 4, this.field_2_tplc);
        LittleEndian.putShortArray(bArr, i + 8, this.field_3_rgistdPara);
        bArr[i + 26] = this.field_4_flags;
        this.field_5_grfhic.serialize(bArr, i + 27);
    }

    @Internal
    public void setFAutoNum(boolean z) {
        this.field_4_flags = (byte) fAutoNum.setBoolean(this.field_4_flags, z);
    }

    @Internal
    public void setFHybrid(boolean z) {
        this.field_4_flags = (byte) fHybrid.setBoolean(this.field_4_flags, z);
    }

    @Internal
    public void setFSimpleList(boolean z) {
        this.field_4_flags = (byte) fSimpleList.setBoolean(this.field_4_flags, z);
    }

    @Internal
    public void setFlags(byte b) {
        this.field_4_flags = b;
    }

    @Internal
    public void setGrfhic(Grfhic grfhic) {
        this.field_5_grfhic = grfhic;
    }

    @Internal
    public void setLsid(int i) {
        this.field_1_lsid = i;
    }

    @Internal
    public void setReserved1(byte b) {
        this.field_4_flags = (byte) reserved1.setValue(this.field_4_flags, b);
    }

    @Internal
    public void setRgistdPara(short[] sArr) {
        this.field_3_rgistdPara = sArr;
    }

    @Internal
    public void setTplc(int i) {
        this.field_2_tplc = i;
    }

    @Internal
    public void setUnused1(boolean z) {
        this.field_4_flags = (byte) unused1.setBoolean(this.field_4_flags, z);
    }

    @Internal
    public void setUnused2(boolean z) {
        this.field_4_flags = (byte) unused2.setBoolean(this.field_4_flags, z);
    }

    public String toString() {
        return "[LSTF]\n    .lsid                 =  (" + getLsid() + " )\n    .tplc                 =  (" + getTplc() + " )\n    .rgistdPara           =  (" + Arrays.toString(getRgistdPara()) + " )\n    .flags                =  (" + ((int) getFlags()) + " )\n         .fSimpleList              = " + isFSimpleList() + "\n         .unused1                  = " + isUnused1() + "\n         .fAutoNum                 = " + isFAutoNum() + "\n         .unused2                  = " + isUnused2() + "\n         .fHybrid                  = " + isFHybrid() + "\n         .reserved1                = " + ((int) getReserved1()) + "\n    .grfhic               =  (" + getGrfhic() + " )\n[/LSTF]\n";
    }

    public byte[] serialize() {
        byte[] bArr = new byte[getSize()];
        serialize(bArr, 0);
        return bArr;
    }
}
