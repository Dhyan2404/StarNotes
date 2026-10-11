package com.evernote.edam.type;

import com.evernote.thrift.TEnum;

/* loaded from: classes4.dex */
public enum SharedNotebookInstanceRestrictions implements TEnum {
    ONLY_JOINED_OR_PREVIEW(1),
    NO_SHARED_NOTEBOOKS(2);

    private final int value;

    SharedNotebookInstanceRestrictions(int i) {
        this.value = i;
    }

    public static SharedNotebookInstanceRestrictions findByValue(int i) {
        if (i == 1) {
            return ONLY_JOINED_OR_PREVIEW;
        }
        if (i != 2) {
            return null;
        }
        return NO_SHARED_NOTEBOOKS;
    }

    @Override // com.evernote.thrift.TEnum
    public int getValue() {
        return this.value;
    }
}
