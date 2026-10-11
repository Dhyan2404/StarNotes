package com.tencent.beacon.event.p076c;

import android.content.Context;
import android.content.SharedPreferences;
import com.tencent.beacon.base.util.C14953b;
import com.tencent.beacon.base.util.C14954c;
import java.util.concurrent.atomic.AtomicLong;
import org.apache.commons.collections4.IteratorUtils;

/* renamed from: com.tencent.beacon.event.c.e */
/* loaded from: classes10.dex */
public class RunnableC14992e implements Runnable {

    /* renamed from: a */
    private volatile long f93054a = 0;

    /* renamed from: b */
    private volatile long f93055b = 0;

    /* renamed from: c */
    private volatile long f93056c = 0;

    /* renamed from: d */
    final /* synthetic */ C14994g f93057d;

    public RunnableC14992e(C14994g c14994g) {
        this.f93057d = c14994g;
    }

    @Override // java.lang.Runnable
    public void run() {
        AtomicLong atomicLong;
        AtomicLong atomicLong2;
        AtomicLong atomicLong3;
        Context context;
        SharedPreferences m59566a;
        String str;
        long j;
        long j2;
        long j3;
        long j4;
        long j5;
        long j6;
        long j7;
        long j8;
        synchronized (this.f93057d) {
            atomicLong = this.f93057d.f93078r;
            long j9 = atomicLong.get();
            atomicLong2 = this.f93057d.f93077q;
            long j10 = atomicLong2.get();
            atomicLong3 = this.f93057d.f93079s;
            long j11 = atomicLong3.get();
            if (this.f93054a == j9 && this.f93055b == j10 && this.f93056c == j11) {
                return;
            }
            this.f93054a = j9;
            this.f93055b = j10;
            this.f93056c = j11;
            C14994g c14994g = this.f93057d;
            context = c14994g.f93073m;
            m59566a = c14994g.m59566a(context);
            SharedPreferences.Editor edit = m59566a.edit();
            if (C14953b.m59368a(edit)) {
                j2 = this.f93057d.f93076p;
                SharedPreferences.Editor putLong = edit.putLong("on_date", j2).putLong("realtime_log_id", this.f93054a).putLong("normal_log_id", this.f93055b).putLong("immediate_log_id", this.f93056c);
                j3 = this.f93057d.f93080t;
                SharedPreferences.Editor putLong2 = putLong.putLong("realtime_min_log_id", j3);
                j4 = this.f93057d.f93081u;
                SharedPreferences.Editor putLong3 = putLong2.putLong("realtime_max_log_id", j4);
                j5 = this.f93057d.f93082v;
                SharedPreferences.Editor putLong4 = putLong3.putLong("normal_min_log_id", j5);
                j6 = this.f93057d.f93083w;
                SharedPreferences.Editor putLong5 = putLong4.putLong("normal_max_log_id", j6);
                j7 = this.f93057d.f93084x;
                SharedPreferences.Editor putLong6 = putLong5.putLong("immediate_min_log_id", j7);
                j8 = this.f93057d.f93085y;
                putLong6.putLong("immediate_max_log_id", j8).apply();
            }
            StringBuilder sb = new StringBuilder();
            sb.append("[LogID ");
            str = this.f93057d.f93074n;
            sb.append(str);
            sb.append(IteratorUtils.f104924b);
            String sb2 = sb.toString();
            j = this.f93057d.f93076p;
            C14954c.m59391a(sb2, "  write serial to sp, date: %s ,realtime: %d, normal: %d, immediate: %d ", Long.valueOf(j), Long.valueOf(this.f93054a), Long.valueOf(this.f93055b), Long.valueOf(this.f93056c));
        }
    }
}
