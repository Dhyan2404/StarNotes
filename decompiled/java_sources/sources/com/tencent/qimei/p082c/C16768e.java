package com.tencent.qimei.p082c;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.AsyncTask;
import android.os.Bundle;
import com.tencent.qimei.p102v.C16849g;
import com.tencent.qimei.p105y.C16858d;

/* renamed from: com.tencent.qimei.c.e */
/* loaded from: classes10.dex */
public class C16768e extends BroadcastReceiver {

    /* renamed from: a */
    public final a f93446a;

    /* renamed from: b */
    public final Context f93447b = C16858d.m60143b().mo60059c();

    /* renamed from: c */
    public final String f93448c;

    /* renamed from: com.tencent.qimei.c.e$a */
    /* loaded from: classes10.dex */
    public interface a {
    }

    /* renamed from: com.tencent.qimei.c.e$b */
    /* loaded from: classes10.dex */
    public static class b extends AsyncTask<String, Integer, Boolean> {

        /* renamed from: a */
        public final a f93449a;

        /* renamed from: b */
        public final String f93450b;

        /* renamed from: c */
        public final Bundle f93451c;

        public /* synthetic */ b(BroadcastReceiver.PendingResult pendingResult, a aVar, String str, Bundle bundle, C16767d c16767d) {
            this.f93449a = aVar;
            this.f93450b = str;
            this.f93451c = bundle;
        }

        @Override // android.os.AsyncTask
        public Boolean doInBackground(String[] strArr) {
            Bundle bundle = this.f93451c;
            if (bundle == null) {
                return null;
            }
            ((C16849g) this.f93449a).m60135a(this.f93450b, bundle);
            return null;
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Boolean bool) {
            super.onPostExecute(bool);
        }
    }

    public C16768e(a aVar, String str) {
        this.f93446a = aVar;
        this.f93448c = str;
    }

    /* renamed from: a */
    public void m59894a() {
        IntentFilter intentFilter = new IntentFilter(C16764a.f93443b);
        Context context = this.f93447b;
        if (context != null) {
            context.registerReceiver(this, intentFilter);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0056 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0057  */
    @Override // android.content.BroadcastReceiver
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onReceive(android.content.Context r8, android.content.Intent r9) {
        /*
            r7 = this;
            java.lang.String r8 = r9.getAction()
            r0 = 0
            if (r8 == 0) goto L53
            java.lang.String r8 = com.tencent.qimei.p082c.C16764a.f93443b
            java.lang.String r1 = r9.getAction()
            boolean r8 = r8.equals(r1)
            if (r8 == 0) goto L53
            android.os.Bundle r8 = r9.getExtras()
            if (r8 != 0) goto L1a
            goto L53
        L1a:
            android.os.Bundle r8 = r9.getExtras()
            java.lang.String r1 = "appKey"
            java.lang.String r8 = r8.getString(r1)
            android.os.Bundle r1 = r9.getExtras()
            java.lang.String r2 = "source"
            java.lang.String r1 = r1.getString(r2)
            boolean r2 = android.text.TextUtils.isEmpty(r8)
            if (r2 != 0) goto L53
            boolean r2 = android.text.TextUtils.isEmpty(r1)
            if (r2 == 0) goto L3b
            goto L53
        L3b:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            r2.append(r8)
            r2.append(r1)
            java.lang.String r8 = r2.toString()
            java.lang.String r1 = r7.f93448c
            boolean r8 = r1.equals(r8)
            r8 = r8 ^ 1
            goto L54
        L53:
            r8 = r0
        L54:
            if (r8 != 0) goto L57
            return
        L57:
            android.os.Bundle r5 = r9.getExtras()
            java.lang.String r4 = r9.getPackage()
            android.content.BroadcastReceiver$PendingResult r2 = r7.goAsync()
            com.tencent.qimei.c.e$b r8 = new com.tencent.qimei.c.e$b
            com.tencent.qimei.c.e$a r3 = r7.f93446a
            r6 = 0
            r1 = r8
            r1.<init>(r2, r3, r4, r5, r6)
            java.lang.String[] r7 = new java.lang.String[r0]
            r8.execute(r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.qimei.p082c.C16768e.onReceive(android.content.Context, android.content.Intent):void");
    }
}
