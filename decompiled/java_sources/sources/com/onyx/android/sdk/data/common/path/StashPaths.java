package com.onyx.android.sdk.data.common.path;

import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.attribute.FileAttribute;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\n\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u000b\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0006J\u0016\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\r\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0006J\u0016\u0010\r\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/path/StashPaths;", "", "()V", "deleteStashShapeLockFile", "", "documentId", "", "ensureStashShapeLockFile", "Ljava/nio/file/Path;", "isStashShapeLockFileExist", "stashShapeLockFile", "stashShapePBArchivedDir", "pbDirPath", "stashShapePBFileDir", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class StashPaths {

    @NotNull
    public static final StashPaths INSTANCE = new StashPaths();

    private StashPaths() {
    }

    public final boolean deleteStashShapeLockFile(@NotNull String documentId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        return Files.deleteIfExists(stashShapeLockFile(documentId));
    }

    @NotNull
    public final Path ensureStashShapeLockFile(@NotNull String documentId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        Path stashShapeLockFile = stashShapeLockFile(documentId);
        FileUtils.INSTANCE.ensureFileExists(stashShapeLockFile.toAbsolutePath().toString());
        return stashShapeLockFile;
    }

    public final boolean isStashShapeLockFileExist(@NotNull String documentId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        return Files.exists(stashShapeLockFile(documentId), (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0));
    }

    @NotNull
    public final Path stashShapeLockFile(@NotNull String documentId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        Paths paths = Paths.INSTANCE;
        CommonPaths commonPaths = CommonPaths.INSTANCE;
        return paths.append(commonPaths.stash(commonPaths.docDir(commonPaths.appDocDir().toAbsolutePath().toString(), documentId)), SyncConstant.FILE_LOCKS_NAME);
    }

    @NotNull
    public final Path stashShapePBArchivedDir(@NotNull String documentId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        return stashShapePBArchivedDir(CommonPaths.INSTANCE.appDocDir().toAbsolutePath().toString(), documentId);
    }

    @NotNull
    public final Path stashShapePBFileDir(@NotNull String documentId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        return stashShapePBFileDir(CommonPaths.INSTANCE.appDocDir().toAbsolutePath().toString(), documentId);
    }

    @NotNull
    public final Path stashShapePBArchivedDir(@NotNull String pbDirPath, @NotNull String documentId) {
        Intrinsics.checkNotNullParameter(pbDirPath, "pbDirPath");
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        Paths paths = Paths.INSTANCE;
        CommonPaths commonPaths = CommonPaths.INSTANCE;
        Path createDirectories = Files.createDirectories(paths.append(commonPaths.stash(commonPaths.docDir(pbDirPath, documentId)), SyncConstant.ARCHIVED_SHAPE_DIR_NAME), (FileAttribute[]) Arrays.copyOf(new FileAttribute[0], 0));
        Intrinsics.checkNotNullExpressionValue(createDirectories, "createDirectories(this, *attributes)");
        return createDirectories;
    }

    @NotNull
    public final Path stashShapePBFileDir(@NotNull String pbDirPath, @NotNull String documentId) {
        Intrinsics.checkNotNullParameter(pbDirPath, "pbDirPath");
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        CommonPaths commonPaths = CommonPaths.INSTANCE;
        Path createDirectories = Files.createDirectories(commonPaths.shape(commonPaths.stash(commonPaths.docDir(pbDirPath, documentId))), (FileAttribute[]) Arrays.copyOf(new FileAttribute[0], 0));
        Intrinsics.checkNotNullExpressionValue(createDirectories, "createDirectories(this, *attributes)");
        return createDirectories;
    }
}
