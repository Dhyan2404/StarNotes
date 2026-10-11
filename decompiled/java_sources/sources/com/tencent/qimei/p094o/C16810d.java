package com.tencent.qimei.p094o;

import android.annotation.SuppressLint;
import android.os.SystemClock;
import android.text.TextUtils;
import com.tencent.qimei.ac.C16743b;
import com.tencent.qimei.p079aa.C16734a;
import com.tencent.qimei.p080ab.C16741a;
import com.tencent.qimei.p083d.AbstractC16769a;
import com.tencent.qimei.p084e.C16774b;
import com.tencent.qimei.p084e.C16775c;
import com.tencent.qimei.p084e.InterfaceC16776d;
import com.tencent.qmsp.oaid2.VendorManager;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@SuppressLint({"MissingPermission"})
/* renamed from: com.tencent.qimei.o.d */
/* loaded from: classes10.dex */
public class C16810d {

    /* renamed from: a */
    public static final Map<String, C16810d> f93559a = new ConcurrentHashMap();

    /* renamed from: b */
    public final String f93560b;

    /* renamed from: c */
    public final Object f93561c = new Object();

    /* renamed from: d */
    public boolean f93562d = false;

    public C16810d(String str) {
        this.f93560b = str;
    }

    /* renamed from: a */
    public static synchronized C16810d m59998a(String str) {
        C16810d c16810d;
        synchronized (C16810d.class) {
            Map<String, C16810d> map = f93559a;
            c16810d = map.get(str);
            if (c16810d == null) {
                c16810d = new C16810d(str);
                map.put(str, c16810d);
            }
        }
        return c16810d;
    }

    /* renamed from: d */
    public String m60007d() {
        String str = C16734a.m59797a(this.f93560b).m59798a().f93389p;
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        C16743b m59798a = C16734a.m59797a(this.f93560b).m59798a();
        return !(m59798a.f93375b && m59798a.f93383j && C16741a.m59816a(C16741a.a.f93360w, m59798a.f93395v).booleanValue()) ? "" : C16775c.m59907j().m59915h();
    }

    /* renamed from: e */
    public String m60008e() {
        String str = C16734a.m59797a(this.f93560b).m59798a().f93390q;
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        C16743b m59798a = C16734a.m59797a(this.f93560b).m59798a();
        return !(m59798a.f93376c && m59798a.f93383j && C16741a.m59816a(C16741a.a.f93361x, m59798a.f93395v).booleanValue()) ? "" : C16775c.m59907j().m59916i();
    }

    /* renamed from: f */
    public String m60009f() {
        String str = C16734a.m59797a(this.f93560b).m59798a().f93392s;
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        C16743b m59798a = C16734a.m59797a(this.f93560b).m59798a();
        return !(m59798a.f93378e && m59798a.f93383j && C16741a.m59816a(C16741a.a.f93363z, m59798a.f93395v).booleanValue()) ? "" : C16775c.m59907j().m59918l();
    }

    /* renamed from: g */
    public String m60010g() {
        String str = C16734a.m59797a(this.f93560b).m59798a().f93393t;
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        C16743b m59798a = C16734a.m59797a(this.f93560b).m59798a();
        return !(m59798a.f93379f && m59798a.f93383j && C16741a.m59816a(C16741a.a.f93346A, m59798a.f93395v).booleanValue()) ? "" : C16775c.m59907j().m59912e();
    }

    /* renamed from: h */
    public String m60011h() {
        String str;
        String str2 = C16734a.m59797a(this.f93560b).m59798a().f93388o;
        return !TextUtils.isEmpty(str2) ? str2 : (C16734a.m59797a(this.f93560b).m59798a().m59821c() && (str = C16775c.m59907j().f93471h) != null) ? str : "";
    }

    /* renamed from: b */
    public String m60005b() {
        return !C16734a.m59797a(this.f93560b).m59798a().m59820b() ? "" : C16775c.m59907j().m59910c();
    }

    /* renamed from: c */
    public String m60006c() {
        String str = C16734a.m59797a(this.f93560b).m59798a().f93394u;
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        C16743b m59798a = C16734a.m59797a(this.f93560b).m59798a();
        return !(m59798a.f93382i && m59798a.f93383j) ? "" : C16775c.m59907j().m59911d();
    }

    /* renamed from: a */
    public static /* synthetic */ void m60000a(C16810d c16810d, InterfaceC16776d interfaceC16776d) {
        c16810d.f93562d = false;
        AbstractC16769a.m59895a().mo59896a(10000L, new RunnableC16808b(c16810d, interfaceC16776d));
        C16775c m59907j = C16775c.m59907j();
        C16809c c16809c = new C16809c(c16810d, interfaceC16776d);
        if (m59907j.f93465b == null) {
            c16809c.mo59929a(3);
        } else {
            if (m59907j.f93471h != null) {
                return;
            }
            m59907j.f93466c = SystemClock.elapsedRealtime();
            new VendorManager().getVendorInfo(m59907j.f93465b, new C16774b(m59907j, c16809c));
        }
    }

    /* renamed from: a */
    public String m60004a() {
        String str = C16734a.m59797a(this.f93560b).m59798a().f93391r;
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        C16743b m59798a = C16734a.m59797a(this.f93560b).m59798a();
        return !(m59798a.f93377d && m59798a.f93383j && C16741a.m59816a(C16741a.a.f93362y, m59798a.f93395v).booleanValue()) ? "" : C16775c.m59907j().m59909b();
    }
}
