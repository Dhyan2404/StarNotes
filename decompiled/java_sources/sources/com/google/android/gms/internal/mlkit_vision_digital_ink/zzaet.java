package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.WeakHashMap;

/* loaded from: classes5.dex */
final class zzaet extends ThreadLocal {
    @Override // java.lang.ThreadLocal
    public final /* bridge */ /* synthetic */ Object initialValue() {
        WeakHashMap weakHashMap;
        WeakHashMap weakHashMap2;
        zzaev zzaevVar = new zzaev(zzxz.zzb(Thread.currentThread()));
        Thread currentThread = Thread.currentThread();
        weakHashMap = zzaeu.zzd;
        synchronized (weakHashMap) {
            weakHashMap2 = zzaeu.zzd;
            weakHashMap2.put(currentThread, zzaevVar);
        }
        return zzaevVar;
    }
}
