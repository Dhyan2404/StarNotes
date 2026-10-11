package com.onyx.android.sdk.data.common.path;

import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.base.utils.AppFilePaths;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import java.nio.file.Path;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004J\u0016\u0010\f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0004J\u000e\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004J\u001e\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0004J\u0016\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0004R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/path/ThumbnailPaths;", "", "()V", "THUMBNAIL_FILE_EXTENSION", "", "getTHUMBNAIL_FILE_EXTENSION", "()Ljava/lang/String;", "setTHUMBNAIL_FILE_EXTENSION", "(Ljava/lang/String;)V", "appCacheThumbnailPath", "Ljava/nio/file/Path;", CouchFieldKey.KEY_DOCUMENT_ID, "appPageThumbnailPath", "documentId", CouchFieldKey.KEY_TOC_PAGE_ID, "appThumbnailPath", "pageThumbnailPath", CouchFieldKey.KEY_DIR, "thumbnailPath", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class ThumbnailPaths {

    @NotNull
    public static final ThumbnailPaths INSTANCE = new ThumbnailPaths();

    @NotNull
    private static String THUMBNAIL_FILE_EXTENSION = ".png";

    private ThumbnailPaths() {
    }

    @NotNull
    public final Path appCacheThumbnailPath(@NotNull String documentUniqueId) {
        Intrinsics.checkNotNullParameter(documentUniqueId, "documentUniqueId");
        return thumbnailPath(AppFilePaths.INSTANCE.appCachesDir("document").toAbsolutePath().toString(), documentUniqueId);
    }

    @NotNull
    public final Path appPageThumbnailPath(@NotNull String documentId, @NotNull String pageId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        return pageThumbnailPath(CommonPaths.INSTANCE.appDocDir().toAbsolutePath().toString(), documentId, pageId);
    }

    @NotNull
    public final Path appThumbnailPath(@NotNull String documentUniqueId) {
        Intrinsics.checkNotNullParameter(documentUniqueId, "documentUniqueId");
        return thumbnailPath(CommonPaths.INSTANCE.appDocDir().toAbsolutePath().toString(), documentUniqueId);
    }

    @NotNull
    public final String getTHUMBNAIL_FILE_EXTENSION() {
        return THUMBNAIL_FILE_EXTENSION;
    }

    @NotNull
    public final Path pageThumbnailPath(@NotNull String dir, @NotNull String documentUniqueId, @NotNull String pageId) {
        Intrinsics.checkNotNullParameter(dir, "dir");
        Intrinsics.checkNotNullParameter(documentUniqueId, "documentUniqueId");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        Paths paths = Paths.INSTANCE;
        return paths.append(paths.append(paths.toPath(dir), documentUniqueId), pageId + THUMBNAIL_FILE_EXTENSION);
    }

    public final void setTHUMBNAIL_FILE_EXTENSION(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        THUMBNAIL_FILE_EXTENSION = str;
    }

    @NotNull
    public final Path thumbnailPath(@NotNull String dir, @NotNull String documentUniqueId) {
        Intrinsics.checkNotNullParameter(dir, "dir");
        Intrinsics.checkNotNullParameter(documentUniqueId, "documentUniqueId");
        Paths paths = Paths.INSTANCE;
        return paths.append(paths.append(paths.toPath(dir), documentUniqueId), documentUniqueId + THUMBNAIL_FILE_EXTENSION);
    }
}
