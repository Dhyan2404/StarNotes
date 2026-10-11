package org.greenrobot.eventbus.meta;

import org.greenrobot.eventbus.ThreadMode;

/* loaded from: classes13.dex */
public class SubscriberMethodInfo {

    /* renamed from: a */
    public final String f113933a;

    /* renamed from: b */
    public final ThreadMode f113934b;

    /* renamed from: c */
    public final Class<?> f113935c;

    /* renamed from: d */
    public final int f113936d;

    /* renamed from: e */
    public final boolean f113937e;

    public SubscriberMethodInfo(String str, Class<?> cls, ThreadMode threadMode, int i, boolean z) {
        this.f113933a = str;
        this.f113934b = threadMode;
        this.f113935c = cls;
        this.f113936d = i;
        this.f113937e = z;
    }

    public SubscriberMethodInfo(String str, Class<?> cls) {
        this(str, cls, ThreadMode.POSTING, 0, false);
    }

    public SubscriberMethodInfo(String str, Class<?> cls, ThreadMode threadMode) {
        this(str, cls, threadMode, 0, false);
    }
}
