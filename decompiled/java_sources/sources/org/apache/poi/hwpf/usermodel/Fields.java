package org.apache.poi.hwpf.usermodel;

import java.util.Collection;
import org.apache.poi.hwpf.model.FieldsDocumentPart;

/* loaded from: classes12.dex */
public interface Fields {
    Field getFieldByStartOffset(FieldsDocumentPart fieldsDocumentPart, int i);

    Collection<Field> getFields(FieldsDocumentPart fieldsDocumentPart);
}
