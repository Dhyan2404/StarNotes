package com.onyx.android.sdk.replicator.replicator.action;

import com.couchbase.lite.CouchbaseLiteException;
import com.couchbase.lite.DataSource;
import com.couchbase.lite.From;
import com.couchbase.lite.QueryBuilder;
import com.couchbase.lite.Result;
import com.couchbase.lite.SelectResult;
import com.couchbase.lite.Where;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.NetworkUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.bean.StartReplicatorBean;
import com.onyx.android.sdk.replicator.note.NoteReplicatorManager;
import com.onyx.android.sdk.replicator.note.action.BaseNoteSyncAction;
import com.onyx.android.sdk.replicator.note.action.StartNoteTreeReplicatorAction;
import com.onyx.android.sdk.replicator.replicator.BaseReplicator;
import com.onyx.android.sdk.replicator.replicator.ReplicatorManager;
import com.onyx.android.sdk.replicator.utils.CouchExpressionUtils;
import com.onyx.android.sdk.replicator.utils.KSyncLogUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B!\u0012\u000e\b\u0002\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\n0\u000f\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0015¢\u0006\u0004\b\u0019\u0010\u001aJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\b\u001a\u00020\u0007H\u0002J\"\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\u00022\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0002J\u001c\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0002R\u001d\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\n0\u000f8\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/replicator/action/PurgeForceRemoveNoteDataAction;", "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;", "replicatorManager", "l", "Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;", "treeReplicator", "", "", GoogleApiAvailabilityLight.f29016b, "idList", "m", C4921e.f26528e, "", C6997f.f39671c, "Ljava/util/List;", "getDocIdList", "()Ljava/util/List;", "docIdList", "", C6998g.f39679a, Constants.HASIDCALL_INDEX_SIG, "syncDeleteSyncTree", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;Z)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class PurgeForceRemoveNoteDataAction extends BaseNoteSyncAction<PurgeForceRemoveNoteDataAction> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final List<String> docIdList;

    /* renamed from: g, reason: from kotlin metadata */
    public final boolean syncDeleteSyncTree;

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.PurgeForceRemoveNoteDataAction$a */
    /* loaded from: classes8.dex */
    public static final class C7863a<T, R> implements Function {
        public C7863a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends PurgeForceRemoveNoteDataAction> apply(@NotNull NoteReplicatorManager it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return PurgeForceRemoveNoteDataAction.this.m35717l(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.PurgeForceRemoveNoteDataAction$b */
    /* loaded from: classes8.dex */
    public static final class C7864b<T, R> implements Function {
        public C7864b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<String> apply(@NotNull BaseReplicator it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return PurgeForceRemoveNoteDataAction.this.m35719n(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.PurgeForceRemoveNoteDataAction$c */
    /* loaded from: classes8.dex */
    public static final class C7865c<T, R> implements Function {
        public C7865c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<String>> apply(@NotNull List<String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return PurgeForceRemoveNoteDataAction.this.m35718m(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.PurgeForceRemoveNoteDataAction$d */
    /* loaded from: classes8.dex */
    public static final class C7866d<T, R> implements Function {
        public C7866d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends PurgeForceRemoveNoteDataAction> apply(@NotNull List<String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return PurgeForceRemoveNoteDataAction.this.m35720o(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.PurgeForceRemoveNoteDataAction$e */
    /* loaded from: classes8.dex */
    public static final class C7867e<T, R> implements Function {

        /* renamed from: e */
        public static final C7867e<T, R> f46238e = new C7867e<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends PurgeNoteDocDataAction> apply(@NotNull String o) {
            Intrinsics.checkNotNullParameter(o, "o");
            return new PurgeNoteDocDataAction(o).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.PurgeForceRemoveNoteDataAction$f */
    /* loaded from: classes8.dex */
    public static final class C7868f<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ List<String> f46239e;

        public C7868f(List<String> list) {
            this.f46239e = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<String> apply(@NotNull PurgeNoteDocDataAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f46239e;
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.PurgeForceRemoveNoteDataAction$g */
    /* loaded from: classes8.dex */
    public static final class C7869g<T, R> implements Function {
        public C7869g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final PurgeForceRemoveNoteDataAction apply(@NotNull StartNoteTreeReplicatorAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return PurgeForceRemoveNoteDataAction.this;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PurgeForceRemoveNoteDataAction() {
        this(null, false, 3, 0 == true ? 1 : 0);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<PurgeForceRemoveNoteDataAction> create() {
        Observable flatMap = getCurNoteRepManagerObservable().flatMap(new C7863a());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    @NotNull
    public final List<String> getDocIdList() {
        return this.docIdList;
    }

    /* renamed from: l */
    public final Observable<PurgeForceRemoveNoteDataAction> m35717l(ReplicatorManager replicatorManager) {
        Observable concatMap = replicatorManager.getNoteTreeReplicator().createBaseObservable().map(new C7864b()).concatMap(new C7865c());
        Intrinsics.checkNotNullExpressionValue(concatMap, "concatMap(...)");
        Observable<PurgeForceRemoveNoteDataAction> flatMap = RxjavaKt.takeLastOne(concatMap).flatMap(new C7866d());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: m */
    public final Observable<List<String>> m35718m(List<String> idList) {
        if (idList.isEmpty()) {
            Observable<List<String>> just = Observable.just(idList);
            Intrinsics.checkNotNull(just);
            return just;
        }
        Observable<List<String>> map = Observable.fromIterable(idList).concatMap(C7867e.f46238e).map(new C7868f(idList));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: n */
    public final List<String> m35719n(BaseReplicator treeReplicator) {
        List<Result> list;
        if (CollectionKt.isNonBlank(this.docIdList)) {
            return this.docIdList;
        }
        From from = QueryBuilder.select(SelectResult.property(CouchFieldKey.KEY_UNIQUE_ID)).from(DataSource.collection(treeReplicator.ensureCollectionRequireNonNull()));
        CouchExpressionUtils couchExpressionUtils = CouchExpressionUtils.INSTANCE;
        Where where = from.where(couchExpressionUtils.notCommitDocExpression().and(couchExpressionUtils.docForceRemovedExpression()).and(couchExpressionUtils.docTypeExpression(1)));
        Intrinsics.checkNotNullExpressionValue(where, "where(...)");
        try {
            list = where.execute().allResults();
        } catch (CouchbaseLiteException e) {
            e.printStackTrace();
            list = null;
        }
        if (list != null) {
            Iterator<Result> it2 = list.iterator();
            while (it2.hasNext()) {
                CollectionKt.safeAdd(this.docIdList, it2.next().getString(CouchFieldKey.KEY_UNIQUE_ID));
            }
        }
        return this.docIdList;
    }

    /* renamed from: o */
    public final Observable<PurgeForceRemoveNoteDataAction> m35720o(List<String> idList) {
        List mutableList;
        if (idList.isEmpty() || !this.syncDeleteSyncTree || !NetworkUtils.INSTANCE.isNetworkConnected(getAppContext())) {
            Observable<PurgeForceRemoveNoteDataAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        KSyncLogUtils.INSTANCE.m35866i(PurgeForceRemoveNoteDataAction.class, "sync delete doc count:" + idList.size());
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) idList);
        Observable map = new StartNoteTreeReplicatorAction(new StartReplicatorBean(0, false, false, false, mutableList, null, false, 111, null)).build().map(new C7869g());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public /* synthetic */ PurgeForceRemoveNoteDataAction(List list, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new ArrayList() : list, (i & 2) != 0 ? false : z);
    }

    public PurgeForceRemoveNoteDataAction(@NotNull List<String> docIdList, boolean z) {
        Intrinsics.checkNotNullParameter(docIdList, "docIdList");
        this.docIdList = docIdList;
        this.syncDeleteSyncTree = z;
    }
}
