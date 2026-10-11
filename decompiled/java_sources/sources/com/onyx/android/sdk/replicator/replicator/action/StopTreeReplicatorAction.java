package com.onyx.android.sdk.replicator.replicator.action;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.replicator.BaseReplicator;
import com.onyx.android.sdk.replicator.replicator.ReplicatorManager;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00000\u0006H\u0014¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/replicator/action/StopTreeReplicatorAction;", "Lcom/onyx/android/sdk/replicator/replicator/action/BaseReplicatorManagerAction;", "replicatorManager", "Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;", "(Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;)V", BaiduYunConstant.CREATE, "Lio/reactivex/rxjava3/core/Observable;", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class StopTreeReplicatorAction extends BaseReplicatorManagerAction<StopTreeReplicatorAction> {

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.StopTreeReplicatorAction$b */
    /* loaded from: classes8.dex */
    public static final class C7899b<T, R> implements Function {
        public C7899b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final StopTreeReplicatorAction apply(@NotNull BaseReplicator it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StopTreeReplicatorAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StopTreeReplicatorAction(@NotNull ReplicatorManager replicatorManager) {
        super(replicatorManager);
        Intrinsics.checkNotNullParameter(replicatorManager, "replicatorManager");
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<StopTreeReplicatorAction> create() {
        Observable<StopTreeReplicatorAction> map = getReplicatorManager().getNoteTreeReplicator().createBaseObservable().map(new Function() { // from class: com.onyx.android.sdk.replicator.replicator.action.StopTreeReplicatorAction.a
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final BaseReplicator apply(@NotNull BaseReplicator p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return p0.stopReplicator();
            }
        }).map(new C7899b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
