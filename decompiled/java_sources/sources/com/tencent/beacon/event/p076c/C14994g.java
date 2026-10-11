package com.tencent.beacon.event.p076c;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import androidx.annotation.NonNull;
import com.tencent.beacon.base.util.C14953b;
import com.tencent.beacon.base.util.C14954c;
import com.tencent.beacon.event.open.EventType;
import com.tencent.beacon.p059a.p060a.C14870b;
import com.tencent.beacon.p059a.p060a.C14871c;
import com.tencent.beacon.p059a.p061b.AbstractC14874b;
import com.tencent.beacon.p059a.p061b.C14881i;
import com.tencent.beacon.p059a.p062c.C14887b;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;
import org.apache.commons.collections4.IteratorUtils;

/* renamed from: com.tencent.beacon.event.c.g */
/* loaded from: classes10.dex */
public class C14994g {

    /* renamed from: a */
    private static final Map<String, C14994g> f93059a = new ConcurrentHashMap(5);

    /* renamed from: b */
    private static volatile Handler f93060b;

    /* renamed from: B */
    private volatile boolean f93062B;

    /* renamed from: m */
    private final Context f93073m;

    /* renamed from: n */
    private final String f93074n;

    /* renamed from: p */
    private long f93076p;

    /* renamed from: t */
    private long f93080t;

    /* renamed from: u */
    private long f93081u;

    /* renamed from: v */
    private long f93082v;

    /* renamed from: w */
    private long f93083w;

    /* renamed from: x */
    private long f93084x;

    /* renamed from: y */
    private long f93085y;

    /* renamed from: z */
    private SharedPreferences f93086z;

    /* renamed from: c */
    private final String f93063c = "normal_log_id";

    /* renamed from: d */
    private final String f93064d = "realtime_log_id";

    /* renamed from: e */
    private final String f93065e = "immediate_log_id";

    /* renamed from: f */
    private final String f93066f = "normal_min_log_id";

    /* renamed from: g */
    private final String f93067g = "normal_max_log_id";

    /* renamed from: h */
    private final String f93068h = "realtime_min_log_id";

    /* renamed from: i */
    private final String f93069i = "realtime_max_log_id";

    /* renamed from: j */
    private final String f93070j = "immediate_min_log_id";

    /* renamed from: k */
    private final String f93071k = "immediate_max_log_id";

    /* renamed from: l */
    private final String f93072l = "on_date";

    /* renamed from: o */
    private final List<String> f93075o = new ArrayList();

    /* renamed from: q */
    private AtomicLong f93077q = new AtomicLong(0);

    /* renamed from: r */
    private AtomicLong f93078r = new AtomicLong(0);

    /* renamed from: s */
    private AtomicLong f93079s = new AtomicLong(0);

    /* renamed from: A */
    private final Runnable f93061A = new RunnableC14992e(this);

    private C14994g(Context context, String str) {
        this.f93073m = context;
        this.f93074n = str;
    }

