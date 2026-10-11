package com.onyx.android.sdk.replicator.note.action;

import com.couchbase.lite.MutableDocument;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.eventbus.EventBusHolder;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.bean.StartReplicatorBean;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.bean.DocProgressBean;
import com.onyx.android.sdk.replicator.bean.DocProgressListBean;
import com.onyx.android.sdk.replicator.bean.KSyncStatus;
import com.onyx.android.sdk.replicator.event.PullRemoveSyncNoteEvent;
import com.onyx.android.sdk.replicator.event.PullSyncNoteEvent;
import com.onyx.android.sdk.replicator.event.StartNoteDocReplicatorEvent;
import com.onyx.android.sdk.replicator.event.SyncProgressUpdateEvent;
import com.onyx.android.sdk.replicator.note.action.StartPullNoteReplicatorAction;
import com.onyx.android.sdk.replicator.progress.SyncProgressBundle;
import com.onyx.android.sdk.replicator.replicator.BaseReplicator;
import com.onyx.android.sdk.replicator.replicator.request.LoadCouchDocListRequest;
import com.onyx.android.sdk.replicator.utils.CouchDocumentUtils;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.BooleanSupplier;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\b\u000e\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B+\u0012\u0006\u0010\u0011\u001a\u00020\u0004\u0012\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\n0\u0012\u0012\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\n0\u0012¢\u0006\u0004\b\u001e\u0010\u001fJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\b\u001a\u00020\u0006H\u0002J\u0016\u0010\u000e\u001a\u00020\r2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0002R\u0014\u0010\u0011\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\n0\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\n0\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0014R(\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\n0\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0014\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001c¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/action/StartPullNoteReplicatorAction;", "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;", "treeReplicator", "Lcom/onyx/android/sdk/replicator/replicator/request/LoadCouchDocListRequest;", GoogleApiAvailabilityLight.f29016b, "docListRequest", "", "", "p", "pullDocIds", "", C4921e.f26528e, C6997f.f39671c, "Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;", "replicator", "", C6998g.f39679a, "Ljava/util/List;", "updateDocIdList", C6999h.f39688c, "deleteDocIdList", "i", "getRemoveDocIdList", "()Ljava/util/List;", "setRemoveDocIdList", "(Ljava/util/List;)V", "removeDocIdList", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;Ljava/util/List;Ljava/util/List;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class StartPullNoteReplicatorAction extends BaseNoteSyncAction<StartPullNoteReplicatorAction> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final BaseReplicator replicator;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final List<String> updateDocIdList;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<String> deleteDocIdList;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public List<String> removeDocIdList;

    /* renamed from: com.onyx.android.sdk.replicator.note.action.StartPullNoteReplicatorAction$a */
    /* loaded from: classes8.dex */
    public static final class C7716a<T, R> implements Function {
        public C7716a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LoadCouchDocListRequest apply(@NotNull BaseReplicator treeReplicator) {
            Intrinsics.checkNotNullParameter(treeReplicator, "treeReplicator");
            return StartPullNoteReplicatorAction.this.m35125n(treeReplicator);
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.action.StartPullNoteReplicatorAction$b */
    /* loaded from: classes8.dex */
    public static final class C7717b<T, R> implements Function {
        public C7717b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Set<String> apply(@NotNull LoadCouchDocListRequest docListRequest) {
            Intrinsics.checkNotNullParameter(docListRequest, "docListRequest");
            return StartPullNoteReplicatorAction.this.m35127p(docListRequest);
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.action.StartPullNoteReplicatorAction$c */
    /* loaded from: classes8.dex */
    public static final class C7718c<T, R> implements Function {
        public C7718c() {
        }

        /* renamed from: a */
        public final void m35130a(@NotNull Set<String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            StartPullNoteReplicatorAction.this.m35126o(it2);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m35130a((Set) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.action.StartPullNoteReplicatorAction$d */
    /* loaded from: classes8.dex */
    public static final class C7719d<T, R> implements Function {
        public C7719d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final StartPullNoteReplicatorAction apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StartPullNoteReplicatorAction.this;
        }
    }

    public StartPullNoteReplicatorAction(@NotNull BaseReplicator replicator, @NotNull List<String> updateDocIdList, @NotNull List<String> deleteDocIdList) {
        Intrinsics.checkNotNullParameter(replicator, "replicator");
        Intrinsics.checkNotNullParameter(updateDocIdList, "updateDocIdList");
        Intrinsics.checkNotNullParameter(deleteDocIdList, "deleteDocIdList");
        this.replicator = replicator;
        this.updateDocIdList = updateDocIdList;
        this.deleteDocIdList = deleteDocIdList;
        this.removeDocIdList = new ArrayList();
    }

    /* renamed from: m */
    public static final boolean m35124m(StartPullNoteReplicatorAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        return CollectionKt.isNullOrEmpty(this$0.updateDocIdList);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<StartPullNoteReplicatorAction> create() {
        Observable<StartPullNoteReplicatorAction> map = this.replicator.createBaseObservable().map(new C7716a()).map(new C7717b()).map(new C7718c()).repeatUntil(new BooleanSupplier() { // from class: com.sunia.HTREnginev2.xxm
            @Override // io.reactivex.rxjava3.functions.BooleanSupplier
            public final boolean getAsBoolean() {
                boolean m35124m;
                m35124m = StartPullNoteReplicatorAction.m35124m(StartPullNoteReplicatorAction.this);
                return m35124m;
            }
        }).takeLast(1).map(new C7719d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final List<String> getRemoveDocIdList() {
        return this.removeDocIdList;
    }

    /* renamed from: n */
    public final LoadCouchDocListRequest m35125n(BaseReplicator treeReplicator) throws Exception {
        LoadCouchDocListRequest loadCouchDocListRequest = new LoadCouchDocListRequest(treeReplicator.ensureCouchDb(), CollectionKt.safelyDetachList(this.updateDocIdList, 0, 1000));
        loadCouchDocListRequest.execute();
        return loadCouchDocListRequest;
    }

    /* renamed from: o */
    public final void m35126o(Set<String> pullDocIds) {
        List list;
        if (CollectionKt.isNonBlank(pullDocIds)) {
            EventBusHolder eventBusHolder = KSyncBundle.INSTANCE.getEventBusHolder();
            list = CollectionsKt___CollectionsKt.toList(pullDocIds);
            eventBusHolder.post(new PullSyncNoteEvent(list));
        }
        if (CollectionKt.isNonBlank(this.removeDocIdList)) {
            KSyncBundle.INSTANCE.getEventBusHolder().post(new PullRemoveSyncNoteEvent(this.removeDocIdList));
        }
    }

    /* renamed from: p */
    public final Set<String> m35127p(LoadCouchDocListRequest docListRequest) {
        List<String> mutableList;
        HashSet hashSet = new HashSet();
        ArrayList arrayList = new ArrayList();
        hashSet.addAll(this.deleteDocIdList);
        this.removeDocIdList.addAll(this.deleteDocIdList);
        this.deleteDocIdList.clear();
        List<MutableDocument> documentList = docListRequest.getDocumentList();
        if (CollectionKt.isNullOrEmpty(documentList)) {
            return hashSet;
        }
        ArrayList arrayList2 = new ArrayList();
        HashSet hashSet2 = new HashSet();
        for (MutableDocument mutableDocument : documentList) {
            CouchDocumentUtils couchDocumentUtils = CouchDocumentUtils.INSTANCE;
            if (couchDocumentUtils.isNoteDocCommitPoint(mutableDocument)) {
                CollectionKt.safeAdd(hashSet2, mutableDocument.getString(CouchFieldKey.KEY_DOCUMENT_ID));
                DocProgressBean accountId = new DocProgressBean().setDocumentId(mutableDocument.getString(CouchFieldKey.KEY_DOCUMENT_ID)).setScope("note").setSyncType(0).setAccountId(mutableDocument.getString("user"));
                KSyncStatus kSyncStatus = new KSyncStatus();
                kSyncStatus.setStatus(1);
                Unit unit = Unit.INSTANCE;
                arrayList2.add(accountId.setSyncStatus(kSyncStatus));
            }
            if ((couchDocumentUtils.isNoteDocument(mutableDocument) || couchDocumentUtils.isNoteLibrary(mutableDocument)) && !couchDocumentUtils.isNoteDocEnabled(mutableDocument)) {
                List<String> list = this.removeDocIdList;
                String id = mutableDocument.getId();
                Intrinsics.checkNotNullExpressionValue(id, "getId(...)");
                list.add(id);
            }
            if (couchDocumentUtils.isNoteLibrary(mutableDocument) || !couchDocumentUtils.isNoteDocEnabled(mutableDocument)) {
                String id2 = mutableDocument.getId();
                Intrinsics.checkNotNullExpressionValue(id2, "getId(...)");
                hashSet.add(id2);
            }
            if (couchDocumentUtils.isNoteLibrary(mutableDocument) && couchDocumentUtils.isNoteDocEnabled(mutableDocument)) {
                String id3 = mutableDocument.getId();
                Intrinsics.checkNotNullExpressionValue(id3, "getId(...)");
                arrayList.add(id3);
            }
        }
        SyncProgressBundle.INSTANCE.post(new SyncProgressUpdateEvent(new DocProgressListBean(arrayList2)));
        hashSet.addAll(hashSet2);
        if (CollectionKt.isNonBlank(hashSet2)) {
            BaseReplicator baseReplicator = this.replicator;
            StartReplicatorBean startReplicatorBean = new StartReplicatorBean(0, false, false, false, null, null, false, 127, null);
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) hashSet2);
            startReplicatorBean.setSyncDocIdList(mutableList);
            startReplicatorBean.setLibraryDocIdList(arrayList);
            startReplicatorBean.setSyncAll(true);
            baseReplicator.post(new StartNoteDocReplicatorEvent(startReplicatorBean));
        }
        return hashSet;
    }

    public final void setRemoveDocIdList(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.removeDocIdList = list;
    }
}
