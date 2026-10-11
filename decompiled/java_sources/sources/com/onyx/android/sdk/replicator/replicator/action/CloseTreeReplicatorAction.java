package com.onyx.android.sdk.replicator.replicator.action;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.utils.ProviderInfoUtils;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.replicator.BaseReplicator;
import com.onyx.android.sdk.replicator.replicator.ReplicatorManager;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/replicator/action/CloseTreeReplicatorAction;", "Lcom/onyx/android/sdk/replicator/replicator/action/BaseReplicatorManagerAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;", "replicator", "l", "Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;", "replicatorManager", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class CloseTreeReplicatorAction extends BaseReplicatorManagerAction<CloseTreeReplicatorAction> {

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.CloseTreeReplicatorAction$a */
    /* loaded from: classes8.dex */
    public static final class C7852a<T, R> implements Function {
        public C7852a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final BaseReplicator apply(@NotNull BaseReplicator it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CloseTreeReplicatorAction.this.m35698l(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.CloseTreeReplicatorAction$c */
    /* loaded from: classes8.dex */
    public static final class C7854c<T, R> implements Function {
        public C7854c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloseTreeReplicatorAction apply(@NotNull BaseReplicator it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CloseTreeReplicatorAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CloseTreeReplicatorAction(@NotNull ReplicatorManager replicatorManager) {
        super(replicatorManager);
        Intrinsics.checkNotNullParameter(replicatorManager, "replicatorManager");
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<CloseTreeReplicatorAction> create() {
        Observable<CloseTreeReplicatorAction> map = getReplicatorManager().getNoteTreeReplicator().createBaseObservable().map(new C7852a()).map(new Function() { // from class: com.onyx.android.sdk.replicator.replicator.action.CloseTreeReplicatorAction.b
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final BaseReplicator apply(@NotNull BaseReplicator p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return p0.closeReplicator();
            }
        }).map(new C7854c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final BaseReplicator m35698l(BaseReplicator replicator) {
        KSyncBundle.INSTANCE.getDbProviderBundle().removeNoteProvider(ProviderInfoUtils.INSTANCE.getUserNoteTreeProviderInfo(replicator.getCbUserId()));
        return replicator;
    }
}
