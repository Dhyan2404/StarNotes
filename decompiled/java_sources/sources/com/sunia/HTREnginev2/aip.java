package com.sunia.HTREnginev2;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.logging.Logger;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.internal.p124firebaseauthapi.zzac;
import com.google.android.gms.internal.p124firebaseauthapi.zzxy;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes6.dex */
public final class aip {

    /* renamed from: a */
    public static final Logger f64734a = new Logger("JSONParser", new String[0]);

    @VisibleForTesting
    /* renamed from: a */
    public static List<Object> m53022a(JSONArray jSONArray) throws JSONException {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            Object obj = jSONArray.get(i);
            if (obj instanceof JSONArray) {
                obj = m53022a((JSONArray) obj);
            } else if (obj instanceof JSONObject) {
                obj = m53024c((JSONObject) obj);
            }
            arrayList.add(obj);
        }
        return arrayList;
    }

    @NonNull
    /* renamed from: b */
    public static Map<String, Object> m53023b(String str) {
        Preconditions.checkNotEmpty(str);
        List<String> zza = zzac.zza('.').zza((CharSequence) str);
        if (zza.size() < 2) {
            f64734a.m22191e("Invalid idToken " + str, new Object[0]);
            return new HashMap();
        }
        try {
            Map<String, Object> m53025d = m53025d(new String(Base64Utils.decodeUrlSafeNoPadding(zza.get(1)), "UTF-8"));
            return m53025d == null ? new HashMap() : m53025d;
        } catch (UnsupportedEncodingException e) {
            f64734a.m22190e("Unable to decode token", e, new Object[0]);
            return new HashMap();
        }
    }

    @VisibleForTesting
    /* renamed from: c */
    public static Map<String, Object> m53024c(JSONObject jSONObject) throws JSONException {
        ArrayMap arrayMap = new ArrayMap();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            Object obj = jSONObject.get(next);
            if (obj instanceof JSONArray) {
                obj = m53022a((JSONArray) obj);
            } else if (obj instanceof JSONObject) {
                obj = m53024c((JSONObject) obj);
            }
            arrayMap.put(next, obj);
        }
        return arrayMap;
    }

    @Nullable
    /* renamed from: d */
    public static Map<String, Object> m53025d(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject != JSONObject.NULL) {
                return m53024c(jSONObject);
            }
            return null;
        } catch (Exception e) {
            Log.d("JSONParser", "Failed to parse JSONObject into Map.");
            throw new zzxy(e);
        }
    }
}