    /* renamed from: c */
    private void m59573c() {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        if (m59577e()) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.f93076p);
            String str6 = "";
            sb.append("");
            String sb2 = sb.toString();
            String m58979c = C14887b.m58979c(this.f93073m);
            String packageName = this.f93073m.getPackageName();
            if (this.f93080t == 0) {
                str = "";
            } else {
                str = (this.f93080t - 1) + "";
            }
            if (this.f93081u == 0) {
                str2 = "";
            } else {
                str2 = this.f93081u + "";
            }
            if (this.f93082v == 0) {
                str3 = "";
            } else {
                str3 = (this.f93082v - 1) + "";
            }
            if (this.f93083w == 0) {
                str4 = "";
            } else {
                str4 = this.f93083w + "";
            }
            if (this.f93084x == 0) {
                str5 = "";
            } else {
                str5 = (this.f93084x - 1) + "";
            }
            if (this.f93085y != 0) {
                str6 = this.f93085y + "";
            }
            C14881i.m58960e().m58953a("701", "process_name=" + m58979c + "&real_logid_min=" + str + "&real_logid_max=" + str2 + "&normal_logid_min=" + str3 + "&normal_logid_max=" + str4 + "&immediate_logid_min=" + str5 + "&immediate_logid_max=" + str6 + "&logid_day=" + sb2.substring(0, sb2.length() - 3) + "&appkey=" + this.f93074n + "&bundleid=" + packageName);
            m59581g();
        }
    }

    /* renamed from: d */
    private void m59575d() {
        SharedPreferences m59566a = m59566a(this.f93073m);
        this.f93076p = m59566a.getLong("on_date", 0L);
        this.f93078r.set(m59566a.getLong("realtime_log_id", 0L));
        this.f93077q.set(m59566a.getLong("normal_log_id", 0L));
        this.f93079s.set(m59566a.getLong("immediate_log_id", 0L));
        this.f93080t = m59566a.getLong("realtime_min_log_id", 0L);
        this.f93081u = m59566a.getLong("realtime_max_log_id", 0L);
        this.f93082v = m59566a.getLong("normal_min_log_id", 0L);
        this.f93083w = m59566a.getLong("normal_max_log_id", 0L);
        this.f93084x = m59566a.getLong("immediate_min_log_id", 0L);
        this.f93085y = m59566a.getLong("immediate_max_log_id", 0L);
        C14954c.m59391a("[LogID " + this.f93074n + IteratorUtils.f104924b, " load LogID from sp, date: %s , realtime: %d, normal: %d, immediate: %d", Long.valueOf(this.f93076p), Long.valueOf(this.f93078r.get()), Long.valueOf(this.f93077q.get()), Long.valueOf(this.f93079s.get()));
    }

    /* renamed from: e */
    private boolean m59577e() {
        long m59384d = C14953b.m59384d();
        long j = this.f93076p;
        return (j == 0 || C14953b.m59367a(m59384d, j)) ? false : true;
    }

    /* renamed from: f */
    private void m59579f() {
        HashMap hashMap = new HashMap();
        hashMap.put("e_l_e_k", this.f93074n);
        C14870b.m58921a().m58928a(new C14871c(14, hashMap));
    }

    /* renamed from: g */
    private void m59581g() {
        this.f93080t = this.f93081u + 1;
        this.f93082v = this.f93083w + 1;
        this.f93084x = this.f93085y + 1;
    }

    /* renamed from: b */
    public synchronized boolean m59589b() {
        return this.f93062B;
    }

    /* renamed from: a */
    public static synchronized C14994g m59568a(Context context, @NonNull String str) {
        C14994g c14994g;
        synchronized (C14994g.class) {
            Map<String, C14994g> map = f93059a;
            c14994g = map.get(str);
            if (c14994g == null) {
                c14994g = new C14994g(context, str);
                map.put(str, c14994g);
            }
        }
        return c14994g;
    }

    /* renamed from: a */
    public synchronized String m59587a(String str, EventType eventType) {
        if (!this.f93062B) {
            m59588a();
            this.f93062B = true;
        }
        if (this.f93075o.contains(str)) {
            return "";
        }
        long m59565a = m59565a(eventType);
        m59573c();
        this.f93076p = C14953b.m59384d();
        m59570a(m59565a, eventType);
        C14954c.m59391a("[stat " + this.f93074n + IteratorUtils.f104924b, "type: %s, code: %s, logID: %s.", eventType, str, Long.valueOf(m59565a));
        f93060b.post(this.f93061A);
        return m59565a + "";
    }

    /* renamed from: a */
    private long m59565a(EventType eventType) {
        switch (C14993f.f93058a[eventType.ordinal()]) {
            case 1:
            case 2:
                return this.f93077q.incrementAndGet();
            case 3:
            case 4:
                return this.f93078r.incrementAndGet();
            case 5:
                return this.f93079s.incrementAndGet();
            case 6:
                return this.f93079s.incrementAndGet();
            default:
                return -1L;
        }
    }

    /* renamed from: a */
    private void m59570a(long j, EventType eventType) {
        if (eventType != EventType.REALTIME && eventType != EventType.DT_REALTIME) {
            if (eventType != EventType.NORMAL && eventType != EventType.DT_NORMAL) {
                if (eventType == EventType.IMMEDIATE_MSF || eventType == EventType.IMMEDIATE) {
                    long j2 = this.f93085y;
                    this.f93085y = j2 == 0 ? j : Math.max(j, j2);
                    long j3 = this.f93084x;
                    if (j3 != 0) {
                        j = Math.min(j, j3);
                    }
                    this.f93084x = j;
                    return;
                }
                return;
            }
            long j4 = this.f93083w;
            this.f93083w = j4 == 0 ? j : Math.max(j, j4);
            long j5 = this.f93082v;
            if (j5 != 0) {
                j = Math.min(j, j5);
            }
            this.f93082v = j;
            return;
        }
        long j6 = this.f93081u;
        this.f93081u = j6 == 0 ? j : Math.max(j, j6);
        long j7 = this.f93080t;
        if (j7 != 0) {
            j = Math.min(j, j7);
        }
        this.f93080t = j;
    }

    /* renamed from: a */
    public synchronized void m59588a() {
        if (this.f93062B) {
            return;
        }
        C14954c.m59392a("LogIDGenerator init appkey = %s", this.f93074n);
        f93060b = AbstractC14874b.m58931a().mo58935a(113);
        this.f93075o.add("rqd_model");
        this.f93075o.add("rqd_appresumed");
        m59575d();
        m59579f();
        this.f93062B = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public SharedPreferences m59566a(Context context) {
        if (this.f93086z == null) {
            this.f93086z = context.getSharedPreferences("new_b_log_ID_" + C14887b.m58979c(context) + "_" + this.f93074n, 0);
        }
        return this.f93086z;
    }
}
