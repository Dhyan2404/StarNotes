package com.google.android.play.core.integrity;

import android.content.Context;
import com.google.android.play.integrity.internal.C5547ae;

/* renamed from: com.google.android.play.core.integrity.v */
/* loaded from: classes6.dex */
final class C5538v {

    /* renamed from: a */
    private static C5531o f33454a;

    /* renamed from: a */
    public static synchronized C5531o m25697a(Context context) {
        C5531o c5531o;
        synchronized (C5538v.class) {
            if (f33454a == null) {
                C5527m c5527m = new C5527m(null);
                c5527m.m25690a(C5547ae.m25725a(context));
                f33454a = c5527m.mo25691b();
            }
            c5531o = f33454a;
        }
        return c5531o;
    }
}
