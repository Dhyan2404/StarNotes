package com.google.android.play.core.integrity;

import android.content.Context;
import com.google.android.play.integrity.internal.C5547ae;

/* renamed from: com.google.android.play.core.integrity.aj */
/* loaded from: classes6.dex */
final class C5493aj {

    /* renamed from: a */
    private static C5535s f33385a;

    /* renamed from: a */
    public static synchronized C5535s m25671a(Context context) {
        C5535s c5535s;
        synchronized (C5493aj.class) {
            if (f33385a == null) {
                C5533q c5533q = new C5533q(null);
                c5533q.m25695a(C5547ae.m25725a(context));
                f33385a = c5533q.mo25670b();
            }
            c5535s = f33385a;
        }
        return c5535s;
    }
}
