package com.onyx.android.sdk.replicator.replicator.action;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.note.action.CloseNoteReplicatorAction;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0004H\u0014¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/replicator/action/CloseAllReplicatorsActon;", "Lcom/onyx/android/sdk/replicator/replicator/action/BaseSyncAction;", "()V", BaiduYunConstant.CREATE, "Lio/reactivex/rxjava3/core/Observable;", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class CloseAllReplicatorsActon extends BaseSyncAction<CloseAllReplicatorsActon> {

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.CloseAllReplicatorsActon$a */
    /* loaded from: classes8.dex */
    public static final class C7831a<T, R> implements Function {

        /* renamed from: e */
        public static final C7831a<T, R> f46191e = new C7831a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CloseNoteReplicatorAction> apply(@NotNull CloseAllReplicatorsActon it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new CloseNoteReplicatorAction().build();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.CloseAllReplicatorsActon$b */
    /* loaded from: classes8.dex */
    public static final class C7832b<T, R> implements Function {
        public C7832b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloseAllReplicatorsActon apply(@NotNull CloseNoteReplicatorAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CloseAllReplicatorsActon.this;
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<CloseAllReplicatorsActon> create() {
        Observable<CloseAllReplicatorsActon> map = Observable.just(this).flatMap(C7831a.f46191e).map(new C7832b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
