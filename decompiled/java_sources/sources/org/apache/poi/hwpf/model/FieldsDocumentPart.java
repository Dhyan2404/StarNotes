package org.apache.poi.hwpf.model;

import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public enum FieldsDocumentPart {
    ANNOTATIONS(19),
    ENDNOTES(48),
    FOOTNOTES(18),
    HEADER(17),
    HEADER_TEXTBOX(59),
    MAIN(16),
    TEXTBOX(57);

    private final int fibFieldsField;

    FieldsDocumentPart(int i) {
        this.fibFieldsField = i;
    }

    public int getFibFieldsField() {
        return this.fibFieldsField;
    }
}
