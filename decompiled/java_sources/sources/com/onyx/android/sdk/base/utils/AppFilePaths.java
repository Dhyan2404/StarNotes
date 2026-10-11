package com.onyx.android.sdk.base.utils;

import com.onyx.android.sdk.base.extension.Paths;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.attribute.FileAttribute;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0002J\u000e\u0010\b\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0002J\n\u0010\t\u001a\u00020\u0002*\u00020\u0002J\n\u0010\n\u001a\u00020\u0002*\u00020\u0002R\u0017\u0010\u000f\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000eR\u0017\u0010\u0012\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0010\u0010\f\u001a\u0004\b\u0011\u0010\u000e¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/AppFilePaths;", "", "", "appFilesPath", "subDir", "Ljava/nio/file/Path;", "appFilesDir", "appFilesDirPath", "appCachesDir", "filesDirRelativePath", "filesDirAbsolutePath", "a", Constants.STRING_SIG, "getFILES_PATH", "()Ljava/lang/String;", "FILES_PATH", "b", "getCACHE_PATH", "CACHE_PATH", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class AppFilePaths {

    @NotNull
    public static final AppFilePaths INSTANCE = new AppFilePaths();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final String FILES_PATH;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static final String CACHE_PATH;

    static {
        ResManager resManager = ResManager.INSTANCE;
        String absolutePath = resManager.getAppContext().getFilesDir().getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        FILES_PATH = absolutePath;
        String absolutePath2 = resManager.getAppContext().getCacheDir().getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath2, "getAbsolutePath(...)");
        CACHE_PATH = absolutePath2;
    }

    @NotNull
    public final Path appCachesDir(@NotNull String subDir) {
        Intrinsics.checkNotNullParameter(subDir, "subDir");
        Paths paths = Paths.INSTANCE;
        Path createDirectories = Files.createDirectories(paths.append(paths.toPath(CACHE_PATH), subDir), (FileAttribute[]) Arrays.copyOf(new FileAttribute[0], 0));
        Intrinsics.checkNotNullExpressionValue(createDirectories, "createDirectories(this, *attributes)");
        return createDirectories;
    }

    @NotNull
    public final Path appFilesDir(@NotNull String subDir) {
        Intrinsics.checkNotNullParameter(subDir, "subDir");
        Path createDirectories = Files.createDirectories(appFilesDirPath(subDir), (FileAttribute[]) Arrays.copyOf(new FileAttribute[0], 0));
        Intrinsics.checkNotNullExpressionValue(createDirectories, "createDirectories(this, *attributes)");
        return createDirectories;
    }

    @NotNull
    public final Path appFilesDirPath(@NotNull String subDir) {
        Intrinsics.checkNotNullParameter(subDir, "subDir");
        Paths paths = Paths.INSTANCE;
        return paths.append(paths.toPath(appFilesPath()), subDir);
    }

    @NotNull
    public final String appFilesPath() {
        return FILES_PATH;
    }

    @NotNull
    public final String filesDirAbsolutePath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return Paths.INSTANCE.absolutePath(str, FILES_PATH);
    }

    @NotNull
    public final String filesDirRelativePath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return Paths.INSTANCE.relativePath(str, FILES_PATH);
    }

    @NotNull
    public final String getCACHE_PATH() {
        return CACHE_PATH;
    }

    @NotNull
    public final String getFILES_PATH() {
        return FILES_PATH;
    }
}
