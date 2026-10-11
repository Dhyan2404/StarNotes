package com.tencent.qimei.p097r;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Process;
import android.text.TextUtils;
import com.tencent.qimei.p079aa.C16734a;
import com.tencent.qimei.p081b.C16762a;
import com.tencent.qimei.p081b.C16763b;
import com.tencent.qimei.p084e.C16775c;
import com.tencent.qimei.p087h.C16783a;
import com.tencent.qimei.p090k.C16792d;
import com.tencent.qimei.p092m.C16800a;
import com.tencent.qimei.p094o.C16810d;
import com.tencent.qimei.p100t.C16837a;
import com.tencent.qimei.p105y.C16858d;
import com.tencent.qimei.sdk.Qimei;
import com.tencent.qimei.uin.C16842U;
import okhttp3.internal.http2.Http2ExchangeCodec;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.tencent.qimei.r.c */
/* loaded from: classes10.dex */
public class C16824c {

    /* renamed from: a */
    public static final C16824c f93600a = new C16824c();

    /* renamed from: com.tencent.qimei.r.c$a */
    /* loaded from: classes10.dex */
    public @interface a {

        /* renamed from: j */
        public static final String f93601j = C16763b.m59891a(11);

        /* renamed from: k */
        public static final String f93602k = C16763b.m59891a(20);

        /* renamed from: l */
        public static final String f93603l = C16763b.m59891a(9);

        /* renamed from: m */
        public static final String f93604m = C16763b.m59891a(6);

        /* renamed from: n */
        public static final String f93605n = C16763b.m59891a(7);

        /* renamed from: o */
        public static final String f93606o = C16763b.m59891a(8);

        /* renamed from: p */
        public static final String f93607p = C16763b.m59891a(5);

        /* renamed from: q */
        public static final String f93608q = C16763b.m59891a(0);

        /* renamed from: r */
        public static final String f93609r = C16763b.m59891a(1);
    }

    /* renamed from: com.tencent.qimei.r.c$b */
    /* loaded from: classes10.dex */
    public @interface b {

        /* renamed from: c */
        public static final C16792d f93610c = new C16792d("q16", "");

        /* renamed from: d */
        public static final C16792d f93611d = new C16792d("q36", "");
    }

    /* renamed from: b */
    public static Qimei m60032b(String str, String str2) {
        return new Qimei(b.f93610c.m59947a(str), b.f93611d.m59947a(str), str2);
    }

    /* renamed from: a */
    public String m60034a(String str, String str2) {
        StringBuilder sb;
        if (!str.isEmpty()) {
            sb = new StringBuilder();
        } else {
            if (!str2.isEmpty()) {
                sb = new StringBuilder();
                sb.append(str2);
                sb.append("/android");
                return sb.toString();
            }
            sb = new StringBuilder();
            str = C16783a.m59935a();
        }
        sb.append(str);
        sb.append("/android");
        return sb.toString();
    }

    /* renamed from: a */
    public String m60036a(String str, String str2, Qimei qimei, String str3) {
        String str4;
        try {
            JSONObject jSONObject = str3.isEmpty() ? new JSONObject() : new JSONObject(str3);
            jSONObject.put("appKey", str2);
            str4 = jSONObject.toString();
        } catch (JSONException e) {
            e.printStackTrace();
            str4 = "";
        }
        return m60035a(str, str2, qimei, System.currentTimeMillis(), str4);
    }

