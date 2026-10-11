package org.apache.poi.hwpf.model.types;

import java.util.Objects;
import org.apache.poi.hwpf.model.Colorref;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;

@Internal
/* loaded from: classes12.dex */
public abstract class SHDAbstractType {
    protected Colorref field_1_cvFore;
    protected Colorref field_2_cvBack;
    protected int field_3_ipat;

    public SHDAbstractType() {
        this.field_1_cvFore = new Colorref();
        this.field_2_cvBack = new Colorref();
    }

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
        SHDAbstractType sHDAbstractType = (SHDAbstractType) obj;
        return this.field_1_cvFore == sHDAbstractType.field_1_cvFore && this.field_2_cvBack == sHDAbstractType.field_2_cvBack && this.field_3_ipat == sHDAbstractType.field_3_ipat;
    }

    public void fillFields(byte[] bArr, int i) {
        this.field_1_cvFore = new Colorref(bArr, i + 0);
        this.field_2_cvBack = new Colorref(bArr, i + 4);
        this.field_3_ipat = LittleEndian.getShort(bArr, i + 8);
    }

    @Internal
    public Colorref getCvBack() {
        return this.field_2_cvBack;
    }

    @Internal
    public Colorref getCvFore() {
        return this.field_1_cvFore;
    }

    @Internal
    public int getIpat() {
        return this.field_3_ipat;
    }

    public int hashCode() {
        return Objects.hash(this.field_1_cvFore, this.field_2_cvBack, Integer.valueOf(this.field_3_ipat));
    }

    public void serialize(byte[] bArr, int i) {
        this.field_1_cvFore.serialize(bArr, i + 0);
        this.field_2_cvBack.serialize(bArr, i + 4);
        LittleEndian.putUShort(bArr, i + 8, this.field_3_ipat);
    }

    @Internal
    public void setCvBack(Colorref colorref) {
        this.field_2_cvBack = colorref;
    }

    @Internal
    public void setCvFore(Colorref colorref) {
        this.field_1_cvFore = colorref;
    }

    @Internal
    public void setIpat(int i) {
        this.field_3_ipat = i;
    }

    public String toString() {
        return "[SHD]\n    .cvFore               =  (" + getCvFore() + " )\n    .cvBack               =  (" + getCvBack() + " )\n    .ipat                 =  (" + getIpat() + " )\n[/SHD]\n";
    }

    public SHDAbstractType(SHDAbstractType sHDAbstractType) {
        Colorref colorref = sHDAbstractType.field_1_cvFore;
        this.field_1_cvFore = colorref == null ? null : colorref.copy();
        Colorref colorref2 = sHDAbstractType.field_2_cvBack;
        this.field_2_cvBack = colorref2 != null ? colorref2.copy() : null;
        this.field_3_ipat = sHDAbstractType.field_3_ipat;
    }

    public byte[] serialize() {
        byte[] bArr = new byte[getSize()];
        serialize(bArr, 0);
        return bArr;
    }
}
