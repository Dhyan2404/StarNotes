package com.sunia.HTREnginev2;

import androidx.core.util.Pools;
import java.lang.reflect.Method;

/* loaded from: classes11.dex */
public final class qnj {

    /* renamed from: b */
    public static final Pools.SynchronizedPool<qnj> f82245b = new Pools.SynchronizedPool<>(20);

    /* renamed from: c */
    public static final qnj f82246c = new qnj();

    /* renamed from: a */
    public Method f82247a;

    /* renamed from: c */
    public static qnj m56732c(Method method) {
        if (method == null) {
            return f82246c;
        }
        qnj acquire = f82245b.acquire();
        if (acquire == null) {
            acquire = new qnj();
        }
        acquire.m56734b(method);
        return acquire;
    }

    /* renamed from: a */
    public Method m56733a() {
        return this.f82247a;
    }

    /* renamed from: b */
    public final void m56734b(Method method) {
        this.f82247a = method;
    }

    /* renamed from: d */
    public void m56735d() {
        f82245b.release(this);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || qnj.class != obj.getClass()) {
            return false;
        }
        qnj qnjVar = (qnj) obj;
        Method method = this.f82247a;
        if (method != null) {
            if (method.equals(qnjVar.f82247a)) {
                return true;
            }
        } else if (qnjVar.f82247a == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        Method method = this.f82247a;
        if (method != null) {
            return method.hashCode();
        }
        return 0;
    }
}
