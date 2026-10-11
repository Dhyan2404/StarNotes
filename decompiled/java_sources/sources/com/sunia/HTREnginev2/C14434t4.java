package com.sunia.HTREnginev2;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* renamed from: com.sunia.HTREnginev2.t4 */
/* loaded from: classes3.dex */
public final /* synthetic */ class C14434t4 {
    /* renamed from: a */
    public static /* synthetic */ boolean m57298a(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, Object obj, Object obj2, Object obj3) {
        while (!atomicReferenceFieldUpdater.compareAndSet(obj, obj2, obj3)) {
            if (atomicReferenceFieldUpdater.get(obj) != obj2) {
                return false;
            }
        }
        return true;
    }
}
