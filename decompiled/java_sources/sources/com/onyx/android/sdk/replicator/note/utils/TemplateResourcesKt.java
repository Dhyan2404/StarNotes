package com.onyx.android.sdk.replicator.note.utils;

import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.common.path.CoverPaths;
import com.onyx.android.sdk.data.common.path.TemplatePaths;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateResourceModel;
import java.nio.file.Path;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u001a\u0012\u0010\u0005\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0004\u001a\u0012\u0010\u0007\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0004\u001a\u0014\u0010\b\u001a\u00020\u0004*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u001a\u0014\u0010\t\u001a\u00020\u0004*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u001a\u001a\u0010\n\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0004\u001a\u001a\u0010\f\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0004¨\u0006\r"}, m61528d2 = {"deleteRelatedFile", "", "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;", CouchFieldKey.KEY_UID, "", "exportCoverResource", "dirPath", "exportTemplateResource", "getResourceFile", "getThumbnailFile", "importCoverResource", Constant.TAG_USER_ID, "importTemplateResource", "sdk-replicator_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class TemplateResourcesKt {
    public static final void deleteRelatedFile(@NotNull TemplateResourceModel templateResourceModel, @NotNull String uid) {
        Intrinsics.checkNotNullParameter(templateResourceModel, "<this>");
        Intrinsics.checkNotNullParameter(uid, "uid");
        FileUtils fileUtils = FileUtils.INSTANCE;
        fileUtils.deleteFile(getResourceFile(templateResourceModel, uid));
        fileUtils.deleteFile(getThumbnailFile(templateResourceModel, uid));
    }

    public static /* synthetic */ void deleteRelatedFile$default(TemplateResourceModel templateResourceModel, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = AccountDataBundle.INSTANCE.getSyncUserId();
        }
        deleteRelatedFile(templateResourceModel, str);
    }

    public static final void exportCoverResource(@NotNull TemplateResourceModel templateResourceModel, @NotNull String dirPath) {
        Paths paths;
        Path path;
        Paths paths2;
        Path path2;
        Intrinsics.checkNotNullParameter(templateResourceModel, "<this>");
        Intrinsics.checkNotNullParameter(dirPath, "dirPath");
        String relativePath = templateResourceModel.getRelativePath();
        String templateResAbsolutePath = relativePath != null ? TemplatePaths.INSTANCE.templateResAbsolutePath(relativePath) : null;
        String thumbnailRelativePath = templateResourceModel.getThumbnailRelativePath();
        String templateResAbsolutePath2 = thumbnailRelativePath != null ? TemplatePaths.INSTANCE.templateResAbsolutePath(thumbnailRelativePath) : null;
        CoverPaths coverPaths = CoverPaths.INSTANCE;
        FileUtils fileUtils = FileUtils.INSTANCE;
        Path userNoteCoverResPath = coverPaths.userNoteCoverResPath(dirPath, SyncConstant.EXPORT_USER_DATA, fileUtils.getFileName(templateResAbsolutePath));
        Path userNoteCoverThumbnailResPath = coverPaths.userNoteCoverThumbnailResPath(dirPath, SyncConstant.EXPORT_USER_DATA, fileUtils.getFileName(templateResAbsolutePath2));
        if (templateResAbsolutePath != null && (path2 = (paths2 = Paths.INSTANCE).toPath(templateResAbsolutePath)) != null) {
            Paths.copyFile$default(paths2, path2, userNoteCoverResPath, false, 2, null);
        }
        if (templateResAbsolutePath2 == null || (path = (paths = Paths.INSTANCE).toPath(templateResAbsolutePath2)) == null) {
            return;
        }
        Paths.copyFile$default(paths, path, userNoteCoverThumbnailResPath, false, 2, null);
    }

    public static final void exportTemplateResource(@NotNull TemplateResourceModel templateResourceModel, @NotNull String dirPath) {
        Paths paths;
        Path path;
        Paths paths2;
        Path path2;
        Intrinsics.checkNotNullParameter(templateResourceModel, "<this>");
        Intrinsics.checkNotNullParameter(dirPath, "dirPath");
        String relativePath = templateResourceModel.getRelativePath();
        String templateResAbsolutePath = relativePath != null ? TemplatePaths.INSTANCE.templateResAbsolutePath(relativePath) : null;
        String thumbnailRelativePath = templateResourceModel.getThumbnailRelativePath();
        String templateResAbsolutePath2 = thumbnailRelativePath != null ? TemplatePaths.INSTANCE.templateResAbsolutePath(thumbnailRelativePath) : null;
        TemplatePaths templatePaths = TemplatePaths.INSTANCE;
        FileUtils fileUtils = FileUtils.INSTANCE;
        Path userNoteTemplateResPath = templatePaths.userNoteTemplateResPath(dirPath, SyncConstant.EXPORT_USER_DATA, fileUtils.getFileName(templateResAbsolutePath));
        Path userNoteTemplateThumbnailResPath = templatePaths.userNoteTemplateThumbnailResPath(dirPath, SyncConstant.EXPORT_USER_DATA, fileUtils.getFileName(templateResAbsolutePath2));
        if (templateResAbsolutePath != null && (path2 = (paths2 = Paths.INSTANCE).toPath(templateResAbsolutePath)) != null) {
            Paths.copyFile$default(paths2, path2, userNoteTemplateResPath, false, 2, null);
        }
        if (templateResAbsolutePath2 == null || (path = (paths = Paths.INSTANCE).toPath(templateResAbsolutePath2)) == null) {
            return;
        }
        Paths.copyFile$default(paths, path, userNoteTemplateThumbnailResPath, false, 2, null);
    }

    @NotNull
    public static final String getResourceFile(@NotNull TemplateResourceModel templateResourceModel, @NotNull String uid) {
        Intrinsics.checkNotNullParameter(templateResourceModel, "<this>");
        Intrinsics.checkNotNullParameter(uid, "uid");
        return TemplatePaths.INSTANCE.appUserNoteTemplateResPath(uid, FileUtils.INSTANCE.getFileName(templateResourceModel.getRelativePath())).toAbsolutePath().toString();
    }

    public static /* synthetic */ String getResourceFile$default(TemplateResourceModel templateResourceModel, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = AccountDataBundle.INSTANCE.getSyncUserId();
        }
        return getResourceFile(templateResourceModel, str);
    }

    @NotNull
    public static final String getThumbnailFile(@NotNull TemplateResourceModel templateResourceModel, @NotNull String uid) {
        Intrinsics.checkNotNullParameter(templateResourceModel, "<this>");
        Intrinsics.checkNotNullParameter(uid, "uid");
        return TemplatePaths.INSTANCE.appUserNoteTemplateResPath(uid, FileUtils.INSTANCE.getFileName(templateResourceModel.getThumbnailRelativePath())).toAbsolutePath().toString();
    }

    public static /* synthetic */ String getThumbnailFile$default(TemplateResourceModel templateResourceModel, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = AccountDataBundle.INSTANCE.getSyncUserId();
        }
        return getThumbnailFile(templateResourceModel, str);
    }

    public static final void importCoverResource(@NotNull TemplateResourceModel templateResourceModel, @NotNull String dirPath, @NotNull String userId) {
        Intrinsics.checkNotNullParameter(templateResourceModel, "<this>");
        Intrinsics.checkNotNullParameter(dirPath, "dirPath");
        Intrinsics.checkNotNullParameter(userId, "userId");
        String relativePath = templateResourceModel.getRelativePath();
        if (relativePath == null) {
            relativePath = "";
        }
        FileUtils fileUtils = FileUtils.INSTANCE;
        String fileName = fileUtils.getFileName(relativePath);
        CoverPaths coverPaths = CoverPaths.INSTANCE;
        Path userNoteCoverResPath = coverPaths.userNoteCoverResPath(dirPath, SyncConstant.EXPORT_USER_DATA, fileName);
        Path appUserNoteCoverResPath = coverPaths.appUserNoteCoverResPath(userId, fileName);
        Path path = !appUserNoteCoverResPath.endsWith(relativePath) ? Paths.INSTANCE.toPath(TemplatePaths.INSTANCE.templateResAbsolutePath(relativePath)) : appUserNoteCoverResPath;
        Paths paths = Paths.INSTANCE;
        Paths.copyFile$default(paths, userNoteCoverResPath, path, false, 2, null);
        String fileName2 = fileUtils.getFileName(templateResourceModel.getThumbnailRelativePath());
        Paths.copyFile$default(paths, coverPaths.userNoteCoverThumbnailResPath(dirPath, SyncConstant.EXPORT_USER_DATA, fileName2), coverPaths.appUserNoteCoverThumbnailResPath(userId, fileName2), false, 2, null);
    }

    public static final void importTemplateResource(@NotNull TemplateResourceModel templateResourceModel, @NotNull String dirPath, @NotNull String userId) {
        Intrinsics.checkNotNullParameter(templateResourceModel, "<this>");
        Intrinsics.checkNotNullParameter(dirPath, "dirPath");
        Intrinsics.checkNotNullParameter(userId, "userId");
        FileUtils fileUtils = FileUtils.INSTANCE;
        String fileName = fileUtils.getFileName(templateResourceModel.getRelativePath());
        String fileName2 = fileUtils.getFileName(templateResourceModel.getThumbnailRelativePath());
        TemplatePaths templatePaths = TemplatePaths.INSTANCE;
        Path userNoteTemplateResPath = templatePaths.userNoteTemplateResPath(dirPath, SyncConstant.EXPORT_USER_DATA, fileName);
        Path userNoteTemplateThumbnailResPath = templatePaths.userNoteTemplateThumbnailResPath(dirPath, SyncConstant.EXPORT_USER_DATA, fileName2);
        Path appUserNoteTemplateResPath = templatePaths.appUserNoteTemplateResPath(userId, fileName);
        Path appUserNoteTemplateThumbnailResPath = templatePaths.appUserNoteTemplateThumbnailResPath(userId, fileName2);
        Paths paths = Paths.INSTANCE;
        Paths.copyFile$default(paths, userNoteTemplateResPath, appUserNoteTemplateResPath, false, 2, null);
        Paths.copyFile$default(paths, userNoteTemplateThumbnailResPath, appUserNoteTemplateThumbnailResPath, false, 2, null);
    }
}
