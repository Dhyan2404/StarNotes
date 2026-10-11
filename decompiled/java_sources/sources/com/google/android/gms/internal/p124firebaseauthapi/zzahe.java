package com.google.android.gms.internal.p124firebaseauthapi;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.onyx.android.sdk.data.common.cloud.Constant;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.collections4.IteratorUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class zzahe {
    @NonNull
    public static zzaah zza(@NonNull Exception exc, @NonNull String str, @NonNull String str2) {
        Log.e(str, "Failed to parse " + str + " for string [" + str2 + "] with exception: " + exc.getMessage());
        return new zzaah("Failed to parse " + str + " for string [" + str2 + IteratorUtils.f104924b, exc);
    }

    @NonNull
    public static List<String> zza(@Nullable JSONArray jSONArray) throws JSONException {
        ArrayList arrayList = new ArrayList();
        if (jSONArray != null && jSONArray.length() != 0) {
            for (int i = 0; i < jSONArray.length(); i++) {
                arrayList.add(jSONArray.getString(i));
            }
        }
        return arrayList;
    }

    public static void zza(JSONObject jSONObject) throws JSONException {
        jSONObject.put(Constant.CLIENT_TYPE, "CLIENT_TYPE_ANDROID");
    }

    public static void zza(JSONObject jSONObject, String str, String str2) throws JSONException {
        jSONObject.put(str, str2);
        jSONObject.put("recaptchaVersion", "RECAPTCHA_ENTERPRISE");
        jSONObject.put(Constant.CLIENT_TYPE, "CLIENT_TYPE_ANDROID");
    }
}
