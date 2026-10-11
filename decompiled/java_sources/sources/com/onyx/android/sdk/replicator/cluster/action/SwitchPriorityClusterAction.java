package com.onyx.android.sdk.replicator.cluster.action;

import androidx.core.app.NotificationCompat;
import com.blankj.utilcode.util.LogUtils;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.cluster.ClusterConstant;
import com.onyx.android.sdk.data.cluster.ClusterManager;
import com.onyx.android.sdk.data.cluster.ClusterUtils;
import com.onyx.android.sdk.data.cluster.action.BaseClusterAction;
import com.onyx.android.sdk.data.cluster.bean.ClusterBean;
import com.onyx.android.sdk.data.cluster.bean.PriorityClusterParma;
import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import com.onyx.android.sdk.data.cluster.model.ClusterList;
import com.onyx.android.sdk.data.cluster.request.GetPriorityClusterRequest;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.replicator.cluster.action.SwitchPriorityClusterAction;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u0014\u001a\u00020\u0011\u0012\u0006\u0010\u0018\u001a\u00020\u0015¢\u0006\u0004\b\u001f\u0010 J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\f\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0002J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\t\u001a\u00020\u0007H\u0002J\u0016\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u0010\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u0005H\u0002R\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R$\u0010\u001d\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00198\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e¨\u0006!"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/cluster/action/SwitchPriorityClusterAction;", "Lcom/onyx/android/sdk/data/cluster/action/BaseClusterAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "q", "", "indexHost", "Lcom/onyx/android/sdk/data/cluster/request/GetPriorityClusterRequest;", GoogleApiAvailabilityLight.f29016b, AbstractLogger.REQUEST, "r", "Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;", "clusterBean", "p", NotificationCompat.CATEGORY_MESSAGE, "", C4921e.f26528e, "Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma$ClusterUserInfo;", "e", "Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma$ClusterUserInfo;", "user", "", C6997f.f39671c, Constants.HASIDCALL_INDEX_SIG, "enableSwitchCluster", "Ljava/util/concurrent/atomic/AtomicBoolean;", "<set-?>", C6998g.f39679a, "Ljava/util/concurrent/atomic/AtomicBoolean;", "isUpdated", "()Ljava/util/concurrent/atomic/AtomicBoolean;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma$ClusterUserInfo;Z)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class SwitchPriorityClusterAction extends BaseClusterAction<SwitchPriorityClusterAction> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final PriorityClusterParma.ClusterUserInfo user;

    /* renamed from: f, reason: from kotlin metadata */
    public final boolean enableSwitchCluster;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public AtomicBoolean isUpdated;

    /* renamed from: com.onyx.android.sdk.replicator.cluster.action.SwitchPriorityClusterAction$a */
    /* loaded from: classes8.dex */
    public static final class C7622a<T, R> implements Function {

        /* renamed from: e */
        public static final C7622a<T, R> f45272e = new C7622a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ClusterInfo> apply(@NotNull ClusterManager it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ClusterManager.INSTANCE.getCurrentClusterObservable();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.cluster.action.SwitchPriorityClusterAction$b */
    /* loaded from: classes8.dex */
    public static final class C7623b<T, R> implements Function {
        public C7623b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SwitchPriorityClusterAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SwitchPriorityClusterAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.cluster.action.SwitchPriorityClusterAction$c */
    /* loaded from: classes8.dex */
    public static final class C7624c<T, R> implements Function {
        public C7624c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SwitchPriorityClusterAction apply(@NotNull ChangeCurClusterAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SwitchPriorityClusterAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.cluster.action.SwitchPriorityClusterAction$d */
    /* loaded from: classes8.dex */
    public static final class C7625d<T, R> implements Function {

        /* renamed from: e */
        public static final C7625d<T, R> f45275e = new C7625d<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ClusterInfo> apply(@NotNull SwitchPriorityClusterAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ClusterManager.INSTANCE.getCurrentClusterObservable();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.cluster.action.SwitchPriorityClusterAction$e */
    /* loaded from: classes8.dex */
    public static final class C7626e<T, R> implements Function {

        /* renamed from: e */
        public static final C7626e<T, R> f45276e = new C7626e<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends String> apply(@NotNull ClusterInfo o) {
            List list;
            Intrinsics.checkNotNullParameter(o, "o");
            list = ArraysKt___ArraysKt.toList(ClusterManager.INSTANCE.getIndexServerList(o));
            return Observable.fromIterable(list);
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.cluster.action.SwitchPriorityClusterAction$f */
    /* loaded from: classes8.dex */
    public static final class C7627f<T> implements Predicate {
        public C7627f() {
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !SwitchPriorityClusterAction.this.getIsUpdated().get();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.cluster.action.SwitchPriorityClusterAction$g */
    /* loaded from: classes8.dex */
    public static final class C7628g<T, R> implements Function {
        public C7628g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final GetPriorityClusterRequest apply(@NotNull String indexHost) {
            Intrinsics.checkNotNullParameter(indexHost, "indexHost");
            return SwitchPriorityClusterAction.this.m34934n(indexHost);
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.cluster.action.SwitchPriorityClusterAction$h */
    /* loaded from: classes8.dex */
    public static final class C7629h<T> implements Predicate {
        public C7629h() {
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull GetPriorityClusterRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !SwitchPriorityClusterAction.this.getIsUpdated().get();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.cluster.action.SwitchPriorityClusterAction$i */
    /* loaded from: classes8.dex */
    public static final class C7630i<T, R> implements Function {
        public C7630i() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SwitchPriorityClusterAction> apply(@NotNull GetPriorityClusterRequest request) {
            Intrinsics.checkNotNullParameter(request, "request");
            return SwitchPriorityClusterAction.this.m34938r(request);
        }
    }

    public SwitchPriorityClusterAction(@NotNull PriorityClusterParma.ClusterUserInfo user, boolean z) {
        Intrinsics.checkNotNullParameter(user, "user");
        this.user = user;
        this.enableSwitchCluster = z;
        this.isUpdated = new AtomicBoolean(false);
    }

    /* renamed from: m */
    public static final void m34933m(SwitchPriorityClusterAction this$0, ClusterInfo it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.isUpdated.set(true);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<SwitchPriorityClusterAction> create() {
        Observable<R> flatMap = ClusterManager.INSTANCE.ensureLoadObservable().flatMap(C7622a.f45272e);
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        Observable map = RxjavaKt.flatMapIf(RxjavaKt.doOnNextIf(flatMap, new Function1<ClusterInfo, Boolean>() { // from class: com.onyx.android.sdk.replicator.cluster.action.SwitchPriorityClusterAction$create$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull ClusterInfo it2) {
                boolean z;
                Intrinsics.checkNotNullParameter(it2, "it");
                z = SwitchPriorityClusterAction.this.enableSwitchCluster;
                return Boolean.valueOf(!z);
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.h6n
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                SwitchPriorityClusterAction.m34933m(SwitchPriorityClusterAction.this, (ClusterInfo) obj);
            }
        }), new Function1<ClusterInfo, Boolean>() { // from class: com.onyx.android.sdk.replicator.cluster.action.SwitchPriorityClusterAction$create$4
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull ClusterInfo it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!SwitchPriorityClusterAction.this.getIsUpdated().get());
            }
        }, new Function1<ClusterInfo, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.replicator.cluster.action.SwitchPriorityClusterAction$create$5
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull ClusterInfo it2) {
                Observable<? extends Object> m34937q;
                Intrinsics.checkNotNullParameter(it2, "it");
                m34937q = SwitchPriorityClusterAction.this.m34937q();
                return m34937q;
            }
        }).observeOn(AndroidSchedulers.mainThread()).map(new C7623b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    /* renamed from: isUpdated, reason: from getter */
    public final AtomicBoolean getIsUpdated() {
        return this.isUpdated;
    }

    /* renamed from: n */
    public final GetPriorityClusterRequest m34934n(String indexHost) throws Exception {
        GetPriorityClusterRequest getPriorityClusterRequest = new GetPriorityClusterRequest(this.user, indexHost);
        getPriorityClusterRequest.m72239execute();
        return getPriorityClusterRequest;
    }

    /* renamed from: o */
    public final void m34935o(String msg) {
        ClusterUtils.INSTANCE.m32943i(SwitchPriorityClusterAction.class, msg);
        LogUtils.file(SwitchPriorityClusterAction.class.getSimpleName(), msg);
    }

    /* renamed from: p */
    public final Observable<SwitchPriorityClusterAction> m34936p(ClusterBean clusterBean) {
        ClusterInfo fromClusterBean;
        this.isUpdated.set(true);
        ClusterUtils clusterUtils = ClusterUtils.INSTANCE;
        ClusterManager clusterManager = ClusterManager.INSTANCE;
        if (clusterUtils.isTestCluster(clusterManager.getCurClusterId())) {
            ClusterConstant clusterConstant = ClusterConstant.INSTANCE;
            String str = clusterConstant.getTEST_SERVER_CLUSTER_ID_MAP().get(clusterBean.getRegion());
            if (str == null) {
                str = clusterConstant.getTEST_CHINESE_SERVER_ID();
            }
            fromClusterBean = ClusterInfo.INSTANCE.createTestCluster(str);
        } else {
            fromClusterBean = ClusterInfo.INSTANCE.fromClusterBean(clusterBean);
        }
        ClusterList clusterList = clusterManager.getClusterList();
        StringBuilder sb = new StringBuilder();
        sb.append("resolveResult: cluster list updated clusterBean:");
        JSONUtils jSONUtils = JSONUtils.INSTANCE;
        sb.append(jSONUtils.toJson(clusterBean));
        sb.append(";ClusterUserInfo:");
        sb.append(jSONUtils.toJson(this.user));
        sb.append(";enableSwitchCluster:");
        sb.append(this.enableSwitchCluster);
        m34935o(sb.toString());
        clusterList.addCluster(fromClusterBean);
        Observable map = new ChangeCurClusterAction(fromClusterBean.getClusterId()).build().map(new C7624c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: q */
    public final Observable<?> m34937q() {
        Observable<?> flatMap = Observable.just(this).flatMap(C7625d.f45275e).concatMap(C7626e.f45276e).observeOn(ClusterManager.INSTANCE.getCloudObserveOn()).filter(new C7627f()).map(new C7628g()).observeOn(getObserveOn()).filter(new C7629h()).flatMap(new C7630i());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: r */
    public final Observable<SwitchPriorityClusterAction> m34938r(GetPriorityClusterRequest request) {
        ClusterBean clusterBean = request.getClusterBean();
        if (clusterBean != null) {
            return m34936p(clusterBean);
        }
        Observable<SwitchPriorityClusterAction> just = Observable.just(this);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }
}
