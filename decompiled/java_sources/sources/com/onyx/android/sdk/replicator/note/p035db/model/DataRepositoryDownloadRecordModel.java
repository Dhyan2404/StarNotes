package com.onyx.android.sdk.replicator.note.p035db.model;

import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunQueryArgs;
import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\n¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/model/DataRepositoryDownloadRecordModel;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", CouchFieldKey.KEY_LIBRARY_ID, "", HuaweiYunQueryArgs.FILE_NAME, "fileMd5", "fileSize", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V", "getFileMd5", "()Ljava/lang/String;", "getFileName", "getFileSize", "()J", "getLibraryId", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class DataRepositoryDownloadRecordModel extends BaseReplicatorModel {

    @NotNull
    private final String fileMd5;

    @NotNull
    private final String fileName;
    private final long fileSize;

    @NotNull
    private final String libraryId;

    public DataRepositoryDownloadRecordModel(@NotNull String libraryId, @NotNull String fileName, @NotNull String fileMd5, long j) {
        Intrinsics.checkNotNullParameter(libraryId, "libraryId");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        Intrinsics.checkNotNullParameter(fileMd5, "fileMd5");
        this.libraryId = libraryId;
        this.fileName = fileName;
        this.fileMd5 = fileMd5;
        this.fileSize = j;
    }

    @NotNull
    public final String getFileMd5() {
        return this.fileMd5;
    }

    @NotNull
    public final String getFileName() {
        return this.fileName;
    }

    public final long getFileSize() {
        return this.fileSize;
    }

    @NotNull
    public final String getLibraryId() {
        return this.libraryId;
    }
}
