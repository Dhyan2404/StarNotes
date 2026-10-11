package com.tencent.beacon.p071c.p072a;

import android.app.Activity;
import android.app.Application;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.util.Log;
import android.util.SparseArray;
import com.google.android.exoplayer2.audio.SilenceSkippingAudioProcessor;
import com.tencent.beacon.base.util.C14953b;
import com.tencent.beacon.base.util.C14954c;
import com.tencent.beacon.module.StatModule;
import com.tencent.beacon.p059a.p061b.AbstractC14874b;
import com.tencent.beacon.p059a.p062c.C14887b;
import com.tencent.beacon.p059a.p063d.SharedPreferencesC14896a;
import com.tencent.beacon.p073d.C14968a;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.tencent.beacon.c.a.c */
/* loaded from: classes10.dex */
public class C14964c implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a */
    private static SparseArray<WeakReference<Activity>> f92923a = new SparseArray<>();

    /* renamed from: b */
    private boolean f92924b = false;

    /* renamed from: c */
    private long f92925c = 0;

    /* renamed from: d */
    private long f92926d = 0;

    /* renamed from: e */
    private long f92927e = SilenceSkippingAudioProcessor.DEFAULT_PADDING_SILENCE_US;

    /* renamed from: f */
    private String f92928f = "";

    /* renamed from: g */
    private Map<String, String> f92929g;

    /* renamed from: h */
    private StatModule f92930h;

    public C14964c(StatModule statModule) {
        this.f92930h = statModule;
        HashMap hashMap = new HashMap(6);
        this.f92929g = hashMap;
        hashMap.put("A63", "N");
        this.f92929g.put("A66", "F");
    }

    /* renamed from: c */
    private boolean m59427c() {
        String m59385e = C14953b.m59385e();
        if ("".equals(this.f92928f)) {
            this.f92928f = SharedPreferencesC14896a.m59084a().getString("LAUEVE_DENGTA", "");
        }
        boolean z = false;
        if (!m59385e.equals(this.f92928f)) {
            SharedPreferencesC14896a.a edit = SharedPreferencesC14896a.m59084a().edit();
            if (C14953b.m59368a((SharedPreferences.Editor) edit)) {
                edit.putString("LAUEVE_DENGTA", m59385e);
            }
            if (!"".equals(this.f92928f)) {
                C14954c.m59392a("[core] -> report new day launcher event.", new Object[0]);
                z = true;
            }
            this.f92928f = m59385e;
        }
        return z;
    }

    /* renamed from: d */
    private void m59428d() {
        AbstractC14874b.m58931a().mo58941a(new RunnableC14962a(this));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        m59422a(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        m59422a(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        m59422a(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        m59422a(activity);
        m59423a(true, activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        m59422a(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        m59422a(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        m59422a(activity);
        m59423a(false, activity);
    }

    /* renamed from: a */
    public static SparseArray<WeakReference<Activity>> m59420a() {
        return f92923a;
    }

    /* renamed from: b */
    private static void m59426b(Activity activity) {
        if (activity == null || f92923a == null) {
            return;
        }
        int hashCode = activity.hashCode();
        if (f92923a.get(hashCode) == null) {
            f92923a.put(hashCode, new WeakReference<>(activity));
        }
    }

    /* renamed from: a */
    private void m59423a(boolean z, Activity activity) {
        if (z) {
            long currentTimeMillis = System.currentTimeMillis();
            if (this.f92925c > 0) {
                long j = this.f92926d;
                if (j > 0 && j + m59424b() <= currentTimeMillis) {
                    C14954c.m59392a("[lifecycle] -> return foreground more than 20s.", new Object[0]);
                    m59428d();
                    StatModule statModule = this.f92930h;
                    if (statModule != null) {
                        statModule.m59692a();
                    }
                }
            }
            this.f92925c = currentTimeMillis;
            this.f92926d = 0L;
            return;
        }
        long currentTimeMillis2 = System.currentTimeMillis();
        this.f92926d = currentTimeMillis2;
        long j2 = this.f92925c;
        if (800 + j2 > currentTimeMillis2) {
            C14954c.m59392a("[lifecycle] -> debounce activity switch.", new Object[0]);
            this.f92925c = 0L;
            return;
        }
        if (j2 == 0) {
            this.f92925c = currentTimeMillis2;
        }
        StatModule statModule2 = this.f92930h;
        if (statModule2 != null) {
            statModule2.m59695b();
        }
    }

    /* renamed from: b */
    private long m59424b() {
        if (this.f92927e <= SilenceSkippingAudioProcessor.DEFAULT_PADDING_SILENCE_US) {
            String m59437a = C14968a.m59436a().m59437a("hotLauncher");
            if (m59437a != null) {
                try {
                    this.f92927e = Long.valueOf(m59437a).longValue();
                    C14954c.m59392a("[strategy] -> change launcher time: %s ms", m59437a);
                } catch (NumberFormatException unused) {
                    C14954c.m59395b("[strategy] -> event param 'hotLauncher' error.", new Object[0]);
                }
            }
            this.f92927e++;
        }
        return this.f92927e;
    }

    /* renamed from: a */
    private void m59422a(Activity activity) {
        C14887b.f92592d = true;
        m59426b(activity);
        try {
            WeakReference<Activity> weakReference = m59420a().get(activity.hashCode());
            if (!this.f92924b) {
                C14954c.m59392a("[event] lifecycle callback recover active user.", new Object[0]);
                AbstractC14874b.m58931a().mo58941a(new RunnableC14963b(this, weakReference));
                this.f92924b = true;
            }
        } catch (NullPointerException e) {
            Log.e("LifecycleCallbacks", "onActivityEvent: " + e.getMessage());
        }
        if (m59427c()) {
            m59428d();
        }
    }
}
