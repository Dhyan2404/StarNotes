package com.tencent.qimei.p096q;

import java.util.HashSet;
import java.util.Set;

/* renamed from: com.tencent.qimei.q.f */
/* loaded from: classes10.dex */
public class C16818f {

    /* renamed from: a */
    public final Set<String> f93577a;

    /* renamed from: b */
    public final Set<String> f93578b;

    public C16818f() {
        HashSet hashSet = new HashSet();
        this.f93577a = hashSet;
        this.f93578b = new HashSet();
        hashSet.add("j1");
    }

    /* renamed from: a */
    public final synchronized boolean m60020a(String str) {
        boolean contains;
        contains = this.f93578b.contains(str);
        if (!contains) {
            this.f93578b.add(str);
        }
        return contains;
    }
}
