package com.tencent.beacon.event;

import com.tencent.beacon.base.net.adapter.C14917g;
import com.tencent.beacon.base.net.p066b.C14933b;
import com.tencent.beacon.base.util.C14954c;
import com.tencent.beacon.event.open.BeaconReport;
import com.tencent.beacon.event.p076c.C14991d;
import com.tencent.beacon.event.quic.BeaconQuicReportCallback;
import com.tencent.beacon.event.quic.QuicTransArgs;
import com.tencent.beacon.p059a.p061b.C14882j;
import com.tencent.beacon.p073d.C14969b;

/* renamed from: com.tencent.beacon.event.c */
/* loaded from: classes10.dex */
public class RunnableC14987c implements Runnable {

    /* renamed from: a */
    final /* synthetic */ EventBean f93045a;

    /* renamed from: b */
    final /* synthetic */ String f93046b;

    /* renamed from: c */
    final /* synthetic */ C14996e f93047c;

    public RunnableC14987c(C14996e c14996e, EventBean eventBean, String str) {
        this.f93047c = c14996e;
        this.f93045a = eventBean;
        this.f93046b = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            BeaconReport.getInstance().getBeaconQuicReport().reportByQuic(new QuicTransArgs(C14933b.m59278a(), this.f93045a, C14917g.m59134a().m59136a(C14991d.m59552a(this.f93045a))), new BeaconQuicReportCallback(this.f93047c, this.f93045a, this.f93046b));
        } catch (Throwable th) {
            String str = "[quic] report error! msg: " + th.getMessage();
            C14954c.m59395b(str, new Object[0]);
            C14954c.m59393a(th);
            this.f93047c.m59594a(this.f93045a, this.f93046b);
            C14882j.m58961e().m58954a(C14969b.m59444b().m59462c() == 1 ? "471" : "474", str, th);
        }
    }
}
