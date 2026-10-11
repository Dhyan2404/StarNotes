package com.sunia.HTREnginev2;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.DocumentsContract;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.offline.DefaultDownloadIndex;

@RequiresApi(19)
/* loaded from: classes3.dex */
public class vaf {

    /* renamed from: a */
    public static final String f87302a = "DocumentFile";

    /* renamed from: b */
    public static final int f87303b = 512;

    /* renamed from: a */
    public static boolean m57771a(Context context, Uri uri) {
        return context.checkCallingOrSelfUriPermission(uri, 1) == 0 && !TextUtils.isEmpty(m57777g(context, uri));
    }

    /* renamed from: b */
    public static boolean m57772b(Context context, Uri uri) {
        if (context.checkCallingOrSelfUriPermission(uri, 2) != 0) {
            return false;
        }
        String m57777g = m57777g(context, uri);
        int m57784n = m57784n(context, uri, "flags", 0);
        if (TextUtils.isEmpty(m57777g)) {
            return false;
        }
        if ((m57784n & 4) != 0) {
            return true;
        }
        if (!"vnd.android.document/directory".equals(m57777g) || (m57784n & 8) == 0) {
            return (TextUtils.isEmpty(m57777g) || (m57784n & 2) == 0) ? false : true;
        }
        return true;
    }

    /* renamed from: c */
    public static void m57773c(@Nullable AutoCloseable autoCloseable) {
        if (autoCloseable != null) {
            try {
                autoCloseable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception unused) {
            }
        }
    }

    /* renamed from: d */
    public static boolean m57774d(Context context, Uri uri) {
        Cursor cursor = null;
        try {
            cursor = context.getContentResolver().query(uri, new String[]{"document_id"}, null, null, null);
            return cursor.getCount() > 0;
        } catch (Exception e) {
            Log.w("DocumentFile", "Failed query: " + e);
            return false;
        } finally {
            m57773c(cursor);
        }
    }

    /* renamed from: e */
    public static long m57775e(Context context, Uri uri) {
        return m57785o(context, uri, "flags", 0L);
    }

    @Nullable
    /* renamed from: f */
    public static String m57776f(Context context, Uri uri) {
        return m57786p(context, uri, "_display_name", null);
    }

    @Nullable
    /* renamed from: g */
    public static String m57777g(Context context, Uri uri) {
        return m57786p(context, uri, DefaultDownloadIndex.f24934i, null);
    }

    @Nullable
    /* renamed from: h */
    public static String m57778h(Context context, Uri uri) {
        String m57777g = m57777g(context, uri);
        if ("vnd.android.document/directory".equals(m57777g)) {
            return null;
        }
        return m57777g;
    }

    /* renamed from: i */
    public static boolean m57779i(Context context, Uri uri) {
        return "vnd.android.document/directory".equals(m57777g(context, uri));
    }

    /* renamed from: j */
    public static boolean m57780j(Context context, Uri uri) {
        String m57777g = m57777g(context, uri);
        return ("vnd.android.document/directory".equals(m57777g) || TextUtils.isEmpty(m57777g)) ? false : true;
    }

    /* renamed from: k */
    public static boolean m57781k(Context context, Uri uri) {
        return DocumentsContract.isDocumentUri(context, uri) && (m57775e(context, uri) & 512) != 0;
    }

    /* renamed from: l */
    public static long m57782l(Context context, Uri uri) {
        return m57785o(context, uri, "last_modified", 0L);
    }

    /* renamed from: m */
    public static long m57783m(Context context, Uri uri) {
        return m57785o(context, uri, "_size", 0L);
    }

    /* renamed from: n */
    public static int m57784n(Context context, Uri uri, String str, int i) {
        return (int) m57785o(context, uri, str, i);
    }

    /* renamed from: o */
    public static long m57785o(Context context, Uri uri, String str, long j) {
        ContentResolver contentResolver = context.getContentResolver();
        Cursor cursor = null;
        try {
            cursor = contentResolver.query(uri, new String[]{str}, null, null, null);
            return (!cursor.moveToFirst() || cursor.isNull(0)) ? j : cursor.getLong(0);
        } catch (Exception e) {
            Log.w("DocumentFile", "Failed query: " + e);
            return j;
        } finally {
            m57773c(cursor);
        }
    }

    @Nullable
    /* renamed from: p */
    public static String m57786p(Context context, Uri uri, String str, @Nullable String str2) {
        ContentResolver contentResolver = context.getContentResolver();
        Cursor cursor = null;
        try {
            cursor = contentResolver.query(uri, new String[]{str}, null, null, null);
            return (!cursor.moveToFirst() || cursor.isNull(0)) ? str2 : cursor.getString(0);
        } catch (Exception e) {
            Log.w("DocumentFile", "Failed query: " + e);
            return str2;
        } finally {
            m57773c(cursor);
        }
    }
}
