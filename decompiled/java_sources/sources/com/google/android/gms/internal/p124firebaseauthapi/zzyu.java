package com.google.android.gms.internal.p124firebaseauthapi;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Base64Utils;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzyu implements zzadm<zzage> {
    private final /* synthetic */ zzagf zza;
    private final /* synthetic */ zzaff zzb;
    private final /* synthetic */ zzacf zzc;
    private final /* synthetic */ zzafm zzd;
    private final /* synthetic */ zzadn zze;
    private final /* synthetic */ zzyl zzf;

    public zzyu(zzyl zzylVar, zzagf zzagfVar, zzaff zzaffVar, zzacf zzacfVar, zzafm zzafmVar, zzadn zzadnVar) {
        this.zza = zzagfVar;
        this.zzb = zzaffVar;
        this.zzc = zzacfVar;
        this.zzd = zzafmVar;
        this.zze = zzadnVar;
        this.zzf = zzylVar;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadn
    public final void zza(@Nullable String str) {
        this.zze.zza(str);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadm
    public final /* synthetic */ void zza(zzage zzageVar) {
        zzage zzageVar2 = zzageVar;
        if (this.zza.zzi("EMAIL")) {
            this.zzb.zzb(null);
        } else if (this.zza.zzc() != null) {
            this.zzb.zzb(this.zza.zzc());
        }
        if (this.zza.zzi("DISPLAY_NAME")) {
            this.zzb.zza((String) null);
        } else if (this.zza.zzb() != null) {
            this.zzb.zza(this.zza.zzb());
        }
        if (this.zza.zzi("PHOTO_URL")) {
            this.zzb.zzd(null);
        } else if (this.zza.zze() != null) {
            this.zzb.zzd(this.zza.zze());
        }
        if (!TextUtils.isEmpty(this.zza.zzd())) {
            this.zzb.zzc(Base64Utils.encode("redacted".getBytes()));
        }
        if (this.zza.zzi("delete_passkey")) {
            this.zzb.zza(zzaq.zzh());
        }
        List<zzafv> zze = zzageVar2.zze();
        if (zze == null) {
            zze = new ArrayList<>();
        }
        this.zzb.zza(zze);
        zzacf zzacfVar = this.zzc;
        zzafm zzafmVar = this.zzd;
        Preconditions.checkNotNull(zzafmVar);
        Preconditions.checkNotNull(zzageVar2);
        String zzc = zzageVar2.zzc();
        String zzd = zzageVar2.zzd();
        if (!TextUtils.isEmpty(zzc) && !TextUtils.isEmpty(zzd)) {
            zzafmVar = new zzafm(zzd, zzc, Long.valueOf(zzageVar2.zza()), zzafmVar.zze());
        }
        zzacfVar.zza(zzafmVar, this.zzb);
    }
}
