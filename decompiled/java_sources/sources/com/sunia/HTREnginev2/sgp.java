package com.sunia.HTREnginev2;

import sun.misc.Unsafe;

/* loaded from: classes5.dex */
public final /* synthetic */ class sgp {
    /* renamed from: a */
    public static /* synthetic */ boolean m57163a(Unsafe unsafe, Object obj, long j, Object obj2, Object obj3) {
        while (!unsafe.compareAndSwapObject(obj, j, obj2, obj3)) {
            if (unsafe.getObject(obj, j) != obj2) {
                return false;
            }
        }
        return true;
    }
}
