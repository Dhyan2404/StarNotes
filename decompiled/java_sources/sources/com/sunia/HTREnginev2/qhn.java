package com.sunia.HTREnginev2;

import android.content.ContentResolver;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.ImageHeaderParserUtils;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import org.apache.commons.text.AlphabetConverter;

/* loaded from: classes3.dex */
public class qhn {

    /* renamed from: f */
    public static final String f82058f = "ThumbStreamOpener";

    /* renamed from: g */
    public static final khg f82059g = new khg();

    /* renamed from: a */
    public final khg f82060a;

    /* renamed from: b */
    public final nhn f82061b;

    /* renamed from: c */
    public final ArrayPool f82062c;

    /* renamed from: d */
    public final ContentResolver f82063d;

    /* renamed from: e */
    public final List<ImageHeaderParser> f82064e;

    public qhn(List<ImageHeaderParser> list, nhn nhnVar, ArrayPool arrayPool, ContentResolver contentResolver) {
        this(list, f82059g, nhnVar, arrayPool, contentResolver);
    }

    /* renamed from: a */
    public int m56696a(Uri uri) {
        InputStream inputStream = null;
        try {
            try {
                inputStream = this.f82063d.openInputStream(uri);
                int orientation = ImageHeaderParserUtils.getOrientation(this.f82064e, inputStream, this.f82062c);
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException unused) {
                    }
                }
                return orientation;
            } catch (Throwable th) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException unused2) {
                    }
                }
                throw th;
            }
        } catch (IOException | NullPointerException e) {
            if (Log.isLoggable(f82058f, 3)) {
                Log.d(f82058f, "Failed to open uri: " + uri, e);
            }
            if (inputStream == null) {
                return -1;
            }
            try {
                inputStream.close();
                return -1;
            } catch (IOException unused3) {
                return -1;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:28:0x004b  */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r1v2 */
    @androidx.annotation.Nullable
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m56697b(@androidx.annotation.NonNull android.net.Uri r6) {
        /*
            r5 = this;
            java.lang.String r0 = "ThumbStreamOpener"
            r1 = 0
            com.sunia.HTREnginev2.nhn r5 = r5.f82061b     // Catch: java.lang.Throwable -> L22 java.lang.SecurityException -> L24
            android.database.Cursor r5 = r5.mo8688a(r6)     // Catch: java.lang.Throwable -> L22 java.lang.SecurityException -> L24
            if (r5 == 0) goto L1c
            boolean r2 = r5.moveToFirst()     // Catch: java.lang.SecurityException -> L1a java.lang.Throwable -> L47
            if (r2 == 0) goto L1c
            r2 = 0
            java.lang.String r6 = r5.getString(r2)     // Catch: java.lang.SecurityException -> L1a java.lang.Throwable -> L47
            r5.close()
            return r6
        L1a:
            r2 = move-exception
            goto L26
        L1c:
            if (r5 == 0) goto L21
            r5.close()
        L21:
            return r1
        L22:
            r6 = move-exception
            goto L49
        L24:
            r2 = move-exception
            r5 = r1
        L26:
            r3 = 3
            boolean r3 = android.util.Log.isLoggable(r0, r3)     // Catch: java.lang.Throwable -> L47
            if (r3 == 0) goto L41
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L47
            r3.<init>()     // Catch: java.lang.Throwable -> L47
            java.lang.String r4 = "Failed to query for thumbnail for Uri: "
            r3.append(r4)     // Catch: java.lang.Throwable -> L47
            r3.append(r6)     // Catch: java.lang.Throwable -> L47
            java.lang.String r6 = r3.toString()     // Catch: java.lang.Throwable -> L47
            android.util.Log.d(r0, r6, r2)     // Catch: java.lang.Throwable -> L47
        L41:
            if (r5 == 0) goto L46
            r5.close()
        L46:
            return r1
        L47:
            r6 = move-exception
            r1 = r5
        L49:
            if (r1 == 0) goto L4e
            r1.close()
        L4e:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.qhn.m56697b(android.net.Uri):java.lang.String");
    }

    /* renamed from: c */
    public final boolean m56698c(File file) {
        return this.f82060a.m55218a(file) && 0 < this.f82060a.m55220c(file);
    }

    /* renamed from: d */
    public InputStream m56699d(Uri uri) throws FileNotFoundException {
        String m56697b = m56697b(uri);
        if (TextUtils.isEmpty(m56697b)) {
            return null;
        }
        File m55219b = this.f82060a.m55219b(m56697b);
        if (!m56698c(m55219b)) {
            return null;
        }
        Uri fromFile = Uri.fromFile(m55219b);
        try {
            return this.f82063d.openInputStream(fromFile);
        } catch (NullPointerException e) {
            throw ((FileNotFoundException) new FileNotFoundException("NPE opening uri: " + uri + AlphabetConverter.f109940d + fromFile).initCause(e));
        }
    }

    public qhn(List<ImageHeaderParser> list, khg khgVar, nhn nhnVar, ArrayPool arrayPool, ContentResolver contentResolver) {
        this.f82060a = khgVar;
        this.f82061b = nhnVar;
        this.f82062c = arrayPool;
        this.f82063d = contentResolver;
        this.f82064e = list;
    }
}
