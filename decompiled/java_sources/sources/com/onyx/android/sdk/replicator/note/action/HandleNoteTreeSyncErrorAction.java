package com.onyx.android.sdk.replicator.note.action;

import com.couchbase.lite.CouchbaseLiteException;
import com.couchbase.lite.MutableDocument;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.bean.ReplicatorError;
import com.onyx.android.sdk.replicator.bean.DocProgressBean;
import com.onyx.android.sdk.replicator.bean.DocProgressListBean;
import com.onyx.android.sdk.replicator.bean.KSyncStatus;
import com.onyx.android.sdk.replicator.event.SyncProgressUpdateEvent;
import com.onyx.android.sdk.replicator.progress.SyncProgressBundle;
import com.onyx.android.sdk.replicator.replicator.BaseReplicator;
import com.onyx.android.sdk.replicator.replicator.request.LoadCouchDocListRequest;
import com.onyx.android.sdk.replicator.utils.CouchDocumentUtils;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\r\u001a\u00020\b¢\u0006\u0004\b\u000e\u0010\u000fJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0004H\u0002R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/action/HandleNoteTreeSyncErrorAction;", "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/replicator/replicator/request/LoadCouchDocListRequest;", "l", "docListRequest", "m", "Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;", C6997f.f39671c, "Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;", "getReplicator", "()Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;", "replicator", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class HandleNoteTreeSyncErrorAction extends BaseNoteSyncAction<HandleNoteTreeSyncErrorAction> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final BaseReplicator replicator;

    /* renamed from: com.onyx.android.sdk.replicator.note.action.HandleNoteTreeSyncErrorAction$a */
    /* loaded from: classes8.dex */
    public static final class C7691a<T, R> implements Function {
        public C7691a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LoadCouchDocListRequest apply(@NotNull BaseReplicator it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HandleNoteTreeSyncErrorAction.this.m35086l();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.action.HandleNoteTreeSyncErrorAction$b */
    /* loaded from: classes8.dex */
    public static final class C7692b<T, R> implements Function {
        public C7692b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HandleNoteTreeSyncErrorAction apply(@NotNull LoadCouchDocListRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HandleNoteTreeSyncErrorAction.this.m35087m(it2);
        }
    }

    public HandleNoteTreeSyncErrorAction(@NotNull BaseReplicator replicator) {
        Intrinsics.checkNotNullParameter(replicator, "replicator");
        this.replicator = replicator;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<HandleNoteTreeSyncErrorAction> create() {
        Observable<HandleNoteTreeSyncErrorAction> map = this.replicator.createBaseObservable().map(new C7691a()).map(new C7692b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final BaseReplicator getReplicator() {
        return this.replicator;
    }

    /* renamed from: l */
    public final LoadCouchDocListRequest m35086l() {
        List list;
        Set<String> pendingDocumentIds = this.replicator.ensureCouchDb().pendingDocumentIds();
        if (pendingDocumentIds == null) {
            pendingDocumentIds = SetsKt__SetsKt.emptySet();
        }
        list = CollectionsKt___CollectionsKt.toList(pendingDocumentIds);
        LoadCouchDocListRequest loadCouchDocListRequest = new LoadCouchDocListRequest(this.replicator.ensureCouchDb(), list);
        loadCouchDocListRequest.execute();
        return loadCouchDocListRequest;
    }

    /* renamed from: m */
    public final HandleNoteTreeSyncErrorAction m35087m(LoadCouchDocListRequest docListRequest) throws CouchbaseLiteException {
        ReplicatorError replicatorError;
        List<Integer> listOf;
        List<MutableDocument> documentList = docListRequest.getDocumentList();
        List<MutableDocument> list = documentList;
        if ((list == null || list.isEmpty()) || (replicatorError = this.replicator.ensureCouchDb().replicatorError()) == null) {
            return this;
        }
        KSyncStatus status = new KSyncStatus().setStatus(3);
        listOf = CollectionsKt__CollectionsJVMKt.listOf(Integer.valueOf(replicatorError.getCode()));
        status.addErrorTypeList(listOf);
        ArrayList arrayList = new ArrayList();
        for (MutableDocument mutableDocument : documentList) {
            CouchDocumentUtils couchDocumentUtils = CouchDocumentUtils.INSTANCE;
            if (couchDocumentUtils.isNoteDocument(mutableDocument) && couchDocumentUtils.isNoteDocSyncEnabled(mutableDocument)) {
                arrayList.add(new DocProgressBean().setDocumentId(mutableDocument.getId()).setScope("note").setSyncType(13).setAccountId(mutableDocument.getString("user")).setSyncStatus(status));
            }
        }
        SyncProgressBundle.INSTANCE.post(new SyncProgressUpdateEvent(new DocProgressListBean(arrayList)));
        return this;
    }
}
