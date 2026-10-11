package com.onyx.android.sdk.data.couchbase.utils;

import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.universal.editor.config.EditorConstants;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.attribute.FileAttribute;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000f\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007J\u0016\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0007J\u0016\u0010\u000b\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0007J\u0016\u0010\u000e\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0007J \u0010\u000f\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u000e\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0007J\u0016\u0010\u0012\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0013\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u0007J\u000e\u0010\u0014\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u0007J\u0016\u0010\u0015\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfoUtils;", "", "()V", "getAppProviderInfo", "Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;", "getAppScopeProviderInfo", "dbName", "", "getCloudStorageProviderInfo", "accountId", CouchFieldKey.KEY_PROVIDER_NAME, "getDocDataProviderInfo", CouchFieldKey.KEY_UID, EditorConstants.ARGS_DOC_ID, "getDocPBRecordProviderInfo", "getDocScopeProviderInfo", "getMessageProviderInfo", Constant.TAG_USER_ID, "getNoteProviderInfo", "getUserDataProviderInfo", "getUserNoteTreeProviderInfo", "getUserScopeProviderInfo", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class ProviderInfoUtils {

    @NotNull
    public static final ProviderInfoUtils INSTANCE = new ProviderInfoUtils();

    private ProviderInfoUtils() {
    }

    private final ProviderInfo getDocScopeProviderInfo(String uid, String docId, String dbName) {
        Path path = Paths.get(CouchDirUtils.INSTANCE.getCouchDirPath(), (String[]) Arrays.copyOf(new String[]{uid, docId}, 2));
        Intrinsics.checkNotNullExpressionValue(path, "get(base, *subpaths)");
        Intrinsics.checkNotNullExpressionValue(Files.createDirectories(path, (FileAttribute[]) Arrays.copyOf(new FileAttribute[0], 0)), "createDirectories(this, *attributes)");
        return new ProviderInfo(uid, path.toAbsolutePath().toString(), dbName, uid + '/' + docId + '/' + dbName);
    }

    @NotNull
    public final ProviderInfo getAppProviderInfo() {
        return getAppScopeProviderInfo("APP_DATA");
    }

    @NotNull
    public final ProviderInfo getAppScopeProviderInfo(@NotNull String dbName) {
        Intrinsics.checkNotNullParameter(dbName, "dbName");
        Path path = Paths.get(CouchDirUtils.INSTANCE.getCouchDirPath(), new String[0]);
        Intrinsics.checkNotNullExpressionValue(path, "get(path)");
        return new ProviderInfo("", path.toAbsolutePath().toString(), dbName, dbName);
    }

    @NotNull
    public final ProviderInfo getCloudStorageProviderInfo(@NotNull String accountId, @NotNull String providerName) {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        Intrinsics.checkNotNullParameter(providerName, "providerName");
        Path path = Paths.get(CouchDirUtils.INSTANCE.getCouchDirPath(), (String[]) Arrays.copyOf(new String[]{Constant.SCOPE_DRIVE, providerName}, 2));
        Intrinsics.checkNotNullExpressionValue(path, "get(base, *subpaths)");
        Intrinsics.checkNotNullExpressionValue(Files.createDirectories(path, (FileAttribute[]) Arrays.copyOf(new FileAttribute[0], 0)), "createDirectories(this, *attributes)");
        return new ProviderInfo(accountId, path.toAbsolutePath().toString(), FileUtils.INSTANCE.filterFileName(accountId), "drive/" + providerName + '/' + accountId);
    }

    @NotNull
    public final ProviderInfo getDocDataProviderInfo(@NotNull String uid, @NotNull String docId) {
        Intrinsics.checkNotNullParameter(uid, "uid");
        Intrinsics.checkNotNullParameter(docId, "docId");
        Path path = Paths.get(CouchDirUtils.INSTANCE.getCouchDirPath(), (String[]) Arrays.copyOf(new String[]{uid, docId}, 2));
        Intrinsics.checkNotNullExpressionValue(path, "get(base, *subpaths)");
        Intrinsics.checkNotNullExpressionValue(Files.createDirectories(path, (FileAttribute[]) Arrays.copyOf(new FileAttribute[0], 0)), "createDirectories(this, *attributes)");
        return new ProviderInfo(uid, path.toAbsolutePath().toString(), SyncConstant.NOTE_CONTENT_DB_NAME, uid + '/' + docId + '/' + SyncConstant.NOTE_CONTENT_DB_NAME);
    }

    @NotNull
    public final ProviderInfo getDocPBRecordProviderInfo(@NotNull String uid, @NotNull String docId) {
        Intrinsics.checkNotNullParameter(uid, "uid");
        Intrinsics.checkNotNullParameter(docId, "docId");
        return getDocScopeProviderInfo(uid, docId, SyncConstant.RECORD_DB_NAME);
    }

    @NotNull
    public final ProviderInfo getMessageProviderInfo(@NotNull String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        return new ProviderInfo(userId, CouchDirUtils.INSTANCE.getCouchDirPath(), SyncConstant.MESSAGE_DB_NAME, userId + '/' + SyncConstant.MESSAGE_DB_NAME);
    }

    @NotNull
    public final ProviderInfo getNoteProviderInfo(@NotNull String uid, @NotNull String dbName) {
        Intrinsics.checkNotNullParameter(uid, "uid");
        Intrinsics.checkNotNullParameter(dbName, "dbName");
        Path path = Paths.get(CouchDirUtils.INSTANCE.getCouchDirPath(), (String[]) Arrays.copyOf(new String[]{uid}, 1));
        Intrinsics.checkNotNullExpressionValue(path, "get(base, *subpaths)");
        Intrinsics.checkNotNullExpressionValue(Files.createDirectories(path, (FileAttribute[]) Arrays.copyOf(new FileAttribute[0], 0)), "createDirectories(this, *attributes)");
        return new ProviderInfo(uid, path.toAbsolutePath().toString(), dbName, uid + '/' + dbName);
    }

    @NotNull
    public final ProviderInfo getUserDataProviderInfo(@NotNull String uid) {
        Intrinsics.checkNotNullParameter(uid, "uid");
        return getUserScopeProviderInfo(uid, SyncConstant.USER_DATA_DB_NAME);
    }

    @NotNull
    public final ProviderInfo getUserNoteTreeProviderInfo(@NotNull String uid) {
        Intrinsics.checkNotNullParameter(uid, "uid");
        return getNoteProviderInfo(uid, "NOTE_TREE");
    }

    @NotNull
    public final ProviderInfo getUserScopeProviderInfo(@NotNull String uid, @NotNull String dbName) {
        Intrinsics.checkNotNullParameter(uid, "uid");
        Intrinsics.checkNotNullParameter(dbName, "dbName");
        Path path = Paths.get(CouchDirUtils.INSTANCE.getCouchDirPath(), (String[]) Arrays.copyOf(new String[]{uid}, 1));
        Intrinsics.checkNotNullExpressionValue(path, "get(base, *subpaths)");
        Intrinsics.checkNotNullExpressionValue(Files.createDirectories(path, (FileAttribute[]) Arrays.copyOf(new FileAttribute[0], 0)), "createDirectories(this, *attributes)");
        return new ProviderInfo(uid, path.toAbsolutePath().toString(), dbName, uid + '/' + dbName);
    }
}
