package com.onyx.android.sdk.cloudstorage.provider.onedrive.request;

import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.model.AccountInfoBean;
import com.onyx.android.sdk.cloudstorage.model.ProviderAccountModel;
import com.onyx.android.sdk.cloudstorage.provider.common.request.FetchAccountInfoRequest;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriveProvider;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.OneDriveAccount;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.OneDriveTokenResponse;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.xmlresolver.logging.AbstractLogger;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriveFetchAccountInfoRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/FetchAccountInfoRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;", "credential", "Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;", "fetch", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;", "oneDriveProvider", AbstractLogger.RESPONSE, Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class OneDriveFetchAccountInfoRequest extends FetchAccountInfoRequest<OneDriveTokenResponse> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final OneDriveProvider oneDriveProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OneDriveFetchAccountInfoRequest(@NotNull OneDriveProvider oneDriveProvider, @NotNull OneDriveTokenResponse response) {
        super(Provider.ONE_DRIVE.getTitle(), response);
        Intrinsics.checkNotNullParameter(oneDriveProvider, "oneDriveProvider");
        Intrinsics.checkNotNullParameter(response, "response");
        this.oneDriveProvider = oneDriveProvider;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.FetchAccountInfoRequest
    @NotNull
    public ProviderAccountModel fetch(@NotNull OneDriveTokenResponse credential) {
        Intrinsics.checkNotNullParameter(credential, "credential");
        Response<OneDriveAccount> execute = this.oneDriveProvider.getOneDriveClient().getOneDriveService().getAccount().execute();
        if (execute.isSuccessful()) {
            OneDriveAccount body = execute.body();
            Debug.INSTANCE.m32035d(OneDriveFetchAccountInfoRequest.class, "one-drive,account:" + body, new Object[0]);
            String userPrincipalName = body.getUserPrincipalName();
            if (userPrincipalName == null || userPrincipalName.length() == 0) {
                userPrincipalName = body.getDisplayName();
            }
            AccountInfoBean accountInfoBean = new AccountInfoBean(null, null, null, 7, null);
            accountInfoBean.setNickName(body.getDisplayName());
            accountInfoBean.setAccountName(userPrincipalName);
            accountInfoBean.setId(body.getId());
            ProviderAccountModel providerAccountModel = new ProviderAccountModel(null, null, null, null, null, null, 63, null);
            String id = accountInfoBean.getId();
            if (id == null) {
                id = "";
            }
            providerAccountModel.setAccountId(id);
            providerAccountModel.setAccountInfoBean(accountInfoBean);
            providerAccountModel.setAccountCredentialJson(JSONUtils.INSTANCE.toJson(credential));
            providerAccountModel.setProviderName(getProviderName());
            providerAccountModel.setEnableFeatures(this.oneDriveProvider.getEnableFeatures());
            this.oneDriveProvider.configureProviderAccountModel(providerAccountModel);
            return providerAccountModel;
        }
        throw new Exception(execute.raw().message());
    }
}
