package com.onyx.android.sdk.replicator.note.action;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.bean.DocProgressBean;
import com.onyx.android.sdk.replicator.bean.DocProgressListBean;
import com.onyx.android.sdk.replicator.bean.KSyncStatus;
import com.onyx.android.sdk.replicator.event.SyncProgressUpdateEvent;
import com.onyx.android.sdk.replicator.progress.SyncProgressBundle;
import com.onyx.android.sdk.replicator.replicator.BaseReplicator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u0010\u001a\u00020\u000b¢\u0006\u0004\b\u0011\u0010\u0012J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0004\u001a\u00020\u0000H\u0002R\u0017\u0010\n\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\tR\u0017\u0010\u0010\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/action/CheckNoteDocTreeSyncPendingAction;", "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;", C6997f.f39671c, "Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;", "getReplicator", "()Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;", "replicator", "", C6998g.f39679a, Constants.STRING_SIG, "getDocumentId", "()Ljava/lang/String;", "documentId", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;Ljava/lang/String;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class CheckNoteDocTreeSyncPendingAction extends BaseNoteSyncAction<CheckNoteDocTreeSyncPendingAction> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final BaseReplicator replicator;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final String documentId;

    /* renamed from: com.onyx.android.sdk.replicator.note.action.CheckNoteDocTreeSyncPendingAction$a */
    /* loaded from: classes8.dex */
    public static final class C7664a<T, R> implements Function {
        public C7664a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CheckNoteDocTreeSyncPendingAction apply(@NotNull BaseReplicator it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CheckNoteDocTreeSyncPendingAction.this.m35034l();
        }
    }

    public CheckNoteDocTreeSyncPendingAction(@NotNull BaseReplicator replicator, @NotNull String documentId) {
        Intrinsics.checkNotNullParameter(replicator, "replicator");
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        this.replicator = replicator;
        this.documentId = documentId;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<CheckNoteDocTreeSyncPendingAction> create() {
        Observable map = this.replicator.createBaseObservable().map(new C7664a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final String getDocumentId() {
        return this.documentId;
    }

    @NotNull
    public final BaseReplicator getReplicator() {
        return this.replicator;
    }

    /* renamed from: l */
    public final CheckNoteDocTreeSyncPendingAction m35034l() {
        List list;
        List listOf;
        Set<String> pendingDocumentIds = this.replicator.ensureCouchDb().pendingDocumentIds();
        if (pendingDocumentIds == null) {
            pendingDocumentIds = SetsKt__SetsKt.emptySet();
        }
        list = CollectionsKt___CollectionsKt.toList(pendingDocumentIds);
        if (list.contains(this.documentId)) {
            return this;
        }
        DocProgressBean accountId = new DocProgressBean().setDocumentId(this.documentId).setScope("note").setSyncType(13).setAccountId(this.replicator.getCbUserId());
        KSyncStatus kSyncStatus = new KSyncStatus();
        kSyncStatus.setStatus(2);
        DocProgressBean syncStatus = accountId.setSyncStatus(kSyncStatus);
        SyncProgressBundle syncProgressBundle = SyncProgressBundle.INSTANCE;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(syncStatus);
        syncProgressBundle.post(new SyncProgressUpdateEvent(new DocProgressListBean(listOf)));
        return this;
    }
}
