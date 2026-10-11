package com.onyx.android.sdk.data.account.action;

import com.couchbase.lite.internal.core.C4Replicator;
import com.onyx.android.sdk.base.common.error.OnyxException;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.model.OnyxAccountModel;
import com.onyx.android.sdk.data.common.error.ErrorCode;
import com.onyx.android.sdk.data.common.error.ErrorType;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0002J\u000e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\tH\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/action/CheckCurrentAccountAction;", "Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;", "", C4Replicator.REPLICATOR_AUTH_USER_NAME, "", "(Ljava/lang/String;)V", "checkIsCurrentAccount", "", BaiduYunConstant.CREATE, "Lio/reactivex/rxjava3/core/Observable;", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class CheckCurrentAccountAction extends BaseRxAccountAction<Object> {

    @NotNull
    private final String username;

    public CheckCurrentAccountAction(@NotNull String username) {
        Intrinsics.checkNotNullParameter(username, "username");
        this.username = username;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void checkIsCurrentAccount() {
        OnyxAccountModel onyxAccount = AccountDataBundle.INSTANCE.getOnyxAccount();
        if (Intrinsics.areEqual(this.username, onyxAccount != null ? onyxAccount.getPhone() : null)) {
            return;
        }
        if (!Intrinsics.areEqual(this.username, onyxAccount != null ? onyxAccount.getEmail() : null)) {
            throw OnyxException.INSTANCE.m31893of(ErrorType.VERIFY_FAIL, ErrorType.VERIFY_FAIL, ErrorCode.ACCOUNT_NOT_CONSISTENT);
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Object> create() {
        Observable<Object> map = Observable.just(Unit.INSTANCE).doOnNext(new Consumer() { // from class: com.onyx.android.sdk.data.account.action.CheckCurrentAccountAction$create$1
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(@NotNull Unit it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                CheckCurrentAccountAction.this.checkIsCurrentAccount();
            }
        }).map(new Function() { // from class: com.onyx.android.sdk.data.account.action.CheckCurrentAccountAction$create$2
            public final void apply(@NotNull Unit it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
            }

            @Override // io.reactivex.rxjava3.functions.Function
            public /* bridge */ /* synthetic */ Object apply(Object obj) {
                apply((Unit) obj);
                return Unit.INSTANCE;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
