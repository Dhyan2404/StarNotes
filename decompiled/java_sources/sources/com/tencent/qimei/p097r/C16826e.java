package com.tencent.qimei.p097r;

import com.tencent.qimei.p086g.InterfaceC16782c;

/* renamed from: com.tencent.qimei.r.e */
/* loaded from: classes10.dex */
public class C16826e implements InterfaceC16782c {

    /* renamed from: a */
    public final /* synthetic */ String f93613a;

    /* renamed from: b */
    public final /* synthetic */ RunnableC16827f f93614b;

    public C16826e(RunnableC16827f runnableC16827f, String str) {
        this.f93614b = runnableC16827f;
        this.f93613a = str;
    }

    @Override // com.tencent.qimei.p086g.InterfaceC16782c
    /* renamed from: a */
    public void mo59808a(String str, int i, String str2) {
        this.f93614b.m60045a(str, i, str2);
    }

    @Override // com.tencent.qimei.p086g.InterfaceC16782c
    /* renamed from: a */
    public void mo59809a(String str, String... strArr) {
        this.f93614b.m60046a(str, this.f93613a);
        RunnableC16827f.m60043b(this.f93614b);
    }
}
