package com.google.android.gms.internal.p124firebaseauthapi;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.firebase.auth.zzf;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzyt implements zzadm<zzafc> {
    private final /* synthetic */ zzadn zza;
    private final /* synthetic */ String zzb;
    private final /* synthetic */ String zzc;
    private final /* synthetic */ Boolean zzd;
    private final /* synthetic */ zzf zze;
    private final /* synthetic */ zzacf zzf;
    private final /* synthetic */ zzafm zzg;

    public zzyt(zzyl zzylVar, zzadn zzadnVar, String str, String str2, Boolean bool, zzf zzfVar, zzacf zzacfVar, zzafm zzafmVar) {
        this.zza = zzadnVar;
        this.zzb = str;
        this.zzc = str2;
        this.zzd = bool;
        this.zze = zzfVar;
        this.zzf = zzacfVar;
        this.zzg = zzafmVar;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadn
    public final void zza(@Nullable String str) {
        this.zza.zza(str);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadm
    public final /* synthetic */ void zza(zzafc zzafcVar) {
        List<zzaff> zza = zzafcVar.zza();
        if (zza != null && !zza.isEmpty()) {
            zzaff zzaffVar = zza.get(0);
            zzafu zzf = zzaffVar.zzf();
            List<zzafv> zza2 = zzf != null ? zzf.zza() : null;
            if (zza2 != null && !zza2.isEmpty()) {
                if (TextUtils.isEmpty(this.zzb)) {
                    zza2.get(0).zza(this.zzc);
                } else {
                    int i = 0;
                    while (true) {
                        if (i >= zza2.size()) {
                            break;
                        }
                        if (zza2.get(i).zzf().equals(this.zzb)) {
                            zza2.get(i).zza(this.zzc);
                            break;
                        }
                        i++;
                    }
                }
            }
            Boolean bool = this.zzd;
            if (bool != null) {
                zzaffVar.zza(bool.booleanValue());
            } else {
                zzaffVar.zza(zzaffVar.zzb() - zzaffVar.zza() < 1000);
            }
            zzaffVar.zza(this.zze);
            this.zzf.zza(this.zzg, zzaffVar);
            return;
        }
        this.zza.zza("No users.");
    }
}
