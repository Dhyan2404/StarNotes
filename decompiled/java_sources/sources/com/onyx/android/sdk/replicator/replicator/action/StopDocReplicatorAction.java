package com.onyx.android.sdk.replicator.replicator.action;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.replicator.DocReplicator;
import com.onyx.android.sdk.replicator.replicator.ReplicatorManager;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.util.Collection;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u001c\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/replicator/action/StopDocReplicatorAction;", "Lcom/onyx/android/sdk/replicator/replicator/action/BaseReplicatorManagerAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;", "docReplicators", "l", "Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;", "replicatorManager", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class StopDocReplicatorAction extends BaseReplicatorManagerAction<StopDocReplicatorAction> {

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.StopDocReplicatorAction$a */
    /* loaded from: classes8.dex */
    public static final class C7893a<T, R> implements Function {
        public C7893a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Collection<DocReplicator> apply(@NotNull ReplicatorManager it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StopDocReplicatorAction.this.getReplicatorManager().getOpenDocReplicatorList();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.StopDocReplicatorAction$b */
    /* loaded from: classes8.dex */
    public static final class C7894b<T, R> implements Function {
        public C7894b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends StopDocReplicatorAction> apply(@NotNull Collection<? extends DocReplicator> o) {
            Intrinsics.checkNotNullParameter(o, "o");
            return StopDocReplicatorAction.this.m35765l(o);
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.StopDocReplicatorAction$c */
    /* loaded from: classes8.dex */
    public static final class C7895c<T, R> implements Function {

        /* renamed from: e */
        public static final C7895c<T, R> f46269e = new C7895c<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Unit> apply(@NotNull DocReplicator docReplicator) {
            Intrinsics.checkNotNullParameter(docReplicator, "docReplicator");
            return docReplicator.createObservable().map(new Function() { // from class: com.onyx.android.sdk.replicator.replicator.action.StopDocReplicatorAction.c.a
                /* renamed from: a */
                public final void m35769a(@NotNull DocReplicator p0) {
                    Intrinsics.checkNotNullParameter(p0, "p0");
                    p0.stop();
                }

                @Override // io.reactivex.rxjava3.functions.Function
                public /* bridge */ /* synthetic */ Object apply(Object obj) {
                    m35769a((DocReplicator) obj);
                    return Unit.INSTANCE;
                }
            });
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.StopDocReplicatorAction$d */
    /* loaded from: classes8.dex */
    public static final class C7896d<T, R> implements Function {
        public C7896d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ReplicatorManager apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StopDocReplicatorAction.this.getReplicatorManager().clearSyncReplicators();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.StopDocReplicatorAction$e */
    /* loaded from: classes8.dex */
    public static final class C7897e<T, R> implements Function {
        public C7897e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final StopDocReplicatorAction apply(@NotNull ReplicatorManager it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StopDocReplicatorAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StopDocReplicatorAction(@NotNull ReplicatorManager replicatorManager) {
        super(replicatorManager);
        Intrinsics.checkNotNullParameter(replicatorManager, "replicatorManager");
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<StopDocReplicatorAction> create() {
        Observable<StopDocReplicatorAction> concatMap = createObservable().map(new C7893a()).concatMap(new C7894b());
        Intrinsics.checkNotNullExpressionValue(concatMap, "concatMap(...)");
        return concatMap;
    }

    /* renamed from: l */
    public final Observable<StopDocReplicatorAction> m35765l(Collection<? extends DocReplicator> docReplicators) {
        if (docReplicators.isEmpty()) {
            Observable<StopDocReplicatorAction> just = Observable.just(this);
            Intrinsics.checkNotNull(just);
            return just;
        }
        Observable<StopDocReplicatorAction> map = Observable.fromIterable(docReplicators).concatMap(C7895c.f46269e).takeLast(1).observeOn(getReplicatorManager().getObserveOn()).map(new C7896d()).map(new C7897e());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
