package com.tencent.beacon.p073d;

import android.content.SharedPreferences;
import com.tencent.beacon.base.util.C14953b;
import com.tencent.beacon.p059a.p063d.SharedPreferencesC14896a;

/* renamed from: com.tencent.beacon.d.g */
/* loaded from: classes10.dex */
public class RunnableC14974g implements Runnable {

    /* renamed from: a */
    final /* synthetic */ String f92999a;

    /* renamed from: b */
    final /* synthetic */ C14975h f93000b;

    public RunnableC14974g(C14975h c14975h, String str) {
        this.f93000b = c14975h;
        this.f92999a = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        SharedPreferencesC14896a.a edit = SharedPreferencesC14896a.m59084a().edit();
        if (C14953b.m59368a((SharedPreferences.Editor) edit)) {
            edit.putString("ias_cookie", this.f92999a);
        }
    }
}
