package com.tencent.qimei.p097r;

import android.content.Context;
import android.text.TextUtils;
import com.tencent.qimei.p081b.C16763b;
import com.tencent.qimei.p091l.C16794b;
import com.tencent.qimei.p091l.C16798f;
import com.tencent.qimei.p105y.C16858d;
import com.tencent.qimei.sdk.Qimei;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.tencent.qimei.r.a */
/* loaded from: classes10.dex */
public class C16822a {

    /* renamed from: a */
    public static final String f93589a = C16763b.m59891a(2);

    /* renamed from: b */
    public static final String f93590b = C16763b.m59891a(3);

    /* renamed from: c */
    public static final String f93591c = C16763b.m59891a(4);

    /* renamed from: a */
    public static synchronized C16798f m60026a(Context context) {
        C16798f c16798f;
        synchronized (C16822a.class) {
            try {
                c16798f = C16798f.m59957a(context, "Q_V3");
            } catch (Exception e) {
                e.getMessage();
                c16798f = null;
            }
        }
        return c16798f;
    }

    /* renamed from: a */
    public static synchronized Qimei m60027a(String str) {
        String m59950a;
        HashMap hashMap;
        synchronized (C16822a.class) {
            Context mo60059c = C16858d.m60143b().mo60059c();
            if (mo60059c == null) {
                m59950a = "";
            } else {
                C16798f m60026a = m60026a(mo60059c);
                if (m60026a != null) {
                    String str2 = (String) m60026a.m59959a("Q_V3", "");
                    m60026a.m59960a();
                    if (!TextUtils.isEmpty(str2)) {
                        m59950a = str2;
                    }
                }
                C16794b m59949b = C16794b.m59949b();
                String str3 = f93589a;
                String m59951a = m59949b.m59951a(str3, f93591c, "");
                if (TextUtils.isEmpty(m59951a)) {
                    m59951a = m59949b.m59950a(f93590b, "");
                }
                m59950a = TextUtils.isEmpty(m59951a) ? m59949b.m59950a(str3, "") : m59951a;
            }
            if (m59950a != null && !m59950a.isEmpty()) {
                if (TextUtils.isEmpty(m59950a)) {
                    hashMap = null;
                } else {
                    hashMap = new HashMap(3);
                    try {
                        JSONObject jSONObject = new JSONObject(m59950a);
                        Iterator<String> keys = jSONObject.keys();
                        if (keys != null) {
                            while (keys.hasNext()) {
                                String next = keys.next();
                                hashMap.put(next, jSONObject.getString(next));
                            }
                        }
                    } catch (JSONException e) {
                        e.getMessage();
                        hashMap.put("A3", m59950a);
                    }
                }
                if (hashMap == null) {
                    return null;
                }
                String str4 = (String) hashMap.get("A3");
                String str5 = (String) hashMap.get("A153");
                if (TextUtils.isEmpty(str4) && TextUtils.isEmpty(str5)) {
                    return null;
                }
                Qimei qimei = new Qimei("", "", str);
                if (!TextUtils.isEmpty(str4)) {
                    qimei.m60080a(str4);
                }
                if (!TextUtils.isEmpty(str5)) {
                    qimei.m60082b(str5);
                }
                return qimei;
            }
            return null;
        }
    }
}
