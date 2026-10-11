package com.google.android.gms.internal.p124firebaseauthapi;

import androidx.annotation.Nullable;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public abstract class zzafy implements zzacr {
    public static zzagb zzg() {
        return new zzaei();
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzacr
    public final String zza() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("idToken", zzc());
        jSONObject.put("token", zzf());
        jSONObject.put("providerId", zzd());
        jSONObject.put("tokenType", zzb().toString());
        jSONObject.put("tenantId", zze());
        return jSONObject.toString();
    }

    public abstract zzafb zzb();

    public abstract String zzc();

    public abstract String zzd();

    @Nullable
    public abstract String zze();

    public abstract String zzf();
}
