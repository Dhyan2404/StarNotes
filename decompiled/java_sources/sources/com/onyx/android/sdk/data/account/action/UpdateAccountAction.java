package com.onyx.android.sdk.data.account.action;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.bean.UpdateAccountInfoBean;
import com.onyx.android.sdk.data.account.request.cloud.UpdateAccountRequest;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007H\u0014J\b\u0010\b\u001a\u00020\u0002H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/action/UpdateAccountAction;", "Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;", "", "updateArgs", "Lcom/onyx/android/sdk/data/account/bean/UpdateAccountInfoBean;", "(Lcom/onyx/android/sdk/data/account/bean/UpdateAccountInfoBean;)V", BaiduYunConstant.CREATE, "Lio/reactivex/rxjava3/core/Observable;", "updateAccountInfo", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class UpdateAccountAction extends BaseRxAccountAction<Object> {

    @NotNull
    private final UpdateAccountInfoBean updateArgs;

    /* JADX WARN: Multi-variable type inference failed */
    public UpdateAccountAction() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object updateAccountInfo() {
        new UpdateAccountRequest(this.updateArgs).m72232execute();
        return Unit.INSTANCE;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Object> create() {
        Observable<R> map = createCloudObservable().map(new Function() { // from class: com.onyx.android.sdk.data.account.action.UpdateAccountAction$create$1
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final Object apply(@NotNull AccountDataBundle it2) {
                Object updateAccountInfo;
                Intrinsics.checkNotNullParameter(it2, "it");
                updateAccountInfo = UpdateAccountAction.this.updateAccountInfo();
                return updateAccountInfo;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public /* synthetic */ UpdateAccountAction(UpdateAccountInfoBean updateAccountInfoBean, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new UpdateAccountInfoBean() : updateAccountInfoBean);
    }

    public UpdateAccountAction(@NotNull UpdateAccountInfoBean updateArgs) {
        Intrinsics.checkNotNullParameter(updateArgs, "updateArgs");
        this.updateArgs = updateArgs;
    }
}
