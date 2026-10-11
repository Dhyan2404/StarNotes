package com.tencent.beacon.pack;

/* loaded from: classes10.dex */
public final class ResponsePackage extends AbstractResponseCommon {
    static byte[] cache_sBuffer;
    public int cmd;
    public String encryKey;
    public String encryPublicKey;
    public byte encryType;
    public byte result;
    public byte[] sBuffer;
    public byte zipType;

    public ResponsePackage() {
        this.result = (byte) 0;
        this.cmd = 0;
        this.sBuffer = null;
        this.encryType = (byte) 0;
        this.zipType = (byte) 0;
        this.encryKey = "";
        this.encryPublicKey = "";
    }

    @Override // com.tencent.beacon.pack.AbstractJceStruct
    public void readFrom(C15013a c15013a) {
        this.result = c15013a.m59712a(this.result, 0, true);
        this.cmd = c15013a.m59715a(this.cmd, 1, true);
        if (cache_sBuffer == null) {
            cache_sBuffer = r0;
            byte[] bArr = {0};
        }
        this.sBuffer = c15013a.m59729a(cache_sBuffer, 2, true);
        this.srcGatewayIp = c15013a.m59720a(3, true);
        this.encryType = c15013a.m59712a(this.encryType, 4, true);
        this.zipType = c15013a.m59712a(this.zipType, 5, true);
        this.serverTime = c15013a.m59717a(this.serverTime, 6, true);
        this.encryKey = c15013a.m59720a(7, false);
        this.encryPublicKey = c15013a.m59720a(8, false);
    }

    @Override // com.tencent.beacon.pack.AbstractJceStruct
    public void writeTo(C15014b c15014b) {
        c15014b.m59740a(this.result, 0);
        c15014b.m59744a(this.cmd, 1);
        c15014b.m59753a(this.sBuffer, 2);
        c15014b.m59748a(this.srcGatewayIp, 3);
        c15014b.m59740a(this.encryType, 4);
        c15014b.m59740a(this.zipType, 5);
        c15014b.m59745a(this.serverTime, 6);
        String str = this.encryKey;
        if (str != null) {
            c15014b.m59748a(str, 7);
        }
        String str2 = this.encryPublicKey;
        if (str2 != null) {
            c15014b.m59748a(str2, 8);
        }
    }

    public ResponsePackage(byte b, int i, byte[] bArr, String str, byte b2, byte b3, long j, String str2, String str3) {
        this.result = b;
        this.cmd = i;
        this.sBuffer = bArr;
        this.srcGatewayIp = str;
        this.encryType = b2;
        this.zipType = b3;
        this.serverTime = j;
        this.encryKey = str2;
        this.encryPublicKey = str3;
    }
}
