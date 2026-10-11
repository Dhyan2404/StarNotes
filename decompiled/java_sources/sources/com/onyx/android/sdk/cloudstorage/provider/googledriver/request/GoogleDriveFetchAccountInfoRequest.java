package com.onyx.android.sdk.cloudstorage.provider.googledriver.request;

import com.google.api.services.drive.model.User;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.model.AccountInfoBean;
import com.onyx.android.sdk.cloudstorage.model.ProviderAccountModel;
import com.onyx.android.sdk.cloudstorage.provider.common.request.FetchAccountInfoRequest;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriveManager;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriverProvider;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.utils.GoogleDriverUtils;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0002H\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriveFetchAccountInfoRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/FetchAccountInfoRequest;", "", "googleDriverProvider", "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;", Constant.TAG_USER_ID, "(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;Ljava/lang/String;)V", "fetch", "Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;", "credential", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class GoogleDriveFetchAccountInfoRequest extends FetchAccountInfoRequest<String> {

    @NotNull
    private final GoogleDriverProvider googleDriverProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GoogleDriveFetchAccountInfoRequest(@NotNull GoogleDriverProvider googleDriverProvider, @NotNull String userId) {
        super(Provider.GOOGLE_DRIVE.getTitle(), userId);
        Intrinsics.checkNotNullParameter(googleDriverProvider, "googleDriverProvider");
        Intrinsics.checkNotNullParameter(userId, "userId");
        this.googleDriverProvider = googleDriverProvider;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.FetchAccountInfoRequest
    @NotNull
    public ProviderAccountModel fetch(@NotNull String credential) {
        Intrinsics.checkNotNullParameter(credential, "credential");
        User user = GoogleDriveManager.INSTANCE.getOurInstance().getUser(credential);
        Debug.INSTANCE.m32035d(GoogleDriveFetchAccountInfoRequest.class, "google-drive, account:" + user.toPrettyString(), new Object[0]);
        AccountInfoBean accountInfo = GoogleDriverUtils.INSTANCE.toAccountInfo(user);
        ProviderAccountModel providerAccountModel = new ProviderAccountModel(null, null, null, null, null, null, 63, null);
        String id = accountInfo.getId();
        if (id == null) {
            id = "";
        }
        providerAccountModel.setAccountId(id);
        providerAccountModel.setAccountInfoBean(accountInfo);
        providerAccountModel.setProviderName(getProviderName());
        providerAccountModel.setAccountCredentialJson(accountInfo.getId());
        providerAccountModel.setEnableFeatures(this.googleDriverProvider.getEnableFeatures());
        return providerAccountModel;
    }
}
