package com.tencent.beacon.pack;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes10.dex */
public final class RequestPacket extends AbstractJceStruct {
    static Map<String, String> cache_context;
    static byte[] cache_sBuffer;
    public Map<String, String> context;
    public byte[] sBuffer;
    public Map<String, String> status;
    public short iVersion = 3;
    public byte cPacketType = 0;
    public int iMessageType = 0;
    public int iRequestId = 0;
    public String sServantName = null;
    public String sFuncName = null;
    public int iTimeout = 0;

    @Override // com.tencent.beacon.pack.AbstractJceStruct
    public void readFrom(C15013a c15013a) {
        try {
            this.iVersion = c15013a.m59723a(this.iVersion, 1, true);
            this.cPacketType = c15013a.m59712a(this.cPacketType, 2, true);
            this.iMessageType = c15013a.m59715a(this.iMessageType, 3, true);
            this.iRequestId = c15013a.m59715a(this.iRequestId, 4, true);
            this.sServantName = c15013a.m59720a(5, true);
            this.sFuncName = c15013a.m59720a(6, true);
            if (cache_sBuffer == null) {
                cache_sBuffer = new byte[]{0};
            }
            this.sBuffer = c15013a.m59729a(cache_sBuffer, 7, true);
            this.iTimeout = c15013a.m59715a(this.iTimeout, 8, true);
            if (cache_context == null) {
                HashMap hashMap = new HashMap();
                cache_context = hashMap;
                hashMap.put("", "");
            }
            this.context = (Map) c15013a.m59719a((C15013a) cache_context, 9, true);
            if (cache_context == null) {
                HashMap hashMap2 = new HashMap();
                cache_context = hashMap2;
                hashMap2.put("", "");
            }
            this.status = (Map) c15013a.m59719a((C15013a) cache_context, 10, true);
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }

    @Override // com.tencent.beacon.pack.AbstractJceStruct
    public void writeTo(C15014b c15014b) {
        c15014b.m59751a(this.iVersion, 1);
        c15014b.m59740a(this.cPacketType, 2);
        c15014b.m59744a(this.iMessageType, 3);
        c15014b.m59744a(this.iRequestId, 4);
        c15014b.m59748a(this.sServantName, 5);
        c15014b.m59748a(this.sFuncName, 6);
        c15014b.m59753a(this.sBuffer, 7);
        c15014b.m59744a(this.iTimeout, 8);
        c15014b.m59750a((Map) this.context, 9);
        c15014b.m59750a((Map) this.status, 10);
    }
}
