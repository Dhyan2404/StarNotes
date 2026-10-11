package com.tencent.beacon.pack;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes10.dex */
public final class EventRecordV2 extends AbstractJceStruct implements Cloneable {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    static byte[] cache_byteValue;
    static Map<String, String> cache_mapValue;
    static int cache_valueType;
    public String appKey = "";
    public String apn = "";
    public String srcIp = "";
    public String eventCode = "";
    public int valueType = 0;
    public Map<String, String> mapValue = null;
    public byte[] byteValue = null;
    public long eventTime = 0;
    public boolean eventResult = true;
    public int eventType = 0;
    public String reserved = "";

    static {
        HashMap hashMap = new HashMap();
        cache_mapValue = hashMap;
        hashMap.put("", "");
        cache_byteValue = r0;
        byte[] bArr = {0};
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    @Override // com.tencent.beacon.pack.AbstractJceStruct
    public void readFrom(C15013a c15013a) {
        this.appKey = c15013a.m59720a(0, false);
        this.apn = c15013a.m59720a(1, false);
        this.srcIp = c15013a.m59720a(2, false);
        this.eventCode = c15013a.m59720a(3, true);
        this.valueType = c15013a.m59715a(this.valueType, 4, false);
        this.mapValue = (Map) c15013a.m59719a((C15013a) cache_mapValue, 5, false);
        this.byteValue = c15013a.m59729a(cache_byteValue, 6, false);
        this.eventTime = c15013a.m59717a(this.eventTime, 7, true);
        this.eventResult = c15013a.m59728a(this.eventResult, 8, false);
        this.eventType = c15013a.m59715a(this.eventType, 9, false);
        this.reserved = c15013a.m59720a(10, false);
    }

    @Override // com.tencent.beacon.pack.AbstractJceStruct
    public void writeTo(C15014b c15014b) {
        String str = this.appKey;
        if (str != null) {
            c15014b.m59748a(str, 0);
        }
        String str2 = this.apn;
        if (str2 != null) {
            c15014b.m59748a(str2, 1);
        }
        String str3 = this.srcIp;
        if (str3 != null) {
            c15014b.m59748a(str3, 2);
        }
        c15014b.m59748a(this.eventCode, 3);
        c15014b.m59744a(this.valueType, 4);
        Map<String, String> map = this.mapValue;
        if (map != null) {
            c15014b.m59750a((Map) map, 5);
        }
        byte[] bArr = this.byteValue;
        if (bArr != null) {
            c15014b.m59753a(bArr, 6);
        }
        c15014b.m59745a(this.eventTime, 7);
        c15014b.m59752a(this.eventResult, 8);
        c15014b.m59744a(this.eventType, 9);
        String str4 = this.reserved;
        if (str4 != null) {
            c15014b.m59748a(str4, 10);
        }
    }
}
