package com.google.android.gms.internal.play_billing;

import com.sunia.HTREnginev2.sgp;
import sun.misc.Unsafe;

/* loaded from: classes5.dex */
public final /* synthetic */ class zzea {
    public static /* synthetic */ boolean zza(Unsafe unsafe, Object obj, long j, Object obj2, Object obj3) {
        while (!sgp.m57163a(unsafe, obj, j, obj2, obj3)) {
            if (unsafe.getObject(obj, j) != obj2) {
                return false;
            }
        }
        return true;
    }
}
