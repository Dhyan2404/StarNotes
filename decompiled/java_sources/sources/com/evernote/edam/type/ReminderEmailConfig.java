package com.evernote.edam.type;

import com.evernote.thrift.TEnum;

/* loaded from: classes4.dex */
public enum ReminderEmailConfig implements TEnum {
    DO_NOT_SEND(1),
    SEND_DAILY_EMAIL(2);

    private final int value;

    ReminderEmailConfig(int i) {
        this.value = i;
    }

    public static ReminderEmailConfig findByValue(int i) {
        if (i == 1) {
            return DO_NOT_SEND;
        }
        if (i != 2) {
            return null;
        }
        return SEND_DAILY_EMAIL;
    }

    @Override // com.evernote.thrift.TEnum
    public int getValue() {
        return this.value;
    }
}
