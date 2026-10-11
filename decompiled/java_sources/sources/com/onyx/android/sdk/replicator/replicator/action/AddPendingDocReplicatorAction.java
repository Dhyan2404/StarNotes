package com.onyx.android.sdk.replicator.replicator.action;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.bean.StartReplicatorBean;
import com.onyx.android.sdk.replicator.replicator.ReplicatorManager;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\n\u0010\u000bJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/replicator/action/AddPendingDocReplicatorAction;", "Lcom/onyx/android/sdk/replicator/replicator/action/BaseReplicatorManagerAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;", C6997f.f39671c, "Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;", "startReplicatorBean", "Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;", "replicatorManager", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class AddPendingDocReplicatorAction extends BaseReplicatorManagerAction<AddPendingDocReplicatorAction> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final StartReplicatorBean startReplicatorBean;

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.AddPendingDocReplicatorAction$a */
    /* loaded from: classes8.dex */
    public static final class C7827a<T, R> implements Function {
        public C7827a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ReplicatorManager apply(@NotNull ReplicatorManager replicatorManager) {
            Intrinsics.checkNotNullParameter(replicatorManager, "replicatorManager");
            return replicatorManager.addPendingDoc(AddPendingDocReplicatorAction.this.startReplicatorBean);
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.AddPendingDocReplicatorAction$c */
    /* loaded from: classes8.dex */
    public static final class C7829c<T, R> implements Function {
        public C7829c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AddPendingDocReplicatorAction apply(@NotNull ReplicatorManager it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AddPendingDocReplicatorAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddPendingDocReplicatorAction(@NotNull ReplicatorManager replicatorManager, @NotNull StartReplicatorBean startReplicatorBean) {
        super(replicatorManager);
        Intrinsics.checkNotNullParameter(replicatorManager, "replicatorManager");
        Intrinsics.checkNotNullParameter(startReplicatorBean, "startReplicatorBean");
        this.startReplicatorBean = startReplicatorBean;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<AddPendingDocReplicatorAction> create() {
        Observable<AddPendingDocReplicatorAction> map = createObservable().map(new C7827a()).map(new Function() { // from class: com.onyx.android.sdk.replicator.replicator.action.AddPendingDocReplicatorAction.b
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final ReplicatorManager apply(@NotNull ReplicatorManager p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return p0.postProgress();
            }
        }).map(new C7829c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
