package com.evernote.edam.type;

import com.evernote.thrift.TEnum;

/* loaded from: classes4.dex */
public enum PrivilegeLevel implements TEnum {
    NORMAL(1),
    PREMIUM(3),
    VIP(5),
    MANAGER(7),
    SUPPORT(8),
    ADMIN(9);

    private final int value;

    PrivilegeLevel(int i) {
        this.value = i;
    }

    public static PrivilegeLevel findByValue(int i) {
        if (i == 1) {
            return NORMAL;
        }
        if (i == 3) {
            return PREMIUM;
        }
        if (i == 5) {
            return VIP;
        }
        if (i == 7) {
            return MANAGER;
        }
        if (i == 8) {
            return SUPPORT;
        }
        if (i != 9) {
            return null;
        }
        return ADMIN;
    }

    @Override // com.evernote.thrift.TEnum
    public int getValue() {
        return this.value;
    }
}
