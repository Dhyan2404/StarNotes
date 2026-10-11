package com.onyx.android.sdk.data.common.path;

import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.attribute.FileAttribute;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\"\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\b2\u0006\u0010\u0005\u001a\u00020\u0006J\u0016\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0006J\u0016\u0010\u000b\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/path/VirtualPagePaths;", "", "()V", "appPagePBFileDir", "Ljava/nio/file/Path;", "documentId", "", "appPagePBFileNameList", "", "appPagePBFilePath", CouchFieldKey.KEY_REVISION_ID, "pagePBFileDir", "pbDirPath", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class VirtualPagePaths {

    @NotNull
    public static final VirtualPagePaths INSTANCE = new VirtualPagePaths();

    private VirtualPagePaths() {
    }

    private final Path appPagePBFileDir(String documentId) {
        return pagePBFileDir(SyncConstant.INSTANCE.appDocDir(), documentId);
    }

    @NotNull
    public final Set<String> appPagePBFileNameList(@NotNull String documentId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        LinkedList<File> listAllFiles = FileUtils.INSTANCE.listAllFiles(appPagePBFileDir(documentId).toAbsolutePath().toString(), null);
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
    public final Path appPagePBFilePath(@NotNull String documentId, @NotNull String revisionId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        Intrinsics.checkNotNullParameter(revisionId, "revisionId");
        return Paths.INSTANCE.append(appPagePBFileDir(documentId), revisionId);
    }

    @NotNull
    public final Path pagePBFileDir(@NotNull String pbDirPath, @NotNull String documentId) {
        Intrinsics.checkNotNullParameter(pbDirPath, "pbDirPath");
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        CommonPaths commonPaths = CommonPaths.INSTANCE;
        Path createDirectories = Files.createDirectories(commonPaths.m32964pb(commonPaths.page(commonPaths.virtual(commonPaths.docDir(pbDirPath, documentId)))), (FileAttribute[]) Arrays.copyOf(new FileAttribute[0], 0));
        Intrinsics.checkNotNullExpressionValue(createDirectories, "createDirectories(this, *attributes)");
        return createDirectories;
    }
}
