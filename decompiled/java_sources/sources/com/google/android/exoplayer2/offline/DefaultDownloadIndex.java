package com.google.android.exoplayer2.offline;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.database.DatabaseIOException;
import com.google.android.exoplayer2.database.DatabaseProvider;
import com.google.android.exoplayer2.database.VersionTable;
import com.google.android.exoplayer2.offline.DownloadRequest;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.Util;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes5.dex */
public final class DefaultDownloadIndex implements WritableDownloadIndex {

    /* renamed from: A */
    public static final int f24914A = 4;

    /* renamed from: B */
    public static final int f24915B = 5;

    /* renamed from: C */
    public static final int f24916C = 6;

    /* renamed from: D */
    public static final int f24917D = 7;

    /* renamed from: E */
    public static final int f24918E = 8;

    /* renamed from: F */
    public static final int f24919F = 9;

    /* renamed from: G */
    public static final int f24920G = 10;

    /* renamed from: H */
    public static final int f24921H = 11;

    /* renamed from: I */
    public static final int f24922I = 12;

    /* renamed from: J */
    public static final int f24923J = 13;

    /* renamed from: K */
    public static final int f24924K = 14;

    /* renamed from: L */
    public static final String f24925L = "id = ?";

    /* renamed from: M */
    public static final String f24926M = "state = 2";

    /* renamed from: P */
    public static final String f24929P = "(id TEXT PRIMARY KEY NOT NULL,mime_type TEXT,uri TEXT NOT NULL,stream_keys TEXT NOT NULL,custom_cache_key TEXT,data BLOB NOT NULL,state INTEGER NOT NULL,start_time_ms INTEGER NOT NULL,update_time_ms INTEGER NOT NULL,content_length INTEGER NOT NULL,stop_reason INTEGER NOT NULL,failure_reason INTEGER NOT NULL,percent_downloaded REAL NOT NULL,bytes_downloaded INTEGER NOT NULL,key_set_id BLOB NOT NULL)";

    /* renamed from: Q */
    public static final String f24930Q = "1";

    /* renamed from: f */
    public static final String f24931f = "ExoPlayerDownloads";

    /* renamed from: g */
    @VisibleForTesting
    public static final int f24932g = 3;

    /* renamed from: h */
    public static final String f24933h = "id";

    /* renamed from: j */
    public static final String f24935j = "uri";

    /* renamed from: m */
    public static final String f24938m = "data";

    /* renamed from: n */
    public static final String f24939n = "state";

    /* renamed from: q */
    public static final String f24942q = "content_length";

    /* renamed from: r */
    public static final String f24943r = "stop_reason";

    /* renamed from: w */
    public static final int f24948w = 0;

    /* renamed from: x */
    public static final int f24949x = 1;

    /* renamed from: y */
    public static final int f24950y = 2;

    /* renamed from: z */
    public static final int f24951z = 3;

    /* renamed from: a */
    public final String f24952a;

    /* renamed from: b */
    public final String f24953b;

    /* renamed from: c */
    public final DatabaseProvider f24954c;

    /* renamed from: d */
    public final Object f24955d;

    /* renamed from: e */
    @GuardedBy("initializationLock")
    public boolean f24956e;

    /* renamed from: N */
    public static final String f24927N = m19441h(3, 4);

    /* renamed from: i */
    public static final String f24934i = "mime_type";

    /* renamed from: k */
    public static final String f24936k = "stream_keys";

    /* renamed from: l */
    public static final String f24937l = "custom_cache_key";

    /* renamed from: o */
    public static final String f24940o = "start_time_ms";

    /* renamed from: p */
    public static final String f24941p = "update_time_ms";

    /* renamed from: s */
    public static final String f24944s = "failure_reason";

    /* renamed from: t */
    public static final String f24945t = "percent_downloaded";

    /* renamed from: u */
    public static final String f24946u = "bytes_downloaded";

    /* renamed from: v */
    public static final String f24947v = "key_set_id";

    /* renamed from: O */
    public static final String[] f24928O = {"id", f24934i, "uri", f24936k, f24937l, "data", "state", f24940o, f24941p, "content_length", "stop_reason", f24944s, f24945t, f24946u, f24947v};

    /* renamed from: com.google.android.exoplayer2.offline.DefaultDownloadIndex$b */
    /* loaded from: classes5.dex */
    public static final class C4801b implements DownloadCursor {

