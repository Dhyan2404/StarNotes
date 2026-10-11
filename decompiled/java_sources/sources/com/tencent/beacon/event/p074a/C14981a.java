package com.tencent.beacon.event.p074a;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import androidx.annotation.NonNull;
import com.google.android.material.motion.MotionUtils;
import com.tencent.beacon.base.util.C14954c;
import com.tencent.beacon.event.EventBean;
import com.tencent.beacon.event.p076c.C14989b;
import com.tencent.beacon.p059a.p061b.C14882j;
import com.tencent.beacon.p059a.p062c.C14887b;
import com.tencent.beacon.p059a.p062c.C14888c;
import com.tencent.beacon.p059a.p063d.C14898c;
import com.tencent.beacon.p059a.p063d.InterfaceC14899d;
import com.tencent.beacon.p073d.C14969b;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.tencent.beacon.event.a.a */
/* loaded from: classes10.dex */
public class C14981a implements InterfaceC14899d<EventBean> {

    /* renamed from: a */
    private static volatile C14981a f93024a;

    /* renamed from: b */
    private final SQLiteStatement f93025b;

    /* renamed from: c */
    private final SQLiteStatement f93026c;

    /* renamed from: d */
    private final Object f93027d = new Object();

    /* renamed from: e */
    private final Object f93028e = new Object();

    /* renamed from: f */
    private C14989b f93029f = C14989b.m59547a();

    /* renamed from: g */
    private SQLiteDatabase f93030g;

    /* renamed from: h */
    private SQLiteDatabase f93031h;

    /* renamed from: i */
    private long f93032i;

    /* renamed from: j */
    private long f93033j;

    private C14981a() {
        C14898c c14898c = new C14898c(C14887b.m58979c(C14888c.m58989c().m58997b()));
        this.f93030g = c14898c.getWritableDatabase();
        SQLiteDatabase readableDatabase = c14898c.getReadableDatabase();
        this.f93031h = readableDatabase;
        this.f93025b = readableDatabase.compileStatement("INSERT INTO t_r_e (_appKey,_time,_length,_data )VALUES(?,?,?,?)");
        this.f93026c = this.f93031h.compileStatement("INSERT INTO t_n_e (_appKey,_time,_length,_data )VALUES(?,?,?,?)");
        this.f93032i = m59536a("t_r_e");
        long m59536a = m59536a("t_n_e");
        this.f93033j = m59536a;
        if (this.f93032i == 0 && m59536a == 0) {
            return;
        }
        String str = " realtime: " + this.f93032i + ", normal: " + this.f93033j;
        C14954c.m59391a("[EventDAO]", str, new Object[0]);
        C14882j.m58961e().m58953a("607", "[EventDAO]" + str);
    }

