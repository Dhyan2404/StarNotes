package org.apache.poi.hwpf.model;

import java.util.Objects;
import org.apache.poi.hwpf.model.types.StshifAbstractType;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
class Stshif extends StshifAbstractType {
    public Stshif() {
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Stshif stshif = (Stshif) obj;
        return this.field_1_cstd == stshif.field_1_cstd && this.field_2_cbSTDBaseInFile == stshif.field_2_cbSTDBaseInFile && this.field_3_info3 == stshif.field_3_info3 && this.field_4_stiMaxWhenSaved == stshif.field_4_stiMaxWhenSaved && this.field_5_istdMaxFixedWhenSaved == stshif.field_5_istdMaxFixedWhenSaved && this.field_6_nVerBuiltInNamesWhenSaved == stshif.field_6_nVerBuiltInNamesWhenSaved && this.field_7_ftcAsci == stshif.field_7_ftcAsci && this.field_8_ftcFE == stshif.field_8_ftcFE && this.field_9_ftcOther == stshif.field_9_ftcOther;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.field_1_cstd), Integer.valueOf(this.field_2_cbSTDBaseInFile), Integer.valueOf(this.field_3_info3), Integer.valueOf(this.field_4_stiMaxWhenSaved), Integer.valueOf(this.field_5_istdMaxFixedWhenSaved), Integer.valueOf(this.field_6_nVerBuiltInNamesWhenSaved), Short.valueOf(this.field_7_ftcAsci), Short.valueOf(this.field_8_ftcFE), Short.valueOf(this.field_9_ftcOther));
    }

    public byte[] serialize() {
        byte[] bArr = new byte[StshifAbstractType.getSize()];
        serialize(bArr, 0);
        return bArr;
    }

    public Stshif(byte[] bArr, int i) {
        fillFields(bArr, i);
    }
}