        /* renamed from: e */
        public final Cursor f24957e;

        @Override // com.google.android.exoplayer2.offline.DownloadCursor, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.f24957e.close();
        }

        @Override // com.google.android.exoplayer2.offline.DownloadCursor
        public int getCount() {
            return this.f24957e.getCount();
        }

        @Override // com.google.android.exoplayer2.offline.DownloadCursor
        public Download getDownload() {
            return DefaultDownloadIndex.m19439f(this.f24957e);
        }

        @Override // com.google.android.exoplayer2.offline.DownloadCursor
        public int getPosition() {
            return this.f24957e.getPosition();
        }

        @Override // com.google.android.exoplayer2.offline.DownloadCursor
        public boolean isClosed() {
            return this.f24957e.isClosed();
        }

        @Override // com.google.android.exoplayer2.offline.DownloadCursor
        public boolean moveToPosition(int i) {
            return this.f24957e.moveToPosition(i);
        }

        public C4801b(Cursor cursor) {
            this.f24957e = cursor;
        }
    }

    public DefaultDownloadIndex(DatabaseProvider databaseProvider) {
        this(databaseProvider, "");
    }

    /* renamed from: b */
    public static List<StreamKey> m19437b(@Nullable String str) {
        ArrayList arrayList = new ArrayList();
        if (TextUtils.isEmpty(str)) {
            return arrayList;
        }
        for (String str2 : Util.split(str, ",")) {
            String[] split = Util.split(str2, "\\.");
            Assertions.checkState(split.length == 3);
            arrayList.add(new StreamKey(Integer.parseInt(split[0]), Integer.parseInt(split[1]), Integer.parseInt(split[2])));
        }
        return arrayList;
    }

    @VisibleForTesting
    /* renamed from: c */
    public static String m19438c(List<StreamKey> list) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < list.size(); i++) {
            StreamKey streamKey = list.get(i);
            sb.append(streamKey.periodIndex);
            sb.append('.');
            sb.append(streamKey.groupIndex);
            sb.append('.');
            sb.append(streamKey.streamIndex);
            sb.append(',');
        }
        if (sb.length() > 0) {
            sb.setLength(sb.length() - 1);
        }
        return sb.toString();
    }

    /* renamed from: f */
    public static Download m19439f(Cursor cursor) {
        byte[] blob = cursor.getBlob(14);
        DownloadRequest.Builder streamKeys = new DownloadRequest.Builder((String) Assertions.checkNotNull(cursor.getString(0)), Uri.parse((String) Assertions.checkNotNull(cursor.getString(2)))).setMimeType(cursor.getString(1)).setStreamKeys(m19437b(cursor.getString(3)));
        if (blob.length <= 0) {
            blob = null;
        }
        DownloadRequest build = streamKeys.setKeySetId(blob).setCustomCacheKey(cursor.getString(4)).setData(cursor.getBlob(5)).build();
        DownloadProgress downloadProgress = new DownloadProgress();
        downloadProgress.bytesDownloaded = cursor.getLong(13);
        downloadProgress.percentDownloaded = cursor.getFloat(12);
        int i = cursor.getInt(6);
        return new Download(build, i, cursor.getLong(7), cursor.getLong(8), cursor.getLong(9), cursor.getInt(10), i == 4 ? cursor.getInt(11) : 0, downloadProgress);
    }

    /* renamed from: g */
    public static Download m19440g(Cursor cursor) {
        DownloadRequest build = new DownloadRequest.Builder((String) Assertions.checkNotNull(cursor.getString(0)), Uri.parse((String) Assertions.checkNotNull(cursor.getString(2)))).setMimeType(m19442i(cursor.getString(1))).setStreamKeys(m19437b(cursor.getString(3))).setCustomCacheKey(cursor.getString(4)).setData(cursor.getBlob(5)).build();
        DownloadProgress downloadProgress = new DownloadProgress();
        downloadProgress.bytesDownloaded = cursor.getLong(13);
        downloadProgress.percentDownloaded = cursor.getFloat(12);
        int i = cursor.getInt(6);
        return new Download(build, i, cursor.getLong(7), cursor.getLong(8), cursor.getLong(9), cursor.getInt(10), i == 4 ? cursor.getInt(11) : 0, downloadProgress);
    }

    /* renamed from: h */
    public static String m19441h(int... iArr) {
        if (iArr.length == 0) {
            return "1";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("state");
        sb.append(" IN (");
        for (int i = 0; i < iArr.length; i++) {
            if (i > 0) {
                sb.append(',');
            }
            sb.append(iArr[i]);
        }
        sb.append(')');
        return sb.toString();
    }

    /* renamed from: i */
    public static String m19442i(@Nullable String str) {
        return "dash".equals(str) ? MimeTypes.APPLICATION_MPD : "hls".equals(str) ? MimeTypes.APPLICATION_M3U8 : "ss".equals(str) ? MimeTypes.APPLICATION_SS : MimeTypes.VIDEO_UNKNOWN;
    }

    /* renamed from: d */
    public final void m19443d() throws DatabaseIOException {
        synchronized (this.f24955d) {
            if (this.f24956e) {
                return;
            }
            try {
                int version = VersionTable.getVersion(this.f24954c.getReadableDatabase(), 0, this.f24952a);
                if (version != 3) {
                    SQLiteDatabase writableDatabase = this.f24954c.getWritableDatabase();
                    writableDatabase.beginTransactionNonExclusive();
                    try {
                        VersionTable.setVersion(writableDatabase, 0, this.f24952a, 3);
                        List<Download> m19445j = version == 2 ? m19445j(writableDatabase) : new ArrayList<>();
                        String valueOf = String.valueOf(this.f24953b);
                        writableDatabase.execSQL(valueOf.length() != 0 ? "DROP TABLE IF EXISTS ".concat(valueOf) : new String("DROP TABLE IF EXISTS "));
                        String str = this.f24953b;
                        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 415);
                        sb.append("CREATE TABLE ");
                        sb.append(str);
                        sb.append(" ");
                        sb.append(f24929P);
                        writableDatabase.execSQL(sb.toString());
                        Iterator<Download> it2 = m19445j.iterator();
                        while (it2.hasNext()) {
                            m19446k(it2.next(), writableDatabase);
                        }
                        writableDatabase.setTransactionSuccessful();
                        writableDatabase.endTransaction();
                    } catch (Throwable th) {
                        writableDatabase.endTransaction();
                        throw th;
                    }
                }
                this.f24956e = true;
            } catch (SQLException e) {
                throw new DatabaseIOException(e);
            }
        }
    }

    /* renamed from: e */
    public final Cursor m19444e(String str, @Nullable String[] strArr) throws DatabaseIOException {
        try {
            return this.f24954c.getReadableDatabase().query(this.f24953b, f24928O, str, strArr, null, null, "start_time_ms ASC");
        } catch (SQLiteException e) {
            throw new DatabaseIOException(e);
        }
    }

    @Override // com.google.android.exoplayer2.offline.DownloadIndex
    @Nullable
    public Download getDownload(String str) throws DatabaseIOException {
        m19443d();
        try {
            Cursor m19444e = m19444e("id = ?", new String[]{str});
            try {
                if (m19444e.getCount() == 0) {
                    m19444e.close();
                    return null;
                }
                m19444e.moveToNext();
                Download m19439f = m19439f(m19444e);
                m19444e.close();
                return m19439f;
            } finally {
            }
        } catch (SQLiteException e) {
            throw new DatabaseIOException(e);
        }
    }

    @Override // com.google.android.exoplayer2.offline.DownloadIndex
    public DownloadCursor getDownloads(int... iArr) throws DatabaseIOException {
        m19443d();
        return new C4801b(m19444e(m19441h(iArr), null));
    }

    /* renamed from: j */
    public final List<Download> m19445j(SQLiteDatabase sQLiteDatabase) {
        ArrayList arrayList = new ArrayList();
        if (!Util.tableExists(sQLiteDatabase, this.f24953b)) {
            return arrayList;
        }
        Cursor query = sQLiteDatabase.query(this.f24953b, new String[]{"id", "title", "uri", f24936k, f24937l, "data", "state", f24940o, f24941p, "content_length", "stop_reason", f24944s, f24945t, f24946u}, null, null, null, null, null);
        while (query.moveToNext()) {
            try {
                arrayList.add(m19440g(query));
            } finally {
            }
        }
        query.close();
        return arrayList;
    }

    /* renamed from: k */
    public final void m19446k(Download download, SQLiteDatabase sQLiteDatabase) {
        byte[] bArr = download.request.keySetId;
        if (bArr == null) {
            bArr = Util.EMPTY_BYTE_ARRAY;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("id", download.request.f25051id);
        contentValues.put(f24934i, download.request.mimeType);
        contentValues.put("uri", download.request.uri.toString());
        contentValues.put(f24936k, m19438c(download.request.streamKeys));
        contentValues.put(f24937l, download.request.customCacheKey);
        contentValues.put("data", download.request.data);
        contentValues.put("state", Integer.valueOf(download.state));
        contentValues.put(f24940o, Long.valueOf(download.startTimeMs));
        contentValues.put(f24941p, Long.valueOf(download.updateTimeMs));
        contentValues.put("content_length", Long.valueOf(download.contentLength));
        contentValues.put("stop_reason", Integer.valueOf(download.stopReason));
        contentValues.put(f24944s, Integer.valueOf(download.failureReason));
        contentValues.put(f24945t, Float.valueOf(download.getPercentDownloaded()));
        contentValues.put(f24946u, Long.valueOf(download.getBytesDownloaded()));
        contentValues.put(f24947v, bArr);
        sQLiteDatabase.replaceOrThrow(this.f24953b, null, contentValues);
    }

    @Override // com.google.android.exoplayer2.offline.WritableDownloadIndex
    public void putDownload(Download download) throws DatabaseIOException {
        m19443d();
        try {
            m19446k(download, this.f24954c.getWritableDatabase());
        } catch (SQLiteException e) {
            throw new DatabaseIOException(e);
        }
    }

    @Override // com.google.android.exoplayer2.offline.WritableDownloadIndex
    public void removeDownload(String str) throws DatabaseIOException {
        m19443d();
        try {
            this.f24954c.getWritableDatabase().delete(this.f24953b, "id = ?", new String[]{str});
        } catch (SQLiteException e) {
            throw new DatabaseIOException(e);
        }
    }

    @Override // com.google.android.exoplayer2.offline.WritableDownloadIndex
    public void setDownloadingStatesToQueued() throws DatabaseIOException {
        m19443d();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("state", (Integer) 0);
            this.f24954c.getWritableDatabase().update(this.f24953b, contentValues, f24926M, null);
        } catch (SQLException e) {
            throw new DatabaseIOException(e);
        }
    }

    @Override // com.google.android.exoplayer2.offline.WritableDownloadIndex
    public void setStatesToRemoving() throws DatabaseIOException {
        m19443d();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("state", (Integer) 5);
            contentValues.put(f24944s, (Integer) 0);
            this.f24954c.getWritableDatabase().update(this.f24953b, contentValues, null, null);
        } catch (SQLException e) {
            throw new DatabaseIOException(e);
        }
    }

    @Override // com.google.android.exoplayer2.offline.WritableDownloadIndex
    public void setStopReason(int i) throws DatabaseIOException {
        m19443d();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("stop_reason", Integer.valueOf(i));
            this.f24954c.getWritableDatabase().update(this.f24953b, contentValues, f24927N, null);
        } catch (SQLException e) {
            throw new DatabaseIOException(e);
        }
    }

    public DefaultDownloadIndex(DatabaseProvider databaseProvider, String str) {
        this.f24952a = str;
        this.f24954c = databaseProvider;
        String valueOf = String.valueOf(str);
        this.f24953b = valueOf.length() != 0 ? f24931f.concat(valueOf) : new String(f24931f);
        this.f24955d = new Object();
    }

    @Override // com.google.android.exoplayer2.offline.WritableDownloadIndex
    public void setStopReason(String str, int i) throws DatabaseIOException {
        m19443d();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("stop_reason", Integer.valueOf(i));
            SQLiteDatabase writableDatabase = this.f24954c.getWritableDatabase();
            String str2 = this.f24953b;
            String str3 = f24927N;
            StringBuilder sb = new StringBuilder(String.valueOf(str3).length() + 11);
            sb.append(str3);
            sb.append(" AND ");
            sb.append("id = ?");
            writableDatabase.update(str2, contentValues, sb.toString(), new String[]{str});
        } catch (SQLException e) {
            throw new DatabaseIOException(e);
        }
    }
}
