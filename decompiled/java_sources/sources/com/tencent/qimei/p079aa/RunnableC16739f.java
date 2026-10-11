package com.tencent.qimei.p079aa;

import com.onyx.galaxy.note.message.data.MessageConst;
import com.tencent.qimei.p081b.C16762a;
import com.tencent.qimei.p083d.AbstractC16769a;
import com.tencent.qimei.p084e.C16773a;
import com.tencent.qimei.p084e.C16775c;
import com.tencent.qimei.p087h.C16783a;
import com.tencent.qimei.p088i.InterfaceC16785a;
import com.tencent.qimei.p091l.C16799g;
import com.tencent.qimei.p092m.C16800a;
import com.tencent.qimei.p093n.C16806a;
import com.tencent.qimei.p097r.C16833l;
import com.tencent.qimei.p105y.C16858d;
import com.tencent.qimei.p105y.InterfaceC16857c;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.tencent.qimei.aa.f */
/* loaded from: classes10.dex */
public class RunnableC16739f implements Runnable {

    /* renamed from: a */
    public final String f93341a;

    /* renamed from: c */
    public final C16736c f93343c;

    /* renamed from: b */
    public volatile AtomicBoolean f93342b = new AtomicBoolean(false);

    /* renamed from: d */
    public InterfaceC16740g f93344d = null;

    public RunnableC16739f(C16736c c16736c, String str) {
        this.f93343c = c16736c;
        this.f93341a = str;
    }

    /* renamed from: b */
    public final void m59815b() {
        AbstractC16769a.m59895a().mo59896a(TimeUnit.MILLISECONDS.convert(1L, TimeUnit.DAYS), this);
        InterfaceC16740g interfaceC16740g = this.f93344d;
        if (interfaceC16740g != null) {
            ((C16833l) interfaceC16740g).m60068n();
        }
        this.f93342b.set(false);
    }

    @Override // java.lang.Runnable
    public void run() {
        String str;
        String str2 = "";
        this.f93342b.set(true);
        String m59972a = C16800a.m59972a();
        String str3 = C16734a.m59797a(this.f93341a).m59798a().f93385l;
        if (str3.isEmpty()) {
            str = C16783a.m59935a() + "/config";
        } else {
            str = str3 + "/config";
        }
        String str4 = this.f93341a;
        C16858d m60143b = C16858d.m60143b();
        C16775c m59907j = C16775c.m59907j();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("key", C16762a.m59886d(m59972a, C16783a.m59936b()));
            m59907j.m59924r();
            jSONObject.put("platformId", 1);
            jSONObject.put("osVersion", m59907j.m59922p());
            jSONObject.put("appVersion", C16773a.m59898a());
            jSONObject.put("sdkVersion", m60143b.getSdkVersion());
            InterfaceC16857c m60144a = m60143b.m60144a();
            jSONObject.put("auditVersion", m60144a == null ? "" : m60144a.mo60064h());
            jSONObject.put("appKey", str4);
            jSONObject.put("configVersion", C16734a.m59797a(str4).m59798a().m59840v());
            jSONObject.put(MessageConst.KEY_PACKAGE_NAME, C16773a.m59902d());
            jSONObject.toString();
            str2 = jSONObject.toString();
        } catch (JSONException e) {
            e.printStackTrace();
        }
        C16762a.m59874a(str, str2, new C16738e(this, m59972a));
    }

    /* renamed from: a */
    public void m59814a(String str, boolean z) {
        try {
            C16737d.f93338a.put(this.f93341a, str);
            if (z) {
                C16799g m59964b = C16799g.m59964b(this.f93341a);
                try {
                    str = C16762a.m59880b(str, C16762a.m59869a("s_d"));
                } catch (Exception e) {
                    e.printStackTrace();
                }
                m59964b.m59968a("s_d", str);
                C16799g.m59964b(this.f93341a).m59967a("s_s_t", System.currentTimeMillis());
            }
        } catch (Throwable th) {
            C16806a.m59992a(th);
        }
    }

    /* renamed from: a */
    public void m59812a() {
        try {
            String m59971d = C16799g.m59964b(this.f93341a).m59971d("s_d");
            if (!m59971d.equals("")) {
                try {
                    m59971d = C16762a.m59870a(m59971d, C16762a.m59869a("s_d"));
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if (m59971d != null) {
                m59814a(m59971d, false);
            }
        } catch (Exception e2) {
            C16806a.m59992a(e2);
        }
    }

    /* renamed from: a */
    public final void m59813a(String str, String str2) {
        String str3;
        try {
            String m59947a = InterfaceC16785a.f93498c.m59947a(str);
            if (!m59947a.equals("0")) {
                if (m59947a.equals("304")) {
                    C16799g.m59964b(this.f93341a).m59967a("s_s_t", System.currentTimeMillis());
                }
                m59815b();
                return;
            }
            try {
                str3 = C16762a.m59870a(InterfaceC16785a.f93499d.m59947a(str), str2);
            } catch (Exception e) {
                e.printStackTrace();
                str3 = "";
            }
            m59814a(str3, true);
            this.f93343c.m59804a(true);
            m59815b();
        } catch (Throwable th) {
            C16806a.m59992a(th);
        }
    }
}
