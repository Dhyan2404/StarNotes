package com.onyx.android.sdk.base.extension;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.LogUtils;
import com.onyx.android.sdk.base.common.error.OnyxException;
import com.onyx.android.sdk.base.utils.Debug;
import java.io.File;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.attribute.FileAttribute;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.io.path.PathsKt__PathUtilsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import onyx.org.apache.commons.io.FileUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u001e\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004J\u0014\u0010\u0006\u001a\u00020\u0007*\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u0004J\n\u0010\t\u001a\u00020\n*\u00020\u0007J\u001c\u0010\u000b\u001a\u00020\f*\u00020\u00072\u0006\u0010\r\u001a\u00020\u00072\b\b\u0002\u0010\u000e\u001a\u00020\fJ\n\u0010\u000f\u001a\u00020\u0010*\u00020\u0007J\n\u0010\u0011\u001a\u00020\u0010*\u00020\u0007J\n\u0010\u0012\u001a\u00020\u0010*\u00020\u0007J\n\u0010\u0013\u001a\u00020\f*\u00020\u0007J\n\u0010\u0014\u001a\u00020\f*\u00020\u0007J\u001a\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\n0\u0016*\u00020\u00072\b\b\u0002\u0010\u0017\u001a\u00020\fJ\u0012\u0010\u0018\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004J\n\u0010\u0019\u001a\u00020\u0007*\u00020\u0004¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/base/extension/Paths;", "", "()V", "absolutePath", "", "pathPrefix", RequestParameters.SUBRESOURCE_APPEND, "Ljava/nio/file/Path;", "node", "asFile", "Ljava/io/File;", "copyFile", "", "dstPath", "override", "createDirectoriesSafely", "", "createParentDirectoriesSafely", "deleteDirectory", "deleteFile", "isFile", "listFiles", "", "recursive", "relativePath", "toPath", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class Paths {

    @NotNull
    public static final Paths INSTANCE = new Paths();

    public static /* synthetic */ boolean copyFile$default(Paths paths, Path path, Path path2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return paths.copyFile(path, path2, z);
    }

    public static /* synthetic */ Collection listFiles$default(Paths paths, Path path, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return paths.listFiles(path, z);
    }

    @NotNull
    public final String absolutePath(@NotNull String str, @NotNull String pathPrefix) {
        boolean startsWith$default;
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(pathPrefix, "pathPrefix");
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(str, pathPrefix, false, 2, null);
        return startsWith$default ? str : append(toPath(pathPrefix), str).toAbsolutePath().toString();
    }

    @NotNull
    public final Path append(@NotNull Path path, @Nullable String str) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        if (str == null) {
            return path;
        }
        Path path2 = java.nio.file.Paths.get(path.toAbsolutePath().toString(), (String[]) Arrays.copyOf(new String[]{str}, 1));
        Intrinsics.checkNotNullExpressionValue(path2, "get(base, *subpaths)");
        return path2;
    }

    @NotNull
    public final File asFile(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return new File(path.toAbsolutePath().toString());
    }

    public final boolean copyFile(@NotNull Path path, @NotNull Path dstPath, boolean z) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(dstPath, "dstPath");
        if (Files.notExists(path, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0))) {
            return false;
        }
        if (!z && Files.exists(dstPath, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0))) {
            return false;
        }
        if (z && Files.exists(dstPath, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0))) {
            deleteFile(dstPath);
        }
        try {
            FileUtils.copyFile(asFile(path), asFile(dstPath));
            return true;
        } catch (Exception e) {
            LogUtils.file(e);
            Debug.INSTANCE.m32048e(e);
            OnyxException.INSTANCE.checkNoSpace(e);
            return false;
        }
    }

    public final void createDirectoriesSafely(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        try {
            Intrinsics.checkNotNullExpressionValue(Files.createDirectories(path, (FileAttribute[]) Arrays.copyOf(new FileAttribute[0], 0)), "createDirectories(this, *attributes)");
        } catch (Exception unused) {
        }
    }

    public final void createParentDirectoriesSafely(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        try {
            PathsKt__PathUtilsKt.createParentDirectories(path, new FileAttribute[0]);
        } catch (Exception unused) {
        }
    }

    public final void deleteDirectory(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        com.onyx.android.sdk.base.utils.FileUtils.INSTANCE.deleteDirectory(path.toAbsolutePath().toString());
    }

    public final boolean deleteFile(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return com.onyx.android.sdk.base.utils.FileUtils.INSTANCE.deleteFile(path.toAbsolutePath().toString());
    }

    public final boolean isFile(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return asFile(path).isFile();
    }

    @NotNull
    public final Collection<File> listFiles(@NotNull Path path, boolean z) {
        List emptyList;
        List emptyList2;
        Intrinsics.checkNotNullParameter(path, "<this>");
        if (Files.notExists(path, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0))) {
            emptyList2 = CollectionsKt__CollectionsKt.emptyList();
            return emptyList2;
        }
        Collection<File> listFiles = FileUtils.listFiles(asFile(path), (String[]) null, z);
        if (listFiles != null) {
            return listFiles;
        }
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return emptyList;
    }

    @NotNull
    public final String relativePath(@NotNull String str, @NotNull String pathPrefix) {
        boolean startsWith$default;
        Path relativeTo;
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(pathPrefix, "pathPrefix");
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(str, pathPrefix, false, 2, null);
        if (!startsWith$default) {
            return str;
        }
        Path path = java.nio.file.Paths.get(str, new String[0]);
        Intrinsics.checkNotNullExpressionValue(path, "get(path)");
        relativeTo = PathsKt__PathUtilsKt.relativeTo(path, toPath(pathPrefix));
        return relativeTo.toString();
    }

    @NotNull
    public final Path toPath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Path path = java.nio.file.Paths.get(str, new String[0]);
        Intrinsics.checkNotNullExpressionValue(path, "get(path)");
        return path;
    }
}
