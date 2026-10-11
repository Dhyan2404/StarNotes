package org.apache.poi.hwpf.model.types;

import org.apache.poi.util.BitField;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;

@Internal
/* loaded from: classes12.dex */
public abstract class StshifAbstractType {
    private static final BitField fHasOriginalStyle = new BitField(1);
    private static final BitField fReserved = new BitField(65534);
    protected int field_1_cstd;
    protected int field_2_cbSTDBaseInFile;
    protected int field_3_info3;
    protected int field_4_stiMaxWhenSaved;
    protected int field_5_istdMaxFixedWhenSaved;
    protected int field_6_nVerBuiltInNamesWhenSaved;
    protected short field_7_ftcAsci;
    protected short field_8_ftcFE;
    protected short field_9_ftcOther;

    public static int getSize() {
        return 18;
    }

    public void fillFields(byte[] bArr, int i) {
        this.field_1_cstd = LittleEndian.getShort(bArr, i + 0);
        this.field_2_cbSTDBaseInFile = LittleEndian.getShort(bArr, i + 2);
        this.field_3_info3 = LittleEndian.getShort(bArr, i + 4);
        this.field_4_stiMaxWhenSaved = LittleEndian.getShort(bArr, i + 6);
        this.field_5_istdMaxFixedWhenSaved = LittleEndian.getShort(bArr, i + 8);
        this.field_6_nVerBuiltInNamesWhenSaved = LittleEndian.getShort(bArr, i + 10);
        this.field_7_ftcAsci = LittleEndian.getShort(bArr, i + 12);
        this.field_8_ftcFE = LittleEndian.getShort(bArr, i + 14);
        this.field_9_ftcOther = LittleEndian.getShort(bArr, i + 16);
    }

    @Internal
    public int getCbSTDBaseInFile() {
        return this.field_2_cbSTDBaseInFile;
    }

    @Internal
    public int getCstd() {
        return this.field_1_cstd;
    }

    @Internal
    public short getFReserved() {
        return (short) fReserved.getValue(this.field_3_info3);
    }

    @Internal
    public short getFtcAsci() {
        return this.field_7_ftcAsci;
    }

    @Internal
    public short getFtcFE() {
        return this.field_8_ftcFE;
    }

    @Internal
    public short getFtcOther() {
        return this.field_9_ftcOther;
    }

    @Internal
    public int getInfo3() {
        return this.field_3_info3;
    }

    @Internal
    public int getIstdMaxFixedWhenSaved() {
        return this.field_5_istdMaxFixedWhenSaved;
    }

    @Internal
    public int getNVerBuiltInNamesWhenSaved() {
        return this.field_6_nVerBuiltInNamesWhenSaved;
    }

    @Internal
    public int getStiMaxWhenSaved() {
        return this.field_4_stiMaxWhenSaved;
    }

    @Internal
    public boolean isFHasOriginalStyle() {
        return fHasOriginalStyle.isSet(this.field_3_info3);
    }

    public void serialize(byte[] bArr, int i) {
        LittleEndian.putUShort(bArr, i + 0, this.field_1_cstd);
        LittleEndian.putUShort(bArr, i + 2, this.field_2_cbSTDBaseInFile);
        LittleEndian.putUShort(bArr, i + 4, this.field_3_info3);
        LittleEndian.putUShort(bArr, i + 6, this.field_4_stiMaxWhenSaved);
        LittleEndian.putUShort(bArr, i + 8, this.field_5_istdMaxFixedWhenSaved);
        LittleEndian.putUShort(bArr, i + 10, this.field_6_nVerBuiltInNamesWhenSaved);
        LittleEndian.putShort(bArr, i + 12, this.field_7_ftcAsci);
        LittleEndian.putShort(bArr, i + 14, this.field_8_ftcFE);
        LittleEndian.putShort(bArr, i + 16, this.field_9_ftcOther);
    }

    @Internal
    public void setCbSTDBaseInFile(int i) {
        this.field_2_cbSTDBaseInFile = i;
    }

    @Internal
    public void setCstd(int i) {
        this.field_1_cstd = i;
    }

    @Internal
    public void setFHasOriginalStyle(boolean z) {
        this.field_3_info3 = fHasOriginalStyle.setBoolean(this.field_3_info3, z);
    }

    @Internal
    public void setFReserved(short s) {
        this.field_3_info3 = fReserved.setValue(this.field_3_info3, s);
    }

    @Internal
    public void setFtcAsci(short s) {
        this.field_7_ftcAsci = s;
    }

    @Internal
    public void setFtcFE(short s) {
        this.field_8_ftcFE = s;
    }

    @Internal
    public void setFtcOther(short s) {
        this.field_9_ftcOther = s;
    }

    @Internal
    public void setInfo3(int i) {
        this.field_3_info3 = i;
    }

    @Internal
    public void setIstdMaxFixedWhenSaved(int i) {
        this.field_5_istdMaxFixedWhenSaved = i;
    }

    @Internal
    public void setNVerBuiltInNamesWhenSaved(int i) {
        this.field_6_nVerBuiltInNamesWhenSaved = i;
    }

    @Internal
    public void setStiMaxWhenSaved(int i) {
        this.field_4_stiMaxWhenSaved = i;
    }

    public String toString() {
        return "[Stshif]\n    .cstd                 =  (" + getCstd() + " )\n    .cbSTDBaseInFile      =  (" + getCbSTDBaseInFile() + " )\n    .info3                =  (" + getInfo3() + " )\n         .fHasOriginalStyle        = " + isFHasOriginalStyle() + "\n         .fReserved                = " + ((int) getFReserved()) + "\n    .stiMaxWhenSaved      =  (" + getStiMaxWhenSaved() + " )\n    .istdMaxFixedWhenSaved =  (" + getIstdMaxFixedWhenSaved() + " )\n    .nVerBuiltInNamesWhenSaved =  (" + getNVerBuiltInNamesWhenSaved() + " )\n    .ftcAsci              =  (" + ((int) getFtcAsci()) + " )\n    .ftcFE                =  (" + ((int) getFtcFE()) + " )\n    .ftcOther             =  (" + ((int) getFtcOther()) + " )\n[/Stshif]\n";
    }
}
