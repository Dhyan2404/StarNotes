package com.tencent.beacon.p073d;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Base64;
import com.tencent.beacon.base.net.C14937c;
import com.tencent.beacon.base.net.C14950d;
import com.tencent.beacon.base.net.RequestType;
import com.tencent.beacon.base.net.call.Callback;
import com.tencent.beacon.base.net.call.JceRequestEntity;
import com.tencent.beacon.base.net.p066b.C14933b;
import com.tencent.beacon.base.util.C14953b;
import com.tencent.beacon.base.util.C14954c;
import com.tencent.beacon.module.StrategyModule;
import com.tencent.beacon.p059a.p060a.C14870b;
import com.tencent.beacon.p059a.p060a.C14871c;
import com.tencent.beacon.p059a.p061b.AbstractC14874b;
import com.tencent.beacon.p059a.p062c.C14887b;
import com.tencent.beacon.p059a.p062c.C14888c;
import com.tencent.beacon.p059a.p062c.C14890e;
import com.tencent.beacon.p059a.p062c.C14891f;
import com.tencent.beacon.p059a.p062c.C14895j;
import com.tencent.beacon.p059a.p063d.SharedPreferencesC14896a;
import com.tencent.beacon.pack.C15013a;
import com.tencent.beacon.pack.CommonStrategy;
import com.tencent.beacon.pack.ModuleStrategy;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* renamed from: com.tencent.beacon.d.i */
/* loaded from: classes10.dex */
public class RunnableC14976i implements Runnable, Callback<byte[]> {

    /* renamed from: b */
    private final StrategyModule f93011b;

    /* renamed from: d */
    private boolean f93013d;

    /* renamed from: c */
    private volatile boolean f93012c = false;

    /* renamed from: a */
    private final Context f93010a = C14888c.m58989c().m58997b();

    public RunnableC14976i(StrategyModule strategyModule) {
        this.f93011b = strategyModule;
    }

    /* renamed from: c */
    private void m59515c() {
        m59519f();
        this.f93012c = false;
    }

    /* renamed from: d */
    private void m59517d() {
        HashMap hashMap = new HashMap();
        hashMap.put("s_e_e", Boolean.FALSE);
        C14870b.m58921a().m58928a(new C14871c(7, hashMap));
    }

    /* renamed from: e */
    private void m59518e() {
        C14954c.m59392a("local strategyQuery finish!", new Object[0]);
        C14870b.m58921a().m58928a(new C14871c(10));
    }

    /* renamed from: f */
    private void m59519f() {
        long m59440b = this.f93011b.m59701a().m59440b() * 60000;
        AbstractC14874b.m58931a().mo58940a(m59440b, this);
        C14954c.m59392a("[strategy] next time: %d", Long.valueOf(m59440b));
    }

    /* renamed from: g */
    private void m59520g() {
        if (C14978k.m59530b() || C14978k.m59531c()) {
            C14954c.m59403e("[strategy] query times or query success times arrive max, return!", new Object[0]);
            this.f93011b.m59702a(true);
        } else {
            C14890e m59012l = C14890e.m59012l();
            C14891f m59045e = C14891f.m59045e();
            C14937c.m59312d().m59322b(JceRequestEntity.builder().m59334a(RequestType.STRATEGY).m59333a(100).m59341b(101).m59336a(C14888c.m58989c().m59002e()).m59342b(C14933b.m59282b(false)).m59337a(C14933b.m59282b(true), 8081).m59343b("A1", C14888c.m58989c().m59008k()).m59343b("A2", m59045e.m59048b()).m59343b("A4", m59045e.m59052d()).m59343b("A6", m59045e.m59055f()).m59343b("A7", m59012l.m59023d()).m59343b("A23", C14888c.m58989c().m58992a(C14888c.m58989c().m59002e())).m59343b("A31", m59012l.m59034p()).m59343b("A19", m59012l.m59035q()).m59343b("A66", C14887b.m58985f(this.f93010a) ? "F" : "B").m59343b("A67", C14887b.m58979c(this.f93010a)).m59343b("A68", String.valueOf(C14887b.m58976b(this.f93010a))).m59343b("A85", C14887b.f92592d ? "Y" : "N").m59339a(C14895j.m59078d()).m59340a()).m59351b(this);
        }
    }

    @Override // com.tencent.beacon.base.net.call.Callback
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onResponse(byte[] bArr) {
        m59522a(bArr, true);
        this.f93011b.m59702a(true);
        m59515c();
    }

    /* renamed from: b */
    public void m59526b() {
        byte[] bArr;
        try {
            try {
                String string = SharedPreferencesC14896a.m59084a().getString("strategy_data", "");
                if (!TextUtils.isEmpty(string)) {
                    bArr = Base64.decode(string, 0);
                } else {
                    C14977j m59527a = C14978k.m59527a(this.f93010a, 101);
                    bArr = m59527a != null ? m59527a.f93016c : null;
                }
                if (bArr != null) {
                    m59522a(bArr, false);
                } else {
                    C14954c.m59392a("[strategy] local strategy is null!", new Object[0]);
                }
            } catch (Exception e) {
                C14954c.m59393a(e);
            }
        } finally {
            m59518e();
        }
    }

    @Override // com.tencent.beacon.base.net.call.Callback
    public void onFailure(C14950d c14950d) {
        m59515c();
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f93012c = true;
        if (this.f93011b.m59701a().m59443e()) {
            return;
        }
        m59520g();
    }

