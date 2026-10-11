package com.onyx.android.sdk.replicator.progress.bean;

import com.alibaba.fastjson2.annotation.JSONField;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.bean.KSyncStatus;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0017\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007¢\u0006\u0004\b\"\u0010#J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\bJ\u0013\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\u0011\u0010\u0010\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u0000H\u0096\u0002R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0004\u0010\u0015R$\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u0007\u0010\u001aR\"\u0010\t\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\n\u0010\u001fR\u0011\u0010!\u001a\u00020\u00058G¢\u0006\u0006\u001a\u0004\b \u0010\u0019¨\u0006$"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgressBean;", "", "", "syncType", "setSyncType", "", "accountId", "setAccountId", "Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;", CouchFieldKey.KEY_SYNC_STATUS, "setSyncStatus", "", Constants.ATTRVAL_OTHER, "", "equals", "hashCode", "compareTo", "e", "I", "getSyncType", "()I", "(I)V", C6997f.f39671c, com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getAccountId", "()Ljava/lang/String;", "(Ljava/lang/String;)V", C6998g.f39679a, "Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;", "getSyncStatus", "()Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;", "(Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;)V", "getDebugInfoString", "debugInfoString", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class SyncDocProgressBean implements Comparable<SyncDocProgressBean> {

    /* renamed from: e, reason: from kotlin metadata */
    public int syncType;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public String accountId;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public KSyncStatus syncStatus = new KSyncStatus();

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (other == null || !Intrinsics.areEqual(SyncDocProgressBean.class, other.getClass())) {
            return false;
        }
        SyncDocProgressBean syncDocProgressBean = (SyncDocProgressBean) other;
        return this.syncType == syncDocProgressBean.syncType && StringUtils.equals(this.accountId, syncDocProgressBean.accountId);
    }

    @Nullable
    public final String getAccountId() {
        return this.accountId;
    }

    @JSONField(serialize = false)
    @NotNull
    public final String getDebugInfoString() {
        return "KSyncDocProgressBean{syncType=" + this.syncType + ", accountId='" + this.accountId + "', syncStatus=" + this.syncStatus.getDebugInfoString() + '}';
    }

    @NotNull
    public final KSyncStatus getSyncStatus() {
        return this.syncStatus;
    }

    public final int getSyncType() {
        return this.syncType;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.syncType), this.accountId);
    }

    /* renamed from: setAccountId, reason: collision with other method in class */
    public final void m72395setAccountId(@Nullable String str) {
        this.accountId = str;
    }

    /* renamed from: setSyncStatus, reason: collision with other method in class */
    public final void m72396setSyncStatus(@NotNull KSyncStatus kSyncStatus) {
        Intrinsics.checkNotNullParameter(kSyncStatus, "<set-?>");
        this.syncStatus = kSyncStatus;
    }

    /* renamed from: setSyncType, reason: collision with other method in class */
    public final void m72397setSyncType(int i) {
        this.syncType = i;
    }

    @Override // java.lang.Comparable
    public int compareTo(@NotNull SyncDocProgressBean other) {
        Intrinsics.checkNotNullParameter(other, "other");
        int compare = Intrinsics.compare(this.syncType, other.syncType);
        return compare == 0 ? compare : StringUtils.compare(this.accountId, other.accountId);
    }

    @NotNull
    public final SyncDocProgressBean setAccountId(@NotNull String accountId) {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        this.accountId = accountId;
        return this;
    }

    @NotNull
    public final SyncDocProgressBean setSyncStatus(@NotNull KSyncStatus syncStatus) {
        Intrinsics.checkNotNullParameter(syncStatus, "syncStatus");
        this.syncStatus = syncStatus;
        return this;
    }

    @NotNull
    public final SyncDocProgressBean setSyncType(int syncType) {
        this.syncType = syncType;
        return this;
    }
}
