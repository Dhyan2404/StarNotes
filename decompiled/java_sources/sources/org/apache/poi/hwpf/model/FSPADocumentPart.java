package org.apache.poi.hwpf.model;

import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public enum FSPADocumentPart {
    HEADER(41),
    MAIN(40);

    private final int fibFieldsField;

    FSPADocumentPart(int i) {
        this.fibFieldsField = i;
    }

    public int getFibFieldsField() {
        return this.fibFieldsField;
    }
}
