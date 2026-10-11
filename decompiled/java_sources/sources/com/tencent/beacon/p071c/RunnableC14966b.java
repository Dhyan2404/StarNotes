package com.tencent.beacon.p071c;

import android.content.SharedPreferences;
import com.tencent.beacon.base.net.p066b.C14935d;
import com.tencent.beacon.base.util.C14953b;
import com.tencent.beacon.base.util.C14954c;
import com.tencent.beacon.p059a.p063d.SharedPreferencesC14896a;

/* renamed from: com.tencent.beacon.c.b */
/* loaded from: classes10.dex */
public class RunnableC14966b implements Runnable {

    /* renamed from: a */
    final /* synthetic */ String f92934a;

    /* renamed from: b */
    final /* synthetic */ SharedPreferencesC14896a f92935b;

    /* renamed from: c */
    final /* synthetic */ C14967c f92936c;

    public RunnableC14966b(C14967c c14967c, String str, SharedPreferencesC14896a sharedPreferencesC14896a) {
        this.f92936c = c14967c;
        this.f92934a = str;
        this.f92935b = sharedPreferencesC14896a;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean m59433c;
        boolean z;
        if (C14935d.m59305d()) {
            m59433c = this.f92936c.m59433c();
            z = this.f92936c.f92939c;
            if (z && m59433c) {
                C14954c.m59392a("[event] rqd_heartbeat A85=Y report success : " + this.f92934a, new Object[0]);
                SharedPreferencesC14896a.a edit = this.f92935b.edit();
                if (C14953b.m59368a((SharedPreferences.Editor) edit)) {
                    edit.putString("active_user_date", this.f92934a).commit();
                    edit.putString("HEART_DENGTA", this.f92934a).commit();
                }
            }
        }
    }
}
