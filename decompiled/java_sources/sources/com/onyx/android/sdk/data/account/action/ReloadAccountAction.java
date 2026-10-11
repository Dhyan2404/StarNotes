package com.onyx.android.sdk.data.account.action;

import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.action.ReloadAccountAction;
import com.onyx.android.sdk.data.account.request.cloud.ReloadAccountRequest;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005H\u0014¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/action/ReloadAccountAction;", "Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;", "", "()V", BaiduYunConstant.CREATE, "Lio/reactivex/rxjava3/core/Observable;", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class ReloadAccountAction extends BaseRxAccountAction<Object> {
    /* JADX INFO: Access modifiers changed from: private */
    public static final void create$lambda$0(boolean z) {
        new ReloadAccountRequest().execute();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Object> create() {
        Observable<R> map = createCloudObservable().map(new Function() { // from class: com.onyx.android.sdk.data.account.action.ReloadAccountAction$create$1
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final Boolean apply(@NotNull AccountDataBundle it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(AccountDataBundle.INSTANCE.isAlreadyLogin());
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        Observable<R> map2 = RxjavaKt.doOnNextIfTrue(map, new Consumer() { // from class: com.sunia.HTREnginev2.tjl
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                ReloadAccountAction.create$lambda$0(((Boolean) obj).booleanValue());
            }
        }).map(new Function() { // from class: com.onyx.android.sdk.data.account.action.ReloadAccountAction$create$3
            @Override // io.reactivex.rxjava3.functions.Function
            public /* bridge */ /* synthetic */ Object apply(Object obj) {
                return apply(((Boolean) obj).booleanValue());
            }

            @NotNull
            public final Object apply(boolean z) {
                return ReloadAccountAction.this;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map2, "map(...)");
        return map2;
    }
}
