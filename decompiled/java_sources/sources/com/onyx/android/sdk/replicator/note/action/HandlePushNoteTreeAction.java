package com.onyx.android.sdk.replicator.note.action;

import com.couchbase.lite.MutableDocument;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
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
import java.util.Date;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001d\u0012\u0006\u0010\f\u001a\u00020\u0004\u0012\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u000e0\r¢\u0006\u0004\b\u0012\u0010\u0013J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\t\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0006H\u0002R\u0014\u0010\f\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u001a\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u000e0\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/action/HandlePushNoteTreeAction;", "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;", "treeReplicator", "Lcom/onyx/android/sdk/replicator/replicator/request/LoadCouchDocListRequest;", "l", "docListRequest", "m", C6997f.f39671c, "Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;", "replicator", "", "", C6998g.f39679a, "Ljava/util/List;", "docIdList", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;Ljava/util/List;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class HandlePushNoteTreeAction extends BaseNoteSyncAction<HandlePushNoteTreeAction> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final BaseReplicator replicator;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final List<String> docIdList;

    /* renamed from: com.onyx.android.sdk.replicator.note.action.HandlePushNoteTreeAction$a */
    /* loaded from: classes8.dex */
    public static final class C7693a<T, R> implements Function {
        public C7693a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LoadCouchDocListRequest apply(@NotNull BaseReplicator treeReplicator) {
            Intrinsics.checkNotNullParameter(treeReplicator, "treeReplicator");
            return HandlePushNoteTreeAction.this.m35090l(treeReplicator);
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.action.HandlePushNoteTreeAction$b */
    /* loaded from: classes8.dex */
    public static final class C7694b<T, R> implements Function {
        public C7694b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HandlePushNoteTreeAction apply(@NotNull LoadCouchDocListRequest docListRequest) {
            Intrinsics.checkNotNullParameter(docListRequest, "docListRequest");
            return HandlePushNoteTreeAction.this.m35091m(docListRequest);
        }
    }

    public HandlePushNoteTreeAction(@NotNull BaseReplicator replicator, @NotNull List<String> docIdList) {
        Intrinsics.checkNotNullParameter(replicator, "replicator");
        Intrinsics.checkNotNullParameter(docIdList, "docIdList");
        this.replicator = replicator;
        this.docIdList = docIdList;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<HandlePushNoteTreeAction> create() {
        Observable<HandlePushNoteTreeAction> map = this.replicator.createBaseObservable().map(new C7693a()).map(new C7694b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final LoadCouchDocListRequest m35090l(BaseReplicator treeReplicator) throws Exception {
        LoadCouchDocListRequest loadCouchDocListRequest = new LoadCouchDocListRequest(treeReplicator.ensureCouchDb(), this.docIdList);
        loadCouchDocListRequest.execute();
        return loadCouchDocListRequest;
    }

    /* renamed from: m */
    public final HandlePushNoteTreeAction m35091m(LoadCouchDocListRequest docListRequest) {
        List<MutableDocument> documentList = docListRequest.getDocumentList();
        List<MutableDocument> list = documentList;
        if (list == null || list.isEmpty()) {
            return this;
        }
        ArrayList arrayList = new ArrayList();
        for (MutableDocument mutableDocument : documentList) {
            if (CouchDocumentUtils.INSTANCE.isNoteDocCommitPoint(mutableDocument)) {
                DocProgressBean accountId = new DocProgressBean().setDocumentId(mutableDocument.getString(CouchFieldKey.KEY_DOCUMENT_ID)).setScope("note").setSyncType(13).setAccountId(mutableDocument.getString("user"));
                KSyncStatus kSyncStatus = new KSyncStatus();
                kSyncStatus.setStatus(2);
                kSyncStatus.setPushAt(new Date());
                Unit unit = Unit.INSTANCE;
                arrayList.add(accountId.setSyncStatus(kSyncStatus));
            }
        }
        SyncProgressBundle.INSTANCE.post(new SyncProgressUpdateEvent(new DocProgressListBean(arrayList)));
        return this;
    }
}
