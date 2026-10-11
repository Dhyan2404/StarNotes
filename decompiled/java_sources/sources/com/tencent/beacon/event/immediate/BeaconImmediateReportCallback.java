package com.tencent.beacon.event.immediate;

import com.tencent.beacon.base.net.C14950d;
import com.tencent.beacon.base.net.RequestType;
import com.tencent.beacon.base.net.call.InterfaceC14944e;
import com.tencent.beacon.base.net.p066b.C14935d;
import com.tencent.beacon.base.util.C14953b;
import com.tencent.beacon.base.util.C14954c;
import com.tencent.beacon.event.C14996e;
import com.tencent.beacon.event.EventBean;
import com.tencent.beacon.p059a.p061b.C14882j;
import com.tencent.beacon.pack.C15013a;
import com.tencent.beacon.pack.ResponsePackageV2;

/* loaded from: classes10.dex */
public class BeaconImmediateReportCallback implements InterfaceC14944e<BeaconTransferResult> {

    /* renamed from: a */
    private C14996e f93118a;

    /* renamed from: b */
    private EventBean f93119b;

    /* renamed from: c */
    private String f93120c;

    /* renamed from: d */
    private long f93121d = C14953b.m59381c();

    public BeaconImmediateReportCallback(C14996e c14996e, EventBean eventBean, String str) {
        this.f93118a = c14996e;
        this.f93119b = eventBean;
        this.f93120c = str;
    }

    /* renamed from: a */
    private void m59615a(C14950d c14950d) {
        C14954c.m59391a("[BeaconImmediateReportCallback]", c14950d.toString(), new Object[0]);
        C14882j.m58961e().m58954a(c14950d.f92903b, c14950d.f92905d, c14950d.f92906e);
        this.f93118a.m59594a(this.f93119b, this.f93120c);
    }

    public void onResponse(BeaconTransferResult beaconTransferResult) {
        if (beaconTransferResult == null) {
            m59615a(new C14950d(RequestType.LONG_CONNECTION.name(), "462", -1, "response fail! result is null"));
            return;
        }
        boolean z = beaconTransferResult.getCode() == 0 && beaconTransferResult.getBizCode() == 0;
        C14954c.m59391a("[BeaconImmediateReportCallback]", "result=%s, eventName=%s , logID=%s", beaconTransferResult.toString(), this.f93119b.getEventCode(), this.f93120c);
        if (!z) {
            m59615a(new C14950d(RequestType.LONG_CONNECTION.name(), "463", beaconTransferResult.getCode(), C14954c.m59398c("response fail! result = %s", beaconTransferResult.toString())));
            return;
        }
        byte[] bizBuffer = beaconTransferResult.getBizBuffer();
        ResponsePackageV2 responsePackageV2 = new ResponsePackageV2();
        try {
            responsePackageV2.readFrom(new C15013a(bizBuffer));
            C14935d.m59296a(this.f93121d, responsePackageV2.serverTime, responsePackageV2.srcGatewayIp);
        } catch (Throwable th) {
            C14954c.m59393a(th);
            m59615a(new C14950d(RequestType.LONG_CONNECTION.name(), "463", beaconTransferResult.getCode(), th.getMessage(), th));
        }
    }
}
