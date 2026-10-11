package com.tencent.beacon.p059a.p062c;

import android.content.SharedPreferences;
import com.tencent.beacon.base.util.C14953b;
import com.tencent.beacon.p059a.p063d.SharedPreferencesC14896a;

/* renamed from: com.tencent.beacon.a.c.a */
/* loaded from: classes10.dex */
public class RunnableC14886a implements Runnable {

    /* renamed from: a */
    final /* synthetic */ SharedPreferencesC14896a f92586a;

    /* renamed from: b */
    final /* synthetic */ String f92587b;

    /* renamed from: c */
    final /* synthetic */ long f92588c;

    public RunnableC14886a(SharedPreferencesC14896a sharedPreferencesC14896a, String str, long j) {
        this.f92586a = sharedPreferencesC14896a;
        this.f92587b = str;
        this.f92588c = j;
    }

    @Override // java.lang.Runnable
    public void run() {
        SharedPreferencesC14896a.a edit = this.f92586a.edit();
        if (C14953b.m59368a((SharedPreferences.Editor) edit)) {
            edit.putLong(this.f92587b, this.f92588c);
        }
    }
}
