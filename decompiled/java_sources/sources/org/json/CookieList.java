package org.json;

import java.util.Iterator;

/* loaded from: classes13.dex */
public class CookieList {
    public static JSONObject toJSONObject(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        JSONTokener jSONTokener = new JSONTokener(str);
        while (jSONTokener.more()) {
            String unescape = Cookie.unescape(jSONTokener.nextTo('='));
            jSONTokener.next('=');
            jSONObject.put(unescape, Cookie.unescape(jSONTokener.nextTo(';')));
            jSONTokener.next();
        }
        return jSONObject;
    }

    public static String toString(JSONObject jSONObject) throws JSONException {
        Iterator<String> keys = jSONObject.keys();
        StringBuilder sb = new StringBuilder();
        boolean z = false;
        while (keys.hasNext()) {
            String next = keys.next();
            if (!jSONObject.isNull(next)) {
                if (z) {
                    sb.append(';');
                }
                sb.append(Cookie.escape(next));
                sb.append("=");
                sb.append(Cookie.escape(jSONObject.getString(next)));
                z = true;
            }
        }
        return sb.toString();
    }
}
