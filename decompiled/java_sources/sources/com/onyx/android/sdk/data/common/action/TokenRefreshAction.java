package com.onyx.android.sdk.data.common.action;

import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.cluster.ClusterManager;
import com.onyx.android.sdk.data.common.request.TokenRefreshRequest;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005H\u0014¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/action/TokenRefreshAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "", "()V", BaiduYunConstant.CREATE, "Lio/reactivex/rxjava3/core/Observable;", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class TokenRefreshAction extends RxBaseAction<String> {
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<String> create() {
        Observable<String> map = Observable.just(this).flatMap(new Function() { // from class: com.onyx.android.sdk.data.common.action.TokenRefreshAction$create$1
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final ObservableSource<? extends AccountDataBundle> apply(@NotNull TokenRefreshAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return AccountDataBundle.INSTANCE.loadOnyxAccountObservable();
            }
        }).observeOn(ClusterManager.INSTANCE.getCloudObserveOn()).map(new Function() { // from class: com.onyx.android.sdk.data.common.action.TokenRefreshAction$create$2
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final String apply(@NotNull AccountDataBundle it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new TokenRefreshRequest().execute();
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
