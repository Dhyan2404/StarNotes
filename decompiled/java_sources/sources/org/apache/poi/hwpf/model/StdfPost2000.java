package org.apache.poi.hwpf.model;

import java.util.Objects;
import org.apache.poi.hwpf.model.types.StdfPost2000AbstractType;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
class StdfPost2000 extends StdfPost2000AbstractType {
    public StdfPost2000() {
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        StdfPost2000 stdfPost2000 = (StdfPost2000) obj;
        return this.field_1_info1 == stdfPost2000.field_1_info1 && this.field_2_rsid == stdfPost2000.field_2_rsid && this.field_3_info3 == stdfPost2000.field_3_info3;
    }

    public int hashCode() {
        return Objects.hash(Short.valueOf(this.field_1_info1), Long.valueOf(this.field_2_rsid), Short.valueOf(this.field_3_info3));
    }

    public byte[] serialize() {
        byte[] bArr = new byte[StdfPost2000AbstractType.getSize()];
        serialize(bArr, 0);
        return bArr;
    }

    public StdfPost2000(byte[] bArr, int i) {
        fillFields(bArr, i);
    }
}
