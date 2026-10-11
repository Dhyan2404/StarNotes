package com.tencent.qimei.p090k;

import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.tencent.qimei.k.a */
/* loaded from: classes10.dex */
public abstract class AbstractC16789a<T> {
    /* renamed from: a */
    public String m59946a(String str, String str2) {
        if (str == null || str.isEmpty()) {
            return "";
        }
        try {
            return new JSONObject(str).optString(str2);
        } catch (JSONException e) {
            e.printStackTrace();
            return "";
        }
    }
}
