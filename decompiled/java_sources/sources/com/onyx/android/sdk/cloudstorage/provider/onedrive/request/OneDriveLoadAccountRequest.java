package com.onyx.android.sdk.cloudstorage.provider.onedrive.request;

import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.model.AccountInfoBean;
import com.onyx.android.sdk.cloudstorage.model.ProviderAccountModel;
import com.onyx.android.sdk.cloudstorage.provider.common.request.LoadAccountInfoRequest;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriveClient;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.OneDriveAccount;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\n\u0010\u000bJ\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriveLoadAccountRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;", "Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;", "providerAccountModel", "Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;", "loadFromCloud", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;", "oneDriveClient", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class OneDriveLoadAccountRequest extends LoadAccountInfoRequest {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final OneDriveClient oneDriveClient;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OneDriveLoadAccountRequest(@NotNull OneDriveClient oneDriveClient) {
        super(Provider.ONE_DRIVE, false, 2, null);
        Intrinsics.checkNotNullParameter(oneDriveClient, "oneDriveClient");
        this.oneDriveClient = oneDriveClient;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.LoadAccountInfoRequest
    @NotNull
    public AccountInfoBean loadFromCloud(@Nullable ProviderAccountModel providerAccountModel) {
        Response<OneDriveAccount> execute = this.oneDriveClient.getOneDriveService().getAccount().execute();
        if (!execute.isSuccessful()) {
            throw new Exception(execute.raw().message());
        }
        OneDriveAccount body = execute.body();
        Debug.INSTANCE.m32035d(OneDriveLoadAccountRequest.class, "one-drive,account:" + body, new Object[0]);
        String userPrincipalName = body.getUserPrincipalName();
        if (userPrincipalName == null || userPrincipalName.length() == 0) {
            userPrincipalName = body.getDisplayName();
        }
        AccountInfoBean accountInfoBean = new AccountInfoBean(null, null, null, 7, null);
        accountInfoBean.setNickName(body.getDisplayName());
        accountInfoBean.setAccountName(userPrincipalName);
        accountInfoBean.setId(body.getId());
        return accountInfoBean;
    }
}