    /* renamed from: a */
    public static C14981a m59533a() {
        if (f93024a == null) {
            synchronized (C14981a.class) {
                if (f93024a == null) {
                    f93024a = new C14981a();
                }
            }
        }
        return f93024a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002b, code lost:
    
        if (r1.moveToFirst() != false) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x002d, code lost:
    
        r0.put(r1.getString(0), java.lang.Integer.valueOf(r1.getInt(1)));
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0042, code lost:
    
        if (r1.moveToNext() != false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0048, code lost:
    
        if (r1.isClosed() != false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x004a, code lost:
    
        r1.close();
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.Map<java.lang.String, java.lang.Integer> m59541b(java.lang.String r7) {
        /*
            r6 = this;
            java.util.HashMap r0 = new java.util.HashMap
            r0.<init>()
            r1 = 0
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L4e java.lang.Exception -> L50
            r2.<init>()     // Catch: java.lang.Throwable -> L4e java.lang.Exception -> L50
            java.lang.String r3 = "SELECT _appKey,count(_appKey) FROM "
            r2.append(r3)     // Catch: java.lang.Throwable -> L4e java.lang.Exception -> L50
            r2.append(r7)     // Catch: java.lang.Throwable -> L4e java.lang.Exception -> L50
            java.lang.String r3 = " GROUP BY "
            r2.append(r3)     // Catch: java.lang.Throwable -> L4e java.lang.Exception -> L50
            java.lang.String r3 = "_appKey"
            r2.append(r3)     // Catch: java.lang.Throwable -> L4e java.lang.Exception -> L50
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L4e java.lang.Exception -> L50
            android.database.sqlite.SQLiteDatabase r6 = r6.f93031h     // Catch: java.lang.Throwable -> L4e java.lang.Exception -> L50
            android.database.Cursor r1 = r6.rawQuery(r2, r1)     // Catch: java.lang.Throwable -> L4e java.lang.Exception -> L50
            boolean r6 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L4e java.lang.Exception -> L50
            if (r6 == 0) goto L44
        L2d:
            r6 = 0
            java.lang.String r6 = r1.getString(r6)     // Catch: java.lang.Throwable -> L4e java.lang.Exception -> L50
            r2 = 1
            int r2 = r1.getInt(r2)     // Catch: java.lang.Throwable -> L4e java.lang.Exception -> L50
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch: java.lang.Throwable -> L4e java.lang.Exception -> L50
            r0.put(r6, r2)     // Catch: java.lang.Throwable -> L4e java.lang.Exception -> L50
            boolean r6 = r1.moveToNext()     // Catch: java.lang.Throwable -> L4e java.lang.Exception -> L50
            if (r6 != 0) goto L2d
        L44:
            boolean r6 = r1.isClosed()
            if (r6 != 0) goto L85
            r1.close()
            goto L85
        L4e:
            r6 = move-exception
            goto L86
        L50:
            r6 = move-exception
            com.tencent.beacon.a.b.j r2 = com.tencent.beacon.p059a.p061b.C14882j.m58961e()     // Catch: java.lang.Throwable -> L4e
            java.lang.String r3 = "605"
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L4e
            r4.<init>()     // Catch: java.lang.Throwable -> L4e
            java.lang.String r5 = "type: "
            r4.append(r5)     // Catch: java.lang.Throwable -> L4e
            r4.append(r7)     // Catch: java.lang.Throwable -> L4e
            java.lang.String r7 = " query err: "
            r4.append(r7)     // Catch: java.lang.Throwable -> L4e
            java.lang.String r7 = r6.getMessage()     // Catch: java.lang.Throwable -> L4e
            r4.append(r7)     // Catch: java.lang.Throwable -> L4e
            java.lang.String r7 = r4.toString()     // Catch: java.lang.Throwable -> L4e
            r2.m58954a(r3, r7, r6)     // Catch: java.lang.Throwable -> L4e
            com.tencent.beacon.base.util.C14954c.m59393a(r6)     // Catch: java.lang.Throwable -> L4e
            if (r1 == 0) goto L85
            boolean r6 = r1.isClosed()
            if (r6 != 0) goto L85
            r1.close()
        L85:
            return r0
        L86:
            if (r1 == 0) goto L91
            boolean r7 = r1.isClosed()
            if (r7 != 0) goto L91
            r1.close()
        L91:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.beacon.event.p074a.C14981a.m59541b(java.lang.String):java.util.Map");
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x007e, code lost:
    
        if (r12.f93026c.executeInsert() >= 0) goto L18;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m59539a(com.tencent.beacon.event.EventBean r13) {
        /*
            Method dump skipped, instructions count: 354
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.beacon.event.p074a.C14981a.m59539a(com.tencent.beacon.event.EventBean):boolean");
    }

    /* renamed from: a */
    public List<EventBean> m59537a(@NonNull String str, String str2, int i) {
        List<EventBean> list = null;
        try {
            StringBuilder sb = new StringBuilder();
            sb.append(" SELECT * FROM ");
            sb.append(str);
            sb.append(" WHERE ");
            sb.append("_id");
            sb.append(" NOT IN (");
            sb.append(str2);
            sb.append(") ORDER BY ");
            sb.append("_time");
            sb.append(" DESC LIMIT ");
            sb.append(i);
            list = m59534a(str, this.f93031h.rawQuery(sb.toString(), null));
        } catch (Exception e) {
            C14954c.m59393a(e);
            C14882j.m58961e().m58954a("605", "type: " + str + " query err: " + e.getMessage(), e);
        }
        C14954c.m59391a("[EventDAO]", "query tableName: %s, args: %s", str, str2);
        return list;
    }

    /* renamed from: a */
    public long m59536a(String str) {
        long j;
        Cursor cursor = null;
        try {
            try {
                StringBuilder sb = new StringBuilder();
                sb.append("SELECT count(?) FROM ");
                sb.append(str);
                String sb2 = sb.toString();
                cursor = this.f93031h.rawQuery(sb2, new String[]{"_id"});
                cursor.moveToFirst();
                j = cursor.getLong(0);
                if (!cursor.isClosed()) {
                    cursor.close();
                }
            } catch (Exception e) {
                C14882j m58961e = C14882j.m58961e();
                StringBuilder sb3 = new StringBuilder();
                sb3.append("type: ");
                sb3.append(str);
                sb3.append(" query err: ");
                sb3.append(e.getMessage());
                m58961e.m58954a("605", sb3.toString(), e);
                C14954c.m59393a(e);
                if (cursor != null && !cursor.isClosed()) {
                    cursor.close();
                }
                j = -1;
            }
            return j;
        } catch (Throwable th) {
            if (cursor != null && !cursor.isClosed()) {
                cursor.close();
            }
            throw th;
        }
    }

    /* renamed from: a */
    public boolean m59540a(@NonNull String str, String str2) {
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("_id IN (");
            sb.append(str2);
            sb.append(MotionUtils.f31762d);
            int delete = this.f93030g.delete(str, sb.toString(), null);
            m59535a(str.equals("t_r_e"), false, delete);
            return delete >= 0;
        } catch (Exception e) {
            C14882j.m58961e().m58954a("606", "type: " + str + " delete err: " + e.getMessage() + " target: " + str2, e);
            C14954c.m59393a(e);
            return false;
        }
    }

    /* renamed from: a */
    private List<EventBean> m59534a(String str, Cursor cursor) {
        if (cursor == null || cursor.isClosed()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        while (cursor.moveToNext()) {
            C14982b c14982b = new C14982b();
            c14982b.f93034a = cursor.getLong(0);
            c14982b.f93037d = cursor.getString(1);
            c14982b.f93035b = cursor.getInt(2);
            c14982b.f93036c = cursor.getLong(3);
            c14982b.f93038e = cursor.getBlob(4);
            EventBean mo59122a = this.f93029f.m59549c().mo59122a(c14982b);
            if (mo59122a == null) {
                m59540a(str, String.valueOf(c14982b.f93034a));
                C14954c.m59395b("transformEventBean error, eventBean is null! delete this event.", new Object[0]);
            } else {
                arrayList.add(mo59122a);
            }
        }
        if (!cursor.isClosed()) {
            cursor.close();
        }
        return arrayList;
    }

    /* renamed from: a */
    private void m59535a(boolean z, boolean z2, long j) {
        if (z) {
            synchronized (this.f93027d) {
                if (z2) {
                    this.f93032i += j;
                } else {
                    this.f93032i -= j;
                }
                C14954c.m59391a("[EventDAO]", "current db realtime:%s", Long.valueOf(this.f93032i));
            }
            return;
        }
        synchronized (this.f93028e) {
            if (z2) {
                this.f93033j += j;
            } else {
                this.f93033j -= j;
            }
            C14954c.m59391a("[EventDAO]", "current db normal:%s", Long.valueOf(this.f93033j));
        }
    }

    /* renamed from: a */
    public boolean m59538a(int i) {
        boolean z;
        if (i == 1) {
            synchronized (this.f93027d) {
                z = this.f93032i >= ((long) C14969b.m59444b().m59465d());
            }
            return z;
        }
        synchronized (this.f93028e) {
            z = this.f93033j >= ((long) C14969b.m59444b().m59465d());
        }
        return z;
    }
}
