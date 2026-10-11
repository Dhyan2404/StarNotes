package com.onyx.android.sdk.replicator.replicator.action;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.bean.ReplicatorInfo;
import com.onyx.android.sdk.replicator.replicator.ReplicatorManager;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00000\bH\u0014R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0016\u0010\u0006\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/replicator/action/CloseDocReplicatorAndScheduleAction;", "Lcom/onyx/android/sdk/replicator/replicator/action/BaseReplicatorManagerAction;", "Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;", "replicatorInfo", "setReplicatorInfo", "", FirebaseAnalytics.Param.SUCCESS, "setSuccess", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, C6997f.f39671c, "Lcom/onyx/android/sdk/replicator/bean/ReplicatorInfo;", C6998g.f39679a, Constants.HASIDCALL_INDEX_SIG, "Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;", "replicatorManager", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class CloseDocReplicatorAndScheduleAction extends BaseReplicatorManagerAction<CloseDocReplicatorAndScheduleAction> {

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public ReplicatorInfo replicatorInfo;

    /* renamed from: g, reason: from kotlin metadata */
    public boolean success;

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.CloseDocReplicatorAndScheduleAction$a */
    /* loaded from: classes8.dex */
    public static final class C7838a<T, R> implements Function {
        public C7838a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CloseFinishedDocReplicatorAction> apply(@NotNull ReplicatorManager it2) {
            List<ReplicatorInfo> listOf;
            Intrinsics.checkNotNullParameter(it2, "it");
            CloseFinishedDocReplicatorAction closeFinishedDocReplicatorAction = new CloseFinishedDocReplicatorAction(CloseDocReplicatorAndScheduleAction.this.getReplicatorManager());
            ReplicatorInfo replicatorInfo = CloseDocReplicatorAndScheduleAction.this.replicatorInfo;
            Intrinsics.checkNotNull(replicatorInfo);
            listOf = CollectionsKt__CollectionsJVMKt.listOf(replicatorInfo);
            return closeFinishedDocReplicatorAction.setReplicatorInfoList(listOf).setSuccess(CloseDocReplicatorAndScheduleAction.this.success).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.CloseDocReplicatorAndScheduleAction$b */
    /* loaded from: classes8.dex */
    public static final class C7839b<T, R> implements Function {
        public C7839b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ScheduleNextDocReplicatorAction> apply(@NotNull CloseFinishedDocReplicatorAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new ScheduleNextDocReplicatorAction(CloseDocReplicatorAndScheduleAction.this.getReplicatorManager()).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.CloseDocReplicatorAndScheduleAction$c */
    /* loaded from: classes8.dex */
    public static final class C7840c<T, R> implements Function {
        public C7840c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloseDocReplicatorAndScheduleAction apply(@NotNull ScheduleNextDocReplicatorAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CloseDocReplicatorAndScheduleAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CloseDocReplicatorAndScheduleAction(@NotNull ReplicatorManager replicatorManager) {
        super(replicatorManager);
        Intrinsics.checkNotNullParameter(replicatorManager, "replicatorManager");
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<CloseDocReplicatorAndScheduleAction> create() {
        Observable<CloseDocReplicatorAndScheduleAction> map = createObservable().flatMap(new C7838a()).flatMap(new C7839b()).map(new C7840c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final CloseDocReplicatorAndScheduleAction setReplicatorInfo(@NotNull ReplicatorInfo replicatorInfo) {
        Intrinsics.checkNotNullParameter(replicatorInfo, "replicatorInfo");
        this.replicatorInfo = replicatorInfo;
        return this;
    }

    @NotNull
    public final CloseDocReplicatorAndScheduleAction setSuccess(boolean success) {
        this.success = success;
        return this;
    }
}
