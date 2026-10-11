package com.canhub.cropper.utils;

import android.content.Context;
import android.net.Uri;
import android.webkit.MimeTypeMap;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u001a \u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0000\u001a \u0010\n\u001a\u00020\t2\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u001a\u001a\u0010\u000b\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u001a\u0018\u0010\u0011\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¨\u0006\u0012"}, m61528d2 = {"Landroid/content/Context;", "context", "Landroid/net/Uri;", "uri", "", "uniqueName", "", "getFilePathFromUri", "contentUri", "Ljava/io/File;", "c", "b", "Ljava/io/InputStream;", "source", "Ljava/io/OutputStream;", "target", "", "a", "cropper_release"}, m61529k = 2, m61530mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class GetFilePathFromUriKt {
    /* renamed from: a */
    public static final void m9293a(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[8192];
        while (true) {
            int read = inputStream.read(bArr);
            if (read <= 0) {
                return;
            } else {
                outputStream.write(bArr, 0, read);
            }
        }
    }

    /* renamed from: b */
    public static final String m9294b(Context context, Uri uri) {
        if (Intrinsics.areEqual(uri.getScheme(), "content")) {
            return MimeTypeMap.getSingleton().getExtensionFromMimeType(context.getContentResolver().getType(uri));
        }
        String path = uri.getPath();
        if (path != null) {
            return MimeTypeMap.getFileExtensionFromUrl(Uri.fromFile(new File(path)).toString());
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0073, code lost:
    
        if (r1 != null) goto L16;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:29:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x007f  */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.io.FileOutputStream] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.io.File m9295c(android.content.Context r5, android.net.Uri r6, boolean r7) {
        /*
            java.lang.String r0 = m9294b(r5, r6)
            java.lang.String r1 = ""
            if (r0 != 0) goto L9
            r0 = r1
        L9:
            java.text.SimpleDateFormat r2 = new java.text.SimpleDateFormat
            java.lang.String r3 = "yyyyMMdd_HHmmss"
            java.util.Locale r4 = java.util.Locale.getDefault()
            r2.<init>(r3, r4)
            java.util.Date r3 = new java.util.Date
            r3.<init>()
            java.lang.String r2 = r2.format(r3)
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "temp_file_"
            r3.append(r4)
            if (r7 == 0) goto L2a
            r1 = r2
        L2a:
            r3.append(r1)
            r7 = 46
            r3.append(r7)
            r3.append(r0)
            java.lang.String r7 = r3.toString()
            java.io.File r0 = new java.io.File
            java.io.File r1 = r5.getCacheDir()
            r0.<init>(r1, r7)
            r0.createNewFile()
            r7 = 0
            java.io.FileOutputStream r1 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L69
            r1.<init>(r0)     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L69
            android.content.ContentResolver r5 = r5.getContentResolver()     // Catch: java.lang.Exception -> L64 java.lang.Throwable -> L77
            java.io.InputStream r7 = r5.openInputStream(r6)     // Catch: java.lang.Exception -> L64 java.lang.Throwable -> L77
            if (r7 == 0) goto L58
            m9293a(r7, r1)     // Catch: java.lang.Exception -> L64 java.lang.Throwable -> L77
        L58:
            r1.flush()     // Catch: java.lang.Exception -> L64 java.lang.Throwable -> L77
            if (r7 == 0) goto L60
            r7.close()
        L60:
            r1.close()
            goto L76
        L64:
            r5 = move-exception
            goto L6b
        L66:
            r5 = move-exception
            r1 = r7
            goto L78
        L69:
            r5 = move-exception
            r1 = r7
        L6b:
            r5.printStackTrace()     // Catch: java.lang.Throwable -> L77
            if (r7 == 0) goto L73
            r7.close()
        L73:
            if (r1 == 0) goto L76
            goto L60
        L76:
            return r0
        L77:
            r5 = move-exception
        L78:
            if (r7 == 0) goto L7d
            r7.close()
        L7d:
            if (r1 == 0) goto L82
            r1.close()
        L82:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.canhub.cropper.utils.GetFilePathFromUriKt.m9295c(android.content.Context, android.net.Uri, boolean):java.io.File");
    }

    @NotNull
    public static final String getFilePathFromUri(@NotNull Context context, @NotNull Uri uri, boolean z) {
        boolean contains$default;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(uri, "uri");
        String path = uri.getPath();
        boolean z2 = false;
        if (path != null) {
            contains$default = StringsKt__StringsKt.contains$default((CharSequence) path, (CharSequence) "file://", false, 2, (Object) null);
            if (contains$default) {
                z2 = true;
            }
        }
        if (!z2) {
            String path2 = m9295c(context, uri, z).getPath();
            Intrinsics.checkNotNullExpressionValue(path2, "{\n    getFileFromContent…uri, uniqueName).path\n  }");
            return path2;
        }
        String path3 = uri.getPath();
        Intrinsics.checkNotNull(path3);
        Intrinsics.checkNotNullExpressionValue(path3, "{\n    uri.path!!\n  }");
        return path3;
    }
}
