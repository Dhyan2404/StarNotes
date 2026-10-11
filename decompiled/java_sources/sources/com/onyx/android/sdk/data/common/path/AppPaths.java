package com.onyx.android.sdk.data.common.path;

import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.base.utils.AppFilePaths;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.attribute.FileAttribute;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007J\u0016\u0010\b\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007J\u000e\u0010\n\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/path/AppPaths;", "", "()V", "appFontDir", "Ljava/nio/file/Path;", "appPBDir", "dirPath", "", "appPBPath", CouchFieldKey.KEY_REVISION_ID, "fontDir", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class AppPaths {

    @NotNull
    public static final AppPaths INSTANCE = new AppPaths();

    private AppPaths() {
    }

    @NotNull
    public final Path appFontDir() {
        return fontDir(AppFilePaths.INSTANCE.appFilesPath());
    }

    @NotNull
    public final Path appPBDir(@NotNull String dirPath) {
        Intrinsics.checkNotNullParameter(dirPath, "dirPath");
        CommonPaths commonPaths = CommonPaths.INSTANCE;
        Path createDirectories = Files.createDirectories(commonPaths.m32964pb(commonPaths.app(Paths.INSTANCE.toPath(dirPath))), (FileAttribute[]) Arrays.copyOf(new FileAttribute[0], 0));
        Intrinsics.checkNotNullExpressionValue(createDirectories, "createDirectories(this, *attributes)");
        return createDirectories;
    }

    @NotNull
    public final Path appPBPath(@NotNull String dirPath, @NotNull String revisionId) {
        Intrinsics.checkNotNullParameter(dirPath, "dirPath");
        Intrinsics.checkNotNullParameter(revisionId, "revisionId");
        return Paths.INSTANCE.append(appPBDir(dirPath), revisionId);
    }

    @NotNull
    public final Path fontDir(@NotNull String dirPath) {
        Intrinsics.checkNotNullParameter(dirPath, "dirPath");
        CommonPaths commonPaths = CommonPaths.INSTANCE;
        return commonPaths.font(commonPaths.app(Paths.INSTANCE.toPath(dirPath)));
    }
}
