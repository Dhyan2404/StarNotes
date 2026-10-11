package com.tencent.beacon.event.p075b;

import android.content.Context;
import android.text.TextUtils;
import com.tencent.beacon.base.util.C14953b;
import com.tencent.beacon.event.open.BeaconEvent;
import com.tencent.beacon.event.open.EventType;
import com.tencent.beacon.event.p076c.C14994g;
import com.tencent.beacon.module.EventModule;
import com.tencent.beacon.module.ModuleName;
import com.tencent.beacon.p059a.p060a.C14870b;
import com.tencent.beacon.p059a.p060a.C14871c;
import com.tencent.beacon.p059a.p060a.InterfaceC14872d;
import com.tencent.beacon.p059a.p062c.C14887b;
import com.tencent.beacon.p059a.p062c.C14888c;
import com.tencent.beacon.p059a.p062c.C14890e;
import com.tencent.beacon.p059a.p062c.C14895j;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.tencent.beacon.event.b.b */
/* loaded from: classes10.dex */
public class C14985b extends AbstractC14986c implements InterfaceC14872d {

    /* renamed from: b */
    private boolean f93042b = false;

    /* renamed from: c */
    private String f93043c;

    public C14985b() {
        C14870b.m58921a().m58927a(2, this);
    }

    /* renamed from: c */
    private boolean m59543c(BeaconEvent beaconEvent) {
        return beaconEvent.getType() == EventType.IMMEDIATE_MSF || beaconEvent.getType() == EventType.IMMEDIATE;
    }

    @Override // com.tencent.beacon.event.p075b.AbstractC14986c
    /* renamed from: a */
    public BeaconEvent mo59542a(BeaconEvent beaconEvent) {
        if (this.f93042b && !C14953b.m59369a(beaconEvent.getCode())) {
            return beaconEvent;
        }
        C14888c m58989c = C14888c.m58989c();
        Context m58997b = m58989c.m58997b();
        Map<String, String> params = beaconEvent.getParams();
        params.put("A3", C14895j.m59074b());
        params.put("A153", C14895j.m59075c());
        params.put("A157", C14895j.m59080e());
        params.put("A19", C14890e.m59012l().m59035q());
        params.put("A95", "" + C14887b.m58972a());
        params.put("A48", C14888c.m58989c().m59000d());
        params.put("A99", beaconEvent.getLogidPrefix());
        params.put("A72", m58989c.m59006i());
        if (!TextUtils.isEmpty(C14888c.m58989c().m59003f())) {
            params.put("A143", C14888c.m58989c().m59003f());
        }
        if (!TextUtils.isEmpty(C14887b.m58978c())) {
            params.put("QQ", C14887b.m58978c());
        }
        if (TextUtils.isEmpty(C14895j.m59075c())) {
            params.put("A141", C14895j.m59082f());
        }
        String appKey = beaconEvent.getAppKey();
        EventModule eventModule = (EventModule) m58989c.m58990a(ModuleName.EVENT);
        if (!TextUtils.isEmpty(m58989c.m58992a(appKey))) {
            params.put("A23", m58989c.m58992a(appKey));
        }
        if (!TextUtils.isEmpty(eventModule.m59682c(appKey))) {
            params.put("A1", eventModule.m59682c(appKey));
        }
        if (!TextUtils.isEmpty(eventModule.m59679b(appKey))) {
            params.put("A8", eventModule.m59679b(appKey));
        }
        params.put("A34", String.valueOf(C14953b.m59384d()));
        params.put("A156", m59543c(beaconEvent) ? "Y" : "N");
        if (!params.containsKey("A88")) {
            if (TextUtils.isEmpty(this.f93043c)) {
                this.f93043c = C14887b.m58973a(m58997b);
            }
            params.put("A88", this.f93043c);
        }
        params.put("A100", C14994g.m59568a(m58997b, appKey).m59587a(beaconEvent.getCode(), beaconEvent.getType()));
        Map<String, String> m59675a = eventModule.m59675a(appKey);
        if (m59675a != null) {
            params.putAll(m59675a);
        }
        beaconEvent.setParams(params);
        return beaconEvent;
    }

    @Override // com.tencent.beacon.p059a.p060a.InterfaceC14872d
    /* renamed from: a */
    public void mo58930a(C14871c c14871c) {
        HashMap hashMap;
        if (c14871c.f92540a == 2 && (hashMap = (HashMap) c14871c.f92541b.get("d_m")) != null) {
            this.f93042b = C14953b.m59370a((String) hashMap.get("tidyEF"), this.f93042b);
        }
    }
}
