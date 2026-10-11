package org.apache.poi.hwpf.model;

import java.util.Objects;
import org.apache.poi.common.Duplicatable;
import org.apache.poi.hwpf.model.types.BKFAbstractType;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public final class BookmarkFirstDescriptor extends BKFAbstractType implements Duplicatable {
    public BookmarkFirstDescriptor() {
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || BookmarkFirstDescriptor.class != obj.getClass()) {
            return false;
        }
        BookmarkFirstDescriptor bookmarkFirstDescriptor = (BookmarkFirstDescriptor) obj;
        return this.field_1_ibkl == bookmarkFirstDescriptor.field_1_ibkl && this.field_2_bkf_flags == bookmarkFirstDescriptor.field_2_bkf_flags;
    }

    public int hashCode() {
        return Objects.hash(Short.valueOf(this.field_1_ibkl), Short.valueOf(this.field_2_bkf_flags));
    }

    public boolean isEmpty() {
        return this.field_1_ibkl == 0 && this.field_2_bkf_flags == 0;
    }

    @Override // org.apache.poi.hwpf.model.types.BKFAbstractType
    public String toString() {
        return isEmpty() ? "[BKF] EMPTY" : super.toString();
    }

    public BookmarkFirstDescriptor(BookmarkFirstDescriptor bookmarkFirstDescriptor) {
        super(bookmarkFirstDescriptor);
    }

    @Override // org.apache.poi.common.Duplicatable
    public BookmarkFirstDescriptor copy() {
        return new BookmarkFirstDescriptor(this);
    }

    public BookmarkFirstDescriptor(byte[] bArr, int i) {
        fillFields(bArr, i);
    }
}
