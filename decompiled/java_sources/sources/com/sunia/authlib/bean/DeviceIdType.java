package com.sunia.authlib.bean;

/* loaded from: classes10.dex */
public enum DeviceIdType {
    WLAN_MAC(0),
    ETH_MAC(1),
    ANDROID_ID(2),
    SERIAL_NO(3),
    BOOT_SERIAL_NO(4);

    int value;

    DeviceIdType(int i) {
        this.value = i;
    }

    public int getValue() {
        return this.value;
    }
}
