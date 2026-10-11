package com.tencent.beacon.p073d;

import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import com.tencent.beacon.base.util.C14953b;
import com.tencent.beacon.base.util.C14954c;
import com.tencent.beacon.module.ModuleName;
import com.tencent.beacon.module.StrategyModule;
import com.tencent.beacon.p059a.p061b.C14882j;
import com.tencent.beacon.p059a.p062c.C14888c;
import com.tencent.beacon.p059a.p063d.SharedPreferencesC14896a;
import java.util.Locale;

/* renamed from: com.tencent.beacon.d.k */
/* loaded from: classes10.dex */
public final class C14978k {

    /* renamed from: a */
    private static String f93017a;

    /* renamed from: com.tencent.beacon.d.k$a */
    /* loaded from: classes10.dex */
    public static class a extends SQLiteOpenHelper {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public a(@androidx.annotation.Nullable android.content.Context r3, @androidx.annotation.Nullable java.lang.String r4) {
            /*
                r2 = this;
                boolean r0 = android.text.TextUtils.isEmpty(r4)
                if (r0 == 0) goto L9
                java.lang.String r4 = "beacon_db"
                goto L1a
            L9:
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                java.lang.String r1 = "beacon_db_"
                r0.append(r1)
                r0.append(r4)
                java.lang.String r4 = r0.toString()
            L1a:
                r0 = 0
                r1 = 30
                r2.<init>(r3, r4, r0, r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.tencent.beacon.p073d.C14978k.a.<init>(android.content.Context, java.lang.String):void");
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL(String.format(Locale.US, "CREATE TABLE %s ( %s INTEGER PRIMARY KEY AUTOINCREMENT, %s int unique , %s int , %s blob)", "t_strategy", "_id", "_key", "_ut", "_datas"));
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            C14954c.m59392a("[db] Upgrade a db  [%s] from v %d to v %d , deleted all tables!", "beacon_db", Integer.valueOf(i), Integer.valueOf(i2));
        }
    }

    /* renamed from: a */
    public static String m59529a() {
        if (!TextUtils.isEmpty(f93017a)) {
            return f93017a;
        }
        SharedPreferencesC14896a m59084a = SharedPreferencesC14896a.m59084a();
        f93017a = m59084a.getString("initsdkdate", "");
        if (!C14953b.m59385e().equals(f93017a)) {
            SharedPreferencesC14896a.a edit = m59084a.edit();
            if (C14953b.m59368a((SharedPreferences.Editor) edit)) {
                edit.putString("initsdkdate", C14953b.m59385e());
            }
        }
        return f93017a;
    }

    /* renamed from: b */
    public static boolean m59530b() {
        SharedPreferencesC14896a m59084a = SharedPreferencesC14896a.m59084a();
        int i = C14953b.m59385e().equals(m59529a()) ? m59084a.getInt("QUERY_TIMES_KEY", 0) : 0;
        if (i > C14968a.m59436a().m59441c()) {
            C14954c.m59400d("[strategy] sdk init max times", new Object[0]);
            return true;
        }
        int i2 = i + 1;
        SharedPreferencesC14896a.a edit = m59084a.edit();
        if (!C14953b.m59368a((SharedPreferences.Editor) edit)) {
            return false;
        }
        edit.putInt("QUERY_TIMES_KEY", i2);
        return false;
    }

    /* renamed from: c */
    public static boolean m59531c() {
        C14969b m59703b = ((StrategyModule) C14888c.m58989c().m58990a(ModuleName.STRATEGY)).m59703b();
        if (m59703b.m59490x()) {
            SharedPreferencesC14896a m59084a = SharedPreferencesC14896a.m59084a();
            long currentTimeMillis = System.currentTimeMillis();
            long j = ((currentTimeMillis / 60000) + 480) % 1440;
            if (j >= 0 && j <= 30 && currentTimeMillis - m59084a.getLong("last_success_strategy_query_time", 0L) <= 90000000) {
                return true;
            }
            if (C14953b.m59385e().equals(m59529a())) {
                return m59084a.getInt("today_success_strategy_query_times", 0) >= m59703b.m59477k();
            }
            SharedPreferencesC14896a.a edit = m59084a.edit();
            if (C14953b.m59368a((SharedPreferences.Editor) edit)) {
                edit.putInt("today_success_strategy_query_times", 0);
            }
        }
        return false;
    }

