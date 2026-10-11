package com.onegravity.rteditor.media;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.webkit.MimeTypeMap;
import com.onegravity.rteditor.utils.Helper;
import com.onegravity.rteditor.utils.io.FilenameUtils;
import java.io.File;
import java.util.Calendar;

/* loaded from: classes7.dex */
public class MediaUtils {
    /* renamed from: a */
    public static String m31675a(Context context, Uri uri) {
        String str;
        if (uri.toString().startsWith("content://com.android.gallery3d.provider")) {
            uri = Uri.parse(uri.toString().replace("com.android.gallery3d", "com.google.android.gallery3d"));
        }
        try {
            Cursor query = context.getContentResolver().query(uri, new String[]{"_data"}, null, null, null);
            query.moveToFirst();
            str = uri.toString().startsWith("content://com.google.android.gallery3d") ? uri.toString() : query.getString(query.getColumnIndexOrThrow("_data"));
            Helper.closeQuietly(query);
        } catch (Exception unused) {
            Helper.closeQuietly(null);
            str = "";
        } catch (Throwable th) {
            Helper.closeQuietly(null);
            throw th;
        }
        return (m31676b(str) || !new File(str).exists() || uri.toString().startsWith("content://com.google.android.gallery3d")) ? uri.toString() : str;
    }

    /* renamed from: b */
    public static boolean m31676b(String str) {
        return str == null || str.length() == 0;
    }

    public static Uri createFileUri(String str) {
        return str.startsWith("file://") ? Uri.parse(str) : Uri.fromFile(new File(str));
    }

    public static File createUniqueFile(File file, String str, boolean z) {
        return createUniqueFile(file, str, MimeTypeMap.getSingleton().getMimeTypeFromExtension(str), z);
    }

    public static String determineOriginalFile(Context context, Uri uri) throws IllegalArgumentException {
        if (uri == null) {
            throw new IllegalArgumentException("Image Uri was null!");
        }
        String m31675a = uri.getScheme().startsWith("content") ? m31675a(context, uri) : null;
        if (uri.toString().matches("https?://\\w+\\.googleusercontent\\.com/.+")) {
            m31675a = uri.toString();
        }
        if (uri.getScheme().startsWith("file")) {
            m31675a = uri.toString().substring(7);
        }
        if (m31676b(m31675a)) {
            throw new IllegalArgumentException("File path was null");
        }
        return m31675a;
    }

    public static File createUniqueFile(File file, String str, String str2, boolean z) {
        String extension = FilenameUtils.getExtension(str);
        if (m31676b(extension)) {
            extension = MimeTypeMap.getSingleton().getExtensionFromMimeType(str2);
        }
        String l = Long.toString(Math.round(Math.random() * 2.147483647E9d));
        long timeInMillis = Calendar.getInstance().getTimeInMillis();
        if (z) {
            return new File(file + File.separator + FilenameUtils.getBaseName(str) + "_" + l + "_" + timeInMillis + "." + extension);
        }
        return new File(file + File.separator + l + "_" + timeInMillis + "." + extension);
    }
}
