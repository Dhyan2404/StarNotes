package com.tencent.qimei.p083d;

import androidx.annotation.NonNull;

/* renamed from: com.tencent.qimei.d.a */
/* loaded from: classes10.dex */
public abstract class AbstractC16769a {

    /* renamed from: a */
    public static volatile AbstractC16769a f93452a;

    /* renamed from: a */
    public static synchronized AbstractC16769a m59895a() {
        AbstractC16769a abstractC16769a;
        synchronized (AbstractC16769a.class) {
            if (f93452a == null) {
                f93452a = new C16771c();
            }
            abstractC16769a = f93452a;
        }
        return abstractC16769a;
    }

    /* renamed from: a */
    public abstract void mo59896a(long j, @NonNull Runnable runnable);

    /* renamed from: a */
    public abstract void mo59897a(@NonNull Runnable runnable);
}
