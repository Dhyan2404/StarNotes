package org.apache.poi.hwpf.model;

import java.util.Objects;
import org.apache.poi.hwpf.model.types.StdfBaseAbstractType;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
class StdfBase extends StdfBaseAbstractType {
    public StdfBase() {
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        StdfBase stdfBase = (StdfBase) obj;
        return this.field_1_info1 == stdfBase.field_1_info1 && this.field_2_info2 == stdfBase.field_2_info2 && this.field_3_info3 == stdfBase.field_3_info3 && this.field_4_bchUpe == stdfBase.field_4_bchUpe && this.field_5_grfstd == stdfBase.field_5_grfstd;
    }

    public int hashCode() {
        return Objects.hash(Short.valueOf(this.field_1_info1), Short.valueOf(this.field_2_info2), Short.valueOf(this.field_3_info3), Integer.valueOf(this.field_4_bchUpe), Short.valueOf(this.field_5_grfstd));
    }

    public byte[] serialize() {
        byte[] bArr = new byte[StdfBaseAbstractType.getSize()];
        serialize(bArr, 0);
        return bArr;
    }

    public StdfBase(byte[] bArr, int i) {
        fillFields(bArr, i);
    }
}
