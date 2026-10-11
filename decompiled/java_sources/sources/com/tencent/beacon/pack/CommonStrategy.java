package com.tencent.beacon.pack;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes10.dex */
public final class CommonStrategy extends AbstractJceStruct {
    static Map<String, String> cache_cloudParas;
    static ArrayList<ModuleStrategy> cache_moduleList;
    public Map<String, String> cloudParas;
    public ArrayList<ModuleStrategy> moduleList;
    public int queryInterval;
    public String url;

    public CommonStrategy() {
        this.moduleList = null;
        this.queryInterval = 0;
        this.url = "";
        this.cloudParas = null;
    }

    @Override // com.tencent.beacon.pack.AbstractJceStruct
    public void readFrom(C15013a c15013a) {
        if (cache_moduleList == null) {
            cache_moduleList = new ArrayList<>();
            cache_moduleList.add(new ModuleStrategy());
        }
        this.moduleList = (ArrayList) c15013a.m59719a((C15013a) cache_moduleList, 0, true);
        this.queryInterval = c15013a.m59715a(this.queryInterval, 1, true);
        this.url = c15013a.m59720a(2, true);
        if (cache_cloudParas == null) {
            HashMap hashMap = new HashMap();
            cache_cloudParas = hashMap;
            hashMap.put("", "");
        }
        this.cloudParas = (Map) c15013a.m59719a((C15013a) cache_cloudParas, 3, false);
    }

    @Override // com.tencent.beacon.pack.AbstractJceStruct
    public void writeTo(C15014b c15014b) {
        c15014b.m59749a((Collection) this.moduleList, 0);
        c15014b.m59744a(this.queryInterval, 1);
        c15014b.m59748a(this.url, 2);
        Map<String, String> map = this.cloudParas;
        if (map != null) {
            c15014b.m59750a((Map) map, 3);
        }
    }

    public CommonStrategy(ArrayList<ModuleStrategy> arrayList, int i, String str, Map<String, String> map) {
        this.moduleList = arrayList;
        this.queryInterval = i;
        this.url = str;
        this.cloudParas = map;
    }
}
