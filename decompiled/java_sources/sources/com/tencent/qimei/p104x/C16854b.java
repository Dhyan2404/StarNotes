package com.tencent.qimei.p104x;

import com.tencent.qimei.p106z.InterfaceC16859a;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: com.tencent.qimei.x.b */
/* loaded from: classes10.dex */
public class C16854b {

    /* renamed from: a */
    public static final ConcurrentHashMap<String, InterfaceC16859a> f93699a = new ConcurrentHashMap<>();

    /* renamed from: com.tencent.qimei.x.b$a */
    /* loaded from: classes10.dex */
    public static final class a {

        /* renamed from: a */
        public static final C16854b f93700a = new C16854b(null);
    }

    public /* synthetic */ C16854b(C16853a c16853a) {
    }

    /* renamed from: a */
    public InterfaceC16859a m60140a(String str) {
        return f93699a.get(str);
    }

    /* renamed from: a */
    public void m60141a(String str, InterfaceC16859a interfaceC16859a) {
        f93699a.put(str, interfaceC16859a);
    }

    /* renamed from: a */
    public static C16854b m60139a() {
        return a.f93700a;
    }
}
