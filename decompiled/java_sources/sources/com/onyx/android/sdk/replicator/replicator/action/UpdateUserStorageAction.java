package com.onyx.android.sdk.replicator.replicator.action;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.utils.NetworkUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.bean.UserStorageBean;
import com.onyx.android.sdk.data.account.request.cloud.UpdateUserStorageRequest;
import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007¢\u0006\u0004\b\u0012\u0010\u0013J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00000\u0005H\u0014J\b\u0010\u0007\u001a\u00020\u0000H\u0002R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010\tR$\u0010\u0011\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/replicator/action/UpdateUserStorageAction;", "Lcom/onyx/android/sdk/replicator/replicator/action/BaseSyncAction;", "", "recalculate", "setRecalculate", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", C6997f.f39671c, Constants.HASIDCALL_INDEX_SIG, "Lcom/onyx/android/sdk/data/account/bean/UserStorageBean;", C6998g.f39679a, "Lcom/onyx/android/sdk/data/account/bean/UserStorageBean;", "getUserStorageBean", "()Lcom/onyx/android/sdk/data/account/bean/UserStorageBean;", "setUserStorageBean", "(Lcom/onyx/android/sdk/data/account/bean/UserStorageBean;)V", "userStorageBean", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class UpdateUserStorageAction extends BaseSyncAction<UpdateUserStorageAction> {

    /* renamed from: f, reason: from kotlin metadata */
    public boolean recalculate;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public UserStorageBean userStorageBean;

    /* renamed from: com.onyx.android.sdk.replicator.replicator.action.UpdateUserStorageAction$a */
    /* loaded from: classes8.dex */
    public static final class C7900a<T, R> implements Function {
        public C7900a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UpdateUserStorageAction apply(@NotNull ClusterInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdateUserStorageAction.this.m35774l();
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<UpdateUserStorageAction> create() {
        Observable map = updateClusterInfoObservable().observeOn(KSyncBundle.INSTANCE.getNetworkScheduler()).map(new C7900a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Nullable
    public final UserStorageBean getUserStorageBean() {
        return this.userStorageBean;
    }

    /* renamed from: l */
    public final UpdateUserStorageAction m35774l() {
        if (!NetworkUtils.INSTANCE.isWifiConnected(ResManager.INSTANCE.getAppContext())) {
            return this;
        }
        UpdateUserStorageRequest recalculate = new UpdateUserStorageRequest().setRecalculate(this.recalculate);
        recalculate.setClusterInfo(getClusterInfo());
        recalculate.execute();
        this.userStorageBean = recalculate.getUserStorageBean();
        return this;
    }

    @NotNull
    public final UpdateUserStorageAction setRecalculate(boolean recalculate) {
        this.recalculate = recalculate;
        return this;
    }

    public final void setUserStorageBean(@Nullable UserStorageBean userStorageBean) {
        this.userStorageBean = userStorageBean;
    }
}
