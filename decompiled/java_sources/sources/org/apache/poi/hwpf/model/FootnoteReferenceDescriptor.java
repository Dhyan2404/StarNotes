package org.apache.poi.hwpf.model;

import java.util.Objects;
import org.apache.poi.common.Duplicatable;
import org.apache.poi.hwpf.model.types.FRDAbstractType;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public final class FootnoteReferenceDescriptor extends FRDAbstractType implements Duplicatable {
    public FootnoteReferenceDescriptor() {
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && FootnoteReferenceDescriptor.class == obj.getClass() && this.field_1_nAuto == ((FootnoteReferenceDescriptor) obj).field_1_nAuto;
    }

    public int hashCode() {
        return Objects.hash(Short.valueOf(this.field_1_nAuto));
    }

    public boolean isEmpty() {
        return this.field_1_nAuto == 0;
    }

    @Override // org.apache.poi.hwpf.model.types.FRDAbstractType
    public String toString() {
        return isEmpty() ? "[FRD] EMPTY" : super.toString();
    }

    public FootnoteReferenceDescriptor(FootnoteReferenceDescriptor footnoteReferenceDescriptor) {
        super(footnoteReferenceDescriptor);
    }

    @Override // org.apache.poi.common.Duplicatable
    public FootnoteReferenceDescriptor copy() {
        return new FootnoteReferenceDescriptor(this);
    }

    public FootnoteReferenceDescriptor(byte[] bArr, int i) {
        fillFields(bArr, i);
    }
}
