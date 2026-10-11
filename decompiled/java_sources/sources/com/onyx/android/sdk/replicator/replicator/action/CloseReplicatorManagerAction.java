package com.onyx.android.sdk.replicator.replicator.action;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.replicator.BaseReplicator;
import com.onyx.android.sdk.replicator.replicator.ReplicatorManager;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00000\u0006H\u0014¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/replicator/action/CloseReplicatorManagerAction;", "Lcom/onyx/android/sdk/replicator/replicator/action/BaseReplicatorManagerAction;", "replicatorManager", "Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;", "(Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;)V", BaiduYunConstant.CREATE, "Lio/reactivex/rxjava3/core/Observable;", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class CloseReplicatorManagerAction extends BaseReplicatorManagerAction<CloseReplicatorManagerAction> {

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.CloseReplicatorManagerAction$a */
    /* loaded from: classes8.dex */
    public static final class C7848a<T, R> implements Function {
        public C7848a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CloseTreeReplicatorAction> apply(@NotNull BaseReplicator it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new CloseTreeReplicatorAction(CloseReplicatorManagerAction.this.getReplicatorManager()).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.CloseReplicatorManagerAction$b */
    /* loaded from: classes8.dex */
    public static final class C7849b<T, R> implements Function {
        public C7849b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CloseDocReplicatorAction> apply(@NotNull CloseTreeReplicatorAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new CloseDocReplicatorAction(CloseReplicatorManagerAction.this.getReplicatorManager()).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.CloseReplicatorManagerAction$c */
    /* loaded from: classes8.dex */
    public static final class C7850c<T, R> implements Function {
        public C7850c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ReplicatorManager apply(@NotNull CloseDocReplicatorAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CloseReplicatorManagerAction.this.getReplicatorManager().clearQueue();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.CloseReplicatorManagerAction$d */
    /* loaded from: classes8.dex */
    public static final class C7851d<T, R> implements Function {
        public C7851d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloseReplicatorManagerAction apply(@NotNull ReplicatorManager it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CloseReplicatorManagerAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CloseReplicatorManagerAction(@NotNull ReplicatorManager replicatorManager) {
        super(replicatorManager);
        Intrinsics.checkNotNullParameter(replicatorManager, "replicatorManager");
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<CloseReplicatorManagerAction> create() {
        Observable<CloseReplicatorManagerAction> map = getReplicatorManager().getNoteTreeReplicator().createBaseObservable().flatMap(new C7848a()).flatMap(new C7849b()).observeOn(getReplicatorManager().getObserveOn()).map(new C7850c()).map(new C7851d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
