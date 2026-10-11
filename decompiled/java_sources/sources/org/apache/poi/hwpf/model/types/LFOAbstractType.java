package org.apache.poi.hwpf.model.types;

import java.util.Objects;
import org.apache.poi.hwpf.model.Grfhic;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;

@Internal
/* loaded from: classes12.dex */
public abstract class LFOAbstractType {
    protected int field_1_lsid;
    protected int field_2_unused1;
    protected int field_3_unused2;
    protected byte field_4_clfolvl;
    protected byte field_5_ibstFltAutoNum;
    protected Grfhic field_6_grfhic = new Grfhic();
    protected byte field_7_unused3;

    public static int getSize() {
        return 16;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        LFOAbstractType lFOAbstractType = (LFOAbstractType) obj;
        if (this.field_1_lsid != lFOAbstractType.field_1_lsid || this.field_2_unused1 != lFOAbstractType.field_2_unused1 || this.field_3_unused2 != lFOAbstractType.field_3_unused2 || this.field_4_clfolvl != lFOAbstractType.field_4_clfolvl || this.field_5_ibstFltAutoNum != lFOAbstractType.field_5_ibstFltAutoNum) {
            return false;
        }
        Grfhic grfhic = this.field_6_grfhic;
        if (grfhic == null) {
            if (lFOAbstractType.field_6_grfhic != null) {
                return false;
            }
        } else if (!grfhic.equals(lFOAbstractType.field_6_grfhic)) {
            return false;
        }
        return this.field_7_unused3 == lFOAbstractType.field_7_unused3;
    }

    public void fillFields(byte[] bArr, int i) {
        this.field_1_lsid = LittleEndian.getInt(bArr, i + 0);
        this.field_2_unused1 = LittleEndian.getInt(bArr, i + 4);
        this.field_3_unused2 = LittleEndian.getInt(bArr, i + 8);
        this.field_4_clfolvl = bArr[i + 12];
        this.field_5_ibstFltAutoNum = bArr[i + 13];
        this.field_6_grfhic = new Grfhic(bArr, i + 14);
        this.field_7_unused3 = bArr[i + 15];
    }

    @Internal
    public byte getClfolvl() {
        return this.field_4_clfolvl;
    }

    @Internal
    public Grfhic getGrfhic() {
        return this.field_6_grfhic;
    }

    @Internal
    public byte getIbstFltAutoNum() {
        return this.field_5_ibstFltAutoNum;
    }

    @Internal
    public int getLsid() {
        return this.field_1_lsid;
    }

    @Internal
    public int getUnused1() {
        return this.field_2_unused1;
    }

    @Internal
    public int getUnused2() {
        return this.field_3_unused2;
    }

    @Internal
    public byte getUnused3() {
        return this.field_7_unused3;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.field_1_lsid), Integer.valueOf(this.field_2_unused1), Integer.valueOf(this.field_3_unused2), Byte.valueOf(this.field_4_clfolvl), Byte.valueOf(this.field_5_ibstFltAutoNum), this.field_6_grfhic, Byte.valueOf(this.field_7_unused3));
    }

    public void serialize(byte[] bArr, int i) {
        LittleEndian.putInt(bArr, i + 0, this.field_1_lsid);
        LittleEndian.putInt(bArr, i + 4, this.field_2_unused1);
        LittleEndian.putInt(bArr, i + 8, this.field_3_unused2);
        bArr[i + 12] = this.field_4_clfolvl;
        bArr[i + 13] = this.field_5_ibstFltAutoNum;
        this.field_6_grfhic.serialize(bArr, i + 14);
        bArr[i + 15] = this.field_7_unused3;
    }

    @Internal
    public void setClfolvl(byte b) {
        this.field_4_clfolvl = b;
    }

    @Internal
    public void setGrfhic(Grfhic grfhic) {
        this.field_6_grfhic = grfhic;
    }

    @Internal
    public void setIbstFltAutoNum(byte b) {
        this.field_5_ibstFltAutoNum = b;
    }

    @Internal
    public void setLsid(int i) {
        this.field_1_lsid = i;
    }

    @Internal
    public void setUnused1(int i) {
        this.field_2_unused1 = i;
    }

    @Internal
    public void setUnused2(int i) {
        this.field_3_unused2 = i;
    }

    @Internal
    public void setUnused3(byte b) {
        this.field_7_unused3 = b;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[LFO]\n    .lsid                 =  ( ");
        sb.append(this.field_1_lsid);
        sb.append(" )\n    .unused1              =  ( ");
        sb.append(this.field_2_unused1);
        sb.append(" )\n    .unused2              =  ( ");
        sb.append(this.field_3_unused2);
        sb.append(" )\n    .clfolvl              =  ( ");
        sb.append((int) this.field_4_clfolvl);
        sb.append(" )\n    .ibstFltAutoNum       =  ( ");
        sb.append((int) this.field_5_ibstFltAutoNum);
        sb.append(" )\n    .grfhic               =  ( ");
        Grfhic grfhic = this.field_6_grfhic;
        sb.append(grfhic == null ? "null" : grfhic.toString().replace("\n", "\n    "));
        sb.append(" )\n    .unused3              =  ( ");
        sb.append((int) this.field_7_unused3);
        sb.append(" )\n[/LFO]");
        return sb.toString();
    }

    public byte[] serialize() {
        byte[] bArr = new byte[getSize()];
        serialize(bArr, 0);
        return bArr;
    }
}
