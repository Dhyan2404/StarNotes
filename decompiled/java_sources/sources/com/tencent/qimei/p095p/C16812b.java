package com.tencent.qimei.p095p;

import com.tencent.qimei.codez.FalconSdk;
import com.tencent.qimei.codez.IFalconSdk;
import com.tencent.qimei.codez.shell.UserInfoType;
import com.tencent.qimei.p079aa.C16734a;
import com.tencent.qimei.p083d.AbstractC16769a;
import com.tencent.qimei.p084e.C16773a;
import com.tencent.qimei.p084e.C16775c;
import com.tencent.qimei.p092m.C16801b;
import com.tencent.qimei.p093n.C16806a;
import com.tencent.qimei.p094o.C16810d;
import com.tencent.qimei.p105y.C16855a;
import com.tencent.qimei.p105y.C16858d;

/* renamed from: com.tencent.qimei.p.b */
/* loaded from: classes10.dex */
public class C16812b {

    /* renamed from: a */
    public static C16812b f93565a;

    /* renamed from: b */
    public boolean f93566b = false;

    /* renamed from: a */
    public static C16812b m60012a() {
        if (f93565a == null) {
            synchronized (C16812b.class) {
                if (f93565a == null) {
                    f93565a = new C16812b();
                }
            }
        }
        return f93565a;
    }

    /* renamed from: b */
    public String m60014b() {
        try {
            return FalconSdk.getInstance().getVersion();
        } catch (Throwable unused) {
            return "";
        }
    }

    /* renamed from: a */
    public synchronized boolean m60013a(String str) {
        boolean z;
        if (!C16734a.m59797a(str).f93331c.m59819a()) {
            return false;
        }
        C16810d m59998a = C16810d.m59998a(str);
        C16775c m59907j = C16775c.m59907j();
        C16858d m60143b = C16858d.m60143b();
        C16855a c16855a = new C16855a(str);
        try {
            IFalconSdk falconSdk = FalconSdk.getInstance();
            try {
                falconSdk.setSoPath(C16734a.m59797a(str).f93331c.f93387n);
            } catch (Throwable unused) {
            }
            z = falconSdk.setUserInfo(UserInfoType.TYPE_APP_KEY.toString(), str).setUserInfo(UserInfoType.TYPE_Q16.toString(), c16855a.mo60063g()).setUserInfo(UserInfoType.TYPE_Q36.toString(), c16855a.mo60056a()).setUserInfo(UserInfoType.TYPE_CHANNEL_ID.toString(), c16855a.m60142c() == null ? "" : c16855a.m60142c().mo60058b()).setUserInfo(UserInfoType.TYPE_USER_ID_PARAM.toString(), c16855a.m60142c() == null ? "" : c16855a.m60142c().mo60060d()).setUserInfo(UserInfoType.TYPE_EI.toString(), m59998a.m60007d()).setUserInfo(UserInfoType.TYPE_SI.toString(), m59998a.m60008e()).setUserInfo(UserInfoType.TYPE_MC.toString(), m59998a.m60009f()).setUserInfo(UserInfoType.TYPE_CD.toString(), m59998a.m60010g()).setUserInfo(UserInfoType.TYPE_NET_WORK_TYPE.toString(), m59907j.m59919m()).setUserInfo(UserInfoType.TYPE_AD.toString(), m59998a.m60004a()).setUserInfo(UserInfoType.TYPE_LOCAL_IP.toString(), m59907j.m59917k()).setUserInfo(UserInfoType.TYPE_APP_VERSION.toString(), C16773a.m59898a()).setUserInfo(UserInfoType.TYPE_QM_VERSION.toString(), m60143b.getSdkVersion()).setUserInfo(UserInfoType.TYPE_OD.toString(), m59998a.m60011h()).init(m60143b.mo60059c());
        } catch (Throwable th) {
            if (C16801b.f93541a) {
                C16806a.m59992a(th);
            }
            z = false;
        }
        C16806a.m59995b("SDK_INIT", "Falcon %s init(appKey: %s)，r:%b", m60014b(), str, Boolean.valueOf(z));
        if (z) {
            AbstractC16769a.m59895a().mo59896a(C16734a.m59797a(str).f93331c.m59830l() * 1000, new RunnableC16811a(this, str));
        }
        return z;
    }

    /* renamed from: b */
    public synchronized boolean m60015b(String str) {
        if (!C16734a.m59797a(str).m59798a().m59819a()) {
            return false;
        }
        if (this.f93566b) {
            return true;
        }
        try {
            this.f93566b = FalconSdk.getInstance().report();
        } catch (Throwable th) {
            this.f93566b = false;
            if (C16801b.f93541a) {
                C16806a.m59992a(th);
            }
        }
        C16806a.m59995b("REPORT", "Falcon report(appKey: %s)，r:%b", str, Boolean.valueOf(this.f93566b));
        return this.f93566b;
    }
}
