package com.onyx.android.sdk.replicator.replicator.action;

import com.alibaba.sdk.android.oss.model.DeleteMultipleObjectResult;
import com.alibaba.sdk.android.oss.model.OSSObjectSummary;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.base.utils.NetworkUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import com.onyx.android.sdk.data.common.oss.GetListObjectBean;
import com.onyx.android.sdk.data.common.oss.RxOSSManager;
import com.onyx.android.sdk.data.common.path.CommonPaths;
import com.onyx.android.sdk.data.couchbase.CouchHolder;
import com.onyx.android.sdk.data.couchbase.utils.CouchDirUtils;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.NoteReplicatorManager;
import com.onyx.android.sdk.replicator.note.action.BaseNoteSyncAction;
import com.onyx.android.sdk.replicator.note.utils.OssPaths;
import com.onyx.android.sdk.replicator.replicator.BaseReplicator;
import com.onyx.android.sdk.replicator.replicator.ReplicatorManager;
import com.onyx.android.sdk.replicator.utils.KSyncLogUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u001b\u001a\u00020\u000f¢\u0006\u0004\b\u001c\u0010\u001dJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u0014\u0010\n\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u0002H\u0002J\u001c\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\t0\u000bH\u0002J\b\u0010\u000e\u001a\u00020\u0000H\u0002J\u001c\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000bH\u0002J\u0010\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0010\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0015H\u0002R\u0014\u0010\u001b\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;", "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;", "replicatorManager", "l", "m", "", "Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;", "s", "", "summaries", "p", GoogleApiAvailabilityLight.f29016b, "", "ossFileKey", "q", "Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;", "treeReplicator", C4921e.f26528e, "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;", "clusterInfo", "Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;", "r", C6997f.f39671c, Constants.STRING_SIG, "documentId", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class PurgeNoteDocDataAction extends BaseNoteSyncAction<PurgeNoteDocDataAction> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final String documentId;

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.PurgeNoteDocDataAction$a */
    /* loaded from: classes8.dex */
    public static final class C7870a<T> implements Predicate {
        public C7870a() {
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull NoteReplicatorManager it2) {
            boolean isBlank;
            Intrinsics.checkNotNullParameter(it2, "it");
            isBlank = StringsKt__StringsJVMKt.isBlank(PurgeNoteDocDataAction.this.documentId);
            return !isBlank;
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.PurgeNoteDocDataAction$b */
    /* loaded from: classes8.dex */
    public static final class C7871b<T, R> implements Function {
        public C7871b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends PurgeNoteDocDataAction> apply(@NotNull NoteReplicatorManager it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return PurgeNoteDocDataAction.this.m35728l(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.PurgeNoteDocDataAction$c */
    /* loaded from: classes8.dex */
    public static final class C7872c<T, R> implements Function {
        public C7872c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends PurgeNoteDocDataAction> apply(@NotNull PurgeNoteDocDataAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return PurgeNoteDocDataAction.this.m35729m();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.PurgeNoteDocDataAction$d */
    /* loaded from: classes8.dex */
    public static final class C7873d<T, R> implements Function {
        public C7873d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ClusterInfo> apply(@NotNull ReplicatorManager it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return PurgeNoteDocDataAction.this.updateClusterInfoObservable();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.PurgeNoteDocDataAction$e */
    /* loaded from: classes8.dex */
    public static final class C7874e<T, R> implements Function {
        public C7874e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<OSSObjectSummary>> apply(@NotNull ClusterInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return PurgeNoteDocDataAction.this.m35735s();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.PurgeNoteDocDataAction$f */
    /* loaded from: classes8.dex */
    public static final class C7875f<T, R> implements Function {
        public C7875f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends PurgeNoteDocDataAction> apply(@NotNull List<? extends OSSObjectSummary> summaries) {
            Intrinsics.checkNotNullParameter(summaries, "summaries");
            return PurgeNoteDocDataAction.this.m35732p(summaries);
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.PurgeNoteDocDataAction$g */
    /* loaded from: classes8.dex */
    public static final class C7876g<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ ReplicatorManager f46248e;

        public C7876g(ReplicatorManager replicatorManager) {
            this.f46248e = replicatorManager;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends BaseReplicator> apply(@NotNull PurgeNoteDocDataAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f46248e.getNoteTreeReplicator().createBaseObservable();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.PurgeNoteDocDataAction$h */
    /* loaded from: classes8.dex */
    public static final class C7877h<T, R> implements Function {
        public C7877h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final PurgeNoteDocDataAction apply(@NotNull BaseReplicator it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return PurgeNoteDocDataAction.this.m35731o(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.PurgeNoteDocDataAction$i */
    /* loaded from: classes8.dex */
    public static final class C7878i<T, R> implements Function {
        public C7878i() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final PurgeNoteDocDataAction apply(@NotNull NoteReplicatorManager it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return PurgeNoteDocDataAction.this.m35730n();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.PurgeNoteDocDataAction$j */
    /* loaded from: classes8.dex */
    public static final class C7879j<T, R> implements Function {
        public C7879j() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends DeleteMultipleObjectResult> apply(@NotNull List<String> o) {
            Intrinsics.checkNotNullParameter(o, "o");
            PurgeNoteDocDataAction purgeNoteDocDataAction = PurgeNoteDocDataAction.this;
            ClusterInfo clusterInfo = purgeNoteDocDataAction.getClusterInfo();
            Intrinsics.checkNotNull(clusterInfo);
            return purgeNoteDocDataAction.m35734r(clusterInfo).deleteMultipleObject(o, false);
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.PurgeNoteDocDataAction$k */
    /* loaded from: classes8.dex */
    public static final class C7880k<T, R> implements Function {
        public C7880k() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final PurgeNoteDocDataAction apply(@NotNull DeleteMultipleObjectResult it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return PurgeNoteDocDataAction.this;
        }
    }

    public PurgeNoteDocDataAction(@NotNull String documentId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        this.documentId = documentId;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<PurgeNoteDocDataAction> create() {
        Observable<PurgeNoteDocDataAction> flatMap = getCurNoteRepManagerObservable().filter(new C7870a()).flatMap(new C7871b()).flatMap(new C7872c());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: l */
    public final Observable<PurgeNoteDocDataAction> m35728l(ReplicatorManager replicatorManager) {
        if (NetworkUtils.INSTANCE.isNetworkConnected(ResManager.INSTANCE.getAppContext()) && AccountDataBundle.INSTANCE.isAlreadyLogin()) {
            Observable<PurgeNoteDocDataAction> map = replicatorManager.createObservable().flatMap(new C7873d()).flatMap(new C7874e()).flatMap(new C7875f()).takeLast(1).flatMap(new C7876g(replicatorManager)).map(new C7877h());
            Intrinsics.checkNotNull(map);
            return map;
        }
        Observable<PurgeNoteDocDataAction> just = Observable.just(this);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: m */
    public final Observable<PurgeNoteDocDataAction> m35729m() {
        Observable map = getCurNoteRepManagerObservable().map(new C7878i());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: n */
    public final PurgeNoteDocDataAction m35730n() {
        Paths paths = Paths.INSTANCE;
        paths.deleteDirectory(CommonPaths.INSTANCE.appDocDir(this.documentId));
        paths.deleteDirectory(CouchDirUtils.getUserDocCountDir$default(CouchDirUtils.INSTANCE, this.documentId, null, 2, null));
        return this;
    }

    /* renamed from: o */
    public final PurgeNoteDocDataAction m35731o(BaseReplicator treeReplicator) {
        List<String> listOf;
        CouchHolder.CouchDataProvider couchDataProvider = CouchHolder.CouchDataProvider.INSTANCE;
        CouchHolder ensureCouchDb = treeReplicator.ensureCouchDb();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(this.documentId);
        couchDataProvider.deleteListById(ensureCouchDb, listOf);
        treeReplicator.removeDisabledSyncDocId(this.documentId);
        return this;
    }

    /* renamed from: p */
    public final Observable<PurgeNoteDocDataAction> m35732p(List<? extends OSSObjectSummary> summaries) {
        if (summaries.isEmpty()) {
            Observable<PurgeNoteDocDataAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<? extends OSSObjectSummary> it2 = summaries.iterator();
        while (it2.hasNext()) {
            String key = it2.next().getKey();
            Intrinsics.checkNotNullExpressionValue(key, "getKey(...)");
            arrayList.add(key);
        }
        return m35733q(arrayList);
    }

    /* renamed from: q */
    public final Observable<PurgeNoteDocDataAction> m35733q(List<String> ossFileKey) {
        if (ossFileKey.isEmpty()) {
            Observable<PurgeNoteDocDataAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        KSyncLogUtils.INSTANCE.m35864d(PurgeNoteDocDataAction.class, this.documentId + " delete oss file key count: " + ossFileKey.size());
        Observable<PurgeNoteDocDataAction> map = Observable.fromIterable(ossFileKey).buffer(1000).flatMap(new C7879j()).map(new C7880k());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: r */
    public final RxOSSManager m35734r(ClusterInfo clusterInfo) {
        return KSyncBundle.INSTANCE.getRxOSSManager(clusterInfo);
    }

    /* renamed from: s */
    public final Observable<List<OSSObjectSummary>> m35735s() {
        OssPaths ossPaths = OssPaths.INSTANCE;
        GetListObjectBean getListObjectBean = new GetListObjectBean(ossPaths.ossPathString(ossPaths.ossDocDirPath(AccountDataBundle.INSTANCE.getSyncUserId(), this.documentId)), null, 1000, null, null, 0, 58, null);
        ClusterInfo clusterInfo = getClusterInfo();
        Intrinsics.checkNotNull(clusterInfo);
        return m35734r(clusterInfo).getObjectList(getListObjectBean);
    }
}
