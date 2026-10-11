package com.onyx.android.sdk.replicator.note.action;

import com.couchbase.lite.CouchbaseLiteException;
import com.couchbase.lite.DataSource;
import com.couchbase.lite.Expression;
import com.couchbase.lite.Limit;
import com.couchbase.lite.QueryBuilder;
import com.couchbase.lite.Result;
import com.couchbase.lite.SelectResult;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.CouchHolder;
import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.replicator.bean.ReplicatorInfo;
import com.onyx.android.sdk.replicator.note.NoteTreeReplicator;
import com.onyx.android.sdk.replicator.note.p035db.model.NoteCommitPointModel;
import com.onyx.android.sdk.replicator.utils.CouchExpressionUtils;
import com.onyx.android.sdk.replicator.utils.KSyncLogUtils;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\u0006\u0010\u0016\u001a\u00020\u000f¢\u0006\u0004\b\u0017\u0010\u0018J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0004\u001a\u00020\u0000H\u0002J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0012\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0006\u001a\u00020\u0005H\u0002R\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\"\u0010\u0016\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/action/AddNoteDocCommitPointAction;", "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "", "documentId", "", "m", "Lcom/onyx/android/sdk/replicator/note/db/model/NoteCommitPointModel;", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;", C6997f.f39671c, "Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;", "replicator", "Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;", C6998g.f39679a, "Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;", "getReplicatorInfo", "()Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;", "setReplicatorInfo", "(Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;)V", "replicatorInfo", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class AddNoteDocCommitPointAction extends BaseNoteSyncAction<AddNoteDocCommitPointAction> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final NoteTreeReplicator replicator;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public ReplicatorInfo replicatorInfo;

    /* renamed from: com.onyx.android.sdk.replicator.note.action.AddNoteDocCommitPointAction$a */
    /* loaded from: classes8.dex */
    public static final class C7663a<T, R> implements Function {
        public C7663a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AddNoteDocCommitPointAction apply(@NotNull NoteTreeReplicator it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AddNoteDocCommitPointAction.this.m35030l();
        }
    }

    public AddNoteDocCommitPointAction(@NotNull NoteTreeReplicator replicator, @NotNull ReplicatorInfo replicatorInfo) {
        Intrinsics.checkNotNullParameter(replicator, "replicator");
        Intrinsics.checkNotNullParameter(replicatorInfo, "replicatorInfo");
        this.replicator = replicator;
        this.replicatorInfo = replicatorInfo;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<AddNoteDocCommitPointAction> create() {
        Observable map = this.replicator.createObservable().map(new C7663a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final ReplicatorInfo getReplicatorInfo() {
        return this.replicatorInfo;
    }

    /* renamed from: l */
    public final AddNoteDocCommitPointAction m35030l() throws Exception {
        if (this.replicatorInfo.getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_SYNC_STATUS java.lang.String().hasPushedData() && !this.replicatorInfo.isNoteLibrary()) {
            KSyncLogUtils.INSTANCE.m35864d(AddNoteDocCommitPointAction.class, "add note commit point:" + this.replicatorInfo.getDocumentId());
            m35031m(this.replicatorInfo.getDocumentId());
        }
        return this;
    }

    /* renamed from: m */
    public final void m35031m(String documentId) {
        BaseReplicatorModel m35032n = m35032n(documentId);
        if (m35032n == null) {
            m35032n = new NoteCommitPointModel().setCommitStatus(1).setCommitType(1).setDocumentUniqueId(documentId).ensureUniqueIdExist();
            m35032n.setDbId(this.replicator.getDbId());
            m35032n.setUser(this.replicatorInfo.getUserId());
        }
        m35032n.setUpdatedAt(System.currentTimeMillis());
        CouchHolder.CouchDataProvider.INSTANCE.save(this.replicator.ensureCouchDb(), CouchUtils.INSTANCE.toMutableDocument(m35032n));
    }

    /* renamed from: n */
    public final NoteCommitPointModel m35032n(String documentId) {
        List<Result> list;
        boolean z = true;
        Limit limit = QueryBuilder.select(SelectResult.all()).from(DataSource.collection(this.replicator.ensureCollectionRequireNonNull())).where(CouchExpressionUtils.INSTANCE.isNoteDocCommitExpression().and(Expression.property(CouchFieldKey.KEY_DOCUMENT_ID).equalTo(Expression.string(documentId)))).limit(Expression.intValue(1));
        Intrinsics.checkNotNullExpressionValue(limit, "limit(...)");
        try {
            list = limit.execute().allResults();
        } catch (CouchbaseLiteException e) {
            e.printStackTrace();
            list = null;
        }
        List<Result> list2 = list;
        if (list2 != null && !list2.isEmpty()) {
            z = false;
        }
        if (z) {
            return null;
        }
        return (NoteCommitPointModel) CouchUtils.fromQueryResult$default(CouchUtils.INSTANCE, list.get(0), NoteCommitPointModel.class, null, 4, null);
    }

    public final void setReplicatorInfo(@NotNull ReplicatorInfo replicatorInfo) {
        Intrinsics.checkNotNullParameter(replicatorInfo, "<set-?>");
        this.replicatorInfo = replicatorInfo;
    }
}
