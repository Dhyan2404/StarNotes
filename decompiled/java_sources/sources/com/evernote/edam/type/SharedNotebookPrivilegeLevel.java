package com.evernote.edam.type;

import com.evernote.thrift.TEnum;

/* loaded from: classes4.dex */
public enum SharedNotebookPrivilegeLevel implements TEnum {
    READ_NOTEBOOK(0),
    MODIFY_NOTEBOOK_PLUS_ACTIVITY(1),
    READ_NOTEBOOK_PLUS_ACTIVITY(2),
    GROUP(3),
    FULL_ACCESS(4),
    BUSINESS_FULL_ACCESS(5);

    private final int value;

    SharedNotebookPrivilegeLevel(int i) {
        this.value = i;
    }

    public static SharedNotebookPrivilegeLevel findByValue(int i) {
        if (i == 0) {
            return READ_NOTEBOOK;
        }
        if (i == 1) {
            return MODIFY_NOTEBOOK_PLUS_ACTIVITY;
        }
        if (i == 2) {
            return READ_NOTEBOOK_PLUS_ACTIVITY;
        }
        if (i == 3) {
            return GROUP;
        }
        if (i == 4) {
            return FULL_ACCESS;
        }
        if (i != 5) {
            return null;
        }
        return BUSINESS_FULL_ACCESS;
    }

    @Override // com.evernote.thrift.TEnum
    public int getValue() {
        return this.value;
    }
}
