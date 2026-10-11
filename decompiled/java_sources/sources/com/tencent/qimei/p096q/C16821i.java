package com.tencent.qimei.p096q;

import android.content.Context;
import com.tencent.qimei.p079aa.C16734a;
import com.tencent.qimei.p081b.C16762a;
import com.tencent.qimei.p083d.AbstractC16769a;
import com.tencent.qimei.p084e.C16775c;
import com.tencent.qimei.p085f.C16779c;
import com.tencent.qimei.p094o.C16810d;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.tencent.qimei.q.i */
/* loaded from: classes10.dex */
public class C16821i {

    /* renamed from: a */
    public static volatile C16821i f93587a;

    /* renamed from: b */
    public final C16818f f93588b = new C16818f();

    /* renamed from: b */
    public static synchronized C16821i m60021b() {
        C16821i c16821i;
        synchronized (C16821i.class) {
            if (f93587a == null) {
                synchronized (C16821i.class) {
                    if (f93587a == null) {
                        f93587a = new C16821i();
                    }
                }
            }
            c16821i = f93587a;
        }
        return c16821i;
    }

    /* renamed from: a */
    public C16815c m60022a() {
        return new C16815c();
    }

    /* renamed from: a */
    public void m60023a(Context context) {
    }

    /* renamed from: b */
    public void m60025b(C16815c c16815c, String str, String str2, String str3) {
        boolean m60020a;
        if (C16734a.m59797a(str2).f93331c.m59826h() && C16779c.m59933a(str2).m59934b()) {
            C16818f c16818f = this.f93588b;
            Map<String, Object> map = c16815c.f93568a;
            if (c16818f.f93577a.contains(str)) {
                m60020a = false;
            } else {
                StringBuilder sb = new StringBuilder();
                if (!map.isEmpty()) {
                    Iterator<Object> it2 = map.values().iterator();
                    while (it2.hasNext()) {
                        sb.append(it2.next().toString());
                    }
                }
                m60020a = c16818f.m60020a(str2 + str + sb.toString());
            }
            if (m60020a) {
                return;
            }
            AbstractC16769a.m59895a().mo59897a(new RunnableC16819g(this, c16815c, str, str2, str3));
        }
    }

    /* renamed from: a */
    public final void m60024a(C16815c c16815c, String str, String str2, String str3) {
        String str4;
        String str5 = "";
        C16816d c16816d = C16816d.f93572b;
        String m60018a = c16816d.m60018a(C16734a.m59797a(str2).f93331c.f93385l, str3);
        Map<String, Object> map = c16815c.f93568a;
        boolean z = c16815c.f93569b;
        try {
            JSONObject jSONObject = new JSONObject();
            if (z) {
                String m60004a = C16810d.m59998a(str2).m60004a();
                c16816d.m60019a(jSONObject, str2);
                C16775c m59907j = C16775c.m59907j();
                jSONObject.put("ip", m59907j.m59917k());
                jSONObject.put("networkType", m59907j.m59919m());
                jSONObject.put(InterfaceC16817e.f93576b, m60004a);
            }
            if (map != null) {
                for (Map.Entry<String, Object> entry : map.entrySet()) {
                    jSONObject.put(entry.getKey(), entry.getValue());
                }
            }
            try {
                str4 = C16762a.m59880b(jSONObject.toString(), C16816d.f93571a);
            } catch (Exception e) {
                e.printStackTrace();
                str4 = "";
            }
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("type", str);
            jSONObject2.put("params", str4);
            str5 = jSONObject2.toString();
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        C16762a.m59874a(m60018a, str5, new C16820h(this, str2, str, c16815c.f93570c));
    }
}
