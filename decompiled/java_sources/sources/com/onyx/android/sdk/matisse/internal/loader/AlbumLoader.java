package com.onyx.android.sdk.matisse.internal.loader;

import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.database.MergeCursor;
import android.net.Uri;
import android.provider.MediaStore;
import androidx.loader.content.CursorLoader;
import com.google.android.exoplayer2.offline.DefaultDownloadIndex;
import com.onyx.android.sdk.matisse.MimeType;
import com.onyx.android.sdk.matisse.internal.entity.Album;
import com.onyx.android.sdk.matisse.internal.entity.SelectionSpec;
import java.util.HashMap;
import java.util.HashSet;

/* loaded from: classes7.dex */
public class AlbumLoader extends CursorLoader {
    public static final String COLUMN_COUNT = "count";
    public static final String COLUMN_URI = "uri";

    /* renamed from: F */
    public static final String f42710F = "(media_type=? OR media_type=?) AND _size>0) GROUP BY (bucket_id";

    /* renamed from: G */
    public static final String f42711G = "(media_type=? OR media_type=?) AND _size>0";

    /* renamed from: I */
    public static final String f42713I = "media_type=? AND _size>0) GROUP BY (bucket_id";

    /* renamed from: J */
    public static final String f42714J = "media_type=? AND _size>0";

    /* renamed from: K */
    public static final String f42715K = "media_type=? AND _size>0 AND mime_type=?) GROUP BY (bucket_id";

    /* renamed from: L */
    public static final String f42716L = "media_type=? AND _size>0 AND mime_type=?";

    /* renamed from: M */
    public static final String f42717M = "date_modified DESC";

    /* renamed from: B */
    public static final Uri f42706B = MediaStore.Files.getContentUri("external");

    /* renamed from: z */
    public static final String f42718z = "bucket_id";

    /* renamed from: A */
    public static final String f42705A = "bucket_display_name";

    /* renamed from: C */
    public static final String[] f42707C = {"_id", f42718z, f42705A, DefaultDownloadIndex.f24934i, "uri", "count"};

    /* renamed from: D */
    public static final String[] f42708D = {"_id", f42718z, f42705A, DefaultDownloadIndex.f24934i, "COUNT(*) AS count"};

    /* renamed from: E */
    public static final String[] f42709E = {"_id", f42718z, f42705A, DefaultDownloadIndex.f24934i};

    /* renamed from: H */
    public static final String[] f42712H = {String.valueOf(1), String.valueOf(3)};

    public AlbumLoader(Context context, String str, String[] strArr) {
        super(context, f42706B, m33417d() ? f42708D : f42709E, str, strArr, "date_modified DESC");
    }

    /* renamed from: d */
    public static boolean m33417d() {
        return false;
    }

    /* renamed from: e */
    public static String[] m33418e(int i) {
        return new String[]{String.valueOf(i), "image/gif"};
    }

    /* renamed from: f */
    public static String[] m33419f(int i) {
        return new String[]{String.valueOf(i)};
    }

    /* renamed from: g */
    public static Uri m33420g(Cursor cursor) {
        long j = cursor.getLong(cursor.getColumnIndexOrThrow("_id"));
        String string = cursor.getString(cursor.getColumnIndexOrThrow(DefaultDownloadIndex.f24934i));
        return ContentUris.withAppendedId(MimeType.isImage(string) ? MediaStore.Images.Media.EXTERNAL_CONTENT_URI : MimeType.isVideo(string) ? MediaStore.Video.Media.EXTERNAL_CONTENT_URI : MediaStore.Files.getContentUri("external"), j);
    }

    public static CursorLoader newInstance(Context context) {
        String str;
        String[] strArr;
        if (SelectionSpec.getInstance().onlyShowGif()) {
            str = m33417d() ? f42715K : f42716L;
            strArr = m33418e(1);
        } else if (SelectionSpec.getInstance().onlyShowImages()) {
            str = m33417d() ? f42713I : "media_type=? AND _size>0";
            strArr = m33419f(1);
        } else if (SelectionSpec.getInstance().onlyShowVideos()) {
            str = m33417d() ? f42713I : "media_type=? AND _size>0";
            strArr = m33419f(3);
        } else {
            str = m33417d() ? f42710F : "(media_type=? OR media_type=?) AND _size>0";
            strArr = f42712H;
        }
        return new AlbumLoader(context, str, strArr);
    }

