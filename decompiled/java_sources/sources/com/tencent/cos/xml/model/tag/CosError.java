package com.tencent.cos.xml.model.tag;

import org.apache.commons.compress.harmony.unpack200.AttributeLayout;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes10.dex */
public class CosError {
    public String code;
    public String message;
    public String requestId;
    public String resource;
    public String traceId;

    public static CosError fromJson(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        CosError cosError = new CosError();
        cosError.code = jSONObject.optString(AttributeLayout.ATTRIBUTE_CODE);
        cosError.message = jSONObject.optString("Message");
        cosError.requestId = jSONObject.optString("RequestId");
        cosError.traceId = jSONObject.optString("TraceId");
        return cosError;
    }
}
