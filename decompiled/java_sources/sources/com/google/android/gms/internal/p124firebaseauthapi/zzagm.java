package com.google.android.gms.internal.p124firebaseauthapi;

import androidx.annotation.Nullable;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class zzagm extends zzagi {
    private static final String zza = "zzagm";

    @Nullable
    private String zzb;

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzagi
    /* renamed from: zzc, reason: merged with bridge method [inline-methods] */
    public final zzagm zza(String str) throws zzaah {
        try {
            JSONObject optJSONObject = new JSONObject(str).optJSONObject("phoneSessionInfo");
            if (optJSONObject != null) {
                this.zzb = zzah.zza(optJSONObject.optString("sessionInfo"));
            }
            return this;
        } catch (NullPointerException | JSONException e) {
            throw zzahe.zza(e, zza, str);
        }
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzagi, com.google.android.gms.internal.p124firebaseauthapi.zzacu
    public final /* synthetic */ zzagi zza(String str) throws zzaah {
        return (zzagm) zza(str);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzagi
    @Nullable
    public final String zza() {
        return this.zzb;
    }
}
