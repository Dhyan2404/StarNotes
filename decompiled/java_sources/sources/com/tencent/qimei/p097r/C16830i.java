package com.tencent.qimei.p097r;

import com.tencent.qimei.p084e.InterfaceC16776d;
import com.tencent.qimei.p085f.C16779c;
import com.tencent.qimei.p093n.C16806a;

/* renamed from: com.tencent.qimei.r.i */
/* loaded from: classes10.dex */
public class C16830i implements InterfaceC16776d {

    /* renamed from: a */
    public final /* synthetic */ C16833l f93632a;

    public C16830i(C16833l c16833l) {
        this.f93632a = c16833l;
    }

    @Override // com.tencent.qimei.p084e.InterfaceC16776d
    /* renamed from: a */
    public void mo59929a(int i) {
        String str;
        String str2;
        str = this.f93632a.f93640f;
        C16806a.m59995b("SDK_INIT", "OD initialization finished (appKey: %s)，result:%s", str, Integer.valueOf(i));
        str2 = this.f93632a.f93640f;
        if (C16779c.m59933a(str2).m59934b()) {
            C16833l c16833l = this.f93632a;
            if (c16833l.m60067m()) {
                C16835n.m60070a(c16833l.f93640f).m60073b();
            } else {
                C16806a.m59991a("SDK_INIT", "getToken fail, sdk not init!", new Object[0]);
                C16835n.m60070a(c16833l.f93640f).f93653f = "1";
            }
        }
        this.f93632a.m60069o();
    }
}
