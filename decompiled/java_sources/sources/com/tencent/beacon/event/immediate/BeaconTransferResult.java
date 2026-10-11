package com.tencent.beacon.event.immediate;

import org.apache.logging.log4j.util.Chars;

/* loaded from: classes10.dex */
public class BeaconTransferResult {

    /* renamed from: a */
    private int f93125a;

    /* renamed from: b */
    private int f93126b;

    /* renamed from: c */
    private byte[] f93127c;

    /* renamed from: d */
    private String f93128d;

    public byte[] getBizBuffer() {
        return this.f93127c;
    }

    public int getBizCode() {
        return this.f93126b;
    }

    public String getBizMsg() {
        return this.f93128d;
    }

    public int getCode() {
        return this.f93125a;
    }

    public void setBizBuffer(byte[] bArr) {
        this.f93127c = bArr;
    }

    public void setBizCode(int i) {
        this.f93126b = i;
    }

    public void setBizMsg(String str) {
        this.f93128d = str;
    }

    public void setCode(int i) {
        this.f93125a = i;
    }

    public String toString() {
        return "BeaconTransferResult{returnCode=" + this.f93125a + ", bizReturnCode=" + this.f93126b + ", bizMsg='" + this.f93128d + Chars.QUOTE + '}';
    }
}
