package com.tencent.qimei.p091l;

import android.content.Context;
import android.content.SharedPreferences;

/* renamed from: com.tencent.qimei.l.c */
/* loaded from: classes10.dex */
public class C16795c {

    /* renamed from: a */
    public SharedPreferences f93520a;

    /* renamed from: b */
    public Context f93521b;

    /* renamed from: com.tencent.qimei.l.c$a */
    /* loaded from: classes10.dex */
    public static class a {

        /* renamed from: a */
        public static final C16795c f93522a = new C16795c();
    }

    /* renamed from: a */
    public final SharedPreferences m59953a() {
        if (this.f93520a == null) {
            m59956b();
        }
        return this.f93520a;
    }

    /* renamed from: b */
    public final synchronized void m59956b() {
        if (this.f93520a != null) {
            return;
        }
        Context context = this.f93521b;
        if (context == null) {
            return;
        }
        this.f93520a = context.getSharedPreferences("qm_global_sp", 0);
    }

    /* renamed from: a */
    public void m59954a(String str, String str2) {
        if (m59953a() == null) {
            return;
        }
        this.f93520a.edit().putString(str, str2).apply();
    }

    /* renamed from: a */
    public void m59955a(String str, boolean z) {
        if (m59953a() == null) {
            return;
        }
        this.f93520a.edit().putBoolean(str, z).apply();
    }
}
