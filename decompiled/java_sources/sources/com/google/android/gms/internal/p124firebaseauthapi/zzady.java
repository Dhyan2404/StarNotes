package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.common.api.CommonStatusCodes;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.logging.Logger;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzady extends zzacf {
    private final String zza;
    private final /* synthetic */ zzadx zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzady(zzadx zzadxVar, zzacf zzacfVar, String str) {
        super(zzacfVar);
        this.zzb = zzadxVar;
        this.zza = str;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzacf
    public final void zza(Status status) {
        Logger logger;
        HashMap hashMap;
        logger = zzadx.zza;
        logger.m22191e("SMS verification code request failed: " + CommonStatusCodes.getStatusCodeString(status.getStatusCode()) + " " + status.getStatusMessage(), new Object[0]);
        hashMap = this.zzb.zzd;
        zzaea zzaeaVar = (zzaea) hashMap.get(this.zza);
        if (zzaeaVar == null) {
            return;
        }
        Iterator<zzacf> it2 = zzaeaVar.zzb.iterator();
        while (it2.hasNext()) {
            it2.next().zza(status);
        }
        this.zzb.zzc(this.zza);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzacf
    public final void zzb(String str) {
        Logger logger;
        HashMap hashMap;
        logger = zzadx.zza;
        logger.m22189d("onCodeSent", new Object[0]);
        hashMap = this.zzb.zzd;
        zzaea zzaeaVar = (zzaea) hashMap.get(this.zza);
        if (zzaeaVar == null) {
            return;
        }
        Iterator<zzacf> it2 = zzaeaVar.zzb.iterator();
        while (it2.hasNext()) {
            it2.next().zzb(str);
        }
        zzaeaVar.zzg = true;
        zzaeaVar.zzd = str;
        if (zzaeaVar.zza <= 0) {
            this.zzb.zzb(this.zza);
        } else if (!zzaeaVar.zzc) {
            this.zzb.zze(this.zza);
        } else {
            if (zzah.zzc(zzaeaVar.zze)) {
                return;
            }
            zzadx.zza(this.zzb, this.zza);
        }
    }
}
