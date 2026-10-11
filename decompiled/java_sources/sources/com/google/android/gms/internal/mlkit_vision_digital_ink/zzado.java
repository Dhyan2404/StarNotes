package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.ArrayList;
import java.util.WeakHashMap;
import javax.annotation.concurrent.GuardedBy;

/* loaded from: classes5.dex */
public final class zzado {

    @GuardedBy("exceptions")
    private static final WeakHashMap zza = new WeakHashMap();

    @GuardedBy("exceptionsWithTraceStack")
    private static final WeakHashMap zzb = new WeakHashMap();

    public static void zza(Throwable th) {
        Throwable th2;
        zzadn zzadnVar;
        synchronized (zzb) {
            th2 = th;
            while (th2 != null) {
                if (zzb.containsKey(th2)) {
                    break;
                } else {
                    th2 = th2.getCause();
                }
            }
            zzb.put(th, Boolean.valueOf(th2 != null));
        }
        if (th2 == null) {
            synchronized (zza) {
                Throwable th3 = th;
                while (th3 != null) {
                    try {
                        if (zza.containsKey(th3)) {
                            break;
                        } else {
                            th3 = th3.getCause();
                        }
                    } finally {
                    }
                }
                if (th3 == null) {
                    zzadnVar = null;
                } else {
                    WeakHashMap weakHashMap = zza;
                    zzaej zzaejVar = (zzaej) weakHashMap.get(th3);
                    weakHashMap.put(th, zzaejVar);
                    zzadnVar = new zzadn(th3, zzaejVar);
                }
            }
            if (zzadnVar != null) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (zzaeh zza2 = zzaeu.zza(); zza2 != null; zza2 = zza2.zza()) {
                arrayList.add(zza2);
            }
            zzaji zzf = zzajm.zzf(arrayList.size());
            zzaji zzf2 = zzajm.zzf(arrayList.size());
            for (zzaeh zzaehVar : zzakq.zza(arrayList)) {
                zzf2.zze(zzaehVar.zzb());
                zzf.zze(zzaehVar.zzf());
            }
            zzaej zzaejVar2 = new zzaej(zzf2.zzh(), zzf.zzh());
            WeakHashMap weakHashMap2 = zza;
            synchronized (weakHashMap2) {
                weakHashMap2.put(th, zzaejVar2);
            }
        }
    }
}
