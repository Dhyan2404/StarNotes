package com.onyx.android.sdk.replicator.replicator.action;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.bean.ReplicatorInfo;
import com.onyx.android.sdk.replicator.replicator.DocReplicator;
import com.onyx.android.sdk.replicator.replicator.ReplicatorManager;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u0016\u0010\u0005\u001a\u00020\u00002\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00000\tH\u0016J\u0016\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030\t2\u0006\u0010\u000b\u001a\u00020\u0003H\u0002J\u0016\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00030\t2\u0006\u0010\u000b\u001a\u00020\u0003H\u0002J\u0018\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0006H\u0002R\u001e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/replicator/action/CloseFinishedDocReplicatorAction;", "Lcom/onyx/android/sdk/replicator/replicator/action/BaseReplicatorManagerAction;", "", "Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;", "replicatorInfoList", "setReplicatorInfoList", "", FirebaseAnalytics.Param.SUCCESS, "setSuccess", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "replicatorInfo", "l", "m", "closedSuccess", GoogleApiAvailabilityLight.f29016b, C6997f.f39671c, "Ljava/util/List;", C6998g.f39679a, Constants.HASIDCALL_INDEX_SIG, "Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;", "replicatorManager", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class CloseFinishedDocReplicatorAction extends BaseReplicatorManagerAction<CloseFinishedDocReplicatorAction> {

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public List<ReplicatorInfo> replicatorInfoList;

    /* renamed from: g, reason: from kotlin metadata */
    public boolean success;

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.CloseFinishedDocReplicatorAction$a */
    /* loaded from: classes8.dex */
    public static final class C7841a<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ ReplicatorInfo f46207f;

        public C7841a(ReplicatorInfo replicatorInfo) {
            this.f46207f = replicatorInfo;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ReplicatorInfo> apply(@NotNull ReplicatorInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CloseFinishedDocReplicatorAction.this.getReplicatorManager().addCommitPoint(this.f46207f);
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.CloseFinishedDocReplicatorAction$c */
    /* loaded from: classes8.dex */
    public static final class C7843c<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ ReplicatorInfo f46210f;

        public C7843c(ReplicatorInfo replicatorInfo) {
            this.f46210f = replicatorInfo;
        }

        @NotNull
        /* renamed from: a */
        public final CloseFinishedDocReplicatorAction m35689a(boolean z) {
            return CloseFinishedDocReplicatorAction.this.m35686n(this.f46210f, z);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m35689a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.CloseFinishedDocReplicatorAction$d */
    /* loaded from: classes8.dex */
    public static final class C7844d<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ ReplicatorInfo f46211e;

        public C7844d(ReplicatorInfo replicatorInfo) {
            this.f46211e = replicatorInfo;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ReplicatorInfo apply(@NotNull CloseFinishedDocReplicatorAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f46211e;
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.CloseFinishedDocReplicatorAction$e */
    /* loaded from: classes8.dex */
    public static final class C7845e<T, R> implements Function {
        public C7845e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ReplicatorInfo> apply(@Nullable ReplicatorInfo replicatorInfo) {
            CloseFinishedDocReplicatorAction closeFinishedDocReplicatorAction = CloseFinishedDocReplicatorAction.this;
            Intrinsics.checkNotNull(replicatorInfo);
            return closeFinishedDocReplicatorAction.m35684l(replicatorInfo);
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.CloseFinishedDocReplicatorAction$f */
    /* loaded from: classes8.dex */
    public static final class C7846f<T, R> implements Function {
        public C7846f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ReplicatorManager apply(@NotNull ReplicatorInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CloseFinishedDocReplicatorAction.this.getReplicatorManager().postProgress();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.CloseFinishedDocReplicatorAction$g */
    /* loaded from: classes8.dex */
    public static final class C7847g<T, R> implements Function {
        public C7847g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloseFinishedDocReplicatorAction apply(@NotNull ReplicatorManager it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CloseFinishedDocReplicatorAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CloseFinishedDocReplicatorAction(@NotNull ReplicatorManager replicatorManager) {
        super(replicatorManager);
        Intrinsics.checkNotNullParameter(replicatorManager, "replicatorManager");
        this.success = true;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<CloseFinishedDocReplicatorAction> create() {
        List<ReplicatorInfo> list = this.replicatorInfoList;
        if (list == null || list.isEmpty()) {
            Observable<CloseFinishedDocReplicatorAction> just = Observable.just(this);
            Intrinsics.checkNotNull(just);
            return just;
        }
        List<ReplicatorInfo> list2 = this.replicatorInfoList;
        Intrinsics.checkNotNull(list2);
        Observable<CloseFinishedDocReplicatorAction> map = Observable.fromIterable(list2).observeOn(getReplicatorManager().getObserveOn()).concatMap(new C7845e()).takeLast(1).observeOn(getReplicatorManager().getObserveOn()).map(new C7846f()).map(new C7847g());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final Observable<ReplicatorInfo> m35684l(ReplicatorInfo replicatorInfo) {
        Observable flatMap = m35685m(replicatorInfo).flatMap(new C7841a(replicatorInfo));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: m */
    public final Observable<ReplicatorInfo> m35685m(ReplicatorInfo replicatorInfo) {
        String documentId = replicatorInfo.getDocumentId();
        if (!getReplicatorManager().isRunningOrWaitingDocReplicator(documentId) || getReplicatorManager().isClosingDocId(documentId)) {
            Observable<ReplicatorInfo> just = Observable.just(replicatorInfo);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        getReplicatorManager().addClosingDocId(documentId);
        Observable<ReplicatorInfo> map = getReplicatorManager().ensureReplicatorObservableWithoutPost(documentId).map(new Function() { // from class: com.onyx.android.sdk.replicator.replicator.action.CloseFinishedDocReplicatorAction.b
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Boolean apply(@NotNull DocReplicator p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return Boolean.valueOf(p0.tryCloseReplicator());
            }
        }).observeOn(getReplicatorManager().getObserveOn()).map(new C7843c(replicatorInfo)).map(new C7844d(replicatorInfo));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: n */
    public final CloseFinishedDocReplicatorAction m35686n(ReplicatorInfo replicatorInfo, boolean closedSuccess) throws Exception {
        if (replicatorInfo.getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_SYNC_STATUS java.lang.String().isShapeReplicatorError()) {
            getReplicatorManager().onReplicateFail(replicatorInfo);
        }
        if (closedSuccess) {
            getReplicatorManager().finishReplicator(replicatorInfo);
        }
        getReplicatorManager().removeClosingDocId(replicatorInfo.getDocumentId());
        return this;
    }

    @NotNull
    public final CloseFinishedDocReplicatorAction setReplicatorInfoList(@Nullable List<ReplicatorInfo> replicatorInfoList) {
        this.replicatorInfoList = replicatorInfoList;
        return this;
    }

    @NotNull
    public final CloseFinishedDocReplicatorAction setSuccess(boolean success) {
        this.success = success;
        return this;
    }
}
