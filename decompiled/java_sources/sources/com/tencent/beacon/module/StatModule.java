package com.tencent.beacon.module;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import com.tencent.beacon.base.util.C14953b;
import com.tencent.beacon.base.util.C14954c;
import com.tencent.beacon.event.open.BeaconEvent;
import com.tencent.beacon.event.open.BeaconReport;
import com.tencent.beacon.event.open.EventType;
import com.tencent.beacon.p059a.p060a.C14870b;
import com.tencent.beacon.p059a.p060a.C14871c;
import com.tencent.beacon.p059a.p060a.InterfaceC14872d;
import com.tencent.beacon.p059a.p061b.AbstractC14874b;
import com.tencent.beacon.p059a.p062c.C14887b;
import com.tencent.beacon.p059a.p062c.C14890e;
import com.tencent.beacon.p059a.p062c.C14891f;
import com.tencent.beacon.p059a.p063d.SharedPreferencesC14896a;
import com.tencent.beacon.p071c.C14967c;
import com.tencent.beacon.p071c.p072a.C14964c;
import com.tencent.beacon.p071c.p072a.C14965d;
import com.tencent.beacon.p073d.C14969b;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes10.dex */
public class StatModule implements BeaconModule, InterfaceC14872d {

    /* renamed from: a */
    private Context f93233a;

    /* renamed from: d */
    private C14969b f93236d;

    /* renamed from: b */
    private boolean f93234b = true;

    /* renamed from: c */
    private boolean f93235c = true;

    /* renamed from: e */
    private long f93237e = 0;

    /* renamed from: com.tencent.beacon.module.StatModule$4 */
    /* loaded from: classes10.dex */
    class RunnableC150094 implements Runnable {

        /* renamed from: a */
        final /* synthetic */ Map f93247a;

        @Override // java.lang.Runnable
        public void run() {
            BeaconReport.getInstance().report(BeaconEvent.builder().withCode("rqd_sensor").withParams(this.f93247a).build());
        }
    }

    /* renamed from: com.tencent.beacon.module.StatModule$5 */
    /* loaded from: classes10.dex */
    class RunnableC150105 implements Runnable {

        /* renamed from: a */
        final /* synthetic */ Map f93248a;

        @Override // java.lang.Runnable
        public void run() {
            BeaconReport.getInstance().report(BeaconEvent.builder().withCode("rqd_appresumed").withIsSucceed(true).withParams(this.f93248a).withType(EventType.REALTIME).build());
        }
    }

    /* renamed from: c */
    private void m59689c() {
        ((Application) this.f93233a).registerActivityLifecycleCallbacks(new C14965d(this));
    }

    /* renamed from: d */
    private void m59690d() {
        if (this.f93236d.m59485s()) {
            SharedPreferencesC14896a m59084a = SharedPreferencesC14896a.m59084a();
            if (C14953b.m59385e().equals(m59084a.getString("rqd_model", ""))) {
                return;
            }
            AbstractC14874b.m58931a().mo58940a(50000L, new Runnable() { // from class: com.tencent.beacon.module.StatModule.1
                @Override // java.lang.Runnable
                public void run() {
                    C14890e m59012l = C14890e.m59012l();
                    C14891f m59045e = C14891f.m59045e();
                    BeaconReport.getInstance().report(BeaconEvent.builder().withParams("A9", Build.BRAND).withParams("A10", m59045e.m59059h()).withParams("A11", m59012l.m59026g()).withParams("A12", m59012l.m59032n()).withParams("A13", m59012l.m59013A()).withParams("A14", m59012l.m59042x() + "m").withParams("A15", m59012l.m59039u() + "m").withParams("A16", m59012l.m59027h()).withParams("A17", m59012l.m59040v()).withParams("A18", "").withParams("A20", m59045e.m59063j()).withParams("A30", m59012l.m59043y() + "m").withParams("A19", m59012l.m59035q()).withParams("A52", "" + m59012l.m59044z()).withParams("A53", "" + m59012l.m59024e() + "m").withParams("A54", "" + m59012l.m59037s()).withParams("A55", m59012l.m59025f()).withParams("A56", m59012l.m59017E() ? "Y" : "N").withParams("A57", m59012l.m59014B()).withParams("A58", m59012l.m59031m() ? "Y" : "N").withParams("A59", m59012l.m59030k() + "m").withParams("A69", m59045e.m59065k()).withParams("A82", m59012l.m59041w()).withType(EventType.REALTIME).withCode("rqd_model").build());
                }
            });
            SharedPreferencesC14896a.a edit = m59084a.edit();
            if (C14953b.m59368a((SharedPreferences.Editor) edit)) {
                edit.putString("rqd_model", C14953b.m59385e());
            }
        }
    }

