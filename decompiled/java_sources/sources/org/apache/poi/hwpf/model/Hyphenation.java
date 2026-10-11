package org.apache.poi.hwpf.model;

import java.util.Objects;
import org.apache.poi.common.Duplicatable;
import org.apache.poi.hwpf.model.types.HRESIAbstractType;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;

@Internal
/* loaded from: classes12.dex */
public final class Hyphenation extends HRESIAbstractType implements Duplicatable {
    public Hyphenation() {
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Hyphenation.class != obj.getClass()) {
            return false;
        }
        Hyphenation hyphenation = (Hyphenation) obj;
        return this.field_1_hres == hyphenation.field_1_hres && this.field_2_chHres == hyphenation.field_2_chHres;
    }

    public short getValue() {
        byte[] bArr = new byte[2];
        serialize(bArr, 0);
        return LittleEndian.getShort(bArr);
    }

    public int hashCode() {
        return Objects.hash(Byte.valueOf(this.field_1_hres), Byte.valueOf(this.field_2_chHres));
    }

    public boolean isEmpty() {
        return this.field_1_hres == 0 && this.field_2_chHres == 0;
    }

    @Override // org.apache.poi.hwpf.model.types.HRESIAbstractType
    public String toString() {
        return isEmpty() ? "[HRESI] EMPTY" : super.toString();
    }

    public Hyphenation(Hyphenation hyphenation) {
        super(hyphenation);
    }

    @Override // org.apache.poi.common.Duplicatable
    public Hyphenation copy() {
        return new Hyphenation(this);
    }

    public Hyphenation(short s) {
        byte[] bArr = new byte[2];
        LittleEndian.putShort(bArr, 0, s);
        fillFields(bArr, 0);
    }
}
