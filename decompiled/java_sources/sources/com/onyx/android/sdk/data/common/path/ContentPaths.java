package com.onyx.android.sdk.data.common.path;

import com.onyx.android.sdk.base.utils.AppFilePaths;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004J\u0016\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/path/ContentPaths;", "", "()V", "contentAbsolutePath", "", CouchFieldKey.KEY_CONTENT_TYPE, CouchFieldKey.KEY_CONTENT_RELATIVE_PATH, "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class ContentPaths {

    @NotNull
    public static final ContentPaths INSTANCE = new ContentPaths();

    private ContentPaths() {
    }

    @NotNull
    public final String contentAbsolutePath(@NotNull String contentType, @NotNull String contentRelativePath) {
        Intrinsics.checkNotNullParameter(contentType, "contentType");
        Intrinsics.checkNotNullParameter(contentRelativePath, "contentRelativePath");
        String templateResAbsolutePath = Intrinsics.areEqual(contentType, "pdf") ? TemplatePaths.INSTANCE.templateResAbsolutePath(contentRelativePath) : AppFilePaths.INSTANCE.filesDirAbsolutePath(contentRelativePath);
        return FileUtils.INSTANCE.isFileExist(templateResAbsolutePath) ? templateResAbsolutePath : AppFilePaths.INSTANCE.filesDirAbsolutePath(contentRelativePath);
    }

    @NotNull
    public final String contentRelativePath(@NotNull String contentType, @NotNull String contentAbsolutePath) {
        Intrinsics.checkNotNullParameter(contentType, "contentType");
        Intrinsics.checkNotNullParameter(contentAbsolutePath, "contentAbsolutePath");
        return Intrinsics.areEqual(contentType, "pdf") ? TemplatePaths.INSTANCE.templateResRelativePath(contentAbsolutePath) : AppFilePaths.INSTANCE.filesDirRelativePath(contentAbsolutePath);
    }
}
