package com.tencent.beacon.event.immediate;

/* loaded from: classes10.dex */
public abstract class BeaconTransferArgs {

    /* renamed from: a */
    private byte[] f93122a;

    /* renamed from: b */
    private String f93123b = "";

    /* renamed from: c */
    private String f93124c = "";

    public BeaconTransferArgs(byte[] bArr) {
        this.f93122a = bArr;
    }

    public String getAppkey() {
        return this.f93123b;
    }

    public abstract String getCommand();

    public byte[] getData() {
        return this.f93122a;
    }

    public String getEventCode() {
        return this.f93124c;
    }

    public void setAppkey(String str) {
        this.f93123b = str;
    }

    public abstract void setCommand(String str);

    public void setData(byte[] bArr) {
        this.f93122a = bArr;
    }

    public void setEventCode(String str) {
        this.f93124c = str;
    }
}
