package org.apache.poi.hwpf.usermodel;

import java.util.Objects;
import org.apache.poi.common.Duplicatable;
import org.apache.poi.hwpf.model.types.TLPAbstractType;

/* loaded from: classes12.dex */
public class TableAutoformatLookSpecifier extends TLPAbstractType implements Duplicatable {
    public static final int SIZE = 4;

    public TableAutoformatLookSpecifier() {
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        TableAutoformatLookSpecifier tableAutoformatLookSpecifier = (TableAutoformatLookSpecifier) obj;
        return this.field_1_itl == tableAutoformatLookSpecifier.field_1_itl && this.field_2_tlp_flags == tableAutoformatLookSpecifier.field_2_tlp_flags;
    }

    public int hashCode() {
        return Objects.hash(Short.valueOf(this.field_1_itl), Byte.valueOf(this.field_2_tlp_flags));
    }

    public boolean isEmpty() {
        return this.field_1_itl == 0 && this.field_2_tlp_flags == 0;
    }

    public TableAutoformatLookSpecifier(TableAutoformatLookSpecifier tableAutoformatLookSpecifier) {
        super(tableAutoformatLookSpecifier);
    }

    @Override // org.apache.poi.common.Duplicatable
    public TableAutoformatLookSpecifier copy() {
        return new TableAutoformatLookSpecifier(this);
    }

    public TableAutoformatLookSpecifier(byte[] bArr, int i) {
        fillFields(bArr, i);
    }
}
