package com.onyx.android.sdk.data.common.path;

import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.attribute.FileAttribute;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\"\n\u0002\b\u000b\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\b2\u0006\u0010\t\u001a\u00020\u0006J\u0016\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006J\u001e\u0010\f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0006J\u0016\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0006J\u001e\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006J\u0016\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/path/PointPaths;", "", "()V", "appDocPointDir", "Ljava/nio/file/Path;", "documentId", "", "appDocPointNameList", "", CouchFieldKey.KEY_DOCUMENT_ID, "appPagePointDir", CouchFieldKey.KEY_TOC_PAGE_ID, "appPointFilePath", CouchFieldKey.KEY_PAGE_ID, HuaweiYunQueryArgs.FILE_NAME, "pagePointDir", "docPointDir", "dirPath", "pointDir", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class PointPaths {

    @NotNull
    public static final PointPaths INSTANCE = new PointPaths();

    private PointPaths() {
    }

    @NotNull
    public final Path appDocPointDir(@NotNull String documentId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        CommonPaths commonPaths = CommonPaths.INSTANCE;
        Path createDirectories = Files.createDirectories(commonPaths.point(Paths.INSTANCE.append(commonPaths.appDocDir(), documentId)), (FileAttribute[]) Arrays.copyOf(new FileAttribute[0], 0));
        Intrinsics.checkNotNullExpressionValue(createDirectories, "createDirectories(this, *attributes)");
        return createDirectories;
    }

    @NotNull
    public final Set<String> appDocPointNameList(@NotNull String documentUniqueId) {
        Intrinsics.checkNotNullParameter(documentUniqueId, "documentUniqueId");
        List<File> listAllFiles = FileUtils.INSTANCE.listAllFiles(appDocPointDir(documentUniqueId).toAbsolutePath().toString());
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<File> it2 = listAllFiles.iterator();
        while (it2.hasNext()) {
            String name = it2.next().getName();
            Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
            linkedHashSet.add(name);
        }
        return linkedHashSet;
    }

    @NotNull
    public final Path appPagePointDir(@NotNull String documentId, @NotNull String pageId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        Paths paths = Paths.INSTANCE;
        CommonPaths commonPaths = CommonPaths.INSTANCE;
        Path createDirectories = Files.createDirectories(paths.append(commonPaths.point(paths.append(commonPaths.appDocDir(), documentId)), pageId), (FileAttribute[]) Arrays.copyOf(new FileAttribute[0], 0));
        Intrinsics.checkNotNullExpressionValue(createDirectories, "createDirectories(this, *attributes)");
        return createDirectories;
    }

    @NotNull
    public final Path appPointFilePath(@NotNull String documentId, @NotNull String pageUniqueId, @NotNull String fileName) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        Intrinsics.checkNotNullParameter(pageUniqueId, "pageUniqueId");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        return Paths.INSTANCE.append(appPagePointDir(documentId, pageUniqueId), fileName);
    }

    @NotNull
    public final Path pagePointDir(@NotNull String dirPath, @NotNull String documentId, @NotNull String pageId) {
        Intrinsics.checkNotNullParameter(dirPath, "dirPath");
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        Paths paths = Paths.INSTANCE;
        CommonPaths commonPaths = CommonPaths.INSTANCE;
        Path createDirectories = Files.createDirectories(paths.append(commonPaths.point(commonPaths.docDir(dirPath, documentId)), pageId), (FileAttribute[]) Arrays.copyOf(new FileAttribute[0], 0));
        Intrinsics.checkNotNullExpressionValue(createDirectories, "createDirectories(this, *attributes)");
        return createDirectories;
    }

    @NotNull
    public final Path pointDir(@NotNull String dirPath, @NotNull String documentId) {
        Intrinsics.checkNotNullParameter(dirPath, "dirPath");
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        CommonPaths commonPaths = CommonPaths.INSTANCE;
        return commonPaths.point(commonPaths.docDir(dirPath, documentId));
    }

    @NotNull
    public final Path pagePointDir(@NotNull Path docPointDir, @NotNull String pageId) {
        Intrinsics.checkNotNullParameter(docPointDir, "docPointDir");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        Path createDirectories = Files.createDirectories(Paths.INSTANCE.append(docPointDir, pageId), (FileAttribute[]) Arrays.copyOf(new FileAttribute[0], 0));
        Intrinsics.checkNotNullExpressionValue(createDirectories, "createDirectories(this, *attributes)");
        return createDirectories;
    }
}
