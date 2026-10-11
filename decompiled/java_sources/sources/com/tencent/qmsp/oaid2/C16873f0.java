package com.tencent.qmsp.oaid2;

import android.content.Context;

/* renamed from: com.tencent.qmsp.oaid2.f0 */
/* loaded from: classes10.dex */
public class C16873f0 implements InterfaceC16864b {

    /* renamed from: a */
    public Context f93737a = null;

    /* renamed from: b */
    public IVendorCallback f93738b = null;

    /* renamed from: com.tencent.qmsp.oaid2.f0$a */
    /* loaded from: classes10.dex */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Thread.sleep(1000L);
                if (C16873f0.this.f93738b != null) {
                    C16873f0.this.f93738b.onResult(C16871e0.m60164a(), C16871e0.m60163a(C16873f0.this.f93737a), C16871e0.m60165b(C16873f0.this.f93737a));
                }
            } catch (Exception e) {
                if (C16873f0.this.f93738b != null) {
                    C16873f0.this.f93738b.onResult(false, "null", "null");
                }
                e.printStackTrace();
            }
        }
    }

    @Override // com.tencent.qmsp.oaid2.InterfaceC16864b
    /* renamed from: a */
    public String mo60145a() {
        return "";
    }

    @Override // com.tencent.qmsp.oaid2.InterfaceC16864b
    /* renamed from: d */
    public String mo60147d() {
        return "";
    }

    @Override // com.tencent.qmsp.oaid2.InterfaceC16864b
    /* renamed from: e */
    public boolean mo60148e() {
        return C16871e0.m60164a();
    }

    @Override // com.tencent.qmsp.oaid2.InterfaceC16864b
    /* renamed from: j */
    public void mo60149j() {
        new Thread(new a()).start();
    }

    @Override // com.tencent.qmsp.oaid2.InterfaceC16864b
    /* renamed from: k */
    public boolean mo60150k() {
        return false;
    }

    @Override // com.tencent.qmsp.oaid2.InterfaceC16864b
    /* renamed from: l */
    public void mo60151l() {
    }

    @Override // com.tencent.qmsp.oaid2.InterfaceC16864b
    /* renamed from: a */
    public void mo60146a(Context context, IVendorCallback iVendorCallback) {
        this.f93737a = context;
        this.f93738b = iVendorCallback;
        C16871e0.m60166c(context);
    }
}
