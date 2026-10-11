package org.apache.poi.hwpf.model.types;

import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;

@Internal
/* loaded from: classes12.dex */
public abstract class FRDAbstractType {
    protected short field_1_nAuto;

    public FRDAbstractType() {
    }

    public static int getSize() {
        return 2;
    }

    public void fillFields(byte[] bArr, int i) {
        this.field_1_nAuto = LittleEndian.getShort(bArr, i + 0);
    }

    public short getNAuto() {
        return this.field_1_nAuto;
    }

    public void serialize(byte[] bArr, int i) {
        LittleEndian.putShort(bArr, i + 0, this.field_1_nAuto);
    }

    public void setNAuto(short s) {
        this.field_1_nAuto = s;
    }

    public String toString() {
        return "[FRD]\n    .nAuto                =  (" + ((int) getNAuto()) + " )\n[/FRD]\n";
    }

    public FRDAbstractType(FRDAbstractType fRDAbstractType) {
        this.field_1_nAuto = fRDAbstractType.field_1_nAuto;
    }
}
