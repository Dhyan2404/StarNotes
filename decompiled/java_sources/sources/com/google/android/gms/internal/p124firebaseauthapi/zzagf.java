package com.google.android.gms.internal.p124firebaseauthapi;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes5.dex */
public final class zzagf implements zzacr {
    private String zza;
    private String zzb;
    private String zzc;
    private String zzd;
    private String zze;
    private String zzf;

    @Nullable
    private String zzj;
    private boolean zzh = true;
    private zzagr zzg = new zzagr();
    private zzagr zzi = new zzagr();

    @NonNull
    public final zzagf zza(String str) {
        Preconditions.checkNotEmpty(str);
        this.zzi.zzb().add(str);
        return this;
    }

    @NonNull
    public final zzagf zzb(@Nullable String str) {
        if (str == null) {
            this.zzg.zzb().add("DISPLAY_NAME");
        } else {
            this.zzb = str;
        }
        return this;
    }

    @NonNull
    public final zzagf zzc(@Nullable String str) {
        if (str == null) {
            this.zzg.zzb().add("EMAIL");
        } else {
            this.zzc = str;
        }
        return this;
    }

    @NonNull
    public final zzagf zzd(String str) {
        this.zza = Preconditions.checkNotEmpty(str);
        return this;
    }

    @NonNull
    public final zzagf zze(String str) {
        this.zze = Preconditions.checkNotEmpty(str);
        return this;
    }

    @NonNull
    public final zzagf zzf(@Nullable String str) {
        if (str == null) {
            this.zzg.zzb().add("PASSWORD");
        } else {
            this.zzd = str;
        }
        return this;
    }

    @NonNull
    public final zzagf zzg(@Nullable String str) {
        if (str == null) {
            this.zzg.zzb().add("PHOTO_URL");
        } else {
            this.zzf = str;
        }
        return this;
    }

    @NonNull
    public final zzagf zzh(@Nullable String str) {
        this.zzj = str;
        return this;
    }

    public final boolean zzi(String str) {
        Preconditions.checkNotEmpty(str);
        return this.zzg.zzb().contains(str);
    }

    @Nullable
    public final String zzd() {
        return this.zzd;
    }

    @Nullable
    public final String zze() {
        return this.zzf;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0096 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzacr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String zza() throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 276
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.p124firebaseauthapi.zzagf.zza():java.lang.String");
    }

    @Nullable
    public final String zzb() {
        return this.zzb;
    }

    @Nullable
    public final String zzc() {
        return this.zzc;
    }
}
