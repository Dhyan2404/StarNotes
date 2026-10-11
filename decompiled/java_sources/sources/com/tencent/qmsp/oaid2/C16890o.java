package com.tencent.qmsp.oaid2;

import android.content.Context;
import com.tencent.qmsp.oaid2.C16891p;

/* renamed from: com.tencent.qmsp.oaid2.o */
/* loaded from: classes10.dex */
public class C16890o implements InterfaceC16864b, C16891p.b {

    /* renamed from: a */
    public C16891p f93791a;

    /* renamed from: b */
    public IVendorCallback f93792b;

    @Override // com.tencent.qmsp.oaid2.InterfaceC16864b
    /* renamed from: a */
    public void mo60146a(Context context, IVendorCallback iVendorCallback) {
        this.f93792b = iVendorCallback;
        this.f93791a = new C16891p(context, this);
    }

    @Override // com.tencent.qmsp.oaid2.InterfaceC16864b
    /* renamed from: d */
    public String mo60147d() {
        String m60222c;
        return (mo60148e() && (m60222c = this.f93791a.m60222c()) != null) ? m60222c : "";
    }

    @Override // com.tencent.qmsp.oaid2.InterfaceC16864b
    /* renamed from: e */
    public boolean mo60148e() {
        C16891p c16891p = this.f93791a;
        if (c16891p != null) {
            return c16891p.m60221b();
        }
        return false;
    }

    @Override // com.tencent.qmsp.oaid2.InterfaceC16864b
    /* renamed from: j */
    public void mo60149j() {
    }

    @Override // com.tencent.qmsp.oaid2.InterfaceC16864b
    /* renamed from: k */
    public boolean mo60150k() {
        return false;
    }

    @Override // com.tencent.qmsp.oaid2.InterfaceC16864b
    /* renamed from: l */
    public void mo60151l() {
        C16891p c16891p = this.f93791a;
        if (c16891p != null) {
            c16891p.m60223d();
        }
    }

    @Override // com.tencent.qmsp.oaid2.InterfaceC16864b
    /* renamed from: a */
    public String mo60145a() {
        String m60218a;
        return (mo60148e() && (m60218a = this.f93791a.m60218a()) != null) ? m60218a : "";
    }

    @Override // com.tencent.qmsp.oaid2.C16891p.b
    /* renamed from: a */
    public void mo60216a(C16891p c16891p) {
        try {
            IVendorCallback iVendorCallback = this.f93792b;
            if (iVendorCallback != null) {
                iVendorCallback.onResult(mo60148e(), mo60147d(), mo60145a());
            }
        } catch (Exception unused) {
            IVendorCallback iVendorCallback2 = this.f93792b;
            if (iVendorCallback2 != null) {
                iVendorCallback2.onResult(false, "null", "null");
            }
        }
    }
}
