package com.blankj.utilcode.util;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class JsonUtils {

    /* renamed from: a */
    public static final byte f13767a = 0;

    /* renamed from: b */
    public static final byte f13768b = 1;

    /* renamed from: c */
    public static final byte f13769c = 2;

    /* renamed from: d */
    public static final byte f13770d = 3;

    /* renamed from: e */
    public static final byte f13771e = 4;

    /* renamed from: f */
    public static final byte f13772f = 5;

    /* renamed from: g */
    public static final byte f13773g = 6;

    public JsonUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    /* renamed from: a */
    public static <T> T m8112a(String str, String str2, T t, byte b) {
        if (str != null && str.length() != 0 && str2 != null && str2.length() != 0) {
            try {
                return (T) m8113b(new JSONObject(str), str2, t, b);
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        return t;
    }

    /* renamed from: b */
    public static <T> T m8113b(JSONObject jSONObject, String str, T t, byte b) {
        T t2;
        if (jSONObject != null && str != null && str.length() != 0) {
            try {
                if (b == 0) {
                    t2 = (T) Boolean.valueOf(jSONObject.getBoolean(str));
                } else if (b == 1) {
                    t2 = (T) Integer.valueOf(jSONObject.getInt(str));
                } else if (b == 2) {
                    t2 = (T) Long.valueOf(jSONObject.getLong(str));
                } else if (b == 3) {
                    t2 = (T) Double.valueOf(jSONObject.getDouble(str));
                } else if (b == 4) {
                    t2 = (T) jSONObject.getString(str);
                } else if (b == 5) {
                    t2 = (T) jSONObject.getJSONObject(str);
                } else if (b == 6) {
                    t2 = (T) jSONObject.getJSONArray(str);
                }
                return t2;
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        return t;
    }

    public static String formatJson(String str) {
        return formatJson(str, 4);
    }

    public static boolean getBoolean(JSONObject jSONObject, String str) {
        return getBoolean(jSONObject, str, false);
    }

    public static double getDouble(JSONObject jSONObject, String str) {
        return getDouble(jSONObject, str, -1.0d);
    }

    public static int getInt(JSONObject jSONObject, String str) {
        return getInt(jSONObject, str, -1);
    }

    public static JSONArray getJSONArray(JSONObject jSONObject, String str, JSONArray jSONArray) {
        return (JSONArray) m8113b(jSONObject, str, jSONArray, (byte) 6);
    }

    public static JSONObject getJSONObject(JSONObject jSONObject, String str, JSONObject jSONObject2) {
        return (JSONObject) m8113b(jSONObject, str, jSONObject2, (byte) 5);
    }

    public static long getLong(JSONObject jSONObject, String str) {
        return getLong(jSONObject, str, -1L);
    }

    public static String getString(JSONObject jSONObject, String str) {
        return getString(jSONObject, str, "");
    }

    public static <T> boolean isJSONArray(T t) {
        return t instanceof JSONArray;
    }

    public static <T> boolean isJSONObject(T t) {
        return t instanceof JSONObject;
    }

    public static String formatJson(String str, int i) {
        try {
            int length = str.length();
            for (int i2 = 0; i2 < length; i2++) {
                char charAt = str.charAt(i2);
                if (charAt == '{') {
                    return new JSONObject(str).toString(i);
                }
                if (charAt == '[') {
                    return new JSONArray(str).toString(i);
                }
                if (!Character.isWhitespace(charAt)) {
                    return str;
                }
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return str;
    }

    public static boolean getBoolean(JSONObject jSONObject, String str, boolean z) {
        return ((Boolean) m8113b(jSONObject, str, Boolean.valueOf(z), (byte) 0)).booleanValue();
    }

    public static double getDouble(JSONObject jSONObject, String str, double d) {
        return ((Double) m8113b(jSONObject, str, Double.valueOf(d), (byte) 3)).doubleValue();
    }

    public static int getInt(JSONObject jSONObject, String str, int i) {
        return ((Integer) m8113b(jSONObject, str, Integer.valueOf(i), (byte) 1)).intValue();
    }

    public static JSONArray getJSONArray(String str, String str2, JSONArray jSONArray) {
        return (JSONArray) m8112a(str, str2, jSONArray, (byte) 6);
    }

    public static JSONObject getJSONObject(String str, String str2, JSONObject jSONObject) {
        return (JSONObject) m8112a(str, str2, jSONObject, (byte) 5);
    }

    public static long getLong(JSONObject jSONObject, String str, long j) {
        return ((Long) m8113b(jSONObject, str, Long.valueOf(j), (byte) 2)).longValue();
    }

    public static String getString(JSONObject jSONObject, String str, String str2) {
        return (String) m8113b(jSONObject, str, str2, (byte) 4);
    }

    public static boolean getBoolean(String str, String str2) {
        return getBoolean(str, str2, false);
    }

    public static double getDouble(String str, String str2) {
        return getDouble(str, str2, -1.0d);
    }

    public static int getInt(String str, String str2) {
        return getInt(str, str2, -1);
    }

    public static long getLong(String str, String str2) {
        return getLong(str, str2, -1L);
    }

    public static String getString(String str, String str2) {
        return getString(str, str2, "");
    }

    public static boolean getBoolean(String str, String str2, boolean z) {
        return ((Boolean) m8112a(str, str2, Boolean.valueOf(z), (byte) 0)).booleanValue();
    }

    public static double getDouble(String str, String str2, double d) {
        return ((Double) m8112a(str, str2, Double.valueOf(d), (byte) 3)).doubleValue();
    }

    public static int getInt(String str, String str2, int i) {
        return ((Integer) m8112a(str, str2, Integer.valueOf(i), (byte) 1)).intValue();
    }

    public static long getLong(String str, String str2, long j) {
        return ((Long) m8112a(str, str2, Long.valueOf(j), (byte) 2)).longValue();
    }

    public static String getString(String str, String str2, String str3) {
        return (String) m8112a(str, str2, str3, (byte) 4);
    }
}
