package com.onyx.android.sdk.reader.sync.model;

import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u001e\u0018\u00002\u00020\u0001:\u0001*B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\u001a\u0010\u0015\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u000f\"\u0004\b\u0017\u0010\u0011R\u001a\u0010\u0018\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u000f\"\u0004\b\u001a\u0010\u0011R\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0006\"\u0004\b\u001d\u0010\bR\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u0006\"\u0004\b \u0010\bR\u001c\u0010!\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0006\"\u0004\b#\u0010\bR\u001a\u0010$\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u000f\"\u0004\b&\u0010\u0011R\u001c\u0010'\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u0006\"\u0004\b)\u0010\b¨\u0006+"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/sync/model/SyncLibraryModel;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", "()V", "description", "", "getDescription", "()Ljava/lang/String;", "setDescription", "(Ljava/lang/String;)V", "digest", "getDigest", "setDigest", "encryptionType", "", "getEncryptionType", "()I", "setEncryptionType", "(I)V", "extraAttributes", "getExtraAttributes", "setExtraAttributes", "fetchSource", "getFetchSource", "setFetchSource", CouchFieldKey.KEY_MODE_TYPE, "getModeType", "setModeType", "name", "getName", "setName", CouchFieldKey.KEY_PARENT_UNIQUE_ID, "getParentUniqueId", "setParentUniqueId", "queryString", "getQueryString", "setQueryString", "status", "getStatus", "setStatus", "storageId", "getStorageId", "setStorageId", "FetchSource", "sdk-reader_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class SyncLibraryModel extends BaseReplicatorModel {

    @Nullable
    private String description;

    @Nullable
    private String digest;
    private int encryptionType;

    @Nullable
    private String extraAttributes;
    private int fetchSource;
    private int modeType = 3;

    @Nullable
    private String name;

    @Nullable
    private String parentUniqueId;

    @Nullable
    private String queryString;
    private int status;

    @Nullable
    private String storageId;

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/sync/model/SyncLibraryModel$FetchSource;", "", "()V", "LOCAL", "", "ONYX_CLOUD", "sdk-reader_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class FetchSource {

        @NotNull
        public static final FetchSource INSTANCE = new FetchSource();
        public static final int LOCAL = 0;
        public static final int ONYX_CLOUD = 1;
    }

    @Nullable
    public final String getDescription() {
        return this.description;
    }

    @Nullable
    public final String getDigest() {
        return this.digest;
    }

    public final int getEncryptionType() {
        return this.encryptionType;
    }

    @Nullable
    public final String getExtraAttributes() {
        return this.extraAttributes;
    }

    public final int getFetchSource() {
        return this.fetchSource;
    }

    public final int getModeType() {
        return this.modeType;
    }

    @Nullable
    public final String getName() {
        return this.name;
    }

    @Nullable
    public final String getParentUniqueId() {
        return this.parentUniqueId;
    }

    @Nullable
    public final String getQueryString() {
        return this.queryString;
    }

    public final int getStatus() {
        return this.status;
    }

    @Nullable
    public final String getStorageId() {
        return this.storageId;
    }

    public final void setDescription(@Nullable String str) {
        this.description = str;
    }

    public final void setDigest(@Nullable String str) {
        this.digest = str;
    }

    public final void setEncryptionType(int i) {
        this.encryptionType = i;
    }

    public final void setExtraAttributes(@Nullable String str) {
        this.extraAttributes = str;
    }

    public final void setFetchSource(int i) {
        this.fetchSource = i;
    }

    public final void setModeType(int i) {
        this.modeType = i;
    }

    public final void setName(@Nullable String str) {
        this.name = str;
    }

    public final void setParentUniqueId(@Nullable String str) {
        this.parentUniqueId = str;
    }

    public final void setQueryString(@Nullable String str) {
        this.queryString = str;
    }

    public final void setStatus(int i) {
        this.status = i;
    }

    public final void setStorageId(@Nullable String str) {
        this.storageId = str;
    }
}