    /* renamed from: a */
    public void m60037a(JSONObject jSONObject, long j, String str) throws JSONException {
        String m59972a = C16800a.m59972a();
        Object m59977b = C16800a.m59977b(jSONObject.optString("key") + jSONObject.optString("params") + j + m59972a + C16775c.m59907j().m59925s() + str);
        jSONObject.put("time", String.valueOf(j));
        jSONObject.put("nonce", m59972a);
        jSONObject.put("sign", m59977b);
        jSONObject.put("extra", str);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(60:2|3|4|5|6|7|8|9|10|11|12|13|(1:15)(1:81)|16|17|18|19|20|21|22|(1:24)(1:80)|25|(1:27)(1:79)|28|29|30|31|32|33|34|35|36|(27:78|40|41|42|(1:44)(1:75)|45|46|47|48|49|(1:51)(1:74)|52|53|54|55|56|57|58|59|60|61|62|63|64|65|66|67)|39|40|41|42|(0)(0)|45|46|47|48|49|(0)(0)|52|53|54|55|56|57|58|59|60|61|62|63|64|65|66|67) */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0182, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0184, code lost:
    
        r0.printStackTrace();
        r0 = "";
     */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0142 A[Catch: JSONException -> 0x019a, TryCatch #0 {JSONException -> 0x019a, blocks: (B:3:0x0029, B:5:0x0039, B:7:0x0042, B:9:0x0047, B:11:0x0059, B:13:0x0060, B:16:0x0070, B:18:0x0099, B:20:0x00a2, B:22:0x00b4, B:25:0x00c5, B:28:0x00d2, B:30:0x00d7, B:32:0x00e0, B:34:0x00f7, B:36:0x0100, B:40:0x011d, B:42:0x0122, B:45:0x012c, B:47:0x0131, B:49:0x013a, B:52:0x014a, B:54:0x0151, B:56:0x015c, B:58:0x0165, B:60:0x016e, B:62:0x0179, B:65:0x0188, B:73:0x0184, B:74:0x0142, B:75:0x0128, B:76:0x010d, B:78:0x0115, B:79:0x00ce, B:80:0x00c1, B:81:0x0068, B:64:0x017d), top: B:2:0x0029, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0128 A[Catch: JSONException -> 0x019a, TryCatch #0 {JSONException -> 0x019a, blocks: (B:3:0x0029, B:5:0x0039, B:7:0x0042, B:9:0x0047, B:11:0x0059, B:13:0x0060, B:16:0x0070, B:18:0x0099, B:20:0x00a2, B:22:0x00b4, B:25:0x00c5, B:28:0x00d2, B:30:0x00d7, B:32:0x00e0, B:34:0x00f7, B:36:0x0100, B:40:0x011d, B:42:0x0122, B:45:0x012c, B:47:0x0131, B:49:0x013a, B:52:0x014a, B:54:0x0151, B:56:0x015c, B:58:0x0165, B:60:0x016e, B:62:0x0179, B:65:0x0188, B:73:0x0184, B:74:0x0142, B:75:0x0128, B:76:0x010d, B:78:0x0115, B:79:0x00ce, B:80:0x00c1, B:81:0x0068, B:64:0x017d), top: B:2:0x0029, inners: #1 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String m60035a(java.lang.String r16, java.lang.String r17, com.tencent.qimei.sdk.Qimei r18, long r19, java.lang.String r21) {
        /*
            Method dump skipped, instructions count: 415
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.qimei.p097r.C16824c.m60035a(java.lang.String, java.lang.String, com.tencent.qimei.sdk.Qimei, long, java.lang.String):java.lang.String");
    }

    /* renamed from: a */
    public final String m60033a(C16775c c16775c, C16810d c16810d, C16837a c16837a, String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            String str2 = "1";
            jSONObject.put("harmony", c16775c.m59927u() ? "1" : "0");
            int i = 0;
            jSONObject.put("clone", Process.myUid() / 100000 != 0 ? "1" : "0");
            jSONObject.put("containe", c16775c.m59913f());
            String str3 = "";
            jSONObject.put("oz", !C16734a.m59797a(c16810d.f93560b).m59798a().m59823e() ? "" : C16775c.m59907j().m59923q());
            if (C16734a.m59797a(c16810d.f93560b).m59798a().m59822d()) {
                str3 = C16775c.m59907j().m59921o();
            }
            jSONObject.put("oo", str3);
            if (!c16837a.m60107a()) {
                str2 = "0";
            }
            jSONObject.put("kelong", str2);
            jSONObject.put("multiUser", C16762a.m59879b(C16858d.m60143b().mo60059c()));
            jSONObject.put("bod", C16842U.m60110a(C16763b.m59891a(12)));
            jSONObject.put("brd", C16842U.m60110a(C16763b.m59891a(13)));
            jSONObject.put("dv", C16842U.m60110a(C16763b.m59891a(14)));
            jSONObject.put("firstLevel", C16842U.m60110a(C16763b.m59891a(15)));
            jSONObject.put("manufact", C16842U.m60110a(C16763b.m59891a(16)));
            jSONObject.put("name", C16842U.m60110a(C16763b.m59891a(17)));
            jSONObject.put(Http2ExchangeCodec.f103778h, C16842U.m60110a(C16763b.m59891a(18)));
            jSONObject.put("kernel", C16775c.m59907j().m59926t());
            Context mo60059c = C16858d.m60143b().mo60059c();
            if (mo60059c != null) {
                ApplicationInfo applicationInfo = mo60059c.getApplicationInfo();
                int i2 = applicationInfo != null ? applicationInfo.flags : 0;
                if (i2 >= 0 && (i2 & 1) == 1) {
                    i = 2;
                }
                String absolutePath = mo60059c.getFilesDir().getAbsolutePath();
                if (!TextUtils.isEmpty(absolutePath) && absolutePath.startsWith("/system")) {
                    i = 1;
                }
            }
            jSONObject.put("pre", String.valueOf(i));
            jSONObject.put("ip", c16775c.m59917k());
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject.toString();
    }
}
