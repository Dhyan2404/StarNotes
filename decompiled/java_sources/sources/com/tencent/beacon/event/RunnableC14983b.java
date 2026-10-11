package com.tencent.beacon.event;

import com.tencent.beacon.base.util.C14954c;
import com.tencent.beacon.event.immediate.Beacon2MsfTransferArgs;
import com.tencent.beacon.event.immediate.BeaconImmediateReportCallback;
import com.tencent.beacon.event.open.BeaconReport;
import com.tencent.beacon.event.p076c.C14991d;
import com.tencent.beacon.p059a.p061b.C14882j;

/* renamed from: com.tencent.beacon.event.b */
/* loaded from: classes10.dex */
public class RunnableC14983b implements Runnable {

    /* renamed from: a */
    final /* synthetic */ EventBean f93039a;

    /* renamed from: b */
    final /* synthetic */ String f93040b;

    /* renamed from: c */
    final /* synthetic */ C14996e f93041c;

    public RunnableC14983b(C14996e c14996e, EventBean eventBean, String str) {
        this.f93041c = c14996e;
        this.f93039a = eventBean;
        this.f93040b = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            BeaconReport.getInstance().getImmediateReport().reportImmediate(new Beacon2MsfTransferArgs(C14991d.m59552a(this.f93039a).toByteArray()), new BeaconImmediateReportCallback(this.f93041c, this.f93039a, this.f93040b));
        } catch (Throwable th) {
            C14954c.m59395b("[immediate] report error!", new Object[0]);
            C14954c.m59393a(th);
            this.f93041c.m59594a(this.f93039a, this.f93040b);
            C14882j.m58961e().m58954a("515", "immediate report error!", th);
        }
    }
}
