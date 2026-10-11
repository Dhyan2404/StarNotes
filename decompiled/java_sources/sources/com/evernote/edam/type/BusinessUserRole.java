package com.evernote.edam.type;

import com.evernote.thrift.TEnum;

/* loaded from: classes4.dex */
public enum BusinessUserRole implements TEnum {
    ADMIN(1),
    NORMAL(2);

    private final int value;

    BusinessUserRole(int i) {
        this.value = i;
    }

    public static BusinessUserRole findByValue(int i) {
        if (i == 1) {
            return ADMIN;
        }
        if (i != 2) {
            return null;
        }
        return NORMAL;
    }

    @Override // com.evernote.thrift.TEnum
    public int getValue() {
        return this.value;
    }
}
