package com.tencent.beacon.pack;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes10.dex */
public final class SocketResponsePackage extends AbstractJceStruct {
    static byte[] cache_body;
    static Map<String, String> cache_header;
    public byte[] body;
    public Map<String, String> header;
    public String msg;
    public int statusCode;

    static {
        HashMap hashMap = new HashMap();
        cache_header = hashMap;
        hashMap.put("", "");
        cache_body = r0;
        byte[] bArr = {0};
    }

    public SocketResponsePackage() {
        this.statusCode = 0;
        this.header = null;
        this.body = null;
        this.msg = "";
    }

    @Override // com.tencent.beacon.pack.AbstractJceStruct
    public void readFrom(C15013a c15013a) {
        this.statusCode = c15013a.m59715a(this.statusCode, 0, true);
        this.header = (Map) c15013a.m59719a((C15013a) cache_header, 1, true);
        this.body = c15013a.m59729a(cache_body, 2, true);
        this.msg = c15013a.m59720a(3, false);
    }

    @Override // com.tencent.beacon.pack.AbstractJceStruct
    public void writeTo(C15014b c15014b) {
        c15014b.m59744a(this.statusCode, 0);
        c15014b.m59750a((Map) this.header, 1);
        c15014b.m59753a(this.body, 2);
        String str = this.msg;
        if (str != null) {
            c15014b.m59748a(str, 3);
        }
    }

    public SocketResponsePackage(int i, Map<String, String> map, byte[] bArr, String str) {
        this.statusCode = i;
        this.header = map;
        this.body = bArr;
        this.msg = str;
    }
}
