package com.tencent.qmsp.oaid2;

import android.content.Context;

/* renamed from: com.tencent.qmsp.oaid2.m0 */
/* loaded from: classes10.dex */
public class C16887m0 implements InterfaceC16864b {

    /* renamed from: a */
    public C16885l0 f93784a;

    @Override // com.tencent.qmsp.oaid2.InterfaceC16864b
    /* renamed from: a */
    public void mo60146a(Context context, IVendorCallback iVendorCallback) {
        this.f93784a = new C16885l0(context);
    }

    @Override // com.tencent.qmsp.oaid2.InterfaceC16864b
    /* renamed from: d */
    public String mo60147d() {
        return null;
    }

    @Override // com.tencent.qmsp.oaid2.InterfaceC16864b
    /* renamed from: e */
    public boolean mo60148e() {
        return "1".equals(m60210a("persist.sys.identifierid.supported", "0"));
    }

    @Override // com.tencent.qmsp.oaid2.InterfaceC16864b
    /* renamed from: j */
    public void mo60149j() {
    }

    @Override // com.tencent.qmsp.oaid2.InterfaceC16864b
    /* renamed from: k */
    public boolean mo60150k() {
        return true;
    }

    @Override // com.tencent.qmsp.oaid2.InterfaceC16864b
    /* renamed from: l */
    public void mo60151l() {
    }

    @Override // com.tencent.qmsp.oaid2.InterfaceC16864b
    /* renamed from: a */
    public String mo60145a() {
        return this.f93784a.m60206a(0, "");
    }

    /* renamed from: a */
    public static String m60210a(String str, String str2) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class, String.class).invoke(cls, str, "unknown");
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }
}
