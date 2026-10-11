package com.onyx.android.sdk.replicator.bean;

import com.alibaba.fastjson2.annotation.JSONField;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u001f\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b,\u0010-J\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tJ\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\fJ\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u000fJ\u0010\u0010\u0013\u001a\u00020\u00002\b\u0010\u0012\u001a\u0004\u0018\u00010\u0004R(\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0014\u001a\u0004\u0018\u00010\u00048\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R(\u0010\u0007\u001a\u0004\u0018\u00010\u00042\b\u0010\u0014\u001a\u0004\u0018\u00010\u00048\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0019\u0010\u0016\u001a\u0004\b\u001a\u0010\u0018R$\u0010\n\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\t8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR(\u0010\r\u001a\u0004\u0018\u00010\f2\b\u0010\u0014\u001a\u0004\u0018\u00010\f8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"R$\u0010%\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u000f8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&R(\u0010\u0012\u001a\u0004\u0018\u00010\u00042\b\u0010\u0014\u001a\u0004\u0018\u00010\u00048\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b'\u0010\u0016\u001a\u0004\b(\u0010\u0018R\u0011\u0010*\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b)\u0010\u0018R\u0014\u0010+\u001a\u00020\u000f8CX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010&¨\u0006."}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;", "", "", "updateDocProgressBeanPushTime", "", "scope", "setScope", "documentId", "setDocumentId", "", "syncType", "setSyncType", "Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;", CouchFieldKey.KEY_SYNC_STATUS, "setSyncStatus", "", "forceSave", "setForceSave", "accountId", "setAccountId", "<set-?>", "a", Constants.STRING_SIG, "getScope", "()Ljava/lang/String;", "b", "getDocumentId", "c", "I", "getSyncType", "()I", "d", "Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;", "getSyncStatus", "()Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;", "e", Constants.HASIDCALL_INDEX_SIG, "isForceSave", Constants.BOOLEAN_VALUE_SIG, C6997f.f39671c, "getAccountId", "getDebugInfo", "debugInfo", "isNeedUpdate", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class DocProgressBean {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public String scope;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public String documentId;

    /* renamed from: c, reason: from kotlin metadata */
    public int syncType;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public KSyncStatus syncStatus;

    /* renamed from: e, reason: from kotlin metadata */
    public boolean isForceSave;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public String accountId;

    @JSONField(deserialize = false, serialize = false)
    /* renamed from: a */
    public final boolean m34901a() {
        int i = this.syncType;
        KSyncStatus kSyncStatus = this.syncStatus;
        Intrinsics.checkNotNull(kSyncStatus);
        return (!kSyncStatus.isSyncSuccess() || i == 0 || i == 6 || i == 7) ? false : true;
    }

    @Nullable
    public final String getAccountId() {
        return this.accountId;
    }

    @NotNull
    public final String getDebugInfo() {
        StringBuilder sb = new StringBuilder();
        sb.append("DocProgressBean{scope='");
        sb.append(this.scope);
        sb.append("', documentId='");
        sb.append(this.documentId);
        sb.append("', syncType=");
        sb.append(KSyncType.INSTANCE.toString(this.syncType));
        sb.append(", syncStatus=");
        KSyncStatus kSyncStatus = this.syncStatus;
        Intrinsics.checkNotNull(kSyncStatus);
        sb.append(kSyncStatus.getDebugInfoString());
        sb.append(", forceSave=");
        sb.append(this.isForceSave);
        sb.append(", accountId=");
        sb.append(this.accountId);
        sb.append('}');
        return sb.toString();
    }

    @Nullable
    public final String getDocumentId() {
        return this.documentId;
    }

    @Nullable
    public final String getScope() {
        return this.scope;
    }

    @Nullable
    public final KSyncStatus getSyncStatus() {
        return this.syncStatus;
    }

    public final int getSyncType() {
        return this.syncType;
    }

    /* renamed from: isForceSave, reason: from getter */
    public final boolean getIsForceSave() {
        return this.isForceSave;
    }

    @NotNull
    public final DocProgressBean setAccountId(@Nullable String accountId) {
        this.accountId = accountId;
        return this;
    }

    @NotNull
    public final DocProgressBean setDocumentId(@Nullable String documentId) {
        this.documentId = documentId;
        return this;
    }

    @NotNull
    public final DocProgressBean setForceSave(boolean forceSave) {
        this.isForceSave = forceSave;
        return this;
    }

    @NotNull
    public final DocProgressBean setScope(@Nullable String scope) {
        this.scope = scope;
        return this;
    }

    @NotNull
    public final DocProgressBean setSyncStatus(@Nullable KSyncStatus syncStatus) {
        this.syncStatus = syncStatus;
        return this;
    }

    @NotNull
    public final DocProgressBean setSyncType(int syncType) {
        this.syncType = syncType;
        return this;
    }

    public final void updateDocProgressBeanPushTime() {
        if (m34901a()) {
            KSyncStatus kSyncStatus = this.syncStatus;
            Intrinsics.checkNotNull(kSyncStatus);
            kSyncStatus.setPushAt(new Date());
        }
    }
}
