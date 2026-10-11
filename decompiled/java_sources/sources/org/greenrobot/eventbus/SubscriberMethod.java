package org.greenrobot.eventbus;

import java.lang.reflect.Method;

/* loaded from: classes13.dex */
public class SubscriberMethod {

    /* renamed from: a */
    public final Method f113920a;

    /* renamed from: b */
    public final ThreadMode f113921b;

    /* renamed from: c */
    public final Class<?> f113922c;

    /* renamed from: d */
    public final int f113923d;

    /* renamed from: e */
    public final boolean f113924e;

    /* renamed from: f */
    public String f113925f;

    public SubscriberMethod(Method method, Class<?> cls, ThreadMode threadMode, int i, boolean z) {
        this.f113920a = method;
        this.f113921b = threadMode;
        this.f113922c = cls;
        this.f113923d = i;
        this.f113924e = z;
    }

    /* renamed from: a */
    public final synchronized void m71038a() {
        if (this.f113925f == null) {
            StringBuilder sb = new StringBuilder(64);
            sb.append(this.f113920a.getDeclaringClass().getName());
            sb.append('#');
            sb.append(this.f113920a.getName());
            sb.append('(');
            sb.append(this.f113922c.getName());
            this.f113925f = sb.toString();
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SubscriberMethod)) {
            return false;
        }
        m71038a();
        SubscriberMethod subscriberMethod = (SubscriberMethod) obj;
        subscriberMethod.m71038a();
        return this.f113925f.equals(subscriberMethod.f113925f);
    }

    public int hashCode() {
        return this.f113920a.hashCode();
    }
}
