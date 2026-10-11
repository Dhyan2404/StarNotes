package com.tencent.qmsp.oaid2;

import android.content.Context;
import android.text.TextUtils;

/* renamed from: com.tencent.qmsp.oaid2.u */
/* loaded from: classes10.dex */
public class C16896u implements InterfaceC16864b, InterfaceC16894s {

    /* renamed from: a */
    public C16893r f93809a;

    /* renamed from: b */
    public Context f93810b;

    /* renamed from: c */
    public IVendorCallback f93811c;

    @Override // com.tencent.qmsp.oaid2.InterfaceC16864b
    /* renamed from: a */
    public void mo60146a(Context context, IVendorCallback iVendorCallback) {
        if (C16893r.m60233a(context)) {
            String m60161a = C16870e.m60161a(context);
            if (!TextUtils.isEmpty(m60161a)) {
                C16893r.m60232a(context, m60161a);
            }
            this.f93809a = new C16893r(context, this);
            this.f93811c = iVendorCallback;
            this.f93810b = context;
        }
    }

    @Override // com.tencent.qmsp.oaid2.InterfaceC16894s
    /* renamed from: b */
    public void mo60240b() {
        IVendorCallback iVendorCallback = this.f93811c;
        if (iVendorCallback != null) {
            iVendorCallback.onResult(false, "", "");
        }
    }

    @Override // com.tencent.qmsp.oaid2.InterfaceC16864b
    /* renamed from: d */
    public String mo60147d() {
        String m60234a;
        return (!mo60148e() || (m60234a = this.f93809a.m60234a()) == null) ? "" : m60234a;
    }

    @Override // com.tencent.qmsp.oaid2.InterfaceC16864b
    /* renamed from: e */
    public boolean mo60148e() {
        C16893r c16893r = this.f93809a;
        if (c16893r != null) {
            return c16893r.m60237c();
        }
        return false;
    }

    @Override // com.tencent.qmsp.oaid2.InterfaceC16864b
    /* renamed from: j */
    public void mo60149j() {
        C16893r c16893r = this.f93809a;
        if (c16893r != null) {
            c16893r.m60235a(C16870e.m60161a(this.f93810b));
        } else {
            mo60240b();
        }
    }

    @Override // com.tencent.qmsp.oaid2.InterfaceC16864b
    /* renamed from: k */
    public boolean mo60150k() {
        return false;
    }

    @Override // com.tencent.qmsp.oaid2.InterfaceC16864b
    /* renamed from: l */
    public void mo60151l() {
        C16893r c16893r = this.f93809a;
        if (c16893r != null) {
            c16893r.m60238d();
        }
    }

    @Override // com.tencent.qmsp.oaid2.InterfaceC16864b
    /* renamed from: a */
    public String mo60145a() {
        String m60236b;
        return (!mo60148e() || (m60236b = this.f93809a.m60236b()) == null) ? "" : m60236b;
    }

    @Override // com.tencent.qmsp.oaid2.InterfaceC16894s
    /* renamed from: a */
    public void mo60239a(boolean z) {
        IVendorCallback iVendorCallback = this.f93811c;
        if (iVendorCallback != null) {
            iVendorCallback.onResult(mo60148e(), mo60147d(), mo60145a());
        }
    }
}
