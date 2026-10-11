package com.google.android.gms.internal.p124firebaseauthapi;

import android.util.Log;
import androidx.annotation.Nullable;
import java.text.ParseException;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class zzago extends zzagi {
    private static final String zza = "zzago";

    @Nullable
    private String zzb;

    @Nullable
    private String zzc;
    private int zzd;

    @Nullable
    private String zze;
    private int zzf;
    private long zzg;

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzagi, com.google.android.gms.internal.p124firebaseauthapi.zzacu
    public final /* synthetic */ zzagi zza(String str) throws zzaah {
        return (zzago) zza(str);
    }

    public final int zzb() {
        return this.zzf;
    }

    public final int zzc() {
        return this.zzd;
    }

    public final long zzd() {
        return this.zzg;
    }

    @Nullable
    public final String zze() {
        return this.zze;
    }

    @Nullable
    public final String zzf() {
        return this.zzc;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzagi
    /* renamed from: zzc, reason: merged with bridge method [inline-methods] */
    public final zzago zza(String str) throws zzaah {
        try {
            JSONObject optJSONObject = new JSONObject(str).optJSONObject("totpSessionInfo");
            if (optJSONObject != null) {
                this.zzc = zzah.zza(optJSONObject.optString("sharedSecretKey"));
                this.zzd = optJSONObject.optInt("verificationCodeLength");
                this.zze = zzah.zza(optJSONObject.optString("hashingAlgorithm"));
                this.zzf = optJSONObject.optInt("periodSec");
                this.zzb = zzah.zza(optJSONObject.optString("sessionInfo"));
                String optString = optJSONObject.optString("finalizeEnrollmentTime");
                try {
                    this.zzg = zzane.zza(zzane.zza(optString));
                } catch (ParseException unused) {
                    Log.e(zza, "Failed to parse timestamp: " + optString);
                }
            }
            return this;
        } catch (NullPointerException | JSONException e) {
            throw zzahe.zza(e, zza, str);
        }
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzagi
    @Nullable
    public final String zza() {
        return this.zzb;
    }
}
