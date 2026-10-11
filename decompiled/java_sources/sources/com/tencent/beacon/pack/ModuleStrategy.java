package com.tencent.beacon.pack;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes10.dex */
public final class ModuleStrategy extends AbstractJceStruct {
    static Map<String, String> cache_detail;
    static ArrayList<String> cache_preventEventCode;
    static ArrayList<String> cache_sampleEvent;
    public static Object cache_sms;
    public Map<String, String> detail;
    public byte mId;
    public byte onOff;
    public ArrayList<String> preventEventCode;
    public ArrayList<String> sampleEvent;
    public Object sms;
    public String url;

    public ModuleStrategy() {
        this.mId = (byte) 0;
        this.onOff = (byte) 0;
        this.url = "";
        this.detail = null;
        this.preventEventCode = null;
        this.sms = null;
        this.sampleEvent = null;
    }

    @Override // com.tencent.beacon.pack.AbstractJceStruct
    public void readFrom(C15013a c15013a) {
        this.mId = c15013a.m59712a(this.mId, 0, true);
        this.onOff = c15013a.m59712a(this.onOff, 1, true);
        this.url = c15013a.m59720a(2, true);
        if (cache_detail == null) {
            HashMap hashMap = new HashMap();
            cache_detail = hashMap;
            hashMap.put("", "");
        }
        this.detail = (Map) c15013a.m59719a((C15013a) cache_detail, 3, true);
        if (cache_preventEventCode == null) {
            ArrayList<String> arrayList = new ArrayList<>();
            cache_preventEventCode = arrayList;
            arrayList.add("");
        }
        this.preventEventCode = (ArrayList) c15013a.m59719a((C15013a) cache_preventEventCode, 4, false);
        Object obj = cache_sms;
        if (obj != null) {
            this.sms = c15013a.m59719a((C15013a) obj, 5, false);
        }
        if (cache_sampleEvent == null) {
            ArrayList<String> arrayList2 = new ArrayList<>();
            cache_sampleEvent = arrayList2;
            arrayList2.add("");
        }
        this.sampleEvent = (ArrayList) c15013a.m59719a((C15013a) cache_sampleEvent, 6, false);
    }

    @Override // com.tencent.beacon.pack.AbstractJceStruct
    public void writeTo(C15014b c15014b) {
        c15014b.m59740a(this.mId, 0);
        c15014b.m59740a(this.onOff, 1);
        c15014b.m59748a(this.url, 2);
        c15014b.m59750a((Map) this.detail, 3);
        ArrayList<String> arrayList = this.preventEventCode;
        if (arrayList != null) {
            c15014b.m59749a((Collection) arrayList, 4);
        }
        Object obj = this.sms;
        if (obj != null) {
            c15014b.m59747a(obj, 5);
        }
        ArrayList<String> arrayList2 = this.sampleEvent;
        if (arrayList2 != null) {
            c15014b.m59749a((Collection) arrayList2, 6);
        }
    }

    public ModuleStrategy(byte b, byte b2, String str, Map<String, String> map, ArrayList<String> arrayList, Object obj, ArrayList<String> arrayList2) {
        this.mId = b;
        this.onOff = b2;
        this.url = str;
        this.detail = map;
        this.preventEventCode = arrayList;
        this.sms = obj;
        this.sampleEvent = arrayList2;
    }
}
