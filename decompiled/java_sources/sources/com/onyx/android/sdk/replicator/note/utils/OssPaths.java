package com.onyx.android.sdk.replicator.note.utils;

import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunQueryArgs;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.common.path.CommonPaths;
import com.onyx.android.sdk.data.common.path.CoverPaths;
import com.onyx.android.sdk.data.common.path.TemplatePaths;
import com.onyx.android.sdk.data.common.path.ThumbnailPaths;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.note.data.point.PointDocumentUtils;
import com.onyx.android.sdk.replicator.note.proto.data.ResourceDocumentArgs;
import com.onyx.android.sdk.replicator.note.proto.data.ShapeDocumentArgs;
import com.onyx.android.sdk.replicator.note.proto.doc.ResourcePBDocumentUtils;
import com.onyx.android.sdk.replicator.note.proto.doc.shape.ShapeDocumentUtils;
import java.io.File;
import java.nio.file.Path;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006J\u001e\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006J\u0016\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J*\u0010\f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\r\u001a\u0004\u0018\u00010\u00062\b\u0010\u000e\u001a\u0004\u0018\u00010\u0006J\u001e\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006J\u001e\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006J\u0016\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0013J\u0016\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0015J\u001e\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006J\u0016\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006J\u001e\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006J\u0016\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006J\u0016\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006J\u0016\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006J\u0016\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006J\u0016\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006J\u0016\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006J\u001e\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006J\n\u0010 \u001a\u00020\u0006*\u00020\u0004¨\u0006!"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/utils/OssPaths;", "", "()V", "bookmarkPBOssFileKey", "Ljava/nio/file/Path;", Constant.TAG_USER_ID, "", "documentId", HuaweiYunQueryArgs.FILE_NAME, "noteTemplateResOssFileKey", "ossDocDirPath", "ossUserDataDir", "pointOssFileKey", CouchFieldKey.KEY_PAGE_ID, CouchFieldKey.KEY_REVISION_ID, "resourceContentOssFileKey", "resourceDataOssFileKey", "resourcePBOssFileKey", "args", "Lcom/onyx/android/sdk/replicator/note/proto/data/ResourceDocumentArgs;", "shapeOssFileKey", "Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;", "templateJsonOssFileKey", "thumbnailOssFileKey", "tocPBOssFileKey", "userCoverResOssFileKey", "userCoverThumbnailResOssFileKey", "userDataPBOssFileKey", "userTemplateResOssFileKey", "userTemplateThumbnailResOssFileKey", "virtualDocPBOssFileKey", "virtualPagePBOssFileKey", "ossPathString", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class OssPaths {

    @NotNull
    public static final OssPaths INSTANCE = new OssPaths();

    @NotNull
    public final Path bookmarkPBOssFileKey(@NotNull String userId, @NotNull String documentId, @NotNull String fileName) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        Paths paths = Paths.INSTANCE;
        CommonPaths commonPaths = CommonPaths.INSTANCE;
        return paths.append(commonPaths.m32964pb(commonPaths.bookmark(ossDocDirPath(userId, documentId))), fileName);
    }

    @NotNull
    public final Path noteTemplateResOssFileKey(@NotNull String userId, @NotNull String documentId, @NotNull String fileName) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        return Paths.INSTANCE.append(TemplatePaths.INSTANCE.templateRes(CommonPaths.INSTANCE.note(ossDocDirPath(userId, documentId))), fileName);
    }

    @NotNull
    public final Path ossDocDirPath(@NotNull String userId, @NotNull String documentId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        Path path = java.nio.file.Paths.get(userId, (String[]) Arrays.copyOf(new String[]{"note", documentId}, 2));
        Intrinsics.checkNotNullExpressionValue(path, "get(base, *subpaths)");
        return path;
    }

    @NotNull
    public final String ossPathString(@NotNull Path path) {
        String removePrefix;
        Intrinsics.checkNotNullParameter(path, "<this>");
        String obj = path.toAbsolutePath().toString();
        String separator = File.separator;
        Intrinsics.checkNotNullExpressionValue(separator, "separator");
        removePrefix = StringsKt__StringsKt.removePrefix(obj, (CharSequence) separator);
        return removePrefix;
    }

    @NotNull
    public final Path ossUserDataDir(@NotNull String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Path path = java.nio.file.Paths.get(userId, (String[]) Arrays.copyOf(new String[]{SyncConstant.EXPORT_USER_DATA, "note"}, 2));
        Intrinsics.checkNotNullExpressionValue(path, "get(base, *subpaths)");
        return path;
    }

    @NotNull
    public final Path pointOssFileKey(@NotNull String userId, @NotNull String documentId, @Nullable String pageUniqueId, @Nullable String revisionId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        return Paths.INSTANCE.append(CommonPaths.INSTANCE.point(ossDocDirPath(userId, documentId)), PointDocumentUtils.INSTANCE.getPointFileName(pageUniqueId, revisionId));
    }

    @NotNull
    public final Path resourceContentOssFileKey(@NotNull String userId, @NotNull String documentId, @NotNull String fileName) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        Paths paths = Paths.INSTANCE;
        CommonPaths commonPaths = CommonPaths.INSTANCE;
        return paths.append(commonPaths.content(commonPaths.resource(ossDocDirPath(userId, documentId))), fileName);
    }

    @NotNull
    public final Path resourceDataOssFileKey(@NotNull String userId, @NotNull String documentId, @NotNull String fileName) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        Paths paths = Paths.INSTANCE;
        CommonPaths commonPaths = CommonPaths.INSTANCE;
        return paths.append(commonPaths.data(commonPaths.resource(ossDocDirPath(userId, documentId))), fileName);
    }

    @NotNull
    public final Path resourcePBOssFileKey(@NotNull String userId, @NotNull ResourceDocumentArgs args) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(args, "args");
        String resourceFileName = ResourcePBDocumentUtils.INSTANCE.getResourceFileName(args);
        Paths paths = Paths.INSTANCE;
        CommonPaths commonPaths = CommonPaths.INSTANCE;
        return paths.append(commonPaths.m32964pb(commonPaths.resource(ossDocDirPath(userId, args.getDocumentId()))), resourceFileName);
    }

    @NotNull
    public final Path shapeOssFileKey(@NotNull String userId, @NotNull ShapeDocumentArgs args) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(args, "args");
        String pageShapeFileName = ShapeDocumentUtils.INSTANCE.getPageShapeFileName(args);
        return Paths.INSTANCE.append(CommonPaths.INSTANCE.shape(ossDocDirPath(userId, args.getDocumentId())), pageShapeFileName + ShapeDocumentUtils.SHAPE_FILE_END);
    }

    @NotNull
    public final Path templateJsonOssFileKey(@NotNull String userId, @NotNull String documentId, @NotNull String fileName) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        return Paths.INSTANCE.append(CommonPaths.INSTANCE.json(TemplatePaths.INSTANCE.template(ossDocDirPath(userId, documentId))), fileName);
    }

    @NotNull
    public final Path thumbnailOssFileKey(@NotNull String userId, @NotNull String documentId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        return Paths.INSTANCE.append(ossDocDirPath(userId, documentId), documentId + ThumbnailPaths.INSTANCE.getTHUMBNAIL_FILE_EXTENSION());
    }

    @NotNull
    public final Path tocPBOssFileKey(@NotNull String userId, @NotNull String documentId, @NotNull String fileName) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        Paths paths = Paths.INSTANCE;
        CommonPaths commonPaths = CommonPaths.INSTANCE;
        return paths.append(commonPaths.m32964pb(commonPaths.toc(ossDocDirPath(userId, documentId))), fileName);
    }

    @NotNull
    public final Path userCoverResOssFileKey(@NotNull String userId, @NotNull String fileName) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        return Paths.INSTANCE.append(CoverPaths.INSTANCE.coverRes(ossUserDataDir(userId)), fileName);
    }

    @NotNull
    public final Path userCoverThumbnailResOssFileKey(@NotNull String userId, @NotNull String fileName) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        return Paths.INSTANCE.append(CommonPaths.INSTANCE.thumbnail(CoverPaths.INSTANCE.coverRes(ossUserDataDir(userId))), fileName);
    }

    @NotNull
    public final Path userDataPBOssFileKey(@NotNull String userId, @NotNull String fileName) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        return Paths.INSTANCE.append(CommonPaths.INSTANCE.m32964pb(ossUserDataDir(userId)), fileName);
    }

    @NotNull
    public final Path userTemplateResOssFileKey(@NotNull String userId, @NotNull String fileName) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        return Paths.INSTANCE.append(TemplatePaths.INSTANCE.templateRes(ossUserDataDir(userId)), fileName);
    }

    @NotNull
    public final Path userTemplateThumbnailResOssFileKey(@NotNull String userId, @NotNull String fileName) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        return Paths.INSTANCE.append(CommonPaths.INSTANCE.thumbnail(TemplatePaths.INSTANCE.templateRes(ossUserDataDir(userId))), fileName);
    }

    @NotNull
    public final Path virtualDocPBOssFileKey(@NotNull String userId, @NotNull String documentId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        Paths paths = Paths.INSTANCE;
        CommonPaths commonPaths = CommonPaths.INSTANCE;
        return paths.append(commonPaths.m32964pb(commonPaths.doc(commonPaths.virtual(ossDocDirPath(userId, documentId)))), documentId);
    }

    @NotNull
    public final Path virtualPagePBOssFileKey(@NotNull String userId, @NotNull String documentId, @NotNull String fileName) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        Paths paths = Paths.INSTANCE;
        CommonPaths commonPaths = CommonPaths.INSTANCE;
        return paths.append(commonPaths.m32964pb(commonPaths.page(commonPaths.virtual(ossDocDirPath(userId, documentId)))), fileName);
    }
}
