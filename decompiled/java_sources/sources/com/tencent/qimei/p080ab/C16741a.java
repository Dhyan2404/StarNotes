package com.tencent.qimei.p080ab;

import com.onyx.android.sdk.data.common.cloud.Constant;
import com.tencent.qimei.p079aa.C16737d;
import com.tencent.qimei.p081b.C16763b;
import com.tencent.qimei.p090k.C16790b;
import com.tencent.qimei.p090k.C16791c;
import com.tencent.qimei.p090k.C16792d;

/* renamed from: com.tencent.qimei.ab.a */
/* loaded from: classes10.dex */
public class C16741a {

    /* renamed from: a */
    public static final C16741a f93345a = new C16741a();

    /* renamed from: com.tencent.qimei.ab.a$a */
    /* loaded from: classes10.dex */
    public @interface a {

        /* renamed from: s */
        public static final C16790b f93356s = new C16790b(C16763b.m59891a(0), true);

        /* renamed from: t */
        public static final C16790b f93357t = new C16790b(C16763b.m59891a(1), true);

        /* renamed from: u */
        public static final C16790b f93358u = new C16790b(C16763b.m59891a(5), true);

        /* renamed from: v */
        public static final C16790b f93359v = new C16790b(Constant.TAG_USER_ID, true);

        /* renamed from: w */
        public static final C16790b f93360w = new C16790b(C16763b.m59891a(6), true);

        /* renamed from: x */
        public static final C16790b f93361x = new C16790b(C16763b.m59891a(7), true);

        /* renamed from: y */
        public static final C16790b f93362y = new C16790b(C16763b.m59891a(11), true);

        /* renamed from: z */
        public static final C16790b f93363z = new C16790b(C16763b.m59891a(8), true);

        /* renamed from: A */
        public static final C16790b f93346A = new C16790b(C16763b.m59891a(9), true);

        /* renamed from: B */
        public static final C16790b f93347B = new C16790b("processInfo", true);

        /* renamed from: C */
        public static final C16790b f93348C = new C16790b("audit", false);

        /* renamed from: D */
        public static final C16790b f93349D = new C16790b(C16763b.m59891a(10), false);

        /* renamed from: E */
        public static final C16790b f93350E = new C16790b("report", true);

        /* renamed from: F */
        public static final C16790b f93351F = new C16790b("isBidEnable", true);

        /* renamed from: G */
        public static final C16790b f93352G = new C16790b("oz", true);

        /* renamed from: H */
        public static final C16790b f93353H = new C16790b("oo", true);

        /* renamed from: I */
        public static final C16790b f93354I = new C16790b("spreadOpenMode", false);

        /* renamed from: J */
        public static final C16790b f93355J = new C16790b("isStrictMode", true);
    }

    /* renamed from: com.tencent.qimei.ab.a$b */
    /* loaded from: classes10.dex */
    public @interface b {

        /* renamed from: h */
        public static final C16791c f93364h = new C16791c("reportRate", 10);

        /* renamed from: i */
        public static final C16791c f93365i = new C16791c("jsTime", 0);

        /* renamed from: j */
        public static final C16791c f93366j = new C16791c("x5Time", 0);

        /* renamed from: k */
        public static final C16791c f93367k = new C16791c("minHr", 30);

        /* renamed from: l */
        public static final C16791c f93368l = new C16791c("ardt", 4);

        /* renamed from: m */
        public static final C16791c f93369m = new C16791c("spreadInterval", 24);

        /* renamed from: n */
        public static final C16791c f93370n = new C16791c("spreadDelay", 30);
    }

    /* renamed from: com.tencent.qimei.ab.a$c */
    /* loaded from: classes10.dex */
    public @interface c {

        /* renamed from: d */
        public static final C16792d f93371d = new C16792d("version", "");

        /* renamed from: e */
        public static final C16792d f93372e = new C16792d("url", "");

        /* renamed from: f */
        public static final C16792d f93373f = new C16792d("peakTime", "23:50-00:10-60");
    }

    /* renamed from: a */
    public static String m59818a(C16792d c16792d, String str) {
        return c16792d.m59947a(C16737d.m59807a(str));
    }

    /* renamed from: a */
    public static Boolean m59816a(C16790b c16790b, String str) {
        String m59946a = c16790b.m59946a(C16737d.m59807a(str), c16790b.f93508a);
        return Boolean.valueOf((m59946a == null || m59946a.isEmpty()) ? c16790b.f93509b : "1".equals(m59946a));
    }

    /* renamed from: a */
    public static Integer m59817a(C16791c c16791c, String str) {
        String m59946a = c16791c.m59946a(C16737d.m59807a(str), c16791c.f93510a);
        if (m59946a != null && !m59946a.isEmpty()) {
            try {
                return Integer.valueOf(Integer.parseInt(m59946a));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return Integer.valueOf(c16791c.f93511b);
    }
}
