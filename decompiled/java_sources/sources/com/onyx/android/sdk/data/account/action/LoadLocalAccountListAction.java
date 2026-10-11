package com.onyx.android.sdk.data.account.action;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.model.OnyxAccountModel;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.CouchDBManager;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0006H\u0014J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/action/LoadLocalAccountListAction;", "Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;", "", "Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;", "()V", BaiduYunConstant.CREATE, "Lio/reactivex/rxjava3/core/Observable;", "loadLocalAccountList", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class LoadLocalAccountListAction extends BaseRxAccountAction<List<? extends OnyxAccountModel>> {
    /* JADX INFO: Access modifiers changed from: private */
    public final List<OnyxAccountModel> loadLocalAccountList() {
        return CouchDBManager.INSTANCE.getOnyxAccountProvider().loadAccountList(new CBQueryArgs());
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<OnyxAccountModel>> create() {
        Observable map = AccountDataBundle.INSTANCE.createDataObservable().map(new Function() { // from class: com.onyx.android.sdk.data.account.action.LoadLocalAccountListAction$create$1
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final List<OnyxAccountModel> apply(@NotNull AccountDataBundle it2) {
                List<OnyxAccountModel> loadLocalAccountList;
                Intrinsics.checkNotNullParameter(it2, "it");
                loadLocalAccountList = LoadLocalAccountListAction.this.loadLocalAccountList();
                return loadLocalAccountList;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
