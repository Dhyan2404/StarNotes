package com.tencent.qimei.p096q;

import com.tencent.qimei.p086g.InterfaceC16782c;
import com.tencent.qimei.p093n.C16806a;
import com.tencent.qimei.p102v.RunnableC16847e;

/* renamed from: com.tencent.qimei.q.h */
/* loaded from: classes10.dex */
public class C16820h implements InterfaceC16782c {

    /* renamed from: a */
    public final /* synthetic */ String f93584a;

    /* renamed from: b */
    public final /* synthetic */ String f93585b;

    /* renamed from: c */
    public final /* synthetic */ InterfaceC16813a f93586c;

    public C16820h(C16821i c16821i, String str, String str2, InterfaceC16813a interfaceC16813a) {
        this.f93584a = str;
        this.f93585b = str2;
        this.f93586c = interfaceC16813a;
    }

    @Override // com.tencent.qimei.p086g.InterfaceC16782c
    /* renamed from: a */
    public void mo59808a(String str, int i, String str2) {
        C16806a.m59995b("REPORT", "Report failed. error: %s,%d,%s type = %s", str, Integer.valueOf(i), str2, this.f93585b);
        InterfaceC16813a interfaceC16813a = this.f93586c;
        if (interfaceC16813a != null) {
            ((RunnableC16847e) interfaceC16813a).m60132a();
        }
    }

    @Override // com.tencent.qimei.p086g.InterfaceC16782c
    /* renamed from: a */
    public void mo59809a(String str, String... strArr) {
        InterfaceC16813a interfaceC16813a = this.f93586c;
        if (interfaceC16813a != null) {
            ((RunnableC16847e) interfaceC16813a).m60133b();
        }
    }
}
