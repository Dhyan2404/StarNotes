package org.json;

import org.apache.http.cookie.ClientCookie;

/* loaded from: classes13.dex */
public class Cookie {
    public static String escape(String str) {
        String trim = str.trim();
        int length = trim.length();
        StringBuilder sb = new StringBuilder(length);
        for (int i = 0; i < length; i++) {
            char charAt = trim.charAt(i);
            if (charAt < ' ' || charAt == '+' || charAt == '%' || charAt == '=' || charAt == ';') {
                sb.append('%');
                sb.append(Character.forDigit((char) ((charAt >>> 4) & 15), 16));
                sb.append(Character.forDigit((char) (charAt & 15), 16));
            } else {
                sb.append(charAt);
            }
        }
        return sb.toString();
    }

    public static JSONObject toJSONObject(String str) throws JSONException {
        Object unescape;
        JSONObject jSONObject = new JSONObject();
        JSONTokener jSONTokener = new JSONTokener(str);
        jSONObject.put("name", jSONTokener.nextTo('='));
        jSONTokener.next('=');
        jSONObject.put("value", jSONTokener.nextTo(';'));
        jSONTokener.next();
        while (jSONTokener.more()) {
            String unescape2 = unescape(jSONTokener.nextTo("=;"));
            if (jSONTokener.next() == '=') {
                unescape = unescape(jSONTokener.nextTo(';'));
                jSONTokener.next();
            } else {
                if (!unescape2.equals(ClientCookie.SECURE_ATTR)) {
                    throw jSONTokener.syntaxError("Missing '=' in cookie parameter.");
                }
                unescape = Boolean.TRUE;
            }
            jSONObject.put(unescape2, unescape);
        }
        return jSONObject;
    }

    public static String toString(JSONObject jSONObject) throws JSONException {
        StringBuilder sb = new StringBuilder();
        sb.append(escape(jSONObject.getString("name")));
        sb.append("=");
        sb.append(escape(jSONObject.getString("value")));
        if (jSONObject.has(ClientCookie.EXPIRES_ATTR)) {
            sb.append(";expires=");
            sb.append(jSONObject.getString(ClientCookie.EXPIRES_ATTR));
        }
        if (jSONObject.has(ClientCookie.DOMAIN_ATTR)) {
            sb.append(";domain=");
            sb.append(escape(jSONObject.getString(ClientCookie.DOMAIN_ATTR)));
        }
        if (jSONObject.has("path")) {
            sb.append(";path=");
            sb.append(escape(jSONObject.getString("path")));
        }
        if (jSONObject.optBoolean(ClientCookie.SECURE_ATTR)) {
            sb.append(";secure");
        }
        return sb.toString();
    }

    public static String unescape(String str) {
        int i;
        int length = str.length();
        StringBuilder sb = new StringBuilder(length);
        int i2 = 0;
        while (i2 < length) {
            char charAt = str.charAt(i2);
            if (charAt == '+') {
                charAt = ' ';
            } else if (charAt == '%' && (i = i2 + 2) < length) {
                int dehexchar = JSONTokener.dehexchar(str.charAt(i2 + 1));
                int dehexchar2 = JSONTokener.dehexchar(str.charAt(i));
                if (dehexchar >= 0 && dehexchar2 >= 0) {
                    charAt = (char) ((dehexchar * 16) + dehexchar2);
                    i2 = i;
                }
            }
            sb.append(charAt);
            i2++;
        }
        return sb.toString();
    }
}
