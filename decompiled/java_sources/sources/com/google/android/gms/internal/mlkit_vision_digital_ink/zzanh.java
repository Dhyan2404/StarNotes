package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.os.Build;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes5.dex */
final class zzanh extends zzanb {
    private static final AtomicReference zza = new AtomicReference();
    private static final AtomicLong zzb = new AtomicLong();
    private static final ConcurrentLinkedQueue zzc = new ConcurrentLinkedQueue();
    private volatile zzami zzd;

    private zzanh(String str) {
        super(str);
        String str2 = Build.FINGERPRINT;
        boolean z = true;
        boolean z2 = str2 == null || "robolectric".equals(str2);
        String str3 = Build.HARDWARE;
        boolean z3 = "goldfish".equals(str3) || "ranchu".equals(str3);
        String str4 = Build.TYPE;
        if (!"eng".equals(str4) && !"userdebug".equals(str4)) {
            z = false;
        }
        if (z2 || z3) {
            this.zzd = new zzanc().zza(zza());
        } else if (z) {
            this.zzd = new zzanj().zzb(false).zza(zza());
        } else {
            this.zzd = null;
        }
    }

    public static zzami zzb(String str) {
        AtomicReference atomicReference = zza;
        if (atomicReference.get() != null) {
            return ((zzand) atomicReference.get()).zza(str);
        }
        zzanh zzanhVar = new zzanh(str.replace('$', '.'));
        zzanf.zza.offer(zzanhVar);
        if (atomicReference.get() != null) {
            while (true) {
                zzanh zzanhVar2 = (zzanh) zzanf.zza.poll();
                if (zzanhVar2 == null) {
                    break;
                }
                zzanhVar2.zzd = ((zzand) zza.get()).zza(zzanhVar2.zza());
            }
            if (((zzang) zzc.poll()) != null) {
                zzb.getAndDecrement();
                throw null;
            }
        }
        return zzanhVar;
    }
}
