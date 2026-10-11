package com.tencent.beacon.pack;

/* loaded from: classes10.dex */
public final class RequestPackage extends AbstractJceStruct {
    static byte[] cache_sBuffer;
    public String appVersion;
    public String appkey;
    public int cmd;
    public byte encryType;
    public String model;
    public String osVersion;
    public byte platformId;
    public String reserved;
    public byte[] sBuffer;
    public String sdkId;
    public String sdkVersion;
    public byte zipType;

    public RequestPackage() {
        this.platformId = (byte) 0;
        this.appkey = "";
        this.appVersion = "";
        this.sdkId = "";
        this.sdkVersion = "";
        this.cmd = 0;
        this.sBuffer = null;
        this.encryType = (byte) 0;
        this.zipType = (byte) 0;
        this.model = "";
        this.osVersion = "";
        this.reserved = "";
    }

    @Override // com.tencent.beacon.pack.AbstractJceStruct
    public void readFrom(C15013a c15013a) {
        this.platformId = c15013a.m59712a(this.platformId, 0, true);
        this.appkey = c15013a.m59720a(1, true);
        this.appVersion = c15013a.m59720a(2, true);
        this.sdkId = c15013a.m59720a(3, true);
        this.sdkVersion = c15013a.m59720a(4, true);
        this.cmd = c15013a.m59715a(this.cmd, 5, true);
        if (cache_sBuffer == null) {
            cache_sBuffer = r0;
            byte[] bArr = {0};
        }
        this.sBuffer = c15013a.m59729a(cache_sBuffer, 6, true);
        this.encryType = c15013a.m59712a(this.encryType, 7, true);
        this.zipType = c15013a.m59712a(this.zipType, 8, true);
        this.model = c15013a.m59720a(9, false);
        this.osVersion = c15013a.m59720a(10, false);
        this.reserved = c15013a.m59720a(11, false);
    }

    @Override // com.tencent.beacon.pack.AbstractJceStruct
    public void writeTo(C15014b c15014b) {
        c15014b.m59740a(this.platformId, 0);
        c15014b.m59748a(this.appkey, 1);
        c15014b.m59748a(this.appVersion, 2);
        c15014b.m59748a(this.sdkId, 3);
        c15014b.m59748a(this.sdkVersion, 4);
        c15014b.m59744a(this.cmd, 5);
        c15014b.m59753a(this.sBuffer, 6);
        c15014b.m59740a(this.encryType, 7);
        c15014b.m59740a(this.zipType, 8);
        String str = this.model;
        if (str != null) {
            c15014b.m59748a(str, 9);
        }
        String str2 = this.osVersion;
        if (str2 != null) {
            c15014b.m59748a(str2, 10);
        }
        String str3 = this.reserved;
        if (str3 != null) {
            c15014b.m59748a(str3, 11);
        }
    }

    public RequestPackage(byte b, String str, String str2, String str3, String str4, int i, byte[] bArr, byte b2, byte b3, String str5, String str6, String str7) {
        this.platformId = b;
        this.appkey = str;
        this.appVersion = str2;
        this.sdkId = str3;
        this.sdkVersion = str4;
        this.cmd = i;
        this.sBuffer = bArr;
        this.encryType = b2;
        this.zipType = b3;
        this.model = str5;
        this.osVersion = str6;
        this.reserved = str7;
    }
}
