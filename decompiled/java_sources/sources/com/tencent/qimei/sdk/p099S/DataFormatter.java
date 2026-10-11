package com.tencent.qimei.sdk.p099S;

import java.io.Serializable;
import java.util.HashMap;

/* loaded from: classes10.dex */
public class DataFormatter implements Serializable {
    public HashMap<String, SpreadValue> spreadData = new HashMap<>();

    /* renamed from: a */
    public HashMap<String, SpreadValue> m60083a() {
        return this.spreadData;
    }

    /* renamed from: a */
    public void m60084a(HashMap<String, SpreadValue> hashMap) {
        this.spreadData = hashMap;
    }
}