    /* renamed from: e */
    private void m59691e() {
        if (this.f93236d.m59485s()) {
            if (this.f93236d.m59482p()) {
                if (C14953b.m59385e().equals(SharedPreferencesC14896a.m59084a().getString("LAUEVE_DENGTA", ""))) {
                    C14954c.m59400d("[event] APP_LAUNCHED_EVENT has been uploaded!", new Object[0]);
                    return;
                }
            }
            C14890e m59012l = C14890e.m59012l();
            HashMap hashMap = new HashMap();
            hashMap.put("A19", m59012l.m59035q());
            hashMap.put("A63", "Y");
            hashMap.put("A21", C14887b.m58986g() ? "Y" : "N");
            hashMap.put("A45", C14887b.m58983e(this.f93233a) ? "Y" : "N");
            hashMap.put("A66", C14887b.m58985f(this.f93233a) ? "F" : "B");
            hashMap.put("A68", "" + C14887b.m58976b(this.f93233a));
            hashMap.put("A85", C14887b.f92592d ? "Y" : "N");
            hashMap.put("A9", Build.BRAND);
            hashMap.put("A14", m59012l.m59042x());
            C14891f m59045e = C14891f.m59045e();
            hashMap.put("A20", m59045e.m59063j());
            hashMap.put("A69", m59045e.m59065k());
            if (m59694a(hashMap)) {
                SharedPreferencesC14896a.a edit = SharedPreferencesC14896a.m59084a().edit();
                if (C14953b.m59368a((SharedPreferences.Editor) edit)) {
                    edit.putString("LAUEVE_DENGTA", C14953b.m59385e());
                }
            }
        }
    }

    /* renamed from: a */
    public void m59692a() {
    }

    /* renamed from: b */
    public void m59695b() {
    }

    /* renamed from: b */
    public static /* synthetic */ long m59688b(StatModule statModule, long j) {
        long j2 = statModule.f93237e + j;
        statModule.f93237e = j2;
        return j2;
    }

    /* renamed from: b */
    public void m59696b(final String str, final long j, final long j2) {
        if (this.f93236d.m59485s()) {
            AbstractC14874b.m58931a().mo58941a(new Runnable() { // from class: com.tencent.beacon.module.StatModule.3
                @Override // java.lang.Runnable
                public void run() {
                    BeaconReport.getInstance().report(BeaconEvent.builder().withParams("A110", String.valueOf(j2)).withParams("A111", str).withParams("A112", String.valueOf(j)).withCode("rqd_page").withType(EventType.NORMAL).build());
                    StatModule.m59688b(StatModule.this, j);
                    if (StatModule.this.f93237e >= 15000) {
                        StatModule.this.f93237e = 0L;
                    }
                }
            });
        }
    }

    @Override // com.tencent.beacon.module.BeaconModule
    /* renamed from: a */
    public void mo59665a(Context context) {
        this.f93233a = context;
        if (!C14887b.m58987g(context)) {
            C14954c.m59392a("non-main process. do not report rqd event", new Object[0]);
            return;
        }
        C14969b m59703b = ((StrategyModule) BeaconModule.f93217a.get(ModuleName.STRATEGY)).m59703b();
        this.f93236d = m59703b;
        this.f93235c = m59703b.m59486t();
        if (this.f93236d.m59484r()) {
            ((Application) this.f93233a).registerActivityLifecycleCallbacks(new C14964c(this));
        }
        C14870b.m58921a().m58927a(2, this);
        C14870b.m58921a().m58927a(10, this);
    }

    /* renamed from: b */
    public boolean m59697b(Map<String, String> map) {
        if (!this.f93236d.m59485s()) {
            return true;
        }
        return BeaconReport.getInstance().report(BeaconEvent.builder().withParams(map).withCode("rqd_heartbeat").withType(EventType.REALTIME).build()).isSuccess();
    }

    @Override // com.tencent.beacon.p059a.p060a.InterfaceC14872d
    /* renamed from: a */
    public void mo58930a(C14871c c14871c) {
        int i = c14871c.f92540a;
        if (i == 2) {
            Map map = (Map) c14871c.f92541b.get("d_m");
            if (map != null) {
                this.f93234b = C14953b.m59370a((String) map.get("modelEventUsable"), this.f93234b);
                this.f93235c = C14953b.m59370a((String) map.get("isPagePath"), this.f93235c);
                return;
            }
            return;
        }
        if (i != 10) {
            return;
        }
        m59691e();
        if (C14887b.m58987g(this.f93233a)) {
            new C14967c(this.f93233a).m59435a(this.f93236d);
        }
        if (this.f93234b) {
            m59690d();
        }
        if (this.f93235c) {
            m59689c();
        }
    }

    /* renamed from: a */
    public boolean m59694a(Map<String, String> map) {
        if (!this.f93236d.m59485s()) {
            return true;
        }
        return BeaconReport.getInstance().report(BeaconEvent.builder().withCode("rqd_applaunched").withParams(map).withType(EventType.REALTIME).build()).isSuccess();
    }

    /* renamed from: a */
    public void m59693a(final String str, final long j, final long j2) {
        if (this.f93236d.m59485s()) {
            AbstractC14874b.m58931a().mo58941a(new Runnable() { // from class: com.tencent.beacon.module.StatModule.2
                @Override // java.lang.Runnable
                public void run() {
                    BeaconReport.getInstance().report(BeaconEvent.builder().withParams("A110", String.valueOf(j2)).withParams("A111", str).withParams("A112", String.valueOf(j)).withCode("rqd_page_fgt").withType(EventType.REALTIME).build());
                }
            });
        }
    }
}
