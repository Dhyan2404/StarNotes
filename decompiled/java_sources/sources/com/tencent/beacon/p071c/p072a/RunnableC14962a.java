package com.tencent.beacon.p071c.p072a;

import com.tencent.beacon.module.StatModule;
import com.tencent.beacon.p059a.p062c.C14887b;
import com.tencent.beacon.p059a.p062c.C14890e;
import com.tencent.beacon.p059a.p062c.C14891f;
import java.util.Map;

/* renamed from: com.tencent.beacon.c.a.a */
/* loaded from: classes10.dex */
public class RunnableC14962a implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C14964c f92920a;

    public RunnableC14962a(C14964c c14964c) {
        this.f92920a = c14964c;
    }

    @Override // java.lang.Runnable
    public void run() {
        Map map;
        Map map2;
        Map map3;
        Map map4;
        StatModule statModule;
        Map<String, String> map5;
        C14890e m59012l = C14890e.m59012l();
        C14891f m59045e = C14891f.m59045e();
        map = this.f92920a.f92929g;
        map.put("A19", m59012l.m59035q());
        map2 = this.f92920a.f92929g;
        map2.put("A85", C14887b.f92592d ? "Y" : "N");
        map3 = this.f92920a.f92929g;
        map3.put("A20", m59045e.m59063j());
        map4 = this.f92920a.f92929g;
        map4.put("A69", m59045e.m59065k());
        statModule = this.f92920a.f92930h;
        map5 = this.f92920a.f92929g;
        statModule.m59694a(map5);
    }
}
