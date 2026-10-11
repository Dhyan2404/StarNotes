package com.liulishuo.okdownload.core.breakpoint;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.SparseArray;
import androidx.annotation.NonNull;
import com.liulishuo.okdownload.core.exception.SQLiteException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class BreakpointSQLiteHelper extends SQLiteOpenHelper {

    /* renamed from: e */
    public static final String f39279e = "okdownload-breakpoint.db";

    /* renamed from: f */
    public static final int f39280f = 3;

    /* renamed from: g */
    public static final String f39281g = "okdownloadResponseFilename";

    /* renamed from: h */
    public static final String f39282h = "breakpoint";

    /* renamed from: i */
    public static final String f39283i = "block";

    /* renamed from: j */
    public static final String f39284j = "taskFileDirty";

    public BreakpointSQLiteHelper(Context context) {
        super(context, f39279e, (SQLiteDatabase.CursorFactory) null, 3);
    }

    /* renamed from: f */
    public static ContentValues m30992f(int i, int i2, @NonNull BlockInfo blockInfo) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(BreakpointSQLiteKey.HOST_ID, Integer.valueOf(i));
        contentValues.put(BreakpointSQLiteKey.BLOCK_INDEX, Integer.valueOf(i2));
        contentValues.put(BreakpointSQLiteKey.START_OFFSET, Long.valueOf(blockInfo.getStartOffset()));
        contentValues.put("content_length", Long.valueOf(blockInfo.getContentLength()));
        contentValues.put(BreakpointSQLiteKey.CURRENT_OFFSET, Long.valueOf(blockInfo.getCurrentOffset()));
        return contentValues;
    }

    /* renamed from: j */
    public static ContentValues m30993j(@NonNull BreakpointInfo breakpointInfo) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("id", Integer.valueOf(breakpointInfo.f39263a));
        contentValues.put("url", breakpointInfo.getUrl());
        contentValues.put(BreakpointSQLiteKey.ETAG, breakpointInfo.getEtag());
        contentValues.put(BreakpointSQLiteKey.PARENT_PATH, breakpointInfo.f39266d.getAbsolutePath());
        contentValues.put(BreakpointSQLiteKey.FILENAME, breakpointInfo.getFilename());
        contentValues.put(BreakpointSQLiteKey.TASK_ONLY_PARENT_PATH, Integer.valueOf(breakpointInfo.m30991a() ? 1 : 0));
        contentValues.put("chunked", Integer.valueOf(breakpointInfo.isChunked() ? 1 : 0));
        return contentValues;
    }

    public void insert(@NonNull BreakpointInfo breakpointInfo) throws IOException {
        int blockCount = breakpointInfo.getBlockCount();
        SQLiteDatabase writableDatabase = getWritableDatabase();
        for (int i = 0; i < blockCount; i++) {
            BlockInfo block = breakpointInfo.getBlock(i);
            if (writableDatabase.insert(f39283i, null, m30992f(breakpointInfo.f39263a, i, block)) == -1) {
                throw new SQLiteException("insert block " + block + " failed!");
            }
        }
        if (writableDatabase.insert(f39282h, null, m30993j(breakpointInfo)) != -1) {
            return;
        }
        throw new SQLiteException("insert info " + breakpointInfo + " failed!");
    }

    public List<Integer> loadDirtyFileList() {
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            cursor = getWritableDatabase().rawQuery("SELECT * FROM taskFileDirty", null);
            while (cursor.moveToNext()) {
                arrayList.add(Integer.valueOf(cursor.getInt(cursor.getColumnIndex("id"))));
            }
            cursor.close();
            return arrayList;
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    public HashMap<String, String> loadResponseFilenameToMap() {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        HashMap<String, String> hashMap = new HashMap<>();
        Cursor cursor = null;
        try {
            cursor = writableDatabase.rawQuery("SELECT * FROM okdownloadResponseFilename", null);
            while (cursor.moveToNext()) {
                hashMap.put(cursor.getString(cursor.getColumnIndex("url")), cursor.getString(cursor.getColumnIndex(BreakpointSQLiteKey.FILENAME)));
            }
            cursor.close();
            return hashMap;
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    public SparseArray<BreakpointInfo> loadToCache() {
        Cursor cursor;
        SQLiteDatabase writableDatabase = getWritableDatabase();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Cursor cursor2 = null;
        try {
            Cursor rawQuery = writableDatabase.rawQuery("SELECT * FROM breakpoint", null);
            while (rawQuery.moveToNext()) {
                try {
                    arrayList.add(new BreakpointInfoRow(rawQuery));
                } catch (Throwable th) {
                    th = th;
                    cursor = cursor2;
                    cursor2 = rawQuery;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            cursor2 = writableDatabase.rawQuery("SELECT * FROM block", null);
            while (cursor2.moveToNext()) {
                arrayList2.add(new BlockInfoRow(cursor2));
            }
            rawQuery.close();
            cursor2.close();
            SparseArray<BreakpointInfo> sparseArray = new SparseArray<>();
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                BreakpointInfo info = ((BreakpointInfoRow) it2.next()).toInfo();
                Iterator it3 = arrayList2.iterator();
                while (it3.hasNext()) {
                    BlockInfoRow blockInfoRow = (BlockInfoRow) it3.next();
                    if (blockInfoRow.getBreakpointId() == info.f39263a) {
                        info.addBlock(blockInfoRow.toInfo());
                        it3.remove();
                    }
                }
                sparseArray.put(info.f39263a, info);
            }
            return sparseArray;
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
        }
    }

    public void markFileClear(int i) {
        getWritableDatabase().delete(f39284j, "id = ?", new String[]{String.valueOf(i)});
    }

    public void markFileDirty(int i) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        ContentValues contentValues = new ContentValues(1);
        contentValues.put("id", Integer.valueOf(i));
        writableDatabase.insert(f39284j, null, contentValues);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS breakpoint( id INTEGER PRIMARY KEY, url VARCHAR NOT NULL, etag VARCHAR, parent_path VARCHAR NOT NULL, filename VARCHAR, task_only_parent_path TINYINT(1) DEFAULT 0, chunked TINYINT(1) DEFAULT 0)");
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS block( id INTEGER PRIMARY KEY AUTOINCREMENT, breakpoint_id INTEGER, block_index INTEGER, start_offset INTEGER, content_length INTEGER, current_offset INTEGER)");
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS okdownloadResponseFilename( url VARCHAR NOT NULL PRIMARY KEY, filename VARCHAR NOT NULL)");
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS taskFileDirty( id INTEGER PRIMARY KEY)");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onOpen(SQLiteDatabase sQLiteDatabase) {
        super.onOpen(sQLiteDatabase);
        setWriteAheadLoggingEnabled(true);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (i == 1 && i2 == 2) {
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS okdownloadResponseFilename( url VARCHAR NOT NULL PRIMARY KEY, filename VARCHAR NOT NULL)");
        }
        if (i <= 2) {
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS taskFileDirty( id INTEGER PRIMARY KEY)");
        }
    }

    public void removeBlock(int i) {
        getWritableDatabase().delete(f39283i, "breakpoint_id = ?", new String[]{String.valueOf(i)});
    }

    public void removeInfo(int i) {
        getWritableDatabase().delete(f39282h, "id = ?", new String[]{String.valueOf(i)});
        removeBlock(i);
    }

    public void updateBlockIncrease(@NonNull BreakpointInfo breakpointInfo, int i, long j) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(BreakpointSQLiteKey.CURRENT_OFFSET, Long.valueOf(j));
        getWritableDatabase().update(f39283i, contentValues, "breakpoint_id = ? AND block_index = ?", new String[]{Integer.toString(breakpointInfo.f39263a), Integer.toString(i)});
    }

    public void updateFilename(@NonNull String str, @NonNull String str2) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        ContentValues contentValues = new ContentValues(2);
        contentValues.put("url", str);
        contentValues.put(BreakpointSQLiteKey.FILENAME, str2);
        synchronized (str.intern()) {
            Cursor cursor = null;
            try {
                Cursor rawQuery = writableDatabase.rawQuery("SELECT filename FROM okdownloadResponseFilename WHERE url = ?", new String[]{str});
                try {
                    if (!rawQuery.moveToFirst()) {
                        writableDatabase.insert(f39281g, null, contentValues);
                    } else if (!str2.equals(rawQuery.getString(rawQuery.getColumnIndex(BreakpointSQLiteKey.FILENAME)))) {
                        writableDatabase.replace(f39281g, null, contentValues);
                    }
                    rawQuery.close();
                } catch (Throwable th) {
                    th = th;
                    cursor = rawQuery;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    public void updateInfo(@NonNull BreakpointInfo breakpointInfo) throws IOException {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        Cursor cursor = null;
        try {
            cursor = getWritableDatabase().rawQuery("SELECT id FROM breakpoint WHERE id =" + breakpointInfo.f39263a + " LIMIT 1", null);
            if (!cursor.moveToNext()) {
                cursor.close();
                writableDatabase.endTransaction();
                return;
            }
            removeInfo(breakpointInfo.f39263a);
            insert(breakpointInfo);
            writableDatabase.setTransactionSuccessful();
            cursor.close();
            writableDatabase.endTransaction();
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            writableDatabase.endTransaction();
            throw th;
        }
    }
}
