package com.tencent.qimei.p100t;

import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import com.tencent.qimei.p081b.C16762a;
import com.tencent.qimei.p096q.C16815c;
import com.tencent.qimei.p096q.C16821i;
import com.tencent.qimei.sdk.Qimei;

/* renamed from: com.tencent.qimei.t.b */
/* loaded from: classes10.dex */
public class RunnableC16838b implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f93667a;

    /* renamed from: b */
    public final /* synthetic */ int f93668b;

    public RunnableC16838b(String str, int i) {
        this.f93667a = str;
        this.f93668b = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        String str;
        String valueOf = String.valueOf(SystemClock.elapsedRealtime() - Process.getStartElapsedRealtime());
        Qimei m59885d = C16762a.m59885d(this.f93667a);
        String str2 = "0";
        if (m59885d != null) {
            String str3 = TextUtils.isEmpty(m59885d.getQimei16()) ? "0" : "1";
            str = TextUtils.isEmpty(m59885d.getQimei36()) ? "0" : "1";
            str2 = str3;
        } else {
            str = "0";
        }
        String str4 = this.f93667a;
        long j = this.f93668b;
        C16821i m60021b = C16821i.m60021b();
        C16815c m60022a = m60021b.m60022a();
        m60022a.f93568a.put("p1", str2);
        m60022a.f93568a.put("p2", str);
        m60022a.f93568a.put("p3", String.valueOf(j));
        m60022a.f93568a.put("p4", valueOf);
        m60021b.m60025b(m60022a, "v8", str4, "/report");
    }
}
