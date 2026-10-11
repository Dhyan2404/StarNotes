package com.tencent.qimei.p086g;

/* renamed from: com.tencent.qimei.g.b */
/* loaded from: classes10.dex */
public class RunnableC16781b implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f93492a;

    /* renamed from: b */
    public final /* synthetic */ String f93493b;

    /* renamed from: c */
    public final /* synthetic */ InterfaceC16782c f93494c;

    public RunnableC16781b(String str, String str2, InterfaceC16782c interfaceC16782c) {
        this.f93492a = str;
        this.f93493b = str2;
        this.f93494c = interfaceC16782c;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00cb  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            r8 = this;
            java.lang.String r0 = r8.f93492a
            java.lang.String r1 = r8.f93493b
            com.tencent.qimei.g.c r8 = r8.f93494c
            r2 = 0
            r3 = -1
            java.net.URL r4 = new java.net.URL     // Catch: java.lang.Throwable -> L59 java.lang.SecurityException -> L5b java.net.ConnectException -> L5d
            r4.<init>(r0)     // Catch: java.lang.Throwable -> L59 java.lang.SecurityException -> L5b java.net.ConnectException -> L5d
            java.net.URLConnection r0 = r4.openConnection()     // Catch: java.lang.Throwable -> L59 java.lang.SecurityException -> L5b java.net.ConnectException -> L5d
            java.net.HttpURLConnection r0 = (java.net.HttpURLConnection) r0     // Catch: java.lang.Throwable -> L59 java.lang.SecurityException -> L5b java.net.ConnectException -> L5d
            java.lang.String r4 = "POST"
            r0.setRequestMethod(r4)     // Catch: java.lang.Throwable -> L59 java.lang.SecurityException -> L5b java.net.ConnectException -> L5d
            r4 = 30000(0x7530, float:4.2039E-41)
            r0.setConnectTimeout(r4)     // Catch: java.lang.Throwable -> L59 java.lang.SecurityException -> L5b java.net.ConnectException -> L5d
            r4 = 10000(0x2710, float:1.4013E-41)
            r0.setReadTimeout(r4)     // Catch: java.lang.Throwable -> L59 java.lang.SecurityException -> L5b java.net.ConnectException -> L5d
            r0.setInstanceFollowRedirects(r2)     // Catch: java.lang.Throwable -> L59 java.lang.SecurityException -> L5b java.net.ConnectException -> L5d
            java.lang.String r4 = "Content-Type"
            java.lang.String r5 = "application/json"
            r0.setRequestProperty(r4, r5)     // Catch: java.lang.Throwable -> L59 java.lang.SecurityException -> L5b java.net.ConnectException -> L5d
            r4 = 1
            r0.setDoInput(r4)     // Catch: java.lang.Throwable -> L59 java.lang.SecurityException -> L5b java.net.ConnectException -> L5d
            r0.setDoOutput(r4)     // Catch: java.lang.Throwable -> L59 java.lang.SecurityException -> L5b java.net.ConnectException -> L5d
            r0.setUseCaches(r2)     // Catch: java.lang.Throwable -> L59 java.lang.SecurityException -> L5b java.net.ConnectException -> L5d
            java.io.OutputStreamWriter r5 = new java.io.OutputStreamWriter     // Catch: java.lang.Throwable -> L59 java.lang.SecurityException -> L5b java.net.ConnectException -> L5d
            java.io.OutputStream r6 = r0.getOutputStream()     // Catch: java.lang.Throwable -> L59 java.lang.SecurityException -> L5b java.net.ConnectException -> L5d
            java.lang.String r7 = "UTF-8"
            r5.<init>(r6, r7)     // Catch: java.lang.Throwable -> L59 java.lang.SecurityException -> L5b java.net.ConnectException -> L5d
            r5.write(r1)     // Catch: java.lang.Throwable -> L59 java.lang.SecurityException -> L5b java.net.ConnectException -> L5d
            r5.flush()     // Catch: java.lang.Throwable -> L59 java.lang.SecurityException -> L5b java.net.ConnectException -> L5d
            r0.connect()     // Catch: java.lang.Throwable -> L59 java.lang.SecurityException -> L5b java.net.ConnectException -> L5d
            int r3 = r0.getResponseCode()     // Catch: java.lang.Throwable -> L59 java.lang.SecurityException -> L5b java.net.ConnectException -> L5d
            r1 = 200(0xc8, float:2.8E-43)
            if (r3 != r1) goto L5f
            java.lang.String r0 = com.tencent.qimei.p081b.C16762a.m59871a(r0)     // Catch: java.lang.Throwable -> L59 java.lang.SecurityException -> L5b java.net.ConnectException -> L5d
            java.lang.String r1 = "0"
            goto Lc3
        L59:
            r0 = move-exception
            goto L77
        L5b:
            r0 = move-exception
            goto L8b
        L5d:
            r0 = move-exception
            goto Laf
        L5f:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L59 java.lang.SecurityException -> L5b java.net.ConnectException -> L5d
            r1.<init>()     // Catch: java.lang.Throwable -> L59 java.lang.SecurityException -> L5b java.net.ConnectException -> L5d
            java.lang.String r4 = "response status code != 2XX. msg: "
            r1.append(r4)     // Catch: java.lang.Throwable -> L59 java.lang.SecurityException -> L5b java.net.ConnectException -> L5d
            java.lang.String r0 = r0.getResponseMessage()     // Catch: java.lang.Throwable -> L59 java.lang.SecurityException -> L5b java.net.ConnectException -> L5d
            r1.append(r0)     // Catch: java.lang.Throwable -> L59 java.lang.SecurityException -> L5b java.net.ConnectException -> L5d
            java.lang.String r0 = r1.toString()     // Catch: java.lang.Throwable -> L59 java.lang.SecurityException -> L5b java.net.ConnectException -> L5d
            java.lang.String r1 = "452"
            goto Lc2
        L77:
            java.lang.String r1 = "https connect error: "
            java.lang.StringBuilder r1 = com.tencent.qimei.p078a.C16733a.m59796a(r1)
            java.lang.String r0 = r0.getMessage()
            r1.append(r0)
            java.lang.String r0 = r1.toString()
            java.lang.String r1 = "499"
            goto Lc2
        L8b:
            r0.printStackTrace()
            java.lang.Object[] r1 = new java.lang.Object[r2]
            java.lang.String r4 = "NET"
            java.lang.String r5 = "no network permission,please add in AndroidManifest: <uses-permission android:name=\"android.permission.INTERNET\" /> "
            com.tencent.qimei.p093n.C16806a.m59991a(r4, r5, r1)
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r4 = "security error: "
            r1.append(r4)
            java.lang.String r0 = r0.getMessage()
            r1.append(r0)
            java.lang.String r0 = r1.toString()
            java.lang.String r1 = "199"
            goto Lc2
        Laf:
            java.lang.String r1 = "https connect timeout: "
            java.lang.StringBuilder r1 = com.tencent.qimei.p078a.C16733a.m59796a(r1)
            java.lang.String r0 = r0.getMessage()
            r1.append(r0)
            java.lang.String r0 = r1.toString()
            java.lang.String r1 = "451"
        Lc2:
            r4 = r2
        Lc3:
            if (r4 == 0) goto Lcb
            java.lang.String[] r1 = new java.lang.String[r2]
            r8.mo59809a(r0, r1)
            goto Lce
        Lcb:
            r8.mo59808a(r1, r3, r0)
        Lce:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.qimei.p086g.RunnableC16781b.run():void");
    }
}
