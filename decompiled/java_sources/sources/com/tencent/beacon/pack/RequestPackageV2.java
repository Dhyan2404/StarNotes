package com.tencent.beacon.pack;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import org.apache.logging.log4j.util.Chars;

/* loaded from: classes10.dex */
public final class RequestPackageV2 extends AbstractJceStruct implements Cloneable {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    static Map<String, String> cache_common;
    static ArrayList<EventRecordV2> cache_events = new ArrayList<>();
    public int platformId = 0;
    public String mainAppKey = "";
    public String appVersion = "";
    public String sdkVersion = "";
    public ArrayList<EventRecordV2> events = null;
    public String packageName = "";
    public Map<String, String> common = null;
    public String model = "";
    public String osVersion = "";
    public String reserved = "";
    public String sdkId = "";

    static {
        cache_events.add(new EventRecordV2());
        HashMap hashMap = new HashMap();
        cache_common = hashMap;
        hashMap.put("", "");
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
        this.platformId = c15013a.m59715a(this.platformId, 0, true);
        this.mainAppKey = c15013a.m59720a(1, true);
        this.appVersion = c15013a.m59720a(2, true);
        this.sdkVersion = c15013a.m59720a(3, true);
        this.events = (ArrayList) c15013a.m59719a((C15013a) cache_events, 4, true);
        this.packageName = c15013a.m59720a(5, false);
        this.common = (Map) c15013a.m59719a((C15013a) cache_common, 6, false);
        this.model = c15013a.m59720a(7, false);
        this.osVersion = c15013a.m59720a(8, false);
        this.reserved = c15013a.m59720a(9, false);
        this.sdkId = c15013a.m59720a(10, false);
    }

    public String toString() {
        return "RequestPackageV2{platformId=" + this.platformId + ", mainAppKey='" + this.mainAppKey + Chars.QUOTE + ", appVersion='" + this.appVersion + Chars.QUOTE + ", sdkVersion='" + this.sdkVersion + Chars.QUOTE + ", packageName='" + this.packageName + Chars.QUOTE + ", model='" + this.model + Chars.QUOTE + ", osVersion='" + this.osVersion + Chars.QUOTE + ", reserved='" + this.reserved + Chars.QUOTE + ", sdkId='" + this.sdkId + Chars.QUOTE + "} " + super.toString();
    }

    @Override // com.tencent.beacon.pack.AbstractJceStruct
    public void writeTo(C15014b c15014b) {
        c15014b.m59744a(this.platformId, 0);
        c15014b.m59748a(this.mainAppKey, 1);
        c15014b.m59748a(this.appVersion, 2);
        c15014b.m59748a(this.sdkVersion, 3);
        c15014b.m59749a((Collection) this.events, 4);
        String str = this.packageName;
        if (str != null) {
            c15014b.m59748a(str, 5);
        }
        Map<String, String> map = this.common;
        if (map != null) {
            c15014b.m59750a((Map) map, 6);
        }
        String str2 = this.model;
        if (str2 != null) {
            c15014b.m59748a(str2, 7);
        }
        String str3 = this.osVersion;
        if (str3 != null) {
            c15014b.m59748a(str3, 8);
        }
        String str4 = this.reserved;
        if (str4 != null) {
            c15014b.m59748a(str4, 9);
        }
        String str5 = this.sdkId;
        if (str5 != null) {
            c15014b.m59748a(str5, 10);
        }
    }
}
