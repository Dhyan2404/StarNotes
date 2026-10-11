package com.tencent.qimei.p094o;

import com.tencent.qimei.p084e.InterfaceC16776d;

/* renamed from: com.tencent.qimei.o.c */
/* loaded from: classes10.dex */
public class C16809c implements InterfaceC16776d {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC16776d f93557a;

    /* renamed from: b */
    public final /* synthetic */ C16810d f93558b;

    public C16809c(C16810d c16810d, InterfaceC16776d interfaceC16776d) {
        this.f93558b = c16810d;
        this.f93557a = interfaceC16776d;
    }

    @Override // com.tencent.qimei.p084e.InterfaceC16776d
    /* renamed from: a */
    public void mo59929a(int i) {
        Object obj;
        boolean z;
        if (this.f93557a != null) {
            obj = this.f93558b.f93561c;
            synchronized (obj) {
                z = this.f93558b.f93562d;
                if (!z) {
                    this.f93557a.mo59929a(i);
                    this.f93558b.f93562d = true;
                }
            }
        }
    }
}
