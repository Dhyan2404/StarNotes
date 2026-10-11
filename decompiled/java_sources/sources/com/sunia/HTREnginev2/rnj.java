package com.sunia.HTREnginev2;

import androidx.core.util.Pools;
import net.vrallev.android.task.Task;
import net.vrallev.android.task.TaskResult;

/* loaded from: classes11.dex */
public final class rnj {

    /* renamed from: f */
    public static final Pools.SynchronizedPool<rnj> f83273f = new Pools.SynchronizedPool<>(20);

    /* renamed from: a */
    public Class<?> f83274a;

    /* renamed from: b */
    public Class<?> f83275b;

    /* renamed from: c */
    public Class<? extends TaskResult> f83276c;

    /* renamed from: d */
    public String f83277d;

    /* renamed from: e */
    public Class<? extends Task> f83278e;

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: g */
    public static rnj m56991g(Class<?> cls, Class<?> cls2, Class<? extends TaskResult> cls3, Task<?> task) {
        rnj acquire = f83273f.acquire();
        if (acquire == null) {
            acquire = new rnj();
        }
        acquire.m56997f(cls, cls2, cls3, task.m64739c(), task.getClass());
        return acquire;
    }

    /* renamed from: a */
    public Class<? extends TaskResult> m56992a() {
        return this.f83276c;
    }

    /* renamed from: b */
    public String m56993b() {
        return this.f83277d;
    }

    /* renamed from: c */
    public Class<?> m56994c() {
        return this.f83275b;
    }

    /* renamed from: d */
    public Class<?> m56995d() {
        return this.f83274a;
    }

    /* renamed from: e */
    public Class<? extends Task> m56996e() {
        return this.f83278e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || rnj.class != obj.getClass()) {
            return false;
        }
        rnj rnjVar = (rnj) obj;
        Class<?> cls = this.f83274a;
        if (cls == null ? rnjVar.f83274a != null : !cls.equals(rnjVar.f83274a)) {
            return false;
        }
        Class<?> cls2 = this.f83275b;
        if (cls2 == null ? rnjVar.f83275b != null : !cls2.equals(rnjVar.f83275b)) {
            return false;
        }
        Class<? extends TaskResult> cls3 = this.f83276c;
        if (cls3 == null ? rnjVar.f83276c != null : !cls3.equals(rnjVar.f83276c)) {
            return false;
        }
        String str = this.f83277d;
        if (str == null ? rnjVar.f83277d != null : !str.equals(rnjVar.f83277d)) {
            return false;
        }
        Class<? extends Task> cls4 = this.f83278e;
        if (cls4 != null) {
            if (cls4.equals(rnjVar.f83278e)) {
                return true;
            }
        } else if (rnjVar.f83278e == null) {
            return true;
        }
        return false;
    }

    /* renamed from: f */
    public final void m56997f(Class<?> cls, Class<?> cls2, Class<? extends TaskResult> cls3, String str, Class<? extends Task> cls4) {
        this.f83274a = cls;
        this.f83275b = cls2;
        this.f83276c = cls3;
        this.f83277d = str;
        this.f83278e = cls4;
    }

    /* renamed from: h */
    public void m56998h() {
        f83273f.release(this);
    }

    public int hashCode() {
        Class<?> cls = this.f83274a;
        int hashCode = (cls != null ? cls.hashCode() : 0) * 31;
        Class<?> cls2 = this.f83275b;
        int hashCode2 = (hashCode + (cls2 != null ? cls2.hashCode() : 0)) * 31;
        Class<? extends TaskResult> cls3 = this.f83276c;
        int hashCode3 = (hashCode2 + (cls3 != null ? cls3.hashCode() : 0)) * 31;
        String str = this.f83277d;
        int hashCode4 = (hashCode3 + (str != null ? str.hashCode() : 0)) * 31;
        Class<? extends Task> cls4 = this.f83278e;
        return hashCode4 + (cls4 != null ? cls4.hashCode() : 0);
    }
}
