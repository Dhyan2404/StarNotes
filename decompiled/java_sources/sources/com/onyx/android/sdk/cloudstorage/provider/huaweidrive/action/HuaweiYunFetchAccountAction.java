package com.onyx.android.sdk.cloudstorage.provider.huaweidrive.action;

import com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.AccountInfoBean;
import com.onyx.android.sdk.cloudstorage.model.ProviderAccountModel;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.cloudstorage.provider.common.request.FetchAccountInfoRequest;
import com.onyx.android.sdk.cloudstorage.provider.common.utils.ProviderAccountModelUtils;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.HuaweiYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunAccount;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunTokenResponse;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.request.HuaweiYunLoadAccountRequest;
import com.onyx.android.sdk.data.common.exception.CloudNoteException;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\n\u001a\u00020\u0003¢\u0006\u0004\b\u000b\u0010\fJ\b\u0010\u0004\u001a\u00020\u0003H\u0016J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005H\u0014J\b\u0010\u0007\u001a\u00020\u0002H\u0002R\u0014\u0010\n\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/action/HuaweiYunFetchAccountAction;", "Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;", "Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;", "getProvider", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "e", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;", "huaweiYunProvider", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class HuaweiYunFetchAccountAction extends BaseCloudStorageAction<ProviderAccountModel> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final HuaweiYunProvider huaweiYunProvider;

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.huaweidrive.action.HuaweiYunFetchAccountAction$a */
    /* loaded from: classes7.dex */
    public static final class C7311a<T, R> implements Function {
        public C7311a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ProviderAccountModel apply(@NotNull BaseCloudStorageProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HuaweiYunFetchAccountAction.this.m32700l();
        }
    }

    public HuaweiYunFetchAccountAction(@NotNull HuaweiYunProvider huaweiYunProvider) {
        Intrinsics.checkNotNullParameter(huaweiYunProvider, "huaweiYunProvider");
        this.huaweiYunProvider = huaweiYunProvider;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ProviderAccountModel> create() {
        Observable map = createObservable().map(new C7311a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final ProviderAccountModel m32700l() throws Exception {
        final String title = Provider.HUAWEI_YUN.getTitle();
        final HuaweiYunTokenResponse tokenResponse = this.huaweiYunProvider.getTokenResponse();
        ProviderAccountModel execute = new FetchAccountInfoRequest<HuaweiYunTokenResponse>(title, tokenResponse) { // from class: com.onyx.android.sdk.cloudstorage.provider.huaweidrive.action.HuaweiYunFetchAccountAction$fetch$providerAccountModel$1
            @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.FetchAccountInfoRequest
            public void saveAuthAccountInfo(@NotNull ProviderAccountModel accountModel) {
                Intrinsics.checkNotNullParameter(accountModel, "accountModel");
            }

            @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.FetchAccountInfoRequest
            @Nullable
            public ProviderAccountModel fetch(@Nullable HuaweiYunTokenResponse credential) {
                final HuaweiYunProvider huaweiYunProvider;
                HuaweiYunProvider huaweiYunProvider2;
                HuaweiYunAccount.User user;
                huaweiYunProvider = HuaweiYunFetchAccountAction.this.huaweiYunProvider;
                HuaweiYunLoadAccountRequest huaweiYunLoadAccountRequest = new HuaweiYunLoadAccountRequest(huaweiYunProvider) { // from class: com.onyx.android.sdk.cloudstorage.provider.huaweidrive.action.HuaweiYunFetchAccountAction$fetch$providerAccountModel$1$fetch$request$1
                    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.LoadAccountInfoRequest
                    public void saveAccountInfo(@NotNull AccountInfoBean accountInfo) {
                        List<ProviderAccountModel> listOf;
                        Intrinsics.checkNotNullParameter(accountInfo, "accountInfo");
                        ProviderAccountModel providerAccountModel = getProviderAccountModel();
                        if (providerAccountModel != null) {
                            providerAccountModel.setAccountInfoBean(accountInfo);
                            ProviderAccountModelUtils providerAccountModelUtils = ProviderAccountModelUtils.INSTANCE;
                            if (providerAccountModelUtils.queryAccount(providerAccountModel.getProviderName(), providerAccountModel.getAccountId()) == null) {
                                listOf = CollectionsKt__CollectionsJVMKt.listOf(providerAccountModel);
                                providerAccountModelUtils.saveAccount(listOf, getProvider().getTitle());
                            } else {
                                throw new CloudNoteException(1005, providerAccountModel.getProviderName() + " duplicate binding");
                            }
                        }
                    }
                };
                AccountInfoBean execute2 = huaweiYunLoadAccountRequest.execute();
                if (execute2 != null) {
                    String id = execute2.getId();
                    if (!(id == null || id.length() == 0)) {
                        String id2 = execute2.getId();
                        if (id2 == null) {
                            id2 = "";
                        }
                        String str = id2;
                        String json = JSONUtils.INSTANCE.toJson(credential);
                        HuaweiYunAccount account = huaweiYunLoadAccountRequest.getAccount();
                        String permissionId = (account == null || (user = account.getUser()) == null) ? null : user.getPermissionId();
                        String providerName = getProviderName();
                        huaweiYunProvider2 = HuaweiYunFetchAccountAction.this.huaweiYunProvider;
                        return new ProviderAccountModel(str, providerName, execute2, permissionId, json, huaweiYunProvider2.getEnableFeatures());
                    }
                }
                return null;
            }
        }.execute();
        if (execute.getAccountInfoBean() == null) {
            throw new RuntimeException("huaweiyun can't load account from cloud");
        }
        this.huaweiYunProvider.configureProviderAccountModel(execute);
        return execute;
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider, reason: from getter */
    public HuaweiYunProvider getGoogleDriverProvider() {
        return this.huaweiYunProvider;
    }
}
