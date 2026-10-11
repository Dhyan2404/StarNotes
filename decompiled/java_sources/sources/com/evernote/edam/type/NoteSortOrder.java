package com.evernote.edam.type;

import com.evernote.thrift.TEnum;

/* loaded from: classes4.dex */
public enum NoteSortOrder implements TEnum {
    CREATED(1),
    UPDATED(2),
    RELEVANCE(3),
    UPDATE_SEQUENCE_NUMBER(4),
    TITLE(5);

    private final int value;

    NoteSortOrder(int i) {
        this.value = i;
    }

    public static NoteSortOrder findByValue(int i) {
        if (i == 1) {
            return CREATED;
        }
        if (i == 2) {
            return UPDATED;
        }
        if (i == 3) {
            return RELEVANCE;
        }
        if (i == 4) {
            return UPDATE_SEQUENCE_NUMBER;
        }
        if (i != 5) {
            return null;
        }
        return TITLE;
    }

    @Override // com.evernote.thrift.TEnum
    public int getValue() {
        return this.value;
    }
}
