package com.tencent.qimei.p092m;

import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: com.tencent.qimei.m.e */
/* loaded from: classes10.dex */
public class C16804e {

    /* renamed from: a */
    public static AtomicBoolean f93547a = new AtomicBoolean(false);

    /* renamed from: a */
    public static void m59986a(String str) {
        if (f93547a.get()) {
            throw new IllegalStateException("[strict] " + str);
        }
    }
}
