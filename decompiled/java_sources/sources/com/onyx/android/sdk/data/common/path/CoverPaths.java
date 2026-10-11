package com.onyx.android.sdk.data.common.path;

import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.base.utils.AppFilePaths;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.attribute.FileAttribute;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\f\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\bJ\u0016\u0010\t\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bJ\u000e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\bJ\u0016\u0010\f\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bJ\u0016\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\bJ\u001e\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bJ\u0018\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\bH\u0002J\u001e\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bJ\n\u0010\u0012\u001a\u00020\u0004*\u00020\u0004J\n\u0010\u0013\u001a\u00020\u0004*\u00020\u0004¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/path/CoverPaths;", "", "()V", "appCurUserNoteCoverResDir", "Ljava/nio/file/Path;", "appCurUserNoteCoverThumbnailResDir", "appUserNoteCoverResDir", Constant.TAG_USER_ID, "", "appUserNoteCoverResPath", "title", "appUserNoteCoverThumbnailResDir", "appUserNoteCoverThumbnailResPath", "userNoteCoverResDir", "dirPath", "userNoteCoverResPath", "userNoteCoverThumbnailResDir", "userNoteCoverThumbnailResPath", "cover", SyncConstant.LOCAL_COVER_RES_NAME, "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class CoverPaths {

    @NotNull
    public static final CoverPaths INSTANCE = new CoverPaths();

    private CoverPaths() {
    }

    private final Path userNoteCoverThumbnailResDir(String dirPath, String userId) {
        Path createDirectories = Files.createDirectories(CommonPaths.INSTANCE.thumbnail(userNoteCoverResDir(dirPath, userId)), (FileAttribute[]) Arrays.copyOf(new FileAttribute[0], 0));
        Intrinsics.checkNotNullExpressionValue(createDirectories, "createDirectories(this, *attributes)");
        return createDirectories;
    }

    @NotNull
    public final Path appCurUserNoteCoverResDir() {
        return appUserNoteCoverResDir(AccountDataBundle.INSTANCE.getSyncUserId());
    }

    @NotNull
    public final Path appCurUserNoteCoverThumbnailResDir() {
        return appUserNoteCoverThumbnailResDir(AccountDataBundle.INSTANCE.getSyncUserId());
    }

    @NotNull
    public final Path appUserNoteCoverResDir(@NotNull String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        return userNoteCoverResDir(AppFilePaths.INSTANCE.appFilesPath(), userId);
    }

    @NotNull
    public final Path appUserNoteCoverResPath(@NotNull String userId, @NotNull String title) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(title, "title");
        return Paths.INSTANCE.append(appUserNoteCoverResDir(userId), title);
    }

    @NotNull
    public final Path appUserNoteCoverThumbnailResDir(@NotNull String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        return userNoteCoverThumbnailResDir(AppFilePaths.INSTANCE.appFilesPath(), userId);
    }

    @NotNull
    public final Path appUserNoteCoverThumbnailResPath(@NotNull String userId, @NotNull String title) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(title, "title");
        return Paths.INSTANCE.append(appUserNoteCoverThumbnailResDir(userId), title);
    }

    @NotNull
    public final Path cover(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return Paths.INSTANCE.append(path, "cover");
    }

    @NotNull
    public final Path coverRes(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return Paths.INSTANCE.append(path, SyncConstant.LOCAL_COVER_RES_NAME);
    }

    @NotNull
    public final Path userNoteCoverResDir(@NotNull String dirPath, @NotNull String userId) {
        Intrinsics.checkNotNullParameter(dirPath, "dirPath");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Path createDirectories = Files.createDirectories(coverRes(CommonPaths.INSTANCE.userNoteDir(dirPath, userId)), (FileAttribute[]) Arrays.copyOf(new FileAttribute[0], 0));
        Intrinsics.checkNotNullExpressionValue(createDirectories, "createDirectories(this, *attributes)");
        return createDirectories;
    }

    @NotNull
    public final Path userNoteCoverResPath(@NotNull String dirPath, @NotNull String userId, @NotNull String title) {
        Intrinsics.checkNotNullParameter(dirPath, "dirPath");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(title, "title");
        return Paths.INSTANCE.append(userNoteCoverResDir(dirPath, userId), title);
    }

    @NotNull
    public final Path userNoteCoverThumbnailResPath(@NotNull String dirPath, @NotNull String userId, @NotNull String title) {
        Intrinsics.checkNotNullParameter(dirPath, "dirPath");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(title, "title");
        return Paths.INSTANCE.append(userNoteCoverThumbnailResDir(dirPath, userId), title);
    }
}
