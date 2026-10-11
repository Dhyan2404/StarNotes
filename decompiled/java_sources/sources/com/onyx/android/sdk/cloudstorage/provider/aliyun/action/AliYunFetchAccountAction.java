package com.onyx.android.sdk.cloudstorage.provider.aliyun.action;

import com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.AccountInfoBean;
import com.onyx.android.sdk.cloudstorage.model.ProviderAccountModel;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.AliYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunAccount;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunTokenResponse;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.request.AliYunLoadAccountRequest;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.cloudstorage.provider.common.request.FetchAccountInfoRequest;
import com.onyx.android.sdk.cloudstorage.provider.common.utils.ProviderAccountModelUtils;
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

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\f\u0010\rJ\b\u0010\u0004\u001a\u00020\u0003H\u0016J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005H\u0014J\b\u0010\u0007\u001a\u00020\u0002H\u0002R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunFetchAccountAction;", "Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;", "Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", "getProvider", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;", "e", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;", "aliYunProvider", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class AliYunFetchAccountAction extends BaseCloudStorageAction<ProviderAccountModel> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final AliYunProvider aliYunProvider;

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.aliyun.action.AliYunFetchAccountAction$a */
    /* loaded from: classes7.dex */
    public static final class C7186a<T, R> implements Function {
        public C7186a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ProviderAccountModel apply(@NotNull BaseCloudStorageProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AliYunFetchAccountAction.this.m32327l();
        }
    }

    public AliYunFetchAccountAction(@NotNull AliYunProvider aliYunProvider) {
        Intrinsics.checkNotNullParameter(aliYunProvider, "aliYunProvider");
        this.aliYunProvider = aliYunProvider;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ProviderAccountModel> create() {
        Observable map = createObservable().map(new C7186a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Override // com.onyx.android.sdk.cloudstorage.common.base.BaseCloudStorageAction
    @NotNull
    /* renamed from: getProvider */
    public BaseCloudStorageProvider getGoogleDriverProvider() {
        return this.aliYunProvider;
    }

    /* renamed from: l */
    public final ProviderAccountModel m32327l() throws Exception {
        final String title = Provider.ALI_YUN.getTitle();
        final AliYunTokenResponse tokenResponse = this.aliYunProvider.getTokenResponse();
        ProviderAccountModel execute = new FetchAccountInfoRequest<AliYunTokenResponse>(title, tokenResponse) { // from class: com.onyx.android.sdk.cloudstorage.provider.aliyun.action.AliYunFetchAccountAction$fetch$providerAccountModel$1
            @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.FetchAccountInfoRequest
            public void saveAuthAccountInfo(@NotNull ProviderAccountModel accountModel) {
                Intrinsics.checkNotNullParameter(accountModel, "accountModel");
            }

            @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.FetchAccountInfoRequest
            @Nullable
            public ProviderAccountModel fetch(@Nullable AliYunTokenResponse credential) {
                final AliYunProvider aliYunProvider;
                AliYunProvider aliYunProvider2;
                aliYunProvider = AliYunFetchAccountAction.this.aliYunProvider;
                AliYunLoadAccountRequest aliYunLoadAccountRequest = new AliYunLoadAccountRequest(aliYunProvider) { // from class: com.onyx.android.sdk.cloudstorage.provider.aliyun.action.AliYunFetchAccountAction$fetch$providerAccountModel$1$fetch$request$1
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
                AccountInfoBean execute2 = aliYunLoadAccountRequest.execute();
                if (execute2 != null) {
                    String id = execute2.getId();
                    if (!(id == null || id.length() == 0)) {
                        String id2 = execute2.getId();
                        if (id2 == null) {
                            id2 = "";
                        }
                        String str = id2;
                        String json = JSONUtils.INSTANCE.toJson(credential);
                        AliYunAccount account = aliYunLoadAccountRequest.getAccount();
                        String default_drive_id = account != null ? account.getDefault_drive_id() : null;
                        String providerName = getProviderName();
                        aliYunProvider2 = AliYunFetchAccountAction.this.aliYunProvider;
                        return new ProviderAccountModel(str, providerName, execute2, default_drive_id, json, aliYunProvider2.getEnableFeatures());
                    }
                }
                return null;
            }
        }.execute();
        if (execute.getAccountInfoBean() == null) {
            throw new RuntimeException("aliyun can't load account from cloud");
        }
        this.aliYunProvider.configureProviderAccountModel(execute);
        return execute;
    }
}
