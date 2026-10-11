package com.onyx.android.sdk.data.account.action;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.bean.WechatVerifyArgs;
import com.onyx.android.sdk.data.account.request.cloud.WechatVerifyRequest;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007H\u0014J\b\u0010\b\u001a\u00020\u0002H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/action/WechatVerifyAction;", "Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;", "", "verifyArgs", "Lcom/onyx/android/sdk/data/account/bean/WechatVerifyArgs;", "(Lcom/onyx/android/sdk/data/account/bean/WechatVerifyArgs;)V", BaiduYunConstant.CREATE, "Lio/reactivex/rxjava3/core/Observable;", "verify", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class WechatVerifyAction extends BaseRxAccountAction<Object> {

    @NotNull
    private final WechatVerifyArgs verifyArgs;

    public WechatVerifyAction(@NotNull WechatVerifyArgs verifyArgs) {
        Intrinsics.checkNotNullParameter(verifyArgs, "verifyArgs");
        this.verifyArgs = verifyArgs;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object verify() {
        new WechatVerifyRequest(this.verifyArgs).m72234execute();
        return Unit.INSTANCE;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Object> create() {
        Observable<R> map = createCloudObservable().map(new Function() { // from class: com.onyx.android.sdk.data.account.action.WechatVerifyAction$create$1
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final Object apply(@NotNull AccountDataBundle it2) {
                Object verify;
                Intrinsics.checkNotNullParameter(it2, "it");
                verify = WechatVerifyAction.this.verify();
                return verify;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
