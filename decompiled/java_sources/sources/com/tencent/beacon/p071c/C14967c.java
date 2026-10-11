package com.tencent.beacon.p071c;

import android.content.Context;
import android.content.SharedPreferences;
import com.tencent.beacon.base.util.C14953b;
import com.tencent.beacon.base.util.C14954c;
import com.tencent.beacon.module.ModuleName;
import com.tencent.beacon.module.StatModule;
import com.tencent.beacon.p059a.p061b.AbstractC14874b;
import com.tencent.beacon.p059a.p062c.C14887b;
import com.tencent.beacon.p059a.p062c.C14888c;
import com.tencent.beacon.p059a.p062c.C14890e;
import com.tencent.beacon.p059a.p062c.C14891f;
import com.tencent.beacon.p059a.p063d.SharedPreferencesC14896a;
import com.tencent.beacon.p073d.C14969b;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.tencent.beacon.c.c */
/* loaded from: classes10.dex */
public class C14967c {

    /* renamed from: a */
    protected final Context f92937a;

    /* renamed from: b */
    private final boolean f92938b;

    /* renamed from: c */
    private boolean f92939c = false;

    public C14967c(Context context) {
        this.f92937a = context;
        this.f92938b = C14887b.m58985f(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public boolean m59433c() {
        return ((StatModule) C14888c.m58989c().m58990a(ModuleName.STAT)).m59697b(m59431b());
    }

    /* renamed from: b */
    private Map<String, String> m59431b() {
        this.f92939c = C14887b.f92592d;
        HashMap hashMap = new HashMap(8);
        C14890e m59012l = C14890e.m59012l();
        C14891f m59045e = C14891f.m59045e();
        hashMap.put("A19", m59012l.m59035q());
        hashMap.put("A66", C14887b.m58985f(this.f92937a) ? "F" : "B");
        hashMap.put("A68", "" + C14887b.m58976b(this.f92937a));
        hashMap.put("A85", this.f92939c ? "Y" : "N");
        hashMap.put("A20", m59045e.m59063j());
        hashMap.put("A69", m59045e.m59065k());
        return hashMap;
    }

    /* renamed from: a */
    public void m59435a(C14969b c14969b) {
        String m59385e = C14953b.m59385e();
        SharedPreferencesC14896a m59084a = SharedPreferencesC14896a.m59084a();
        String string = m59084a.getString("HEART_DENGTA", "");
        String string2 = m59084a.getString("active_user_date", "");
        if (!m59385e.equals(string) && !string2.equals(m59385e)) {
            if (c14969b.m59456a("rqd_heartbeat")) {
                C14954c.m59403e("[event] rqd_heartbeat not allowed in strategy!", new Object[0]);
                return;
            } else if (!c14969b.m59461b("rqd_heartbeat")) {
                C14954c.m59403e("[event] rqd_heartbeat is sampled by svr rate!", new Object[0]);
                return;
            } else {
                AbstractC14874b.m58931a().mo58941a(new RunnableC14966b(this, m59385e, m59084a));
                return;
            }
        }
        C14954c.m59403e("[event] heartbeat had upload!", new Object[0]);
    }

    /* renamed from: a */
    public void m59434a() {
        SharedPreferencesC14896a m59084a = SharedPreferencesC14896a.m59084a();
        if (!C14953b.m59385e().equals(m59084a.getString("active_user_date", ""))) {
            C14954c.m59392a("[event] recover a heart beat for active user.", new Object[0]);
            if (m59433c()) {
                C14954c.m59392a("[event] rqd_heartbeat A85=Y report success", new Object[0]);
                SharedPreferencesC14896a.a edit = m59084a.edit();
                if (C14953b.m59368a((SharedPreferences.Editor) edit)) {
                    edit.putString("active_user_date", C14953b.m59385e()).apply();
                    return;
                }
                return;
            }
            return;
        }
        C14954c.m59403e("[event] active user event had upload.", new Object[0]);
    }
}
