package com.tencent.beacon.event.p076c;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.tencent.beacon.base.net.p066b.C14935d;
import com.tencent.beacon.event.EventBean;
import com.tencent.beacon.event.open.BeaconEvent;
import com.tencent.beacon.p059a.p062c.C14888c;
import com.tencent.beacon.p059a.p062c.C14890e;
import java.util.Map;

/* renamed from: com.tencent.beacon.event.c.a */
/* loaded from: classes10.dex */
public final class C14988a {
    @Nullable
    /* renamed from: a */
    public static EventBean m59546a(BeaconEvent beaconEvent) {
        Map<String, String> m59295a = C14935d.m59295a(beaconEvent.getCode(), beaconEvent.getParams());
        if (m59295a == null) {
            return null;
        }
        EventBean eventBean = new EventBean();
        String code = beaconEvent.getCode();
        eventBean.setEventCode(code);
        eventBean.setAppKey(beaconEvent.getAppKey());
        eventBean.setApn(C14890e.m59012l().m59036r());
        eventBean.setSrcIp(C14888c.m58989c().m58991a());
        eventBean.setEventCode(code);
        eventBean.setValueType(0);
        eventBean.setEventValue(m59295a);
        String str = beaconEvent.getParams().get("A34");
        if (!TextUtils.isEmpty(str)) {
            eventBean.setEventTime(Long.parseLong(str));
        }
        eventBean.setEventResult(beaconEvent.isSucceed());
        eventBean.setEventType(C14991d.m59550a(beaconEvent.getType()));
        eventBean.setReserved("");
        return eventBean;
    }
}
