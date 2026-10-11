package org.json;

import java.util.Iterator;

/* loaded from: classes13.dex */
public class JSONML {
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0187, code lost:
    
        r7 = r9.nextToken();
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x018d, code lost:
    
        if ((r7 instanceof java.lang.String) == false) goto L158;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x018f, code lost:
    
        r7 = (java.lang.String) r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0191, code lost:
    
        if (r12 == false) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0193, code lost:
    
        r7 = org.json.XML.unescape(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0198, code lost:
    
        r7 = org.json.XML.stringToValue(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x01a7, code lost:
    
        throw r9.syntaxError("Missing value");
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object m71044a(org.json.XMLTokener r9, boolean r10, org.json.JSONArray r11, boolean r12) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 495
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.json.JSONML.m71044a(org.json.XMLTokener, boolean, org.json.JSONArray, boolean):java.lang.Object");
    }

    public static JSONArray toJSONArray(String str) throws JSONException {
        return (JSONArray) m71044a(new XMLTokener(str), true, null, false);
    }

    public static JSONObject toJSONObject(String str) throws JSONException {
        return (JSONObject) m71044a(new XMLTokener(str), false, null, false);
    }

    public static String toString(JSONArray jSONArray) throws JSONException {
        int i;
        StringBuilder sb = new StringBuilder();
        String string = jSONArray.getString(0);
        XML.noSpace(string);
        String escape = XML.escape(string);
        sb.append('<');
        sb.append(escape);
        Object opt = jSONArray.opt(1);
        if (opt instanceof JSONObject) {
            JSONObject jSONObject = (JSONObject) opt;
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                XML.noSpace(next);
                String optString = jSONObject.optString(next);
                if (optString != null) {
                    sb.append(' ');
                    sb.append(XML.escape(next));
                    sb.append('=');
                    sb.append('\"');
                    sb.append(XML.escape(optString));
                    sb.append('\"');
                }
            }
            i = 2;
        } else {
            i = 1;
        }
        int length = jSONArray.length();
        if (i >= length) {
            sb.append('/');
            sb.append('>');
        } else {
            sb.append('>');
            do {
                Object obj = jSONArray.get(i);
                i++;
                if (obj != null) {
                    if (obj instanceof String) {
                        sb.append(XML.escape(obj.toString()));
                    } else if (obj instanceof JSONObject) {
                        sb.append(toString((JSONObject) obj));
                    } else if (obj instanceof JSONArray) {
                        sb.append(toString((JSONArray) obj));
                    } else {
                        sb.append(obj.toString());
                    }
                }
            } while (i < length);
            sb.append('<');
            sb.append('/');
            sb.append(escape);
            sb.append('>');
        }
        return sb.toString();
    }

    public static JSONArray toJSONArray(String str, boolean z) throws JSONException {
        return (JSONArray) m71044a(new XMLTokener(str), true, null, z);
    }

    public static JSONObject toJSONObject(String str, boolean z) throws JSONException {
        return (JSONObject) m71044a(new XMLTokener(str), false, null, z);
    }

    public static JSONArray toJSONArray(XMLTokener xMLTokener, boolean z) throws JSONException {
        return (JSONArray) m71044a(xMLTokener, true, null, z);
    }

    public static JSONObject toJSONObject(XMLTokener xMLTokener) throws JSONException {
        return (JSONObject) m71044a(xMLTokener, false, null, false);
    }

    public static JSONArray toJSONArray(XMLTokener xMLTokener) throws JSONException {
        return (JSONArray) m71044a(xMLTokener, true, null, false);
    }

    public static JSONObject toJSONObject(XMLTokener xMLTokener, boolean z) throws JSONException {
        return (JSONObject) m71044a(xMLTokener, false, null, z);
    }

    public static String toString(JSONObject jSONObject) throws JSONException {
        StringBuilder sb = new StringBuilder();
        String optString = jSONObject.optString("tagName");
        if (optString == null) {
            return XML.escape(jSONObject.toString());
        }
        XML.noSpace(optString);
        String escape = XML.escape(optString);
        sb.append('<');
        sb.append(escape);
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            if (!"tagName".equals(next) && !"childNodes".equals(next)) {
                XML.noSpace(next);
                String optString2 = jSONObject.optString(next);
                if (optString2 != null) {
                    sb.append(' ');
                    sb.append(XML.escape(next));
                    sb.append('=');
                    sb.append('\"');
                    sb.append(XML.escape(optString2));
                    sb.append('\"');
                }
            }
        }
        JSONArray optJSONArray = jSONObject.optJSONArray("childNodes");
        if (optJSONArray == null) {
            sb.append('/');
            sb.append('>');
        } else {
            sb.append('>');
            int length = optJSONArray.length();
            for (int i = 0; i < length; i++) {
                Object obj = optJSONArray.get(i);
                if (obj != null) {
                    if (obj instanceof String) {
                        sb.append(XML.escape(obj.toString()));
                    } else if (obj instanceof JSONObject) {
                        sb.append(toString((JSONObject) obj));
                    } else if (obj instanceof JSONArray) {
                        sb.append(toString((JSONArray) obj));
                    } else {
                        sb.append(obj.toString());
                    }
                }
            }
            sb.append('<');
            sb.append('/');
            sb.append(escape);
            sb.append('>');
        }
        return sb.toString();
    }
}
