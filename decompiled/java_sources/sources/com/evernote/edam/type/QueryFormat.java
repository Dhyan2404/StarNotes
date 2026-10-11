package com.evernote.edam.type;

import com.evernote.thrift.TEnum;

/* loaded from: classes4.dex */
public enum QueryFormat implements TEnum {
    USER(1),
    SEXP(2);

    private final int value;

    QueryFormat(int i) {
        this.value = i;
    }

    public static QueryFormat findByValue(int i) {
        if (i == 1) {
            return USER;
        }
        if (i != 2) {
            return null;
        }
        return SEXP;
    }

    @Override // com.evernote.thrift.TEnum
    public int getValue() {
        return this.value;
    }
}
