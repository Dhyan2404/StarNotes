package com.tencent.qimei.p096q;

import android.text.TextUtils;
import com.tencent.qimei.p084e.C16775c;
import com.tencent.qimei.p087h.C16783a;
import com.tencent.qimei.p105y.C16855a;
import com.tencent.qimei.p105y.C16858d;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.tencent.qimei.q.d */
/* loaded from: classes10.dex */
public class C16816d {

    /* renamed from: a */
    public static final String f93571a = "dZdcQik9lkNsvFYx";

    /* renamed from: b */
    public static final C16816d f93572b = new C16816d();

    /* renamed from: c */
    public int f93573c = -1;

    /* renamed from: d */
    public String f93574d = "";

    /* renamed from: e */
    public String f93575e = "";

    /* renamed from: a */
    public String m60018a(String str, String str2) {
        StringBuilder sb;
        if (str.isEmpty()) {
            sb = new StringBuilder();
            str = C16783a.m59935a();
        } else {
            sb = new StringBuilder();
        }
        sb.append(str);
        sb.append(str2);
        return sb.toString();
    }

    /* renamed from: a */
    public final void m60019a(JSONObject jSONObject, String str) throws JSONException {
        if (this.f93573c == -1) {
            C16775c.m59907j().m59924r();
            this.f93573c = 1;
        }
        C16855a c16855a = new C16855a(str);
        if (TextUtils.isEmpty(this.f93574d)) {
            this.f93574d = c16855a.mo60063g();
        }
        if (TextUtils.isEmpty(this.f93575e)) {
            this.f93575e = c16855a.mo60056a();
        }
        String sdkVersion = C16858d.m60143b().getSdkVersion();
        jSONObject.put("platformId", this.f93573c);
        jSONObject.put("q16", this.f93574d);
        jSONObject.put("q36", this.f93575e);
        jSONObject.put("appKey", str);
        jSONObject.put("sdkVersion", sdkVersion);
    }
}
