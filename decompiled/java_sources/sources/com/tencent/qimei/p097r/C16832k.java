package com.tencent.qimei.p097r;

import android.text.TextUtils;
import com.tencent.qimei.ad.RunnableC16745b;
import com.tencent.qimei.ad.RunnableC16748e;
import com.tencent.qimei.p079aa.C16734a;
import com.tencent.qimei.p083d.AbstractC16769a;
import com.tencent.qimei.p084e.C16773a;
import com.tencent.qimei.p085f.C16779c;
import com.tencent.qimei.p093n.C16806a;
import com.tencent.qimei.sdk.IAsyncQimeiListener;
import com.tencent.qimei.sdk.Qimei;

/* renamed from: com.tencent.qimei.r.k */
/* loaded from: classes10.dex */
public class C16832k implements IAsyncQimeiListener {

    /* renamed from: a */
    public final /* synthetic */ C16833l f93634a;

    public C16832k(C16833l c16833l) {
        this.f93634a = c16833l;
    }

    @Override // com.tencent.qimei.sdk.IAsyncQimeiListener
    public void onQimeiDispatch(Qimei qimei) {
        String str;
        str = this.f93634a.f93640f;
        RunnableC16748e m59841a = RunnableC16748e.m59841a(str);
        if (m59841a.f93407i == null) {
            return;
        }
        String str2 = C16734a.m59797a(m59841a.f93401c).m59798a().f93384k;
        if (TextUtils.isEmpty(str2)) {
            if (!C16779c.m59933a(m59841a.f93401c).m59934b()) {
                return;
            }
        } else if (!str2.equals(C16773a.m59901c())) {
            return;
        }
        m59841a.f93403e = C16734a.m59797a(m59841a.f93401c).m59798a().m59831m();
        m59841a.f93402d = C16734a.m59797a(m59841a.f93401c).m59798a().m59836r();
        m59841a.f93404f = C16734a.m59797a(m59841a.f93401c).m59798a().m59832n();
        if (m59841a.f93402d == 0 && m59841a.f93403e == 0) {
            C16806a.m59991a(RunnableC16748e.f93399a, "hid close", new Object[0]);
        } else {
            String str3 = RunnableC16748e.f93399a;
            AbstractC16769a.m59895a().mo59896a(m59841a.f93404f * 1000, new RunnableC16745b(m59841a));
        }
    }
}
