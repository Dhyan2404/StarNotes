package com.tencent.beacon.event.quic;

import com.tencent.beacon.base.net.C14950d;
import com.tencent.beacon.base.net.RequestType;
import com.tencent.beacon.base.net.p065a.C14910e;
import com.tencent.beacon.base.net.p065a.InterfaceC14908c;
import com.tencent.beacon.base.net.p066b.C14935d;
import com.tencent.beacon.base.util.C14953b;
import com.tencent.beacon.base.util.C14954c;
import com.tencent.beacon.event.C14996e;
import com.tencent.beacon.event.EventBean;
import com.tencent.beacon.p059a.p061b.C14882j;
import com.tencent.beacon.p073d.C14969b;
import com.tencent.beacon.pack.C15013a;
import com.tencent.beacon.pack.ResponsePackageV2;
import com.tencent.beacon.pack.SocketResponsePackage;

/* loaded from: classes10.dex */
public class BeaconQuicReportCallback implements QuicRequestCallback<BeaconQuicReportResult> {
    private static final String TAG = "[BeaconQuicReportCallback]";
    private final EventBean eventBean;
    private final C14996e eventManager;
    private final boolean isQuic;
    private final String logID;
    private final InterfaceC14908c<byte[], SocketResponsePackage> responseConverter = new C14910e();
    private final long startTime = C14953b.m59381c();

    public BeaconQuicReportCallback(C14996e c14996e, EventBean eventBean, String str) {
        this.eventManager = c14996e;
        this.eventBean = eventBean;
        this.logID = str;
        this.isQuic = C14969b.m59444b().m59462c() == 1;
    }

    private byte[] analyzeData(byte[] bArr) {
        if (!this.isQuic) {
            return C14953b.m59372a(bArr, 2);
        }
        return this.responseConverter.mo59122a(C14953b.m59372a(bArr, 2)).body;
    }

    private void onFailure(C14950d c14950d) {
        C14954c.m59391a(TAG, c14950d.toString(), new Object[0]);
        C14882j.m58961e().m58954a(c14950d.f92903b, c14950d.f92905d, c14950d.f92906e);
        this.eventManager.m59594a(this.eventBean, this.logID);
    }

    @Override // com.tencent.beacon.event.quic.QuicRequestCallback
    public void onResponse(BeaconQuicReportResult beaconQuicReportResult) {
        if (beaconQuicReportResult == null) {
            onFailure(new C14950d(RequestType.QUIC.name(), this.isQuic ? "472" : "475", -1, "response fail! result is null"));
            return;
        }
        boolean z = beaconQuicReportResult.getCode() == 0;
        C14954c.m59391a(TAG, "result=%s, eventName=%s , logID=%s", beaconQuicReportResult.toString(), this.eventBean.getEventCode(), this.logID);
        if (!z) {
            onFailure(new C14950d(RequestType.QUIC.name(), this.isQuic ? "472" : "475", beaconQuicReportResult.getCode(), C14954c.m59398c("response fail! result = %s", beaconQuicReportResult.toString())));
            return;
        }
        try {
            byte[] analyzeData = analyzeData(beaconQuicReportResult.getResBuffer());
            ResponsePackageV2 responsePackageV2 = new ResponsePackageV2();
            responsePackageV2.readFrom(new C15013a(analyzeData));
            C14935d.m59296a(this.startTime, responsePackageV2.serverTime, responsePackageV2.srcGatewayIp);
        } catch (Throwable th) {
            C14954c.m59393a(th);
            onFailure(new C14950d(RequestType.QUIC.name(), this.isQuic ? "473" : "476", beaconQuicReportResult.getCode(), th.getMessage(), th));
        }
    }
}
