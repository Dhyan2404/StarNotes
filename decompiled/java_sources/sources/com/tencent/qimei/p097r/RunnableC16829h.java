package com.tencent.qimei.p097r;

import android.content.Context;
import com.tencent.qimei.ad.RunnableC16748e;
import com.tencent.qimei.p079aa.C16734a;
import com.tencent.qimei.p079aa.C16735b;
import com.tencent.qimei.p079aa.C16736c;
import com.tencent.qimei.p079aa.RunnableC16739f;
import com.tencent.qimei.p081b.C16762a;
import com.tencent.qimei.p089j.RunnableC16787b;
import com.tencent.qimei.p092m.C16803d;
import com.tencent.qimei.p093n.C16806a;
import com.tencent.qimei.p100t.C16839c;

/* renamed from: com.tencent.qimei.r.h */
/* loaded from: classes10.dex */
public class RunnableC16829h implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C16833l f93631a;

    public RunnableC16829h(C16833l c16833l) {
        this.f93631a = c16833l;
    }

    @Override // java.lang.Runnable
    public void run() {
        String str;
        Context context;
        String str2;
        String str3;
        Context context2;
        String str4;
        String str5;
        String str6;
        String str7;
        C16803d m59981a = C16803d.m59981a();
        str = this.f93631a.f93640f;
        m59981a.m59983a(str);
        RunnableC16787b m59937a = RunnableC16787b.m59937a();
        context = this.f93631a.f93641g;
        m59937a.m59942a(context);
        RunnableC16787b m59937a2 = RunnableC16787b.m59937a();
        str2 = this.f93631a.f93640f;
        m59937a2.m59944a(str2, this.f93631a);
        str3 = this.f93631a.f93640f;
        RunnableC16748e m59841a = RunnableC16748e.m59841a(str3);
        context2 = this.f93631a.f93641g;
        m59841a.f93407i = context2;
        m59841a.f93408j = m59841a;
        str4 = this.f93631a.f93640f;
        C16734a m59797a = C16734a.m59797a(str4);
        C16833l c16833l = this.f93631a;
        C16736c m59801a = C16736c.m59801a(m59797a.f93330b);
        RunnableC16739f runnableC16739f = m59801a.f93336d;
        runnableC16739f.f93344d = c16833l;
        runnableC16739f.m59812a();
        C16806a.m59995b("QM", "start Strategy request task(appKey: %s)", m59801a.f93335c);
        if (C16762a.m59875a()) {
            m59801a.m59806b();
        } else {
            C16806a.m59995b("QM", "no network,cancel strategy request(appKey: %s)", m59801a.f93335c);
        }
        RunnableC16787b.m59937a().m59944a(m59801a.f93335c, new C16735b(m59801a));
        C16806a.m59995b("SDK_INIT ｜ STRATEGY", " initialization finished ", new Object[0]);
        str5 = this.f93631a.f93640f;
        C16823b m60028a = C16823b.m60028a(str5);
        if (!m60028a.f93599h) {
            m60028a.m60029a();
            m60028a.f93599h = true;
        }
        str6 = this.f93631a.f93640f;
        C16839c.m60108a(str6);
        str7 = this.f93631a.f93640f;
        C16835n m60070a = C16835n.m60070a(str7);
        if (m60070a.f93653f.equals("1")) {
            C16762a.m59884c(m60070a.f93649b, "1");
        }
        this.f93631a.m60065k();
    }
}
