package org.apache.poi.hwpf.model;

import java.util.Objects;
import org.apache.poi.hwpf.OLE2InternalFileException;
import org.apache.poi.hwpf.model.types.FibBaseAbstractType;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public class FibBase extends FibBaseAbstractType {
    public static final int WORD_IDENTIFIER = 42476;

    public FibBase() {
    }

    public void checkOLE2Identifier(byte[] bArr) {
        if (this.field_1_wIdent != -23060) {
            throw new OLE2InternalFileException("OLE2 internal format", bArr);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        FibBase fibBase = (FibBase) obj;
        return this.field_10_flags2 == fibBase.field_10_flags2 && this.field_11_Chs == fibBase.field_11_Chs && this.field_12_chsTables == fibBase.field_12_chsTables && this.field_13_fcMin == fibBase.field_13_fcMin && this.field_14_fcMac == fibBase.field_14_fcMac && this.field_1_wIdent == fibBase.field_1_wIdent && this.field_2_nFib == fibBase.field_2_nFib && this.field_3_unused == fibBase.field_3_unused && this.field_4_lid == fibBase.field_4_lid && this.field_5_pnNext == fibBase.field_5_pnNext && this.field_6_flags1 == fibBase.field_6_flags1 && this.field_7_nFibBack == fibBase.field_7_nFibBack && this.field_8_lKey == fibBase.field_8_lKey && this.field_9_envr == fibBase.field_9_envr;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.field_1_wIdent), Integer.valueOf(this.field_2_nFib), Integer.valueOf(this.field_3_unused), Integer.valueOf(this.field_4_lid), Integer.valueOf(this.field_5_pnNext), Short.valueOf(this.field_6_flags1), Integer.valueOf(this.field_7_nFibBack), Integer.valueOf(this.field_8_lKey), Byte.valueOf(this.field_9_envr), Byte.valueOf(this.field_10_flags2), Short.valueOf(this.field_11_Chs), Short.valueOf(this.field_12_chsTables), Integer.valueOf(this.field_13_fcMin), Integer.valueOf(this.field_14_fcMac));
    }

    public FibBase(byte[] bArr, int i) {
        fillFields(bArr, i);
    }
}
