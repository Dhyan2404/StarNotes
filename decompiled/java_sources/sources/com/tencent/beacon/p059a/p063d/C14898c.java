package com.tencent.beacon.p059a.p063d;

import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.tencent.beacon.base.util.C14954c;
import com.tencent.beacon.p059a.p061b.C14882j;
import com.tencent.beacon.p059a.p062c.C14888c;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: com.tencent.beacon.a.d.c */
/* loaded from: classes10.dex */
public class C14898c extends SQLiteOpenHelper {

    /* renamed from: a */
    private String f92645a;

    public C14898c(String str) {
        super(C14888c.m58989c().m58997b(), "beacon_db_" + str, (SQLiteDatabase.CursorFactory) null, 1);
        this.f92645a = "";
        C14954c.m59389a("[DB]", 0, "DBOpenHelper construc.", new Object[0]);
        this.f92645a = "beacon_db_" + str;
    }

    /* renamed from: a */
    private boolean m59087a(SQLiteDatabase sQLiteDatabase) {
        Cursor cursor;
        try {
            ArrayList<String> arrayList = new ArrayList();
            cursor = sQLiteDatabase.query("sqlite_master", new String[]{"name"}, "type = 'table'", null, null, null, null);
            if (cursor != null) {
                while (cursor.moveToNext()) {
                    try {
                        arrayList.add(cursor.getString(0));
                    } catch (Throwable th) {
                        th = th;
                        try {
                            C14882j.m58961e().m58954a("608", "[db] drop all tables error! ", th);
                            C14954c.m59393a(th);
                            if (cursor != null && !cursor.isClosed()) {
                                cursor.close();
                            }
                            return false;
                        } finally {
                            if (cursor != null && !cursor.isClosed()) {
                                cursor.close();
                            }
                        }
                    }
                }
            }
            if (arrayList.size() > 0) {
                for (String str : arrayList) {
                    if (!str.equals("sqlite_sequence") && !str.equals("android_metadata")) {
                        sQLiteDatabase.execSQL("drop table if exists " + str);
                        C14954c.m59389a("[DB]", 1, "[db] drop %s", str);
                    }
                }
            }
            return true;
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
        }
    }

    /* renamed from: b */
    private void m59088b(SQLiteDatabase sQLiteDatabase) {
        if (m59087a(sQLiteDatabase)) {
            C14954c.m59389a("[DB]", 0, "[db] drop all success recreate!", new Object[0]);
            onCreate(sQLiteDatabase);
            return;
        }
        C14954c.m59403e("[db] drop all fail try deleted file,may next time will success!", new Object[0]);
        File databasePath = C14888c.m58989c().m58997b().getDatabasePath(this.f92645a);
        if (databasePath == null || !databasePath.canWrite()) {
            return;
        }
        databasePath.delete();
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onConfigure(SQLiteDatabase sQLiteDatabase) {
        super.onConfigure(sQLiteDatabase);
        sQLiteDatabase.setPageSize(4096L);
        sQLiteDatabase.enableWriteAheadLogging();
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        C14954c.m59389a("[DB]", 0, "DBOpenHelper onCreate.", new Object[0]);
        try {
            Iterator<String> it2 = C14897b.f92644a.iterator();
            while (it2.hasNext()) {
                sQLiteDatabase.execSQL(it2.next());
            }
        } catch (SQLException e) {
            C14882j.m58961e().m58954a("601", "error msg: " + e.getMessage(), e);
            C14954c.m59395b("[DB] crate db table error!", new Object[0]);
            C14954c.m59393a(e);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        C14954c.m59389a("[DB]", 0, "[db] Downgrade a db  [%s] from v %d to  v%d , deleted all tables!", this.f92645a, Integer.valueOf(i), Integer.valueOf(i2));
        m59088b(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        C14954c.m59389a("[DB]", 0, "[db] Upgrade a db  [%s] from v %d to v %d , deleted all tables!", this.f92645a, Integer.valueOf(i), Integer.valueOf(i2));
        m59088b(sQLiteDatabase);
    }
}
