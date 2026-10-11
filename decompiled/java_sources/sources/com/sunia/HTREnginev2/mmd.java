package com.sunia.HTREnginev2;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import androidx.annotation.WorkerThread;
import com.google.android.exoplayer2.database.DatabaseIOException;
import com.google.android.exoplayer2.database.DatabaseProvider;
import com.google.android.exoplayer2.database.VersionTable;
import com.google.android.exoplayer2.util.Assertions;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: classes5.dex */
public final class mmd {

    /* renamed from: c */
    public static final String f77752c = "ExoPlayerCacheFileMetadata";

    /* renamed from: d */
    public static final int f77753d = 1;

    /* renamed from: e */
    public static final String f77754e = "name";

    /* renamed from: f */
    public static final String f77755f = "length";

    /* renamed from: h */
    public static final int f77757h = 0;

    /* renamed from: i */
    public static final int f77758i = 1;

    /* renamed from: j */
    public static final int f77759j = 2;

    /* renamed from: k */
    public static final String f77760k = "name = ?";

    /* renamed from: m */
    public static final String f77762m = "(name TEXT PRIMARY KEY NOT NULL,length INTEGER NOT NULL,last_touch_timestamp INTEGER NOT NULL)";

    /* renamed from: a */
    public final DatabaseProvider f77763a;

    /* renamed from: b */
    public String f77764b;

    /* renamed from: g */
    public static final String f77756g = "last_touch_timestamp";

    /* renamed from: l */
    public static final String[] f77761l = {"name", "length", f77756g};

    public mmd(DatabaseProvider databaseProvider) {
        this.f77763a = databaseProvider;
    }

    @WorkerThread
    /* renamed from: a */
    public static void m55649a(DatabaseProvider databaseProvider, long j) throws DatabaseIOException {
        String hexString = Long.toHexString(j);
        try {
            String m55651e = m55651e(hexString);
            SQLiteDatabase writableDatabase = databaseProvider.getWritableDatabase();
            writableDatabase.beginTransactionNonExclusive();
            try {
                VersionTable.removeVersion(writableDatabase, 2, hexString);
                m55650b(writableDatabase, m55651e);
                writableDatabase.setTransactionSuccessful();
            } finally {
                writableDatabase.endTransaction();
            }
        } catch (SQLException e) {
            throw new DatabaseIOException(e);
        }
    }

    /* renamed from: b */
    public static void m55650b(SQLiteDatabase sQLiteDatabase, String str) {
        String valueOf = String.valueOf(str);
        sQLiteDatabase.execSQL(valueOf.length() != 0 ? "DROP TABLE IF EXISTS ".concat(valueOf) : new String("DROP TABLE IF EXISTS "));
    }

    /* renamed from: e */
    public static String m55651e(String str) {
        String valueOf = String.valueOf(str);
        return valueOf.length() != 0 ? f77752c.concat(valueOf) : new String(f77752c);
    }

    @WorkerThread
    /* renamed from: c */
    public Map<String, lmd> m55652c() throws DatabaseIOException {
        try {
            Cursor m55653d = m55653d();
            try {
                HashMap hashMap = new HashMap(m55653d.getCount());
                while (m55653d.moveToNext()) {
                    hashMap.put((String) Assertions.checkNotNull(m55653d.getString(0)), new lmd(m55653d.getLong(1), m55653d.getLong(2)));
                }
                m55653d.close();
                return hashMap;
            } finally {
            }
        } catch (SQLException e) {
            throw new DatabaseIOException(e);
        }
    }

    /* renamed from: d */
    public final Cursor m55653d() {
        Assertions.checkNotNull(this.f77764b);
        return this.f77763a.getReadableDatabase().query(this.f77764b, f77761l, null, null, null, null, null);
    }

    @WorkerThread
    /* renamed from: f */
    public void m55654f(long j) throws DatabaseIOException {
        try {
            String hexString = Long.toHexString(j);
            this.f77764b = m55651e(hexString);
            if (VersionTable.getVersion(this.f77763a.getReadableDatabase(), 2, hexString) != 1) {
                SQLiteDatabase writableDatabase = this.f77763a.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                try {
                    VersionTable.setVersion(writableDatabase, 2, hexString, 1);
                    m55650b(writableDatabase, this.f77764b);
                    String str = this.f77764b;
                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 108);
                    sb.append("CREATE TABLE ");
                    sb.append(str);
                    sb.append(" ");
                    sb.append(f77762m);
                    writableDatabase.execSQL(sb.toString());
                    writableDatabase.setTransactionSuccessful();
                    writableDatabase.endTransaction();
                } catch (Throwable th) {
                    writableDatabase.endTransaction();
                    throw th;
                }
            }
        } catch (SQLException e) {
            throw new DatabaseIOException(e);
        }
    }

    @WorkerThread
    /* renamed from: g */
    public void m55655g(String str) throws DatabaseIOException {
        Assertions.checkNotNull(this.f77764b);
        try {
            this.f77763a.getWritableDatabase().delete(this.f77764b, f77760k, new String[]{str});
        } catch (SQLException e) {
            throw new DatabaseIOException(e);
        }
    }

    @WorkerThread
    /* renamed from: h */
    public void m55656h(Set<String> set) throws DatabaseIOException {
        Assertions.checkNotNull(this.f77764b);
        try {
            SQLiteDatabase writableDatabase = this.f77763a.getWritableDatabase();
            writableDatabase.beginTransactionNonExclusive();
            try {
                Iterator<String> it2 = set.iterator();
                while (it2.hasNext()) {
                    writableDatabase.delete(this.f77764b, f77760k, new String[]{it2.next()});
                }
                writableDatabase.setTransactionSuccessful();
            } finally {
                writableDatabase.endTransaction();
            }
        } catch (SQLException e) {
            throw new DatabaseIOException(e);
        }
    }

    @WorkerThread
    /* renamed from: i */
    public void m55657i(String str, long j, long j2) throws DatabaseIOException {
        Assertions.checkNotNull(this.f77764b);
        try {
            SQLiteDatabase writableDatabase = this.f77763a.getWritableDatabase();
            ContentValues contentValues = new ContentValues();
            contentValues.put("name", str);
            contentValues.put("length", Long.valueOf(j));
            contentValues.put(f77756g, Long.valueOf(j2));
            writableDatabase.replaceOrThrow(this.f77764b, null, contentValues);
        } catch (SQLException e) {
            throw new DatabaseIOException(e);
        }
    }
}
