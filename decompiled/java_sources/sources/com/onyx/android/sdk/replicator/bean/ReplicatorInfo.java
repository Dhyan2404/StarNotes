package com.onyx.android.sdk.replicator.bean;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.bean.SyncGateway;
import com.onyx.android.sdk.replicator.utils.KSyncLogUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b5\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0011\u0018\u0000 f2\u00020\u0001:\u0001fB\u0011\b\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\be\u0010+J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\n\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u000bJ\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000bJ\u0006\u0010\u0011\u001a\u00020\u0010J\u0006\u0010\u0012\u001a\u00020\u0010J\u0006\u0010\u0013\u001a\u00020\u0000J\u000e\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0014J\u0006\u0010\u0017\u001a\u00020\u0002J\u0006\u0010\u0018\u001a\u00020\u0002J\u0006\u0010\u0019\u001a\u00020\u0002J\u0006\u0010\u001a\u001a\u00020\u0002J\u0006\u0010\u001b\u001a\u00020\u0002J\u000e\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u0014J\u000e\u0010\u001f\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u0014J\u0006\u0010 \u001a\u00020\u0002J\u0006\u0010!\u001a\u00020\u0010J\u000e\u0010#\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020\u0014J\u000e\u0010$\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020\u0014J\u000e\u0010&\u001a\u00020\u00002\u0006\u0010%\u001a\u00020\u0014J\b\u0010'\u001a\u00020\u0004H\u0016R\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010(\u001a\u0004\b)\u0010*\"\u0004\b\u0006\u0010+R$\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b,\u0010(\u001a\u0004\b-\u0010*\"\u0004\b\b\u0010+R$\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b.\u0010(\u001a\u0004\b/\u0010*\"\u0004\b\n\u0010+R\"\u0010\f\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b0\u00101\u001a\u0004\b2\u00103\"\u0004\b\r\u00104R\"\u0010\u000e\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b5\u00101\u001a\u0004\b6\u00103\"\u0004\b\u000f\u00104R\"\u0010\u0015\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b7\u00108\u001a\u0004\b9\u0010:\"\u0004\b\u0016\u0010;R\u0016\u0010\u001c\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u00108R\"\u0010\"\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b=\u00108\u001a\u0004\b>\u0010:\"\u0004\b#\u0010;R\u0016\u0010@\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u00108R\u0016\u0010\u001e\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u00108R\"\u0010%\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bB\u00108\u001a\u0004\bC\u0010:\"\u0004\b&\u0010;R\"\u0010F\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bD\u0010E\u001a\u0004\bF\u0010G\"\u0004\bH\u0010IR\"\u0010Q\u001a\u00020J8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bK\u0010L\u001a\u0004\bM\u0010N\"\u0004\bO\u0010PR\"\u0010U\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bR\u0010E\u001a\u0004\bS\u0010G\"\u0004\bT\u0010IR$\u0010]\u001a\u0004\u0018\u00010V8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bW\u0010X\u001a\u0004\bY\u0010Z\"\u0004\b[\u0010\\R\"\u0010a\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b^\u00101\u001a\u0004\b_\u00103\"\u0004\b`\u00104R\u0014\u0010b\u001a\u00020\u00108BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b,\u0010GR\u0011\u0010c\u001a\u00020\u00108F¢\u0006\u0006\u001a\u0004\bc\u0010GR\u0011\u0010d\u001a\u00020\u00108F¢\u0006\u0006\u001a\u0004\bd\u0010G¨\u0006g"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;", "", "", "a", "", "documentId", "setDocumentId", CouchFieldKey.KEY_GROUP_ID, "setGroupId", Constant.TAG_USER_ID, "setUserId", "", "triggerSource", "setTriggerSource", "retryCount", "setRetryCount", "", "isNoteDocument", "isNoteLibrary", "addRetryCount", "", "createAt", "setCreateAt", "onOpen", "onStart", "onPrepareStart", "printSyncLog", "onClose", "openAt", "setOpenAt", "closeAt", "setCloseAt", Constants.RESET, "hasStarted", "startAt", "setStartAt", "setPrepareStartAt", "planCloseAt", "setPlanCloseAt", "toString", Constants.STRING_SIG, "getDocumentId", "()Ljava/lang/String;", "(Ljava/lang/String;)V", "b", "getGroupId", "c", "getUserId", "d", "I", "getTriggerSource", "()I", "(I)V", "e", "getRetryCount", C6997f.f39671c, "J", "getCreateAt", "()J", "(J)V", C6998g.f39679a, C6999h.f39688c, "getStartAt", "i", "prepareStartAt", "j", C4921e.f26537n, "getPlanCloseAt", "l", Constants.HASIDCALL_INDEX_SIG, "isNoticedPullData", Constants.BOOLEAN_VALUE_SIG, "setNoticedPullData", "(Z)V", "Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;", "m", "Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;", "getSyncStatus", "()Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;", "setSyncStatus", "(Lcom/onyx/android/sdk/replicator/bean/NoteDocSyncStatus;)V", CouchFieldKey.KEY_SYNC_STATUS, GoogleApiAvailabilityLight.f29016b, "getDebugLog", "setDebugLog", "debugLog", "Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;", C4921e.f26528e, "Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;", "getSyncGateway", "()Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;", "setSyncGateway", "(Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;)V", "syncGateway", "p", "getDocType", "setDocType", "docType", "isRetry", "isWaitingClose", "isWaiting", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ReplicatorInfo {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public String documentId;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public String groupId;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public String userId;

    /* renamed from: d, reason: from kotlin metadata */
    public int triggerSource;

    /* renamed from: e, reason: from kotlin metadata */
    public int retryCount;

    /* renamed from: f, reason: from kotlin metadata */
    public long createAt;

    /* renamed from: g, reason: from kotlin metadata */
    public long openAt;

    /* renamed from: h, reason: from kotlin metadata */
    public long startAt;

    /* renamed from: i, reason: from kotlin metadata */
    public long prepareStartAt;

    /* renamed from: j, reason: from kotlin metadata */
    public long closeAt;

    /* renamed from: k, reason: from kotlin metadata */
    public long planCloseAt;

    /* renamed from: l, reason: from kotlin metadata */
    public boolean isNoticedPullData;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public NoteDocSyncStatus syncStatus;

    /* renamed from: n, reason: from kotlin metadata */
    public boolean debugLog;

    /* renamed from: o, reason: from kotlin metadata */
    @Nullable
    public SyncGateway syncGateway;

    /* renamed from: p, reason: from kotlin metadata */
    public int docType;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo$Companion;", "", "()V", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;", "documentId", "", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ReplicatorInfo create(@NotNull String documentId) {
            Intrinsics.checkNotNullParameter(documentId, "documentId");
            return new ReplicatorInfo(documentId, null);
        }

        public Companion() {
        }
    }

    public /* synthetic */ ReplicatorInfo(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
    }

    /* renamed from: a */
    public final void m34922a() {
        setCreateAt(System.currentTimeMillis());
    }

    @NotNull
    public final ReplicatorInfo addRetryCount() {
        this.retryCount++;
        return this;
    }

    /* renamed from: b */
    public final boolean m34923b() {
        return this.triggerSource == 0;
    }

    public final long getCreateAt() {
        return this.createAt;
    }

    public final boolean getDebugLog() {
        return this.debugLog;
    }

    public final int getDocType() {
        return this.docType;
    }

    @NotNull
    public final String getDocumentId() {
        return this.documentId;
    }

    @Nullable
    public final String getGroupId() {
        return this.groupId;
    }

    public final long getPlanCloseAt() {
        return this.planCloseAt;
    }

    public final int getRetryCount() {
        return this.retryCount;
    }

    public final long getStartAt() {
        return this.startAt;
    }

    @Nullable
    public final SyncGateway getSyncGateway() {
        return this.syncGateway;
    }

    @NotNull
    public final NoteDocSyncStatus getSyncStatus() {
        return this.syncStatus;
    }

    public final int getTriggerSource() {
        return this.triggerSource;
    }

    @Nullable
    public final String getUserId() {
        return this.userId;
    }

    public final boolean hasStarted() {
        return this.startAt > 0;
    }

    public final boolean isNoteDocument() {
        return this.docType == 1;
    }

    public final boolean isNoteLibrary() {
        return this.docType == 0;
    }

    /* renamed from: isNoticedPullData, reason: from getter */
    public final boolean getIsNoticedPullData() {
        return this.isNoticedPullData;
    }

    public final boolean isWaiting() {
        return this.syncStatus.getShapeStatus() == 5;
    }

    public final boolean isWaitingClose() {
        return this.planCloseAt != 0 && isWaiting() && System.currentTimeMillis() >= this.planCloseAt;
    }

    public final void onClose() {
        setCloseAt(System.currentTimeMillis());
        this.isNoticedPullData = false;
    }

    public final void onOpen() {
        setOpenAt(System.currentTimeMillis());
    }

    public final void onPrepareStart() {
        setPrepareStartAt(System.currentTimeMillis());
    }

    public final void onStart() {
        setStartAt(System.currentTimeMillis());
    }

    public final void printSyncLog() {
        if (this.syncStatus.hasSyncData()) {
            KSyncLogUtils.INSTANCE.m35864d(ReplicatorInfo.class, this.documentId + " sync use time: " + (this.closeAt - this.prepareStartAt) + "ms " + this.syncStatus.toDataString());
        }
    }

    public final void reset() {
        if (isWaiting() || m34923b()) {
            this.planCloseAt = 0L;
            this.syncStatus = new NoteDocSyncStatus();
        }
    }

    public final void setCloseAt(long closeAt) {
        this.closeAt = closeAt;
    }

    /* renamed from: setCreateAt, reason: collision with other method in class */
    public final void m72342setCreateAt(long j) {
        this.createAt = j;
    }

    public final void setDebugLog(boolean z) {
        this.debugLog = z;
    }

    public final void setDocType(int i) {
        this.docType = i;
    }

    /* renamed from: setDocumentId, reason: collision with other method in class */
    public final void m72343setDocumentId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.documentId = str;
    }

    /* renamed from: setGroupId, reason: collision with other method in class */
    public final void m72344setGroupId(@Nullable String str) {
        this.groupId = str;
    }

    public final void setNoticedPullData(boolean z) {
        this.isNoticedPullData = z;
    }

    public final void setOpenAt(long openAt) {
        this.openAt = openAt;
    }

    /* renamed from: setPlanCloseAt, reason: collision with other method in class */
    public final void m72345setPlanCloseAt(long j) {
        this.planCloseAt = j;
    }

    public final void setPrepareStartAt(long startAt) {
        this.prepareStartAt = startAt;
    }

    /* renamed from: setRetryCount, reason: collision with other method in class */
    public final void m72346setRetryCount(int i) {
        this.retryCount = i;
    }

    /* renamed from: setStartAt, reason: collision with other method in class */
    public final void m72347setStartAt(long j) {
        this.startAt = j;
    }

    public final void setSyncGateway(@Nullable SyncGateway syncGateway) {
        this.syncGateway = syncGateway;
    }

    public final void setSyncStatus(@NotNull NoteDocSyncStatus noteDocSyncStatus) {
        Intrinsics.checkNotNullParameter(noteDocSyncStatus, "<set-?>");
        this.syncStatus = noteDocSyncStatus;
    }

    /* renamed from: setTriggerSource, reason: collision with other method in class */
    public final void m72348setTriggerSource(int i) {
        this.triggerSource = i;
    }

    /* renamed from: setUserId, reason: collision with other method in class */
    public final void m72349setUserId(@Nullable String str) {
        this.userId = str;
    }

    @NotNull
    public String toString() {
        return "documentId: " + this.documentId + ", triggerSource: " + this.triggerSource + ", retryCount: " + this.retryCount + ", createAt: " + DateTimeUtil.INSTANCE.formatDate(new Date(this.createAt)) + ", syncStatus: " + this.syncStatus;
    }

    public ReplicatorInfo(String str) {
        this.documentId = str;
        this.triggerSource = 1;
        this.syncStatus = new NoteDocSyncStatus();
        this.docType = 1;
        m34922a();
    }

    @NotNull
    public final ReplicatorInfo setCreateAt(long createAt) {
        this.createAt = createAt;
        return this;
    }

    @NotNull
    public final ReplicatorInfo setDocumentId(@NotNull String documentId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        this.documentId = documentId;
        return this;
    }

    @NotNull
    public final ReplicatorInfo setGroupId(@Nullable String groupId) {
        this.groupId = groupId;
        return this;
    }

    @NotNull
    public final ReplicatorInfo setPlanCloseAt(long planCloseAt) {
        this.planCloseAt = planCloseAt;
        return this;
    }

    @NotNull
    public final ReplicatorInfo setRetryCount(int retryCount) {
        this.retryCount = retryCount;
        return this;
    }

    @NotNull
    public final ReplicatorInfo setStartAt(long startAt) {
        this.startAt = startAt;
        return this;
    }

    @NotNull
    public final ReplicatorInfo setTriggerSource(int triggerSource) {
        this.triggerSource = triggerSource;
        return this;
    }

    @NotNull
    public final ReplicatorInfo setUserId(@Nullable String userId) {
        this.userId = userId;
        return this;
    }
}
