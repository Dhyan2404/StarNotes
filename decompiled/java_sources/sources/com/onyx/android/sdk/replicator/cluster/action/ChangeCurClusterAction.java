package com.onyx.android.sdk.replicator.cluster.action;

import com.blankj.utilcode.util.LogUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.cluster.ClusterManager;
import com.onyx.android.sdk.data.cluster.action.BaseClusterAction;
import com.onyx.android.sdk.data.cluster.action.SaveClusterListAction;
import com.onyx.android.sdk.replicator.account.action.LogoutOnyxAccountAction;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\b\u001a\u00020\u0005¢\u0006\u0004\b\t\u0010\nJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0004\u001a\u00020\u0000H\u0002R\u0014\u0010\b\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/cluster/action/ChangeCurClusterAction;", "Lcom/onyx/android/sdk/data/cluster/action/BaseClusterAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "", "e", Constants.STRING_SIG, "clusterId", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ChangeCurClusterAction extends BaseClusterAction<ChangeCurClusterAction> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final String clusterId;

    /* renamed from: com.onyx.android.sdk.replicator.cluster.action.ChangeCurClusterAction$a */
    /* loaded from: classes8.dex */
    public static final class C7618a<T, R> implements Function {
        public C7618a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ChangeCurClusterAction apply(@NotNull ClusterManager it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ChangeCurClusterAction.this.m34927l();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.cluster.action.ChangeCurClusterAction$b */
    /* loaded from: classes8.dex */
    public static final class C7619b<T, R> implements Function {

        /* renamed from: e */
        public static final C7619b<T, R> f45266e = new C7619b<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SaveClusterListAction> apply(@NotNull ChangeCurClusterAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new SaveClusterListAction().build();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.cluster.action.ChangeCurClusterAction$c */
    /* loaded from: classes8.dex */
    public static final class C7620c<T, R> implements Function {

        /* renamed from: e */
        public static final C7620c<T, R> f45267e = new C7620c<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends LogoutOnyxAccountAction> apply(@NotNull SaveClusterListAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new LogoutOnyxAccountAction().setLogoutReason(2).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.cluster.action.ChangeCurClusterAction$d */
    /* loaded from: classes8.dex */
    public static final class C7621d<T, R> implements Function {
        public C7621d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ChangeCurClusterAction apply(@NotNull LogoutOnyxAccountAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ChangeCurClusterAction.this;
        }
    }

    public ChangeCurClusterAction(@NotNull String clusterId) {
        Intrinsics.checkNotNullParameter(clusterId, "clusterId");
        this.clusterId = clusterId;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ChangeCurClusterAction> create() {
        if (StringUtils.equals(this.clusterId, ClusterManager.INSTANCE.getCurClusterId())) {
            Observable<ChangeCurClusterAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<ChangeCurClusterAction> map = createObservable().map(new C7618a()).flatMap(C7619b.f45266e).observeOn(AndroidSchedulers.mainThread()).flatMap(C7620c.f45267e).map(new C7621d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final ChangeCurClusterAction m34927l() {
        ClusterManager.INSTANCE.getClusterList().setCurClusterId(this.clusterId);
        LogUtils.file(ChangeCurClusterAction.class.getSimpleName(), "change clusterId:" + this.clusterId);
        return this;
    }
}
