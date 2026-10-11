package com.onyx.android.sdk.replicator.replicator.action;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.replicator.DocReplicator;
import com.onyx.android.sdk.replicator.replicator.ReplicatorManager;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.util.Collection;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\f\u001a\u00020\u0004¢\u0006\u0004\b\r\u0010\u000eJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u001c\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\u001c\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAction;", "Lcom/onyx/android/sdk/replicator/replicator/action/BaseReplicatorManagerAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;", "manager", "", "Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;", GoogleApiAvailabilityLight.f29016b, "replicators", "l", "m", "replicatorManager", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class CloseDocReplicatorAction extends BaseReplicatorManagerAction<CloseDocReplicatorAction> {

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.CloseDocReplicatorAction$a */
    /* loaded from: classes8.dex */
    public static final class C7833a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ Collection<DocReplicator> f46193e;

        /* JADX WARN: Multi-variable type inference failed */
        public C7833a(Collection<? extends DocReplicator> collection) {
            this.f46193e = collection;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends DocReplicator> apply(@NotNull ReplicatorManager it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Observable.fromIterable(this.f46193e);
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.CloseDocReplicatorAction$b */
    /* loaded from: classes8.dex */
    public static final class C7834b<T, R> implements Function {

        /* renamed from: e */
        public static final C7834b<T, R> f46194e = new C7834b<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends DocReplicator> apply(@NotNull DocReplicator o) {
            Intrinsics.checkNotNullParameter(o, "o");
            return o.createObservable().map(new Function() { // from class: com.onyx.android.sdk.replicator.replicator.action.CloseDocReplicatorAction.b.a
                @Override // io.reactivex.rxjava3.functions.Function
                @NotNull
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final DocReplicator apply(@NotNull DocReplicator p0) {
                    Intrinsics.checkNotNullParameter(p0, "p0");
                    return p0.closeReplicator();
                }
            });
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.CloseDocReplicatorAction$c */
    /* loaded from: classes8.dex */
    public static final class C7835c<T, R> implements Function {
        public C7835c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloseDocReplicatorAction apply(@NotNull DocReplicator it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CloseDocReplicatorAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.CloseDocReplicatorAction$d */
    /* loaded from: classes8.dex */
    public static final class C7836d<T, R> implements Function {
        public C7836d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Collection<DocReplicator> apply(@NotNull ReplicatorManager it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CloseDocReplicatorAction closeDocReplicatorAction = CloseDocReplicatorAction.this;
            return closeDocReplicatorAction.m35674n(closeDocReplicatorAction.getReplicatorManager());
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.CloseDocReplicatorAction$e */
    /* loaded from: classes8.dex */
    public static final class C7837e<T, R> implements Function {
        public C7837e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CloseDocReplicatorAction> apply(@NotNull Collection<? extends DocReplicator> o) {
            Intrinsics.checkNotNullParameter(o, "o");
            return CloseDocReplicatorAction.this.m35672l(o);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CloseDocReplicatorAction(@NotNull ReplicatorManager replicatorManager) {
        super(replicatorManager);
        Intrinsics.checkNotNullParameter(replicatorManager, "replicatorManager");
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<CloseDocReplicatorAction> create() {
        Observable<CloseDocReplicatorAction> flatMap = getReplicatorManager().createObservable().map(new C7836d()).flatMap(new C7837e());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: l */
    public final Observable<CloseDocReplicatorAction> m35672l(Collection<? extends DocReplicator> replicators) {
        if (!replicators.isEmpty()) {
            return m35673m(replicators);
        }
        Observable<CloseDocReplicatorAction> just = Observable.just(this);
        Intrinsics.checkNotNull(just);
        return just;
    }

    /* renamed from: m */
    public final Observable<CloseDocReplicatorAction> m35673m(Collection<? extends DocReplicator> replicators) {
        Observable<CloseDocReplicatorAction> map = getReplicatorManager().createObservable().concatMap(new C7833a(replicators)).concatMap(C7834b.f46194e).takeLast(1).map(new C7835c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: n */
    public final Collection<DocReplicator> m35674n(ReplicatorManager manager) throws Exception {
        return manager.getOpenDocReplicatorList();
    }
}
