package com.onyx.android.sdk.data.account.action;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.bean.HuaweiVerifyArgs;
import com.onyx.android.sdk.data.account.request.cloud.HuaweiBindRequest;
import com.onyx.android.sdk.data.account.request.cloud.HuaweiLogoffRequest;
import com.onyx.android.sdk.data.account.request.cloud.HuaweiSecurityVerifyRequest;
import com.onyx.android.sdk.data.account.request.cloud.HuaweiUnbindRequest;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007H\u0014J\b\u0010\b\u001a\u00020\tH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/action/HuaweiVerifyAction;", "Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;", "", "verifyArgs", "Lcom/onyx/android/sdk/data/account/bean/HuaweiVerifyArgs;", "(Lcom/onyx/android/sdk/data/account/bean/HuaweiVerifyArgs;)V", BaiduYunConstant.CREATE, "Lio/reactivex/rxjava3/core/Observable;", "startHuaweiVerify", "", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class HuaweiVerifyAction extends BaseRxAccountAction<Object> {

    @NotNull
    private final HuaweiVerifyArgs verifyArgs;

    public HuaweiVerifyAction(@NotNull HuaweiVerifyArgs verifyArgs) {
        Intrinsics.checkNotNullParameter(verifyArgs, "verifyArgs");
        this.verifyArgs = verifyArgs;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startHuaweiVerify() {
        String action = this.verifyArgs.getAction();
        if (action != null) {
            switch (action.hashCode()) {
                case -840745386:
                    if (action.equals("unbind")) {
                        new HuaweiUnbindRequest(this.verifyArgs).m72211execute();
                        return;
                    }
                    return;
                case 3023933:
                    if (action.equals("bind")) {
                        new HuaweiBindRequest(this.verifyArgs).m72208execute();
                        return;
                    }
                    return;
                case 949122880:
                    if (action.equals("security")) {
                        String code = this.verifyArgs.getCode();
                        if (code == null) {
                            code = "";
                        }
                        new HuaweiSecurityVerifyRequest(code).m72210execute();
                        return;
                    }
                    return;
                case 1557372922:
                    if (action.equals("destroy")) {
                        new HuaweiLogoffRequest(this.verifyArgs).m72209execute();
                        AccountDataBundle.INSTANCE.logoffAccount();
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Object> create() {
        Observable<R> map = createCloudObservable().map(new Function() { // from class: com.onyx.android.sdk.data.account.action.HuaweiVerifyAction$create$1
            @Override // io.reactivex.rxjava3.functions.Function
            public /* bridge */ /* synthetic */ Object apply(Object obj) {
                apply((AccountDataBundle) obj);
                return Unit.INSTANCE;
            }

            public final void apply(@NotNull AccountDataBundle it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                HuaweiVerifyAction.this.startHuaweiVerify();
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
