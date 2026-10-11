package com.couchbase.lite.internal.utils;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class JSONUtils {
    private static final ThreadLocal<SimpleDateFormat> DATE_FORMAT = new ThreadLocal<SimpleDateFormat>() { // from class: com.couchbase.lite.internal.utils.JSONUtils.1
        @Override // java.lang.ThreadLocal
        @NonNull
        public synchronized SimpleDateFormat initialValue() {
            SimpleDateFormat simpleDateFormat;
            simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.ENGLISH);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            return simpleDateFormat;
        }
    };

    private JSONUtils() {
    }

    @NonNull
    public static Map<String, Object> fromJSON(@NonNull JSONObject jSONObject) throws JSONException {
        HashMap hashMap = new HashMap();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            hashMap.put(next, fromJSON(jSONObject.get(next)));
        }
        return hashMap;
    }

    @Nullable
    public static Date toDate(@Nullable String str) {
        if (str == null) {
            return null;
        }
        try {
            return DATE_FORMAT.get().parse(str);
        } catch (ParseException unused) {
            return null;
        }
    }

    @NonNull
    public static JSONObject toJSON(@NonNull Map<?, ?> map) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<?, ?> entry : map.entrySet()) {
            jSONObject.put(entry.getKey().toString(), toJSON(entry.getValue()));
        }
        return jSONObject;
    }

    @NonNull
    public static String toJSONString(@NonNull Date date) {
        return DATE_FORMAT.get().format(date);
    }

    @NonNull
    public static JSONArray toJSON(@NonNull List<?> list) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        Iterator<?> it2 = list.iterator();
        while (it2.hasNext()) {
            jSONArray.put(toJSON(it2.next()));
        }
        return jSONArray;
    }

    @Nullable
    public static Object toJSON(@Nullable Object obj) throws JSONException {
        return obj instanceof Map ? toJSON((Map<?, ?>) obj) : obj instanceof List ? toJSON((List<?>) obj) : obj == null ? JSONObject.NULL : obj;
    }

    @NonNull
    public static List<Object> fromJSON(@NonNull JSONArray jSONArray) throws JSONException {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(fromJSON(jSONArray.get(i)));
        }
        return arrayList;
    }

    @Nullable
    private static Object fromJSON(@Nullable Object obj) throws JSONException {
        if (obj instanceof JSONObject) {
            return fromJSON((JSONObject) obj);
        }
        if (obj instanceof JSONArray) {
            return fromJSON((JSONArray) obj);
        }
        if (obj == JSONObject.NULL) {
            return null;
        }
        return obj;
    }
}
