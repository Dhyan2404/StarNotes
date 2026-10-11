package com.canhub.cropper.utils;

import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0000\u001a\f\u0010\u0006\u001a\u00020\u0007*\u00020\u0003H\u0000¨\u0006\b"}, m61528d2 = {"getUriForFile", "Landroid/net/Uri;", "context", "Landroid/content/Context;", "file", "Ljava/io/File;", "authority", "", "cropper_release"}, m61529k = 2, m61530mv = {1, 7, 1}, m61532xi = 48)
/* loaded from: classes3.dex */
public final class GetUriForFileKt {
    @NotNull
    public static final String authority(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return context.getPackageName() + ".cropper.fileprovider";
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00d5 A[Catch: Exception -> 0x00de, TryCatch #2 {Exception -> 0x00de, blocks: (B:9:0x0020, B:19:0x0062, B:34:0x00d5, B:36:0x00da, B:37:0x00dd, B:27:0x00c9, B:29:0x00ce), top: B:8:0x0020 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00da A[Catch: Exception -> 0x00de, TryCatch #2 {Exception -> 0x00de, blocks: (B:9:0x0020, B:19:0x0062, B:34:0x00d5, B:36:0x00da, B:37:0x00dd, B:27:0x00c9, B:29:0x00ce), top: B:8:0x0020 }] */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final android.net.Uri getUriForFile(@org.jetbrains.annotations.NotNull android.content.Context r8, @org.jetbrains.annotations.NotNull java.io.File r9) {
        /*
            Method dump skipped, instructions count: 249
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.canhub.cropper.utils.GetUriForFileKt.getUriForFile(android.content.Context, java.io.File):android.net.Uri");
    }
}
