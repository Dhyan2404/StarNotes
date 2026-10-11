package com.google.android.gms.internal.p124firebaseauthapi;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public class zzaer implements zzacu<zzaer> {
    private static final String zza = "zzaer";
    private String zzb;
    private String zzc;
    private String zzd;
    private String zze;
    private boolean zzf;
    private long zzg;

    @Nullable
    private List<zzafq> zzh;

    @Nullable
    private String zzi;

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzacu
    /* renamed from: zzb, reason: merged with bridge method [inline-methods] */
    public final zzaer zza(String str) throws zzaah {
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.zzb = jSONObject.optString("localId", null);
            this.zzc = jSONObject.optString("email", null);
            this.zzd = jSONObject.optString("idToken", null);
            this.zze = jSONObject.optString("refreshToken", null);
            this.zzf = jSONObject.optBoolean("isNewUser", false);
            this.zzg = jSONObject.optLong("expiresIn", 0L);
            this.zzh = zzafq.zza(jSONObject.optJSONArray("mfaInfo"));
            this.zzi = jSONObject.optString("mfaPendingCredential", null);
            return this;
        } catch (NullPointerException | JSONException e) {
            throw zzahe.zza(e, zza, str);
        }
    }

    public final long zza() {
        return this.zzg;
    }

    @Nullable
    public final String zzc() {
        return this.zzi;
    }

    @NonNull
    public final String zzd() {
        return this.zze;
    }

    @Nullable
    public final List<zzafq> zze() {
        return this.zzh;
    }

    public final boolean zzf() {
        return !TextUtils.isEmpty(this.zzi);
    }

    public final boolean zzg() {
        return this.zzf;
    }

    @NonNull
    public final String zzb() {
        return this.zzd;
    }
}
