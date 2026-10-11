package com.google.android.gms.internal.p124firebaseauthapi;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes5.dex */
final class zzakl implements zzaki {
    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaki
    public final int zza(int i, Object obj, Object obj2) {
        zzakj zzakjVar = (zzakj) obj;
        if (zzakjVar.isEmpty()) {
            return 0;
        }
        Iterator it2 = zzakjVar.entrySet().iterator();
        if (!it2.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it2.next();
        entry.getKey();
        entry.getValue();
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaki
    public final Object zzb(Object obj) {
        return zzakj.zza().zzb();
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaki
    public final Object zzc(Object obj) {
        ((zzakj) obj).zzc();
        return obj;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaki
    public final Map<?, ?> zzd(Object obj) {
        return (zzakj) obj;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaki
    public final Map<?, ?> zze(Object obj) {
        return (zzakj) obj;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaki
    public final boolean zzf(Object obj) {
        return !((zzakj) obj).zzd();
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaki
    public final zzakg<?, ?> zza(Object obj) {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaki
    public final Object zza(Object obj, Object obj2) {
        zzakj zzakjVar = (zzakj) obj;
        zzakj zzakjVar2 = (zzakj) obj2;
        if (!zzakjVar2.isEmpty()) {
            if (!zzakjVar.zzd()) {
                zzakjVar = zzakjVar.zzb();
            }
            zzakjVar.zza(zzakjVar2);
        }
        return zzakjVar;
    }
}
