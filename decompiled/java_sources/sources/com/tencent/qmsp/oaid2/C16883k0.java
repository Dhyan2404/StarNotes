package com.tencent.qmsp.oaid2;

import android.content.Context;
import com.tencent.qmsp.oaid2.C16881j0;

/* renamed from: com.tencent.qmsp.oaid2.k0 */
/* loaded from: classes10.dex */
public class C16883k0 implements InterfaceC16864b, C16881j0.b {

    /* renamed from: a */
    public IVendorCallback f93775a;

    /* renamed from: b */
    public C16881j0 f93776b;

    @Override // com.tencent.qmsp.oaid2.C16881j0.b
    /* renamed from: a */
    public void mo60196a(C16881j0 c16881j0) {
        IVendorCallback iVendorCallback = this.f93775a;
        if (iVendorCallback != null) {
            iVendorCallback.onResult(mo60148e(), mo60147d(), mo60145a());
        }
    }

    @Override // com.tencent.qmsp.oaid2.InterfaceC16864b
    /* renamed from: d */
    public String mo60147d() {
        String m60191a;
        return (mo60148e() && (m60191a = this.f93776b.m60191a()) != null) ? m60191a : "";
    }

    @Override // com.tencent.qmsp.oaid2.InterfaceC16864b
    /* renamed from: e */
    public boolean mo60148e() {
        C16881j0 c16881j0 = this.f93776b;
        if (c16881j0 != null) {
            return c16881j0.m60194d();
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
        C16881j0 c16881j0 = this.f93776b;
        if (c16881j0 != null) {
            c16881j0.m60195e();
        }
    }

    @Override // com.tencent.qmsp.oaid2.InterfaceC16864b
    /* renamed from: a */
    public void mo60146a(Context context, IVendorCallback iVendorCallback) {
        this.f93775a = iVendorCallback;
        C16881j0 c16881j0 = new C16881j0(context, this);
        this.f93776b = c16881j0;
        c16881j0.m60193c();
    }

    @Override // com.tencent.qmsp.oaid2.InterfaceC16864b
    /* renamed from: a */
    public String mo60145a() {
        String m60192b;
        return (mo60148e() && (m60192b = this.f93776b.m60192b()) != null) ? m60192b : "";
    }
}
