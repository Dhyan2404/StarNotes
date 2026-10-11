package com.onyx.android.sdk.data.common.path;

import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunQueryArgs;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.attribute.FileAttribute;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import onyx.org.apache.commons.io.FileUtils;
import onyx.org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\b\u000e\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0016\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006J\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\n2\u0006\u0010\u0005\u001a\u00020\u0006J\u0018\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\f\u001a\u0004\u0018\u00010\u0006J\u000e\u0010\r\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0016\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006J\u0016\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006J\u001e\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006J\u000e\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0006J\u0016\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0006J\u0016\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006J\u0016\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/path/ResourcePaths;", "", "()V", "appDocResourceContentDir", "Ljava/nio/file/Path;", "documentId", "", "appDocResourceContentFilePath", HuaweiYunQueryArgs.FILE_NAME, "appDocResourceDataFileNameList", "", "appResourceDataCopyPath", "srcPath", "appResourceDataDir", "appResourceDataFilePath", "docResourceContentDir", "docDirPath", "docResourceContentFilePath", "oldResourceDir", "dirPath", "relativePath", "filePath", "resourceDataDir", "resourceDataDirPathByDocDir", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class ResourcePaths {

    @NotNull
    public static final ResourcePaths INSTANCE = new ResourcePaths();

    private ResourcePaths() {
    }

    @NotNull
    public final Path appDocResourceContentDir(@NotNull String documentId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        return docResourceContentDir(CommonPaths.INSTANCE.appDocDir().toAbsolutePath().toString(), documentId);
    }

    @NotNull
    public final Path appDocResourceContentFilePath(@NotNull String documentId, @NotNull String fileName) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        return Paths.INSTANCE.append(appDocResourceContentDir(documentId), fileName);
    }

    @NotNull
    public final Set<String> appDocResourceDataFileNameList(@NotNull String documentId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        Collection<File> listFiles = FileUtils.listFiles(Paths.INSTANCE.asFile(appResourceDataDir(documentId)), (String[]) null, true);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<File> it2 = listFiles.iterator();
        while (it2.hasNext()) {
            linkedHashSet.add(it2.next().getName());
        }
        return linkedHashSet;
    }

    @NotNull
    public final Path appResourceDataCopyPath(@NotNull String documentId, @Nullable String srcPath) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        String name = FilenameUtils.getName(srcPath);
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        return appResourceDataFilePath(documentId, name);
    }

    @NotNull
    public final Path appResourceDataDir(@NotNull String documentId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        CommonPaths commonPaths = CommonPaths.INSTANCE;
        Path createDirectories = Files.createDirectories(commonPaths.data(commonPaths.resource(commonPaths.appDocDir(documentId))), (FileAttribute[]) Arrays.copyOf(new FileAttribute[0], 0));
        Intrinsics.checkNotNullExpressionValue(createDirectories, "createDirectories(this, *attributes)");
        return createDirectories;
    }

    @NotNull
    public final Path appResourceDataFilePath(@NotNull String documentId, @NotNull String fileName) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        return Paths.INSTANCE.append(appResourceDataDir(documentId), fileName);
    }

    @NotNull
    public final Path docResourceContentDir(@NotNull String docDirPath, @NotNull String documentId) {
        Intrinsics.checkNotNullParameter(docDirPath, "docDirPath");
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        CommonPaths commonPaths = CommonPaths.INSTANCE;
        Path createDirectories = Files.createDirectories(commonPaths.content(commonPaths.resource(commonPaths.docDir(docDirPath, documentId))), (FileAttribute[]) Arrays.copyOf(new FileAttribute[0], 0));
        Intrinsics.checkNotNullExpressionValue(createDirectories, "createDirectories(this, *attributes)");
        return createDirectories;
    }

    @NotNull
    public final Path docResourceContentFilePath(@NotNull String docDirPath, @NotNull String documentId, @NotNull String fileName) {
        Intrinsics.checkNotNullParameter(docDirPath, "docDirPath");
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        return Paths.INSTANCE.append(docResourceContentDir(docDirPath, documentId), fileName);
    }

    @NotNull
    public final Path oldResourceDir(@NotNull String dirPath) {
        Intrinsics.checkNotNullParameter(dirPath, "dirPath");
        return CommonPaths.INSTANCE.resource(Paths.INSTANCE.toPath(dirPath));
    }

    @NotNull
    public final String relativePath(@NotNull String documentId, @NotNull String filePath) {
        boolean startsWith$default;
        boolean startsWith$default2;
        boolean startsWith$default3;
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        if (StringUtils.isEmpty(filePath)) {
            return "";
        }
        if (StringUtils.isNotBlank(filePath)) {
            SyncConstant syncConstant = SyncConstant.INSTANCE;
            String obj = resourceDataDir(syncConstant.getFILES_PATH(), documentId).toAbsolutePath().toString();
            startsWith$default = StringsKt__StringsJVMKt.startsWith$default(filePath, obj, false, 2, null);
            if (startsWith$default) {
                String substring = filePath.substring(obj.length());
                Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
                return substring;
            }
            String obj2 = oldResourceDir(syncConstant.getFILES_PATH()).toAbsolutePath().toString();
            startsWith$default2 = StringsKt__StringsJVMKt.startsWith$default(filePath, obj2, false, 2, null);
            if (startsWith$default2) {
                String substring2 = filePath.substring(obj2.length());
                Intrinsics.checkNotNullExpressionValue(substring2, "this as java.lang.String).substring(startIndex)");
                String str = File.separator + documentId;
                startsWith$default3 = StringsKt__StringsJVMKt.startsWith$default(substring2, str, false, 2, null);
                if (!startsWith$default3) {
                    return substring2;
                }
                String substring3 = substring2.substring(str.length());
                Intrinsics.checkNotNullExpressionValue(substring3, "this as java.lang.String).substring(startIndex)");
                return substring3;
            }
        }
        return File.separator + FilenameUtils.getName(filePath);
    }

    @NotNull
    public final Path resourceDataDir(@NotNull String dirPath, @NotNull String documentId) {
        Intrinsics.checkNotNullParameter(dirPath, "dirPath");
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        CommonPaths commonPaths = CommonPaths.INSTANCE;
        Paths paths = Paths.INSTANCE;
        Path createDirectories = Files.createDirectories(commonPaths.data(commonPaths.resource(paths.append(commonPaths.document(paths.toPath(dirPath)), documentId))), (FileAttribute[]) Arrays.copyOf(new FileAttribute[0], 0));
        Intrinsics.checkNotNullExpressionValue(createDirectories, "createDirectories(this, *attributes)");
        return createDirectories;
    }

    @NotNull
    public final Path resourceDataDirPathByDocDir(@NotNull String docDirPath, @NotNull String documentId) {
        Intrinsics.checkNotNullParameter(docDirPath, "docDirPath");
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        CommonPaths commonPaths = CommonPaths.INSTANCE;
        Path createDirectories = Files.createDirectories(commonPaths.data(commonPaths.resource(commonPaths.docDir(docDirPath, documentId))), (FileAttribute[]) Arrays.copyOf(new FileAttribute[0], 0));
        Intrinsics.checkNotNullExpressionValue(createDirectories, "createDirectories(this, *attributes)");
        return createDirectories;
    }
}
