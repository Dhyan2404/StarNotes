package org.apache.poi.hwpf.model;

import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public enum NoteType {
    ENDNOTE(46, 47),
    FOOTNOTE(2, 3);

    private final int fibDescriptorsFieldIndex;
    private final int fibTextPositionsFieldIndex;

    NoteType(int i, int i2) {
        this.fibDescriptorsFieldIndex = i;
        this.fibTextPositionsFieldIndex = i2;
    }

    public int getFibDescriptorsFieldIndex() {
        return this.fibDescriptorsFieldIndex;
    }

    public int getFibTextPositionsFieldIndex() {
        return this.fibTextPositionsFieldIndex;
    }
}
