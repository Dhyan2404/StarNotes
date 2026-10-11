package com.tencent.qmsp.oaid2;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.database.Cursor;
import android.net.Uri;

/* renamed from: com.tencent.qmsp.oaid2.x */
/* loaded from: classes10.dex */
public class C16899x {

    /* renamed from: g */
    public static volatile C16899x f93816g;

    /* renamed from: e */
    public Boolean f93821e;

    /* renamed from: f */
    public BroadcastReceiver f93822f;

    /* renamed from: a */
    public C16898w f93817a = new C16898w("udid");

    /* renamed from: b */
    public C16898w f93818b = new C16898w("oaid");

    /* renamed from: d */
    public C16898w f93820d = new C16898w("vaid");

    /* renamed from: c */
    public C16898w f93819c = new C16898w("aaid");

    /* renamed from: a */
    public static C16901z m60249a(Cursor cursor) {
        C16901z c16901z = new C16901z(null, 0);
        if (cursor == null) {
            m60250b("parseValue fail, cursor is null.");
        } else if (!cursor.isClosed()) {
            cursor.moveToFirst();
            int columnIndex = cursor.getColumnIndex("value");
            if (columnIndex >= 0) {
                c16901z.f93825c = cursor.getString(columnIndex);
            } else {
                m60250b("parseValue fail, index < 0.");
            }
            int columnIndex2 = cursor.getColumnIndex("code");
            if (columnIndex2 >= 0) {
                c16901z.f93823a = cursor.getInt(columnIndex2);
            } else {
                m60250b("parseCode fail, index < 0.");
            }
            int columnIndex3 = cursor.getColumnIndex("expired");
            if (columnIndex3 >= 0) {
                c16901z.f93824b = cursor.getLong(columnIndex3);
            } else {
                m60250b("parseExpired fail, index < 0.");
            }
        } else {
            m60250b("parseValue fail, cursor is closed.");
        }
        return c16901z;
    }

    /* renamed from: b */
    public static void m60250b(String str) {
        C16866c.m60152a("MzOpenIdManager " + str);
    }

