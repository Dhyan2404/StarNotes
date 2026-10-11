package com.tencent.qimei.p097r;

import android.content.Context;
import com.tencent.qimei.p079aa.C16734a;
import com.tencent.qimei.p083d.AbstractC16769a;
import com.tencent.qimei.p084e.C16773a;
import com.tencent.qimei.p089j.RunnableC16787b;
import com.tencent.qimei.p093n.C16806a;
import com.tencent.qimei.p095p.C16812b;
import com.tencent.qimei.p096q.C16815c;
import com.tencent.qimei.p096q.C16821i;
import com.tencent.qimei.p100t.C16837a;
import com.tencent.qimei.p102v.RunnableC16846d;
import com.tencent.qimei.p102v.RunnableC16847e;
import com.tencent.qimei.p105y.C16855a;
import com.tencent.qimei.sdk.IAsyncQimeiListener;
import com.tencent.qimei.sdk.Qimei;

/* renamed from: com.tencent.qimei.r.j */
/* loaded from: classes10.dex */
public class C16831j implements IAsyncQimeiListener {

    /* renamed from: a */
    public final /* synthetic */ C16833l f93633a;

    public C16831j(C16833l c16833l) {
        this.f93633a = c16833l;
    }

    @Override // com.tencent.qimei.sdk.IAsyncQimeiListener
    public void onQimeiDispatch(Qimei qimei) {
        String str;
        Context context;
        String str2;
        String str3;
        String str4;
        RunnableC16787b m59937a = RunnableC16787b.m59937a();
        str = this.f93633a.f93640f;
        m59937a.m59943a(str);
        RunnableC16787b m59937a2 = RunnableC16787b.m59937a();
        context = this.f93633a.f93641g;
        m59937a2.m59945b(context);
        C16812b m60012a = C16812b.m60012a();
        str2 = this.f93633a.f93640f;
        m60012a.m60013a(str2);
        str3 = this.f93633a.f93640f;
        C16837a m60105a = C16837a.m60105a(str3);
        if (m60105a.m60107a()) {
            int i = m60105a.f93662e ? 2 : m60105a.f93661d ? 1 : 0;
            String str5 = m60105a.m60106a(m60105a.f93662e) + m60105a.m60106a(m60105a.f93661d) + m60105a.f93663f;
            String str6 = C16837a.f93658a;
            if (m60105a.f93664g == null) {
                m60105a.f93664g = new Qimei(m60105a.f93660c);
            }
            C16855a c16855a = new C16855a(m60105a.f93660c);
            String str7 = m60105a.f93660c;
            String qimei16 = m60105a.f93664g.getQimei16();
            String qimei36 = m60105a.f93664g.getQimei36();
            String mo60063g = c16855a.mo60063g();
            String mo60056a = c16855a.mo60056a();
            C16821i m60021b = C16821i.m60021b();
            C16815c m60022a = m60021b.m60022a();
            m60022a.f93568a.put("p1", qimei16);
            m60022a.f93568a.put("p2", qimei36);
            m60022a.f93568a.put("p4", mo60063g);
            m60022a.f93568a.put("p5", mo60056a);
            m60022a.f93568a.put("p3", Integer.valueOf(i));
            m60022a.f93568a.put("p6", str5);
            m60021b.m60025b(m60022a, "v7", str7, "/report");
            C16806a.m59995b("CloneDetect", "%s, %s is clone，type：%d", str7, C16773a.m59902d(), Integer.valueOf(i));
        }
        str4 = this.f93633a.f93640f;
        RunnableC16847e m60128a = RunnableC16847e.m60128a(str4);
        AbstractC16769a.m59895a().mo59897a(new RunnableC16846d(m60128a));
        if (C16734a.m59797a(m60128a.f93680b).m59798a().m59827i()) {
            AbstractC16769a.m59895a().mo59896a(C16734a.m59797a(m60128a.f93680b).m59798a().m59838t() * 1000, new RunnableC16847e.a(null));
        }
    }
}
