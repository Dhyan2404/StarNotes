package com.google.android.exoplayer2.database;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import com.google.android.exoplayer2.ExoPlayerLibraryInfo;
import com.google.android.exoplayer2.util.Util;

/* loaded from: classes5.dex */
public final class VersionTable {
    public static final int FEATURE_CACHE_CONTENT_METADATA = 1;
    public static final int FEATURE_CACHE_FILE_METADATA = 2;
    public static final int FEATURE_EXTERNAL = 1000;
    public static final int FEATURE_OFFLINE = 0;
    public static final int VERSION_UNSET = -1;

    /* renamed from: a */
    public static final String f23320a = "ExoPlayerVersions";

    /* renamed from: b */
    public static final String f23321b = "feature";

    /* renamed from: c */
    public static final String f23322c = "instance_uid";

    /* renamed from: d */
    public static final String f23323d = "version";

    /* renamed from: e */
    public static final String f23324e = "feature = ? AND instance_uid = ?";

    /* renamed from: f */
    public static final String f23325f = "PRIMARY KEY (feature, instance_uid)";

    /* renamed from: g */
    public static final String f23326g = "CREATE TABLE IF NOT EXISTS ExoPlayerVersions (feature INTEGER NOT NULL,instance_uid TEXT NOT NULL,version INTEGER NOT NULL,PRIMARY KEY (feature, instance_uid))";

    static {
        ExoPlayerLibraryInfo.registerModule("goog.exo.database");
    }

    /* renamed from: a */
    public static String[] m18633a(int i, String str) {
        return new String[]{Integer.toString(i), str};
    }

    public static int getVersion(SQLiteDatabase sQLiteDatabase, int i, String str) throws DatabaseIOException {
        try {
            if (!Util.tableExists(sQLiteDatabase, f23320a)) {
                return -1;
            }
            Cursor query = sQLiteDatabase.query(f23320a, new String[]{"version"}, f23324e, m18633a(i, str), null, null, null);
            try {
                if (query.getCount() == 0) {
                    query.close();
                    return -1;
                }
                query.moveToNext();
                int i2 = query.getInt(0);
                query.close();
                return i2;
            } finally {
            }
        } catch (SQLException e) {
            throw new DatabaseIOException(e);
        }
    }

    public static void removeVersion(SQLiteDatabase sQLiteDatabase, int i, String str) throws DatabaseIOException {
        try {
            if (Util.tableExists(sQLiteDatabase, f23320a)) {
                sQLiteDatabase.delete(f23320a, f23324e, m18633a(i, str));
            }
        } catch (SQLException e) {
            throw new DatabaseIOException(e);
        }
    }

    public static void setVersion(SQLiteDatabase sQLiteDatabase, int i, String str, int i2) throws DatabaseIOException {
        try {
            sQLiteDatabase.execSQL(f23326g);
            ContentValues contentValues = new ContentValues();
            contentValues.put(f23321b, Integer.valueOf(i));
            contentValues.put(f23322c, str);
            contentValues.put("version", Integer.valueOf(i2));
            sQLiteDatabase.replaceOrThrow(f23320a, null, contentValues);
        } catch (SQLException e) {
            throw new DatabaseIOException(e);
        }
    }
}
