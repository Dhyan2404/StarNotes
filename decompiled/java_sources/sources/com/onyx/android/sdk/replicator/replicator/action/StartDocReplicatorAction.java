package com.onyx.android.sdk.replicator.replicator.action;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.replicator.DocReplicator;
import com.onyx.android.sdk.replicator.replicator.ReplicatorManager;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\n\u0010\u000bJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014R\u0016\u0010\u0007\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/replicator/action/StartDocReplicatorAction;", "Lcom/onyx/android/sdk/replicator/replicator/action/BaseReplicatorManagerAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;", C6997f.f39671c, "Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;", "docReplicator", "Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;", "replicatorManager", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class StartDocReplicatorAction extends BaseReplicatorManagerAction<StartDocReplicatorAction> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public DocReplicator docReplicator;

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.StartDocReplicatorAction$b */
    /* loaded from: classes8.dex */
    public static final class C7886b<T, R> implements Function {
        public C7886b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final StartDocReplicatorAction apply(@NotNull DocReplicator it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StartDocReplicatorAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StartDocReplicatorAction(@NotNull ReplicatorManager replicatorManager, @NotNull DocReplicator docReplicator) {
        super(replicatorManager);
        Intrinsics.checkNotNullParameter(replicatorManager, "replicatorManager");
        Intrinsics.checkNotNullParameter(docReplicator, "docReplicator");
        this.docReplicator = docReplicator;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<StartDocReplicatorAction> create() {
        Observable<StartDocReplicatorAction> map = this.docReplicator.createObservable().map(new Function() { // from class: com.onyx.android.sdk.replicator.replicator.action.StartDocReplicatorAction.a
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final DocReplicator apply(@NotNull DocReplicator p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return p0.start();
            }
        }).map(new C7886b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
