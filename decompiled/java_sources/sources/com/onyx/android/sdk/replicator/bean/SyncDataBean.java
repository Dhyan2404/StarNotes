package com.onyx.android.sdk.replicator.bean;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u001d\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b$\u0010%J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\tR(\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u000e\u001a\u0004\u0018\u00010\u00028\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R(\u0010\u0005\u001a\u0004\u0018\u00010\u00022\b\u0010\u000e\u001a\u0004\u0018\u00010\u00028\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0013\u0010\u0010\u001a\u0004\b\u0014\u0010\u0012R(\u0010\u0007\u001a\u0004\u0018\u00010\u00022\b\u0010\u000e\u001a\u0004\u0018\u00010\u00028\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0015\u0010\u0010\u001a\u0004\b\u0016\u0010\u0012R$\u0010\u001b\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0010\u001a\u0004\b\u0018\u0010\u0012\"\u0004\b\u0019\u0010\u001aR$\u0010\n\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\t8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR$\u0010\f\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\t8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b \u0010\u001d\u001a\u0004\b!\u0010\u001fR\u0013\u0010#\u001a\u0004\u0018\u00010\u00028F¢\u0006\u0006\u001a\u0004\b\"\u0010\u0012¨\u0006&"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;", "", "", CouchFieldKey.KEY_RECORD_ID, "setRecordId", "localSavePath", "setLocalSavePath", "ossFilePath", "setOssFilePath", "", CouchFieldKey.KEY_SYNC_STATUS, "setSyncStatus", CouchFieldKey.KEY_RECORD_TYPE, "setRecordType", "<set-?>", "a", Constants.STRING_SIG, "getRecordId", "()Ljava/lang/String;", "b", "getLocalSavePath", "c", "getOssFilePath", "d", "getRetryOssPath", "setRetryOssPath", "(Ljava/lang/String;)V", "retryOssPath", "e", "I", "getSyncStatus", "()I", C6997f.f39671c, "getRecordType", "getSyncOssPath", "syncOssPath", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class SyncDataBean {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public String recordId;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public String localSavePath;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public String ossFilePath;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public String retryOssPath;

    /* renamed from: e, reason: from kotlin metadata */
    public int syncStatus;

    /* renamed from: f, reason: from kotlin metadata */
    public int recordType;

    @Nullable
    public final String getLocalSavePath() {
        return this.localSavePath;
    }

    @Nullable
    public final String getOssFilePath() {
        return this.ossFilePath;
    }

    @Nullable
    public final String getRecordId() {
        return this.recordId;
    }

    public final int getRecordType() {
        return this.recordType;
    }

    @Nullable
    public final String getRetryOssPath() {
        return this.retryOssPath;
    }

    @Nullable
    public final String getSyncOssPath() {
        return StringUtils.isNotBlank(this.retryOssPath) ? this.retryOssPath : this.ossFilePath;
    }

    public final int getSyncStatus() {
        return this.syncStatus;
    }

    @NotNull
    public final SyncDataBean setLocalSavePath(@Nullable String localSavePath) {
        this.localSavePath = localSavePath;
        return this;
    }

    @NotNull
    public final SyncDataBean setOssFilePath(@Nullable String ossFilePath) {
        this.ossFilePath = ossFilePath;
        return this;
    }

    @NotNull
    public final SyncDataBean setRecordId(@Nullable String recordId) {
        this.recordId = recordId;
        return this;
    }

    @NotNull
    public final SyncDataBean setRecordType(int recordType) {
        this.recordType = recordType;
        return this;
    }

    public final void setRetryOssPath(@Nullable String str) {
        this.retryOssPath = str;
    }

    @NotNull
    public final SyncDataBean setSyncStatus(int syncStatus) {
        this.syncStatus = syncStatus;
        return this;
    }
}
