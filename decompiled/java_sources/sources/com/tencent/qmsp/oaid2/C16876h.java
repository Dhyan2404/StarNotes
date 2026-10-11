package com.tencent.qmsp.oaid2;

import android.content.Context;
import android.os.IBinder;

/* renamed from: com.tencent.qmsp.oaid2.h */
/* loaded from: classes10.dex */
public class C16876h implements InterfaceC16864b, InterfaceC16874g {

    /* renamed from: a */
    public IVendorCallback f93741a;

    /* renamed from: d */
    public C16878i f93744d;

    /* renamed from: b */
    public String f93742b = "";

    /* renamed from: c */
    public String f93743c = "";

    /* renamed from: e */
    public boolean f93745e = false;

    /* renamed from: f */
    public boolean f93746f = false;

    @Override // com.tencent.qmsp.oaid2.InterfaceC16864b
    /* renamed from: a */
    public void mo60146a(Context context, IVendorCallback iVendorCallback) {
        this.f93741a = iVendorCallback;
        C16878i c16878i = new C16878i(context);
        this.f93744d = c16878i;
        c16878i.m60182a(this);
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return null;
    }

    @Override // com.tencent.qmsp.oaid2.InterfaceC16874g
    /* renamed from: b */
    public void mo60174b() {
        IVendorCallback iVendorCallback = this.f93741a;
        if (iVendorCallback != null) {
            iVendorCallback.onResult(false, null, null);
        }
    }

    @Override // com.tencent.qmsp.oaid2.InterfaceC16864b
    /* renamed from: d */
    public String mo60147d() {
        return this.f93743c;
    }

    @Override // com.tencent.qmsp.oaid2.InterfaceC16864b
    /* renamed from: e */
    public boolean mo60148e() {
        return this.f93746f;
    }

    @Override // com.tencent.qmsp.oaid2.InterfaceC16864b
    /* renamed from: j */
    public void mo60149j() {
        this.f93744d.m60182a(this);
    }

    @Override // com.tencent.qmsp.oaid2.InterfaceC16864b
    /* renamed from: k */
    public boolean mo60150k() {
        return false;
    }

    @Override // com.tencent.qmsp.oaid2.InterfaceC16864b
    /* renamed from: l */
    public void mo60151l() {
        C16878i c16878i;
        if (!this.f93745e || (c16878i = this.f93744d) == null) {
            return;
        }
        c16878i.m60181a();
    }

    @Override // com.tencent.qmsp.oaid2.InterfaceC16864b
    /* renamed from: a */
    public String mo60145a() {
        return this.f93742b;
    }

    @Override // com.tencent.qmsp.oaid2.InterfaceC16874g
    /* renamed from: a */
    public void mo60173a(InterfaceC16872f interfaceC16872f) {
        try {
            String mo60168c = interfaceC16872f.mo60168c();
            this.f93742b = mo60168c;
            if (mo60168c == null) {
                this.f93742b = "";
            }
        } catch (Exception unused) {
        }
        try {
            String mo60169i = interfaceC16872f.mo60169i();
            this.f93743c = mo60169i;
            if (mo60169i == null) {
                this.f93743c = "";
            }
        } catch (Exception unused2) {
        }
        try {
            this.f93746f = interfaceC16872f.mo60167b();
        } catch (Exception unused3) {
        }
        this.f93745e = true;
        IVendorCallback iVendorCallback = this.f93741a;
        if (iVendorCallback != null) {
            iVendorCallback.onResult(this.f93746f, this.f93743c, this.f93742b);
        }
    }
}
