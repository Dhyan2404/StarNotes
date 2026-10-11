package com.tencent.beacon.pack;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes10.dex */
public final class SocketRequestPackage extends AbstractJceStruct {
    static byte[] cache_body;
    static Map<String, String> cache_header;
    public byte[] body;
    public Map<String, String> header;

    static {
        HashMap hashMap = new HashMap();
        cache_header = hashMap;
        hashMap.put("", "");
        cache_body = r0;
        byte[] bArr = {0};
    }

    public SocketRequestPackage() {
        this.header = null;
        this.body = null;
    }

    @Override // com.tencent.beacon.pack.AbstractJceStruct
    public void readFrom(C15013a c15013a) {
        this.header = (Map) c15013a.m59719a((C15013a) cache_header, 0, true);
        this.body = c15013a.m59729a(cache_body, 1, true);
    }

    @Override // com.tencent.beacon.pack.AbstractJceStruct
    public void writeTo(C15014b c15014b) {
        c15014b.m59750a((Map) this.header, 0);
        c15014b.m59753a(this.body, 1);
    }

    public SocketRequestPackage(Map<String, String> map, byte[] bArr) {
        this.header = map;
        this.body = bArr;
    }
}
