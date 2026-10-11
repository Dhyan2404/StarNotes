package com.tencent.qimei.p084e;

import android.os.SystemClock;
import com.tencent.qmsp.oaid2.IVendorCallback;

/* renamed from: com.tencent.qimei.e.b */
/* loaded from: classes10.dex */
public class C16774b implements IVendorCallback {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC16776d f93462a;

    /* renamed from: b */
    public final /* synthetic */ C16775c f93463b;

    public C16774b(C16775c c16775c, InterfaceC16776d interfaceC16776d) {
        this.f93463b = c16775c;
        this.f93462a = interfaceC16776d;
    }

    @Override // com.tencent.qmsp.oaid2.IVendorCallback
    public void onResult(boolean z, String str, String str2) {
        long j;
        this.f93463b.f93471h = str2;
        int i = (str2 == null || str2.isEmpty()) ? 0 : 1;
        if (i != 0) {
            C16775c c16775c = this.f93463b;
            long elapsedRealtime = SystemClock.elapsedRealtime();
            j = this.f93463b.f93466c;
            c16775c.f93467d = elapsedRealtime - j;
            long j2 = this.f93463b.f93467d;
        }
        InterfaceC16776d interfaceC16776d = this.f93462a;
        if (interfaceC16776d != null) {
            interfaceC16776d.mo59929a(1 ^ i);
        }
    }
}
