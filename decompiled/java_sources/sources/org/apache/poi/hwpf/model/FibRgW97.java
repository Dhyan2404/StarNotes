package org.apache.poi.hwpf.model;

import java.util.Objects;
import org.apache.poi.hwpf.model.types.FibRgW97AbstractType;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public class FibRgW97 extends FibRgW97AbstractType {
    public FibRgW97() {
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        FibRgW97 fibRgW97 = (FibRgW97) obj;
        return this.field_10_reserved10 == fibRgW97.field_10_reserved10 && this.field_11_reserved11 == fibRgW97.field_11_reserved11 && this.field_12_reserved12 == fibRgW97.field_12_reserved12 && this.field_13_reserved13 == fibRgW97.field_13_reserved13 && this.field_14_lidFE == fibRgW97.field_14_lidFE && this.field_1_reserved1 == fibRgW97.field_1_reserved1 && this.field_2_reserved2 == fibRgW97.field_2_reserved2 && this.field_3_reserved3 == fibRgW97.field_3_reserved3 && this.field_4_reserved4 == fibRgW97.field_4_reserved4 && this.field_5_reserved5 == fibRgW97.field_5_reserved5 && this.field_6_reserved6 == fibRgW97.field_6_reserved6 && this.field_7_reserved7 == fibRgW97.field_7_reserved7 && this.field_8_reserved8 == fibRgW97.field_8_reserved8 && this.field_9_reserved9 == fibRgW97.field_9_reserved9;
    }

    public int hashCode() {
        return Objects.hash(Short.valueOf(this.field_1_reserved1), Short.valueOf(this.field_2_reserved2), Short.valueOf(this.field_3_reserved3), Short.valueOf(this.field_4_reserved4), Short.valueOf(this.field_5_reserved5), Short.valueOf(this.field_6_reserved6), Short.valueOf(this.field_7_reserved7), Short.valueOf(this.field_8_reserved8), Short.valueOf(this.field_9_reserved9), Short.valueOf(this.field_10_reserved10), Short.valueOf(this.field_11_reserved11), Short.valueOf(this.field_12_reserved12), Short.valueOf(this.field_13_reserved13), Short.valueOf(this.field_14_lidFE));
    }

    public FibRgW97(byte[] bArr, int i) {
        fillFields(bArr, i);
    }
}