    @Override // androidx.loader.content.Loader
    public void onContentChanged() {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.loader.content.CursorLoader, androidx.loader.content.AsyncTaskLoader
    public Cursor loadInBackground() {
        int i;
        Uri uri;
        long valueOf;
        Uri uri2;
        int i2;
        Cursor loadInBackground = super.loadInBackground();
        String[] strArr = f42707C;
        MatrixCursor matrixCursor = new MatrixCursor(strArr);
        if (m33417d()) {
            MatrixCursor matrixCursor2 = new MatrixCursor(strArr);
            if (loadInBackground != null) {
                i2 = 0;
                while (loadInBackground.moveToNext()) {
                    long j = loadInBackground.getLong(loadInBackground.getColumnIndexOrThrow("_id"));
                    long j2 = loadInBackground.getLong(loadInBackground.getColumnIndexOrThrow(f42718z));
                    String string = loadInBackground.getString(loadInBackground.getColumnIndexOrThrow(f42705A));
                    String string2 = loadInBackground.getString(loadInBackground.getColumnIndexOrThrow(DefaultDownloadIndex.f24934i));
                    Uri m33420g = m33420g(loadInBackground);
                    int i3 = loadInBackground.getInt(loadInBackground.getColumnIndexOrThrow("count"));
                    matrixCursor2.addRow(new String[]{Long.toString(j), Long.toString(j2), string, string2, m33420g.toString(), String.valueOf(i3)});
                    i2 += i3;
                }
                uri2 = loadInBackground.moveToFirst() ? m33420g(loadInBackground) : null;
            } else {
                uri2 = null;
                i2 = 0;
            }
            String[] strArr2 = new String[6];
            String str = Album.ALBUM_ID_ALL;
            strArr2[0] = str;
            strArr2[1] = str;
            strArr2[2] = Album.ALBUM_NAME_ALL;
            strArr2[3] = null;
            strArr2[4] = uri2 != null ? uri2.toString() : null;
            strArr2[5] = String.valueOf(i2);
            matrixCursor.addRow(strArr2);
            return new MergeCursor(new Cursor[]{matrixCursor, matrixCursor2});
        }
        HashMap hashMap = new HashMap();
        if (loadInBackground != null) {
            while (loadInBackground.moveToNext()) {
                long j3 = loadInBackground.getLong(loadInBackground.getColumnIndexOrThrow(f42718z));
                Long l = (Long) hashMap.get(Long.valueOf(j3));
                if (l == null) {
                    valueOf = 1L;
                } else {
                    valueOf = Long.valueOf(l.longValue() + 1);
                }
                hashMap.put(Long.valueOf(j3), valueOf);
            }
        }
        MatrixCursor matrixCursor3 = new MatrixCursor(f42707C);
        if (loadInBackground == null || !loadInBackground.moveToFirst()) {
            i = 0;
            uri = null;
        } else {
            uri = m33420g(loadInBackground);
            HashSet hashSet = new HashSet();
            i = 0;
            do {
                long j4 = loadInBackground.getLong(loadInBackground.getColumnIndexOrThrow(f42718z));
                if (!hashSet.contains(Long.valueOf(j4))) {
                    long j5 = loadInBackground.getLong(loadInBackground.getColumnIndexOrThrow("_id"));
                    String string3 = loadInBackground.getString(loadInBackground.getColumnIndexOrThrow(f42705A));
                    String string4 = loadInBackground.getString(loadInBackground.getColumnIndexOrThrow(DefaultDownloadIndex.f24934i));
                    Uri m33420g2 = m33420g(loadInBackground);
                    long longValue = ((Long) hashMap.get(Long.valueOf(j4))).longValue();
                    matrixCursor3.addRow(new String[]{Long.toString(j5), Long.toString(j4), string3, string4, m33420g2.toString(), String.valueOf(longValue)});
                    hashSet.add(Long.valueOf(j4));
                    i = (int) (i + longValue);
                }
            } while (loadInBackground.moveToNext());
        }
        String[] strArr3 = new String[6];
        String str2 = Album.ALBUM_ID_ALL;
        strArr3[0] = str2;
        strArr3[1] = str2;
        strArr3[2] = Album.ALBUM_NAME_ALL;
        strArr3[3] = null;
        strArr3[4] = uri == null ? null : uri.toString();
        strArr3[5] = String.valueOf(i);
        matrixCursor.addRow(strArr3);
        return new MergeCursor(new Cursor[]{matrixCursor, matrixCursor3});
    }
}
