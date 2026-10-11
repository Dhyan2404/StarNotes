package com.onyx.android.sdk.replicator.common;

import com.alibaba.sdk.android.oss.model.OSSObjectSummary;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.bean.SyncDataBean;
import com.onyx.android.sdk.replicator.note.utils.OssPaths;
import com.onyx.android.sdk.replicator.replicator.DataReplicator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\b\u0011\b&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0015\u001a\u00020\u0012¢\u0006\u0004\b%\u0010&J\b\u0010\u0003\u001a\u00020\u0002H&J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H&J\u000e\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007J0\u0010\u0011\u001a\u00020\u00052\b\u0010\u000b\u001a\u0004\u0018\u00010\u00022\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\fR\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R#\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00070\u00168\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u001a\u0010 \u001a\u00020\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u0011\u0010\"\u001a\u00020\u00028F¢\u0006\u0006\u001a\u0004\b!\u0010\u001fR\u0011\u0010$\u001a\u00020\u00028F¢\u0006\u0006\u001a\u0004\b#\u0010\u001f¨\u0006'"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;", "", "", "filePrefix", "", "Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;", "makeSyncDataBean", "Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;", "summary", "", "collectCloudFileSummary", CouchFieldKey.KEY_REVISION_ID, "", CouchFieldKey.KEY_RECORD_TYPE, CouchFieldKey.KEY_LOCAL_FILE_PATH, "ossFilePath", CouchFieldKey.KEY_SYNC_STATUS, "createSyncDataBean", "Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;", "a", "Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;", "dataReplicator", "", "b", "Ljava/util/Map;", "getCloudSummaryMap", "()Ljava/util/Map;", "cloudSummaryMap", "c", Constants.STRING_SIG, "getOssFilePrefix", "()Ljava/lang/String;", "ossFilePrefix", "getSyncUserId", "syncUserId", "getDocumentId", "documentId", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public abstract class BaseSyncFile {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final DataReplicator dataReplicator;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final Map<String, OSSObjectSummary> cloudSummaryMap;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final String ossFilePrefix;

    public BaseSyncFile(@NotNull DataReplicator dataReplicator) {
        Intrinsics.checkNotNullParameter(dataReplicator, "dataReplicator");
        this.dataReplicator = dataReplicator;
        this.cloudSummaryMap = new LinkedHashMap();
        OssPaths ossPaths = OssPaths.INSTANCE;
        this.ossFilePrefix = ossPaths.ossPathString(ossPaths.ossDocDirPath(getSyncUserId(), getDocumentId()));
    }

    public final void collectCloudFileSummary(@NotNull OSSObjectSummary summary) {
        String replace$default;
        boolean startsWith$default;
        String replace$default2;
        Intrinsics.checkNotNullParameter(summary, "summary");
        String key = summary.getKey();
        Intrinsics.checkNotNullExpressionValue(key, "getKey(...)");
        replace$default = StringsKt__StringsJVMKt.replace$default(key, getOssFilePrefix(), "", false, 4, (Object) null);
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(replace$default, filePrefix(), false, 2, null);
        if (startsWith$default) {
            Map<String, OSSObjectSummary> map = this.cloudSummaryMap;
            replace$default2 = StringsKt__StringsJVMKt.replace$default(replace$default, filePrefix(), "", false, 4, (Object) null);
            map.put(replace$default2, summary);
        }
    }

    @NotNull
    public final SyncDataBean createSyncDataBean(@Nullable String revisionId, int recordType, @NotNull String localFilePath, @NotNull String ossFilePath, int syncStatus) {
        Intrinsics.checkNotNullParameter(localFilePath, "localFilePath");
        Intrinsics.checkNotNullParameter(ossFilePath, "ossFilePath");
        return new SyncDataBean().setRecordType(recordType).setRecordId(revisionId).setSyncStatus(syncStatus).setLocalSavePath(localFilePath).setOssFilePath(ossFilePath);
    }

    @NotNull
    public abstract String filePrefix();

    @NotNull
    public final Map<String, OSSObjectSummary> getCloudSummaryMap() {
        return this.cloudSummaryMap;
    }

    @NotNull
    public final String getDocumentId() {
        return this.dataReplicator.getDocumentId();
    }

    @NotNull
    public String getOssFilePrefix() {
        return this.ossFilePrefix;
    }

    @NotNull
    public final String getSyncUserId() {
        String userId = this.dataReplicator.getUserId();
        Intrinsics.checkNotNull(userId);
        return userId;
    }

    @NotNull
    public abstract List<SyncDataBean> makeSyncDataBean();
}
