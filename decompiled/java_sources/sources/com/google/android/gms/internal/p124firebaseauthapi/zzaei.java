package com.google.android.gms.internal.p124firebaseauthapi;

import androidx.annotation.Nullable;

/* loaded from: classes5.dex */
final class zzaei extends zzagb {
    private String zza;
    private String zzb;
    private String zzc;
    private zzafb zzd;
    private String zze;

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzagb
    public final zzagb zza(String str) {
        if (str != null) {
            this.zze = str;
            return this;
        }
        throw new NullPointerException("Null idToken");
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzagb
    public final zzagb zzb(String str) {
        if (str == null) {
            throw new NullPointerException("Null providerId");
        }
        this.zza = str;
        return this;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzagb
    public final zzagb zzc(@Nullable String str) {
        this.zzb = str;
        return this;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzagb
    public final zzagb zzd(String str) {
        if (str == null) {
            throw new NullPointerException("Null token");
        }
        this.zzc = str;
        return this;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzagb
    public final zzagb zza(zzafb zzafbVar) {
        if (zzafbVar != null) {
            this.zzd = zzafbVar;
            return this;
        }
        throw new NullPointerException("Null tokenType");
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzagb
    public final zzafy zza() {
        String str;
        zzafb zzafbVar;
        String str2;
        String str3 = this.zza;
        if (str3 != null && (str = this.zzc) != null && (zzafbVar = this.zzd) != null && (str2 = this.zze) != null) {
            return new zzaej(str3, this.zzb, str, zzafbVar, str2);
        }
        StringBuilder sb = new StringBuilder();
        if (this.zza == null) {
            sb.append(" providerId");
        }
        if (this.zzc == null) {
            sb.append(" token");
        }
        if (this.zzd == null) {
            sb.append(" tokenType");
        }
        if (this.zze == null) {
            sb.append(" idToken");
        }
        throw new IllegalStateException("Missing required properties:" + String.valueOf(sb));
    }
}
