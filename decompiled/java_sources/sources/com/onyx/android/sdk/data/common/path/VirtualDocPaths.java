package com.onyx.android.sdk.data.common.path;

import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.attribute.FileAttribute;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0016\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/path/VirtualDocPaths;", "", "()V", "appDocPBFileDir", "Ljava/nio/file/Path;", "documentId", "", "appDocPBFilePath", "docPBFileDir", "pbDirPath", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class VirtualDocPaths {

    @NotNull
    public static final VirtualDocPaths INSTANCE = new VirtualDocPaths();

    private VirtualDocPaths() {
    }

    private final Path appDocPBFileDir(String documentId) {
        return docPBFileDir(SyncConstant.INSTANCE.appDocDir(), documentId);
    }

    @NotNull
    public final Path appDocPBFilePath(@NotNull String documentId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        return Paths.INSTANCE.append(appDocPBFileDir(documentId), documentId);
    }

    @NotNull
    public final Path docPBFileDir(@NotNull String pbDirPath, @NotNull String documentId) {
        Intrinsics.checkNotNullParameter(pbDirPath, "pbDirPath");
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        CommonPaths commonPaths = CommonPaths.INSTANCE;
        Path createDirectories = Files.createDirectories(commonPaths.m32964pb(commonPaths.doc(commonPaths.virtual(commonPaths.docDir(pbDirPath, documentId)))), (FileAttribute[]) Arrays.copyOf(new FileAttribute[0], 0));
        Intrinsics.checkNotNullExpressionValue(createDirectories, "createDirectories(this, *attributes)");
        return createDirectories;
    }
}
