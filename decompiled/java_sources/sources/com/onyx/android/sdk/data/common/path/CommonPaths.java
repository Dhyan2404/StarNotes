package com.onyx.android.sdk.data.common.path;

import com.blankj.utilcode.util.LogUtils;
import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.base.utils.AppFilePaths;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.common.exception.ExpcetionsKt;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.universal.editor.config.EditorConstants;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.attribute.FileAttribute;
import java.util.Arrays;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import onyx.org.apache.commons.io.FileUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u001e\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0006\u001a\u00020\u0004J\u000e\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\bJ\u000e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\bJ\u0006\u0010\f\u001a\u00020\u0004J\u0006\u0010\r\u001a\u00020\u0004J\u0016\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\bJ/\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00042\u001a\u0010\u0012\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030\u00140\u0013\"\u0006\u0012\u0002\b\u00030\u0014¢\u0006\u0002\u0010\u0015J\u0006\u0010\u0016\u001a\u00020\u0004J\u0016\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bJ\u000e\u0010\u0018\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\bJ\u0016\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bJ\u0016\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bJ\u001e\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u001d\u001a\u00020\bJ\u0016\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bJ\n\u0010\u001f\u001a\u00020\u0004*\u00020\u0004J\n\u0010 \u001a\u00020\u0004*\u00020\u0004J\n\u0010!\u001a\u00020\u0004*\u00020\u0004J\n\u0010\"\u001a\u00020\u0004*\u00020\u0004J\n\u0010#\u001a\u00020\u0004*\u00020\u0004J\n\u0010$\u001a\u00020\u0004*\u00020\u0004J\n\u0010%\u001a\u00020\u0004*\u00020\u0004J\n\u0010&\u001a\u00020\u0004*\u00020\u0004J\n\u0010'\u001a\u00020\u0004*\u00020\u0004J\n\u0010(\u001a\u00020\u0004*\u00020\u0004J\n\u0010)\u001a\u00020\u0004*\u00020\u0004J\n\u0010*\u001a\u00020\u0004*\u00020\u0004J\n\u0010+\u001a\u00020\u0004*\u00020\u0004J\n\u0010,\u001a\u00020\u0004*\u00020\u0004J\n\u0010-\u001a\u00020\u0004*\u00020\u0004J\n\u0010.\u001a\u00020\u0004*\u00020\u0004J\n\u0010/\u001a\u00020\u0004*\u00020\u0004J\n\u00100\u001a\u00020\u0004*\u00020\u0004J\n\u00101\u001a\u00020\u0004*\u00020\u0004¨\u00062"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/path/CommonPaths;", "", "()V", "appCurUserNoteDir", "Ljava/nio/file/Path;", "appCurUserPbDir", "appDocDir", EditorConstants.ARGS_DOC_ID, "", "appUserNoteDir", Constant.TAG_USER_ID, "appUserPbDir", "contentFileDir", "currentUserDir", "docDir", CouchFieldKey.KEY_DIR, "ensureCreateDirectories", "path", "attributes", "", "Ljava/nio/file/attribute/FileAttribute;", "(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;", "importCacheDir", "userDataRepository", "userDir", "userNoteDir", "userPBDir", "pbDirPath", "userPBPath", CouchFieldKey.KEY_REVISION_ID, "userShareResourceDir", "app", SyncConstant.LOCAL_BOOKMARK_DIR_NAME, "content", "data", "doc", "document", "fileLocks", "font", "json", "note", "page", "pb", "point", "resource", "shape", "stash", "thumbnail", SyncConstant.LOCAL_TOC_DIR_NAME, SyncConstant.LOCAL_VIRTUAL_DIR_NAME, "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class CommonPaths {

    @NotNull
    public static final CommonPaths INSTANCE = new CommonPaths();

    private CommonPaths() {
    }

    @NotNull
    public final Path app(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return Paths.INSTANCE.append(path, "app");
    }

    @NotNull
    public final Path appCurUserNoteDir() {
        return appUserNoteDir(AccountDataBundle.INSTANCE.getSyncUserId());
    }

    @NotNull
    public final Path appCurUserPbDir() {
        return appUserPbDir(AccountDataBundle.INSTANCE.getSyncUserId());
    }

    @NotNull
    public final Path appDocDir() {
        return AppFilePaths.INSTANCE.appFilesDir("document");
    }

    @NotNull
    public final Path appUserNoteDir(@NotNull String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        return userNoteDir(AppFilePaths.INSTANCE.appFilesPath(), userId);
    }

    @NotNull
    public final Path appUserPbDir(@NotNull String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        return userPBDir(AppFilePaths.INSTANCE.appFilesPath(), userId);
    }

    @NotNull
    public final Path bookmark(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return Paths.INSTANCE.append(path, SyncConstant.LOCAL_BOOKMARK_DIR_NAME);
    }

    @NotNull
    public final Path content(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return Paths.INSTANCE.append(path, "content");
    }

    @NotNull
    public final Path contentFileDir() {
        return AppFilePaths.INSTANCE.appFilesDir("content");
    }

    @NotNull
    public final Path currentUserDir() {
        return userDir(AccountDataBundle.INSTANCE.getSyncUserId());
    }

    @NotNull
    public final Path data(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return Paths.INSTANCE.append(path, "data");
    }

    @NotNull
    public final Path doc(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return Paths.INSTANCE.append(path, "doc");
    }

    @NotNull
    public final Path docDir(@NotNull String dir, @NotNull String docId) {
        Intrinsics.checkNotNullParameter(dir, "dir");
        Intrinsics.checkNotNullParameter(docId, "docId");
        Path path = java.nio.file.Paths.get(dir, (String[]) Arrays.copyOf(new String[]{docId}, 1));
        Intrinsics.checkNotNullExpressionValue(path, "get(base, *subpaths)");
        Path createDirectories = Files.createDirectories(path, (FileAttribute[]) Arrays.copyOf(new FileAttribute[0], 0));
        Intrinsics.checkNotNullExpressionValue(createDirectories, "createDirectories(this, *attributes)");
        return createDirectories;
    }

    @NotNull
    public final Path document(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return Paths.INSTANCE.append(path, "document");
    }

    @NotNull
    public final Path ensureCreateDirectories(@NotNull Path path, @NotNull FileAttribute<?>... attributes) {
        String stackTraceToString;
        String stackTraceToString2;
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(attributes, "attributes");
        try {
            if (Files.isDirectory(path, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0))) {
                return path;
            }
            FileAttribute[] fileAttributeArr = (FileAttribute[]) Arrays.copyOf(attributes, attributes.length);
            Path createDirectories = Files.createDirectories(path, (FileAttribute[]) Arrays.copyOf(fileAttributeArr, fileAttributeArr.length));
            Intrinsics.checkNotNullExpressionValue(createDirectories, "createDirectories(this, *attributes)");
            return createDirectories;
        } catch (IOException e) {
            e.printStackTrace();
            stackTraceToString = ExceptionsKt__ExceptionsKt.stackTraceToString(e);
            LogUtils.file("createDirectories fail", stackTraceToString);
            if (ExpcetionsKt.isFileAlreadyExistsException(e)) {
                File file = path.toFile();
                if (file.exists() && file.isFile()) {
                    Exception exc = new Exception("Detect directory is file:" + file.getAbsolutePath() + ",length:" + file.length());
                    Debug.INSTANCE.m32060w(CommonPaths.class, exc);
                    stackTraceToString2 = ExceptionsKt__ExceptionsKt.stackTraceToString(exc);
                    LogUtils.file("createDirectories fail", stackTraceToString2);
                    FileUtils.deleteQuietly(file);
                    FileAttribute[] fileAttributeArr2 = (FileAttribute[]) Arrays.copyOf(attributes, attributes.length);
                    Path createDirectories2 = Files.createDirectories(path, (FileAttribute[]) Arrays.copyOf(fileAttributeArr2, fileAttributeArr2.length));
                    Intrinsics.checkNotNullExpressionValue(createDirectories2, "createDirectories(this, *attributes)");
                    return createDirectories2;
                }
            }
            throw e;
        }
    }

    @NotNull
    public final Path fileLocks(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return Paths.INSTANCE.append(path, SyncConstant.FILE_LOCKS_NAME);
    }

    @NotNull
    public final Path font(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return Paths.INSTANCE.append(path, "font");
    }

    @NotNull
    public final Path importCacheDir() {
        return AppFilePaths.INSTANCE.appFilesDir(SyncConstant.IMPORT_CACHE_DIR_NAME);
    }

    @NotNull
    public final Path json(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return Paths.INSTANCE.append(path, "json");
    }

    @NotNull
    public final Path note(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return Paths.INSTANCE.append(path, "note");
    }

    @NotNull
    public final Path page(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return Paths.INSTANCE.append(path, "page");
    }

    @NotNull
    /* renamed from: pb */
    public final Path m32964pb(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return Paths.INSTANCE.append(path, "pb");
    }

    @NotNull
    public final Path point(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return Paths.INSTANCE.append(path, "point");
    }

    @NotNull
    public final Path resource(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return Paths.INSTANCE.append(path, "resource");
    }

    @NotNull
    public final Path shape(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return Paths.INSTANCE.append(path, "shape");
    }

    @NotNull
    public final Path stash(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return Paths.INSTANCE.append(path, "stash");
    }

    @NotNull
    public final Path thumbnail(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return Paths.INSTANCE.append(path, "thumbnail");
    }

    @NotNull
    public final Path toc(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return Paths.INSTANCE.append(path, SyncConstant.LOCAL_TOC_DIR_NAME);
    }

    @NotNull
    public final Path userDataRepository(@NotNull String dir, @NotNull String userId) {
        Intrinsics.checkNotNullParameter(dir, "dir");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Paths paths = Paths.INSTANCE;
        Path path = java.nio.file.Paths.get(dir, (String[]) Arrays.copyOf(new String[]{userId}, 1));
        Intrinsics.checkNotNullExpressionValue(path, "get(base, *subpaths)");
        Path createDirectories = Files.createDirectories(paths.append(ensureCreateDirectories(path, new FileAttribute[0]), SyncConstant.DATA_REPOSITORY_DIR_NAME), (FileAttribute[]) Arrays.copyOf(new FileAttribute[0], 0));
        Intrinsics.checkNotNullExpressionValue(createDirectories, "createDirectories(this, *attributes)");
        return createDirectories;
    }

    @NotNull
    public final Path userDir(@NotNull String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        return ensureCreateDirectories(AppFilePaths.INSTANCE.appFilesDir(userId), new FileAttribute[0]);
    }

    @NotNull
    public final Path userNoteDir(@NotNull String dir, @NotNull String userId) {
        Intrinsics.checkNotNullParameter(dir, "dir");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Paths paths = Paths.INSTANCE;
        Path path = java.nio.file.Paths.get(dir, (String[]) Arrays.copyOf(new String[]{userId}, 1));
        Intrinsics.checkNotNullExpressionValue(path, "get(base, *subpaths)");
        Path createDirectories = Files.createDirectories(paths.append(ensureCreateDirectories(path, new FileAttribute[0]), "note"), (FileAttribute[]) Arrays.copyOf(new FileAttribute[0], 0));
        Intrinsics.checkNotNullExpressionValue(createDirectories, "createDirectories(this, *attributes)");
        return createDirectories;
    }

    @NotNull
    public final Path userPBDir(@NotNull String pbDirPath, @NotNull String userId) {
        Intrinsics.checkNotNullParameter(pbDirPath, "pbDirPath");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Path createDirectories = Files.createDirectories(m32964pb(userNoteDir(pbDirPath, userId)), (FileAttribute[]) Arrays.copyOf(new FileAttribute[0], 0));
        Intrinsics.checkNotNullExpressionValue(createDirectories, "createDirectories(this, *attributes)");
        return createDirectories;
    }

    @NotNull
    public final Path userPBPath(@NotNull String pbDirPath, @NotNull String userId, @NotNull String revisionId) {
        Intrinsics.checkNotNullParameter(pbDirPath, "pbDirPath");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(revisionId, "revisionId");
        return Paths.INSTANCE.append(userPBDir(pbDirPath, userId), revisionId);
    }

    @NotNull
    public final Path userShareResourceDir(@NotNull String dir, @NotNull String userId) {
        Intrinsics.checkNotNullParameter(dir, "dir");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Paths paths = Paths.INSTANCE;
        Path path = java.nio.file.Paths.get(dir, (String[]) Arrays.copyOf(new String[]{userId}, 1));
        Intrinsics.checkNotNullExpressionValue(path, "get(base, *subpaths)");
        Path createDirectories = Files.createDirectories(paths.append(ensureCreateDirectories(path, new FileAttribute[0]), SyncConstant.SHARE_RESOURCE_DIR_NAME), (FileAttribute[]) Arrays.copyOf(new FileAttribute[0], 0));
        Intrinsics.checkNotNullExpressionValue(createDirectories, "createDirectories(this, *attributes)");
        return createDirectories;
    }

    @NotNull
    public final Path virtual(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return Paths.INSTANCE.append(path, SyncConstant.LOCAL_VIRTUAL_DIR_NAME);
    }

    @NotNull
    public final Path appDocDir(@NotNull String docId) {
        Intrinsics.checkNotNullParameter(docId, "docId");
        Path createDirectories = Files.createDirectories(Paths.INSTANCE.append(appDocDir(), docId), (FileAttribute[]) Arrays.copyOf(new FileAttribute[0], 0));
        Intrinsics.checkNotNullExpressionValue(createDirectories, "createDirectories(this, *attributes)");
        return createDirectories;
    }
}