    /* renamed from: d */
    public static void m59532d() {
        C14969b m59703b = ((StrategyModule) C14888c.m58989c().m58990a(ModuleName.STRATEGY)).m59703b();
        if (m59703b == null || !m59703b.m59490x()) {
            return;
        }
        SharedPreferencesC14896a m59084a = SharedPreferencesC14896a.m59084a();
        int i = m59084a.getInt("today_success_strategy_query_times", 0) + 1;
        SharedPreferencesC14896a.a edit = m59084a.edit();
        if (C14953b.m59368a((SharedPreferences.Editor) edit)) {
            edit.putInt("today_success_strategy_query_times", i).putLong("last_success_strategy_query_time", System.currentTimeMillis());
        }
    }

    /* renamed from: a */
    public static synchronized C14977j m59527a(Context context, int i) {
        SQLiteDatabase sQLiteDatabase;
        C14977j c14977j;
        synchronized (C14978k.class) {
            Cursor cursor = null;
            r3 = null;
            C14977j c14977j2 = null;
            r3 = null;
            Cursor cursor2 = null;
            cursor = null;
            if (context == null) {
                C14954c.m59403e("[db] context is null", new Object[0]);
                return null;
            }
            try {
                try {
                    sQLiteDatabase = new a(context, C14888c.m58989c().m59002e()).getWritableDatabase();
                    try {
                    } catch (Exception e) {
                        e = e;
                        c14977j = null;
                    }
                } catch (Exception e2) {
                    e = e2;
                    c14977j = null;
                    sQLiteDatabase = null;
                } catch (Throwable th) {
                    th = th;
                    sQLiteDatabase = null;
                }
                if (sQLiteDatabase == null) {
                    C14954c.m59403e("[db] getWritableDatabase fail!", new Object[0]);
                    if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                        sQLiteDatabase.close();
                    }
                    return null;
                }
                Locale locale = Locale.US;
                Object[] objArr = new Object[2];
                objArr[0] = "_key";
                objArr[1] = Integer.valueOf(i);
                Cursor query = sQLiteDatabase.query("t_strategy", null, String.format(locale, " %s = %d ", objArr), null, null, null, null);
                if (query != null) {
                    try {
                        if (query.moveToNext() && (c14977j2 = m59528a(query)) != null) {
                            C14954c.m59392a("[db] read strategy key: %d", Integer.valueOf(c14977j2.f93015b));
                        }
                    } catch (Exception e3) {
                        e = e3;
                        c14977j = null;
                        cursor2 = query;
                        C14882j.m58961e().m58953a("605", "[db] TB: t_strategy query fail!");
                        C14954c.m59393a(e);
                        if (cursor2 != null && !cursor2.isClosed()) {
                            cursor2.close();
                        }
                        if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                            sQLiteDatabase.close();
                        }
                        c14977j2 = c14977j;
                        return c14977j2;
                    } catch (Throwable th2) {
                        th = th2;
                        cursor = query;
                        if (cursor != null && !cursor.isClosed()) {
                            cursor.close();
                        }
                        if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                            sQLiteDatabase.close();
                        }
                        throw th;
                    }
                }
                if (query != null && !query.isClosed()) {
                    query.close();
                }
                if (sQLiteDatabase.isOpen()) {
                    sQLiteDatabase.close();
                }
                return c14977j2;
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    /* renamed from: a */
    private static C14977j m59528a(Cursor cursor) {
        if (cursor == null || cursor.isBeforeFirst() || cursor.isAfterLast()) {
            return null;
        }
        C14954c.m59392a("[db] parse bean.", new Object[0]);
        C14977j c14977j = new C14977j();
        c14977j.f93014a = cursor.getLong(cursor.getColumnIndex("_id"));
        c14977j.f93015b = cursor.getInt(cursor.getColumnIndex("_key"));
        c14977j.f93016c = cursor.getBlob(cursor.getColumnIndex("_datas"));
        return c14977j;
    }
}
