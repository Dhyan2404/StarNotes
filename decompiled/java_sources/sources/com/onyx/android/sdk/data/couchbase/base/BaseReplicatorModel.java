package com.onyx.android.sdk.data.couchbase.base;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.tencent.cos.xml.model.tag.DomainConfiguration;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\u0002\n\u0002\b\t\b\u0016\u0018\u00002\u00020\u0001:\u0001!B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0018\u001a\u00020\u0019H\u0016J\u0006\u0010\u001a\u001a\u00020\u0019J\u0010\u0010\u001b\u001a\u00020\u00002\b\u0010\u001c\u001a\u0004\u0018\u00010\nJ\b\u0010\u001d\u001a\u00020\u0000H\u0016J\u0006\u0010\u001e\u001a\u00020\u0019J\u0006\u0010\u001f\u001a\u00020\u0019J\u0006\u0010 \u001a\u00020\u0019R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\u001c\u0010\u0015\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\f\"\u0004\b\u0017\u0010\u000e¨\u0006\""}, m61528d2 = {"Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", "", "()V", CouchFieldKey.KEY_CREATE_AT, "", "getCreatedAt", "()J", "setCreatedAt", "(J)V", CouchFieldKey.KEY_DB_ID, "", "getDbId", "()Ljava/lang/String;", "setDbId", "(Ljava/lang/String;)V", CouchFieldKey.KEY_UNIQUE_ID, "getUniqueId", "setUniqueId", "updatedAt", "getUpdatedAt", "setUpdatedAt", "user", "getUser", "setUser", "beforeSave", "", "ensureCreatedAt", "ensureDbId", "id", "ensureUniqueIdExist", "ensureUpdatedAt", "forceUpdateTime", "forceUpdatedAt", "SyncStatus", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public class BaseReplicatorModel {
    private long createdAt;

    @Nullable
    private String dbId;

    @NotNull
    private String uniqueId = "";
    private long updatedAt;

    @Nullable
    private String user;

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel$SyncStatus;", "", "()V", DomainConfiguration.STATUS_DISABLED, "", DomainConfiguration.STATUS_ENABLED, "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class SyncStatus {
        public static final int DISABLED = 1;
        public static final int ENABLED = 0;

        @NotNull
        public static final SyncStatus INSTANCE = new SyncStatus();

        private SyncStatus() {
        }
    }

    public void beforeSave() {
        ensureCreatedAt();
        this.updatedAt = new Date().getTime();
    }

    public final void ensureCreatedAt() {
        if (this.createdAt <= 0) {
            this.createdAt = new Date().getTime();
        }
    }

    @NotNull
    public final BaseReplicatorModel ensureDbId(@Nullable String id) {
        if (StringUtils.isEmpty(this.dbId)) {
            this.dbId = id;
        }
        return this;
    }

    @NotNull
    public BaseReplicatorModel ensureUniqueIdExist() {
        if (StringUtils.isEmpty(this.uniqueId)) {
            this.uniqueId = UUIDUtils.INSTANCE.shortUUID();
        }
        return this;
    }

    public final void ensureUpdatedAt() {
        if (this.updatedAt <= 0) {
            this.updatedAt = new Date().getTime();
        }
    }

    public final void forceUpdateTime() {
        long time = new Date().getTime();
        this.createdAt = time;
        this.updatedAt = time;
    }

    public final void forceUpdatedAt() {
        this.updatedAt = new Date().getTime();
    }

    public final long getCreatedAt() {
        return this.createdAt;
    }

    @Nullable
    public final String getDbId() {
        return this.dbId;
    }

    @NotNull
    public final String getUniqueId() {
        return this.uniqueId;
    }

    public final long getUpdatedAt() {
        return this.updatedAt;
    }

    @Nullable
    public final String getUser() {
        return this.user;
    }

    public final void setCreatedAt(long j) {
        this.createdAt = j;
    }

    public final void setDbId(@Nullable String str) {
        this.dbId = str;
    }

    public final void setUniqueId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.uniqueId = str;
    }

    public final void setUpdatedAt(long j) {
        this.updatedAt = j;
    }

    public final void setUser(@Nullable String str) {
        this.user = str;
    }
}
