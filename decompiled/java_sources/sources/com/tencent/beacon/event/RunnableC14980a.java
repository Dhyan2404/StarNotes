package com.tencent.beacon.event;

import com.tencent.beacon.base.util.C14954c;
import com.tencent.beacon.event.p074a.C14981a;
import com.tencent.beacon.event.p076c.C14991d;
import com.tencent.beacon.p059a.p061b.C14882j;

/* renamed from: com.tencent.beacon.event.a */
/* loaded from: classes10.dex */
public class RunnableC14980a implements Runnable {

    /* renamed from: a */
    final /* synthetic */ EventBean f93022a;

    /* renamed from: b */
    final /* synthetic */ C14996e f93023b;

    public RunnableC14980a(C14996e c14996e, EventBean eventBean) {
        this.f93023b = c14996e;
        this.f93022a = eventBean;
    }

    @Override // java.lang.Runnable
    public void run() {
        C14981a c14981a;
        C14981a c14981a2;
        c14981a = this.f93023b.f93091b;
        if (c14981a.m59538a(this.f93022a.getEventType())) {
            C14882j.m58961e().m58953a("602", "type: " + C14991d.m59557a(this.f93022a.getEventType()) + " max db count!");
            C14954c.m59389a("[EventModule]", 2, "event: %s. insert to DB false. reason: DB count max!", this.f93022a.getEventCode());
            return;
        }
        c14981a2 = this.f93023b.f93091b;
        boolean m59539a = c14981a2.m59539a(this.f93022a);
        C14954c.m59389a("[EventModule]", 2, "event: %s. insert to DB %s", this.f93022a.getEventCode(), Boolean.valueOf(m59539a));
        if (m59539a) {
            C14954c.m59392a("insert success, resumedPollingReport.", new Object[0]);
            this.f93023b.mo59593a(0);
        }
    }
}