    /* renamed from: c */
    private void m59516c(C14972e c14972e, C14969b c14969b, ModuleStrategy moduleStrategy) {
        ArrayList<String> arrayList = moduleStrategy.sampleEvent;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        C14954c.m59392a("[strategy] mid: %d , SampleEventSet changed...", Byte.valueOf(moduleStrategy.mId));
        this.f93013d = true;
        c14972e.m59497b(C14953b.m59364a(moduleStrategy.sampleEvent));
        c14969b.m59459b(C14953b.m59364a(moduleStrategy.sampleEvent));
    }

    /* renamed from: a */
    public void m59522a(byte[] bArr, boolean z) {
        try {
            CommonStrategy commonStrategy = new CommonStrategy();
            commonStrategy.readFrom(new C15013a(bArr));
            C14954c.m59392a("[strategy] -> common strategy: %s", commonStrategy);
            if (m59524a(commonStrategy, C14968a.m59436a()) && z) {
                SharedPreferencesC14896a.a edit = SharedPreferencesC14896a.m59084a().edit();
                if (C14953b.m59368a((SharedPreferences.Editor) edit)) {
                    edit.putString("strategy_data", Base64.encodeToString(bArr, 0));
                }
            }
            if (z) {
                C14978k.m59532d();
            }
        } catch (Throwable th) {
            C14954c.m59393a(th);
            C14954c.m59395b("[strategy] error to common strategy!", new Object[0]);
        }
    }

    /* renamed from: b */
    private void m59514b(C14972e c14972e, C14969b c14969b, ModuleStrategy moduleStrategy) {
        ArrayList<String> arrayList = moduleStrategy.preventEventCode;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        C14954c.m59392a("[strategy] mid: %d , PreventEventCode changed...", Byte.valueOf(moduleStrategy.mId));
        this.f93013d = true;
        c14972e.m59494a(C14953b.m59364a(moduleStrategy.preventEventCode));
        c14969b.m59453a(C14953b.m59364a(moduleStrategy.preventEventCode));
    }

    /* renamed from: a */
    public boolean m59524a(CommonStrategy commonStrategy, C14968a c14968a) {
        if (commonStrategy == null || c14968a == null) {
            return false;
        }
        String m59279a = C14933b.m59279a(commonStrategy.url);
        if (!m59279a.equals(C14933b.m59282b(true))) {
            C14954c.m59392a("[strategy] url changed to: %s", commonStrategy.url);
            this.f93013d = true;
            C14933b.m59286d(m59279a);
        }
        if (commonStrategy.queryInterval != c14968a.m59440b()) {
            C14954c.m59392a("[strategy] QueryPeriod changed to: %d", Integer.valueOf(commonStrategy.queryInterval));
            this.f93013d = true;
            c14968a.m59438a(commonStrategy.queryInterval);
        }
        if (m59525a(commonStrategy.moduleList)) {
            this.f93013d = true;
        }
        if (m59513a(commonStrategy.cloudParas, c14968a)) {
            this.f93013d = true;
        }
        return this.f93013d;
    }

    /* renamed from: a */
    public boolean m59525a(ArrayList<ModuleStrategy> arrayList) {
        C14972e m59442d = this.f93011b.m59701a().m59442d();
        if (arrayList == null) {
            m59442d.m59495a(false);
            m59517d();
            return false;
        }
        C14969b m59703b = this.f93011b.m59703b();
        Iterator<ModuleStrategy> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ModuleStrategy next = it2.next();
            if (next.mId == m59442d.m59496b()) {
                m59511a(m59442d, next);
                m59512a(next);
                m59510a(m59442d, m59703b, next);
                m59514b(m59442d, m59703b, next);
                m59516c(m59442d, m59703b, next);
            }
        }
        return this.f93013d;
    }

    /* renamed from: a */
    private void m59510a(C14972e c14972e, C14969b c14969b, ModuleStrategy moduleStrategy) {
        if (moduleStrategy.detail != null) {
            C14954c.m59392a("[strategy] mid: %d , detail changed...", Byte.valueOf(moduleStrategy.mId));
            c14972e.m59493a(moduleStrategy.detail);
            c14969b.m59452a(moduleStrategy.detail);
            this.f93013d = true;
        }
    }

    /* renamed from: a */
    private void m59511a(C14972e c14972e, ModuleStrategy moduleStrategy) {
        boolean z = moduleStrategy.onOff == 1;
        if (c14972e.m59498c() != z) {
            C14954c.m59392a("[strategy] mid: %d , isUsable changed: %b ", Byte.valueOf(moduleStrategy.mId), Boolean.valueOf(z));
            c14972e.m59495a(z);
            this.f93013d = true;
        }
    }

    /* renamed from: a */
    private void m59512a(ModuleStrategy moduleStrategy) {
        String m59279a = C14933b.m59279a(moduleStrategy.url);
        if (C14933b.m59280a(true).equals(m59279a)) {
            return;
        }
        C14954c.m59392a("[strategy] mid: %d , url changed: %s", Byte.valueOf(moduleStrategy.mId), moduleStrategy.url);
        C14933b.m59283b(m59279a);
        this.f93013d = true;
    }

    /* renamed from: a */
    private boolean m59513a(Map<String, String> map, C14968a c14968a) {
        if (c14968a == null || map == null) {
            return false;
        }
        c14968a.m59439a(map);
        return true;
    }

    /* renamed from: a */
    public boolean m59523a() {
        return this.f93012c;
    }
}
