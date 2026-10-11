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

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0005J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0016\u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0005J\u0016\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/path/BookmarkPaths;", "", "()V", "appBookmarkBFileNameList", "", "", "documentId", "appBookmarkPBFileDir", "Ljava/nio/file/Path;", "appBookmarkPBFilePath", CouchFieldKey.KEY_REVISION_ID, "bookmarkPBFileDir", "pbDirPath", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class BookmarkPaths {

    @NotNull
    public static final BookmarkPaths INSTANCE = new BookmarkPaths();

    private BookmarkPaths() {
    }

    private final Path appBookmarkPBFileDir(String documentId) {
        return bookmarkPBFileDir(SyncConstant.INSTANCE.appDocDir(), documentId);
    }

    @NotNull
    public final Set<String> appBookmarkBFileNameList(@NotNull String documentId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        LinkedList<File> listAllFiles = FileUtils.INSTANCE.listAllFiles(appBookmarkPBFileDir(documentId).toAbsolutePath().toString(), null);
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
    public final Path appBookmarkPBFilePath(@NotNull String documentId, @NotNull String revisionId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        Intrinsics.checkNotNullParameter(revisionId, "revisionId");
        return Paths.INSTANCE.append(appBookmarkPBFileDir(documentId), revisionId);
    }

    @NotNull
    public final Path bookmarkPBFileDir(@NotNull String pbDirPath, @NotNull String documentId) {
        Intrinsics.checkNotNullParameter(pbDirPath, "pbDirPath");
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        CommonPaths commonPaths = CommonPaths.INSTANCE;
        Path createDirectories = Files.createDirectories(commonPaths.m32964pb(commonPaths.bookmark(commonPaths.docDir(pbDirPath, documentId))), (FileAttribute[]) Arrays.copyOf(new FileAttribute[0], 0));
        Intrinsics.checkNotNullExpressionValue(createDirectories, "createDirectories(this, *attributes)");
        return createDirectories;
    }
}
