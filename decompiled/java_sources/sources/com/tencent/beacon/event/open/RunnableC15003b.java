package com.tencent.beacon.event.open;

import com.tencent.beacon.base.util.C14954c;
import com.tencent.beacon.p059a.p061b.C14882j;
import com.tencent.beacon.p059a.p062c.C14887b;
import com.tencent.beacon.p059a.p062c.C14888c;
import com.tencent.beacon.p059a.p062c.C14895j;

/* renamed from: com.tencent.beacon.event.open.b */
/* loaded from: classes10.dex */
public class RunnableC15003b implements Runnable {

    /* renamed from: a */
    final /* synthetic */ BeaconConfig f93215a;

    /* renamed from: b */
    final /* synthetic */ BeaconReport f93216b;

    public RunnableC15003b(BeaconReport beaconReport, BeaconConfig beaconConfig) {
        this.f93216b = beaconReport;
        this.f93215a = beaconConfig;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            C14895j.m59066a();
            C14895j.m59083g();
            this.f93216b.m59657a(this.f93215a);
            this.f93216b.m59655a();
            C14954c.m59391a("BeaconReport", "App: %s start success!", C14888c.m58989c().m59002e());
        } catch (Throwable th) {
            C14882j.m58961e().m58954a("201", "sdk init error! package name: " + C14887b.m58977b() + " , msg:" + th.getMessage(), th);
            StringBuilder sb = new StringBuilder();
            sb.append("BeaconReport init error: ");
            sb.append(th.getMessage());
            C14954c.m59395b(sb.toString(), new Object[0]);
            C14954c.m59393a(th);
        }
    }
}
