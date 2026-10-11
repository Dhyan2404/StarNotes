package com.onyx.android.sdk.data.couchbase.bean;

import com.couchbase.lite.ReplicatorType;
import com.couchbase.lite.internal.core.C4Replicator;
import com.onyx.android.sdk.data.account.bean.LoginAuthConst;
import com.onyx.android.sdk.data.account.model.OnyxAccountModel;
import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0007\u0018\u0000 22\u00020\u0001:\u00012B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010(\u001a\u0004\u0018\u00010\u0004J\b\u0010)\u001a\u0004\u0018\u00010\fJ\u0006\u0010*\u001a\u00020\u000eJ\u0006\u0010+\u001a\u00020,J\u0010\u0010-\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010.\u001a\u00020\u0006J\u0010\u0010/\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\fJ\u0010\u0010\u0011\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010\u0015\u001a\u00020\u00002\b\u0010\u0013\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010\u0018\u001a\u00020\u00002\b\u0010\u0016\u001a\u0004\u0018\u00010\u000eJ\u000e\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u001aJ\u0010\u0010!\u001a\u00020\u00002\b\u0010\u001f\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010$\u001a\u00020\u00002\b\u0010\"\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010'\u001a\u00020\u00002\b\u0010%\u001a\u0004\u0018\u00010\u000eJ\u0006\u00100\u001a\u00020\u000eJ\b\u00101\u001a\u00020\u000eH\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0010\"\u0004\b\u0015\u0010\u0012R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0010\"\u0004\b\u0018\u0010\u0012R\u001a\u0010\u0019\u001a\u00020\u001aX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001c\u0010\u001f\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u0010\"\u0004\b!\u0010\u0012R\u001c\u0010\"\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u0010\"\u0004\b$\u0010\u0012R\u001c\u0010%\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\u0010\"\u0004\b'\u0010\u0012¨\u00063"}, m61528d2 = {"Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;", "", "()V", LoginAuthConst.ACCOUNT_AUTH, "Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;", "authType", "", "getAuthType", "()I", "setAuthType", "(I)V", "clusterInfo", "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;", "cookieName", "", "getCookieName", "()Ljava/lang/String;", "setCookieName", "(Ljava/lang/String;)V", "error", "getError", "setError", "password", "getPassword", "setPassword", "replicatorType", "Lcom/couchbase/lite/ReplicatorType;", "getReplicatorType", "()Lcom/couchbase/lite/ReplicatorType;", "setReplicatorType", "(Lcom/couchbase/lite/ReplicatorType;)V", "sessionID", "getSessionID", "setSessionID", "url", "getUrl", "setUrl", C4Replicator.REPLICATOR_AUTH_USER_NAME, "getUsername", "setUsername", "getAccount", "getClusterInfo", "getUserId", "isInValid", "", "setAccount", "type", "setClusterInfo", "toSimpleString", "toString", "Companion", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class SyncGateway {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Nullable
    private OnyxAccountModel account;
    private int authType;

    @Nullable
    private ClusterInfo clusterInfo;

    @Nullable
    private String error;

    @Nullable
    private String password;

    @Nullable
    private String sessionID;

    @Nullable
    private String url;

    @Nullable
    private String username;

    @Nullable
    private String cookieName = SyncConstant.COUCH_SYNC_COOKIE_DEFAULT_NAME;

    @NotNull
    private ReplicatorType replicatorType = ReplicatorType.PUSH_AND_PULL;

    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u0006\u001a\u00020\u00072\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway$Companion;", "", "()V", "clone", "Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;", "syncGateway", "toSimpleString", "", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final SyncGateway clone(@Nullable SyncGateway syncGateway) {
            if (syncGateway == null) {
                return null;
            }
            return new SyncGateway().setAuthType(syncGateway.getAuthType()).setUsername(syncGateway.getUsername()).setPassword(syncGateway.getPassword()).setCookieName(syncGateway.getCookieName()).setSessionID(syncGateway.getSessionID()).setAccount(syncGateway.getAccount()).setReplicatorType(syncGateway.getReplicatorType()).setUrl(syncGateway.getUrl()).setClusterInfo(syncGateway.clusterInfo);
        }

        @NotNull
        public final String toSimpleString(@Nullable SyncGateway syncGateway) {
            String simpleString;
            return (syncGateway == null || (simpleString = syncGateway.toSimpleString()) == null) ? "null gateway" : simpleString;
        }

        private Companion() {
        }
    }

    @Nullable
    public final OnyxAccountModel getAccount() {
        return this.account;
    }

    public final int getAuthType() {
        return this.authType;
    }

    @Nullable
    public final ClusterInfo getClusterInfo() {
        return this.clusterInfo;
    }

    @Nullable
    public final String getCookieName() {
        return this.cookieName;
    }

    @Nullable
    public final String getError() {
        return this.error;
    }

    @Nullable
    public final String getPassword() {
        return this.password;
    }

    @NotNull
    public final ReplicatorType getReplicatorType() {
        return this.replicatorType;
    }

    @Nullable
    public final String getSessionID() {
        return this.sessionID;
    }

    @Nullable
    public final String getUrl() {
        return this.url;
    }

    @NotNull
    public final String getUserId() {
        String uniqueId;
        OnyxAccountModel account = getAccount();
        return (account == null || (uniqueId = account.getUniqueId()) == null) ? "share_user" : uniqueId;
    }

    @Nullable
    public final String getUsername() {
        return this.username;
    }

    public final boolean isInValid() {
        return StringUtils.isNotBlank(this.error);
    }

    @NotNull
    public final SyncGateway setAccount(@Nullable OnyxAccountModel account) {
        this.account = account;
        return this;
    }

    /* renamed from: setAuthType, reason: collision with other method in class */
    public final void m72258setAuthType(int i) {
        this.authType = i;
    }

    @NotNull
    public final SyncGateway setClusterInfo(@Nullable ClusterInfo clusterInfo) {
        this.clusterInfo = clusterInfo;
        return this;
    }

    /* renamed from: setCookieName, reason: collision with other method in class */
    public final void m72259setCookieName(@Nullable String str) {
        this.cookieName = str;
    }

    /* renamed from: setError, reason: collision with other method in class */
    public final void m72260setError(@Nullable String str) {
        this.error = str;
    }

    /* renamed from: setPassword, reason: collision with other method in class */
    public final void m72261setPassword(@Nullable String str) {
        this.password = str;
    }

    /* renamed from: setReplicatorType, reason: collision with other method in class */
    public final void m72262setReplicatorType(@NotNull ReplicatorType replicatorType) {
        Intrinsics.checkNotNullParameter(replicatorType, "<set-?>");
        this.replicatorType = replicatorType;
    }

    /* renamed from: setSessionID, reason: collision with other method in class */
    public final void m72263setSessionID(@Nullable String str) {
        this.sessionID = str;
    }

    /* renamed from: setUrl, reason: collision with other method in class */
    public final void m72264setUrl(@Nullable String str) {
        this.url = str;
    }

    /* renamed from: setUsername, reason: collision with other method in class */
    public final void m72265setUsername(@Nullable String str) {
        this.username = str;
    }

    @NotNull
    public final String toSimpleString() {
        return "error: " + this.error + ",sessionID is empty: " + StringUtils.isBlank(this.sessionID) + ",url is empty: " + StringUtils.isBlank(this.url) + ",authType: " + this.authType;
    }

    @NotNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("sessionID:");
        sb.append(this.sessionID);
        sb.append(",cookieName:");
        sb.append(this.cookieName);
        sb.append(",authType:");
        sb.append(this.authType);
        sb.append(",account:");
        OnyxAccountModel onyxAccountModel = this.account;
        sb.append(onyxAccountModel == null ? "" : String.valueOf(onyxAccountModel));
        return sb.toString();
    }

    @NotNull
    public final SyncGateway setAuthType(int type) {
        this.authType = type;
        return this;
    }

    @NotNull
    public final SyncGateway setCookieName(@Nullable String cookieName) {
        this.cookieName = cookieName;
        return this;
    }

    @NotNull
    public final SyncGateway setError(@Nullable String error) {
        this.error = error;
        return this;
    }

    @NotNull
    public final SyncGateway setPassword(@Nullable String password) {
        this.password = password;
        return this;
    }

    @NotNull
    public final SyncGateway setReplicatorType(@NotNull ReplicatorType replicatorType) {
        Intrinsics.checkNotNullParameter(replicatorType, "replicatorType");
        this.replicatorType = replicatorType;
        return this;
    }

    @NotNull
    public final SyncGateway setSessionID(@Nullable String sessionID) {
        this.sessionID = sessionID;
        return this;
    }

    @NotNull
    public final SyncGateway setUrl(@Nullable String url) {
        this.url = url;
        return this;
    }

    @NotNull
    public final SyncGateway setUsername(@Nullable String username) {
        this.username = username;
        return this;
    }
}