    /* renamed from: a */
    public final String m60252a(Context context, C16898w c16898w) {
        Cursor cursor;
        Cursor cursor2 = null;
        if (c16898w == null) {
            return null;
        }
        if (!c16898w.m60246a()) {
            m60250b("queryId : " + c16898w.f93814c);
            try {
                cursor = context.getContentResolver().query(Uri.parse("content://com.meizu.flyme.openidsdk/"), null, null, new String[]{c16898w.f93814c}, null);
                try {
                    if (cursor == null) {
                        try {
                            m60254a(context, false);
                            m60250b("forceQuery isSupported : " + m60254a(context, true));
                            if (cursor != null) {
                                cursor.close();
                            }
                            return null;
                        } catch (Exception unused) {
                            if (cursor == null) {
                                return null;
                            }
                            cursor.close();
                            return null;
                        }
                    }
                    try {
                        C16901z m60249a = m60249a(cursor);
                        String str = m60249a.f93825c;
                        try {
                            c16898w.m60245a(str);
                            c16898w.m60244a(m60249a.f93824b);
                            c16898w.m60243a(m60249a.f93823a);
                            m60250b(c16898w.f93814c + " errorCode : " + c16898w.f93812a);
                            if (m60249a.f93823a == 1000) {
                                cursor.close();
                                return str;
                            }
                            m60253a(context);
                            if (m60254a(context, false)) {
                                cursor.close();
                                return str;
                            }
                            m60250b("not support, forceQuery isSupported: " + m60254a(context, true));
                            cursor.close();
                            return str;
                        } catch (Exception unused2) {
                            cursor.close();
                            return null;
                        }
                    } catch (Exception unused3) {
                        cursor.close();
                        return null;
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor2 = cursor;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    throw th;
                }
            } catch (Exception unused4) {
                cursor = null;
            } catch (Throwable th2) {
                th = th2;
            }
        } else {
            return c16898w.f93815d;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x007f, code lost:
    
        if (r1 != null) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x008b, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0089, code lost:
    
        if (r1 != null) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0021, code lost:
    
        if (r1.resolveContentProvider("com.meizu.flyme.openidsdk", 0) == null) goto L8;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m60254a(android.content.Context r9, boolean r10) {
        /*
            r8 = this;
            java.lang.Boolean r0 = r8.f93821e
            if (r0 == 0) goto Lc
            if (r10 != 0) goto Lc
            boolean r8 = r0.booleanValue()
            goto L8f
        Lc:
            r10 = 1
            r0 = 0
            if (r9 != 0) goto L12
        L10:
            r2 = r0
            goto L24
        L12:
            android.content.pm.PackageManager r1 = r9.getPackageManager()
            if (r1 != 0) goto L1a
            r2 = r0
            goto L1b
        L1a:
            r2 = r10
        L1b:
            java.lang.String r3 = "com.meizu.flyme.openidsdk"
            android.content.pm.ProviderInfo r1 = r1.resolveContentProvider(r3, r0)
            if (r1 != 0) goto L24
            goto L10
        L24:
            if (r2 != 0) goto L31
            java.lang.String r9 = "is not Supported, for isLegalProvider : false"
            m60250b(r9)
            java.lang.Boolean r9 = java.lang.Boolean.FALSE
            r8.f93821e = r9
        L2f:
            r8 = r0
            goto L8f
        L31:
            java.lang.String r1 = "content://com.meizu.flyme.openidsdk/"
            android.net.Uri r3 = android.net.Uri.parse(r1)
            r1 = 0
            android.content.ContentResolver r2 = r9.getContentResolver()     // Catch: java.lang.Throwable -> L82 java.lang.Exception -> L89
            r4 = 0
            r5 = 0
            java.lang.String[] r6 = new java.lang.String[r10]     // Catch: java.lang.Throwable -> L82 java.lang.Exception -> L89
            java.lang.String r9 = "supported"
            r6[r0] = r9     // Catch: java.lang.Throwable -> L82 java.lang.Exception -> L89
            r7 = 0
            android.database.Cursor r1 = r2.query(r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L82 java.lang.Exception -> L89
            if (r1 != 0) goto L4f
            java.lang.Boolean r9 = java.lang.Boolean.FALSE     // Catch: java.lang.Throwable -> L82 java.lang.Exception -> L89
            r8.f93821e = r9     // Catch: java.lang.Throwable -> L82 java.lang.Exception -> L89
        L4f:
            com.tencent.qmsp.oaid2.z r9 = m60249a(r1)     // Catch: java.lang.Exception -> L7f java.lang.Throwable -> L82
            java.lang.String r9 = r9.f93825c     // Catch: java.lang.Exception -> L7f java.lang.Throwable -> L82
            java.lang.StringBuilder r10 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L7f java.lang.Throwable -> L82
            r10.<init>()     // Catch: java.lang.Exception -> L7f java.lang.Throwable -> L82
            java.lang.String r2 = "querySupport, result : "
            r10.append(r2)     // Catch: java.lang.Exception -> L7f java.lang.Throwable -> L82
            r10.append(r9)     // Catch: java.lang.Exception -> L7f java.lang.Throwable -> L82
            java.lang.String r10 = r10.toString()     // Catch: java.lang.Exception -> L7f java.lang.Throwable -> L82
            m60250b(r10)     // Catch: java.lang.Exception -> L7f java.lang.Throwable -> L82
            java.lang.String r10 = "0"
            boolean r9 = r10.equals(r9)     // Catch: java.lang.Exception -> L7f java.lang.Throwable -> L82
            java.lang.Boolean r9 = java.lang.Boolean.valueOf(r9)     // Catch: java.lang.Exception -> L7f java.lang.Throwable -> L82
            r8.f93821e = r9     // Catch: java.lang.Exception -> L7f java.lang.Throwable -> L82
            boolean r8 = r9.booleanValue()     // Catch: java.lang.Exception -> L7f java.lang.Throwable -> L82
            if (r1 == 0) goto L7e
            r1.close()
        L7e:
            return r8
        L7f:
            if (r1 == 0) goto L2f
            goto L8b
        L82:
            r8 = move-exception
            if (r1 == 0) goto L88
            r1.close()
        L88:
            throw r8
        L89:
            if (r1 == 0) goto L2f
        L8b:
            r1.close()
            goto L2f
        L8f:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.qmsp.oaid2.C16899x.m60254a(android.content.Context, boolean):boolean");
    }

    /* renamed from: a */
    public final void m60253a(Context context) {
        synchronized (this) {
            if (this.f93822f == null) {
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("com.meizu.flyme.openid.ACTION_OPEN_ID_CHANGE");
                C16897v c16897v = new C16897v();
                this.f93822f = c16897v;
                context.registerReceiver(c16897v, intentFilter, "com.meizu.flyme.openid.permission.OPEN_ID_CHANGE", null);
            }
        }
    }

    /* renamed from: a */
    public static final C16899x m60248a() {
        if (f93816g == null) {
            synchronized (C16899x.class) {
                f93816g = new C16899x();
            }
        }
        return f93816g;
    }

    /* renamed from: a */
    public C16898w m60251a(String str) {
        if ("oaid".equals(str)) {
            return this.f93818b;
        }
        if ("vaid".equals(str)) {
            return this.f93820d;
        }
        if ("aaid".equals(str)) {
            return this.f93819c;
        }
        if ("udid".equals(str)) {
            return this.f93817a;
        }
        return null;
    }
}
