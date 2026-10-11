package com.google.android.gms.common.api.internal;

import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.api.Status;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;

/* loaded from: classes5.dex */
public final class zadc {
    public static final Status zaa = new Status(8, "The connection to Google Play services was lost");

    /* renamed from: a */
    @VisibleForTesting
    public final Set f29283a = Collections.synchronizedSet(Collections.newSetFromMap(new WeakHashMap()));

    /* renamed from: b */
    public final com.sunia.HTREnginev2.zap f29284b = new com.sunia.HTREnginev2.zap(this);

    /* renamed from: a */
    public final void m22124a(BasePendingResult basePendingResult) {
        this.f29283a.add(basePendingResult);
        basePendingResult.zan(this.f29284b);
    }

    public final void zab() {
        for (BasePendingResult basePendingResult : (BasePendingResult[]) this.f29283a.toArray(new BasePendingResult[0])) {
            basePendingResult.zan(null);
            if (basePendingResult.zam()) {
                this.f29283a.remove(basePendingResult);
            }
        }
    }
}
