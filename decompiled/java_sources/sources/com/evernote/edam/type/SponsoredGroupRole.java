package com.evernote.edam.type;

import com.evernote.thrift.TEnum;

/* loaded from: classes4.dex */
public enum SponsoredGroupRole implements TEnum {
    GROUP_MEMBER(1),
    GROUP_ADMIN(2),
    GROUP_OWNER(3);

    private final int value;

    SponsoredGroupRole(int i) {
        this.value = i;
    }

    public static SponsoredGroupRole findByValue(int i) {
        if (i == 1) {
            return GROUP_MEMBER;
        }
        if (i == 2) {
            return GROUP_ADMIN;
        }
        if (i != 3) {
            return null;
        }
        return GROUP_OWNER;
    }

    @Override // com.evernote.thrift.TEnum
    public int getValue() {
        return this.value;
    }
}
