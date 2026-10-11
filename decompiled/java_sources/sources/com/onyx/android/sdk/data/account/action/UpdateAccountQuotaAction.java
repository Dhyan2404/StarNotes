package com.onyx.android.sdk.data.account.action;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.bean.AccountQuota;
import com.onyx.android.sdk.data.account.model.OnyxAccountModel;
import com.onyx.android.sdk.data.couchbase.CouchDBManager;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00000\u0006H\u0014J\b\u0010\u0007\u001a\u00020\u0000H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/action/UpdateAccountQuotaAction;", "Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;", "accountQuota", "Lcom/onyx/android/sdk/data/account/bean/AccountQuota;", "(Lcom/onyx/android/sdk/data/account/bean/AccountQuota;)V", BaiduYunConstant.CREATE, "Lio/reactivex/rxjava3/core/Observable;", "updateAccountInfo", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class UpdateAccountQuotaAction extends BaseRxAccountAction<UpdateAccountQuotaAction> {

    @NotNull
    private final AccountQuota accountQuota;

    public UpdateAccountQuotaAction(@NotNull AccountQuota accountQuota) {
        Intrinsics.checkNotNullParameter(accountQuota, "accountQuota");
        this.accountQuota = accountQuota;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final UpdateAccountQuotaAction updateAccountInfo() {
        CouchDBManager couchDBManager = CouchDBManager.INSTANCE;
        OnyxAccountModel currentAccount = couchDBManager.getOnyxAccountProvider().getCurrentAccount();
        currentAccount.setAccountQuota(this.accountQuota);
        couchDBManager.getOnyxAccountProvider().saveAccount(currentAccount);
        return this;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<UpdateAccountQuotaAction> create() {
        Observable map = createCloudObservable().map(new Function() { // from class: com.onyx.android.sdk.data.account.action.UpdateAccountQuotaAction$create$1
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final UpdateAccountQuotaAction apply(@NotNull AccountDataBundle it2) {
                UpdateAccountQuotaAction updateAccountInfo;
                Intrinsics.checkNotNullParameter(it2, "it");
                updateAccountInfo = UpdateAccountQuotaAction.this.updateAccountInfo();
                return updateAccountInfo;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
