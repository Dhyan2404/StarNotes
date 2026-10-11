package com.tencent.beacon.event;

import com.tencent.beacon.base.net.C14950d;
import com.tencent.beacon.base.net.call.Callback;
import com.tencent.beacon.base.util.C14954c;
import com.tencent.beacon.p059a.p061b.C14882j;

/* renamed from: com.tencent.beacon.event.d */
/* loaded from: classes10.dex */
public class C14995d implements Callback<byte[]> {

    /* renamed from: a */
    final /* synthetic */ EventBean f93087a;

    /* renamed from: b */
    final /* synthetic */ String f93088b;

    /* renamed from: c */
    final /* synthetic */ C14996e f93089c;

    public C14995d(C14996e c14996e, EventBean eventBean, String str) {
        this.f93089c = c14996e;
        this.f93087a = eventBean;
        this.f93088b = str;
    }

    @Override // com.tencent.beacon.base.net.call.Callback
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onResponse(byte[] bArr) {
        C14954c.m59391a("[EventManager]", "convert to report by beacon socket success, eventCode = %s, logId = %s", this.f93087a.getEventCode(), this.f93088b);
    }

    @Override // com.tencent.beacon.base.net.call.Callback
    public void onFailure(C14950d c14950d) {
        C14954c.m59403e("convert to report by beacon socket also fail, failure = %s", c14950d.toString());
        C14882j.m58961e().m58953a("464", c14950d.toString());
        this.f93089c.mo59600c(this.f93088b, this.f93087a);
    }
}
