package com.tencent.beacon.event.p075b;

import com.tencent.beacon.event.open.BeaconEvent;
import com.tencent.beacon.event.open.EventType;
import com.tencent.beacon.p059a.p062c.C14890e;
import com.tencent.beacon.p059a.p062c.C14891f;
import java.util.Map;

/* renamed from: com.tencent.beacon.event.b.a */
/* loaded from: classes10.dex */
public class C14984a extends AbstractC14986c {
    @Override // com.tencent.beacon.event.p075b.AbstractC14986c
    /* renamed from: a */
    public BeaconEvent mo59542a(BeaconEvent beaconEvent) {
        EventType type = beaconEvent.getType();
        if (type == EventType.DT_REALTIME || type == EventType.DT_NORMAL) {
            Map<String, String> params = beaconEvent.getParams();
            C14890e m59012l = C14890e.m59012l();
            C14891f m59045e = C14891f.m59045e();
            params.put("dt_imei2", "" + m59045e.m59050c());
            params.put("dt_meid", "" + m59045e.m59057g());
            params.put("dt_mf", "" + m59012l.m59033o());
            beaconEvent.setParams(params);
        }
        return beaconEvent;
    }
}
