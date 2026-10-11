package com.onyx.android.sdk.cloudstorage.provider.googledriver.request;

import com.google.api.services.drive.model.User;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.model.AccountInfoBean;
import com.onyx.android.sdk.cloudstorage.model.ProviderAccountModel;
import com.onyx.android.sdk.cloudstorage.provider.common.request.LoadAccountInfoRequest;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriveManager;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriverProvider;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.utils.GoogleDriverUtils;
import com.onyx.android.sdk.data.account.bean.LoginAuthConst;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0012\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0014R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriveLoadAccountRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;", "googleDriverProvider", "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;", "(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;)V", LoginAuthConst.ACCOUNT_AUTH, "Lcom/google/api/services/drive/model/User;", "getAccount", "()Lcom/google/api/services/drive/model/User;", "setAccount", "(Lcom/google/api/services/drive/model/User;)V", "loadFromCloud", "Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;", "providerAccountModel", "Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class GoogleDriveLoadAccountRequest extends LoadAccountInfoRequest {
    public User account;

    @NotNull
    private final GoogleDriverProvider googleDriverProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GoogleDriveLoadAccountRequest(@NotNull GoogleDriverProvider googleDriverProvider) {
        super(Provider.GOOGLE_DRIVE, false, 2, null);
        Intrinsics.checkNotNullParameter(googleDriverProvider, "googleDriverProvider");
        this.googleDriverProvider = googleDriverProvider;
    }

    @NotNull
    public final User getAccount() {
        User user = this.account;
        if (user != null) {
            return user;
        }
        Intrinsics.throwUninitializedPropertyAccessException(LoginAuthConst.ACCOUNT_AUTH);
        return null;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.LoadAccountInfoRequest
    @NotNull
    public AccountInfoBean loadFromCloud(@Nullable ProviderAccountModel providerAccountModel) {
        setAccount(GoogleDriveManager.INSTANCE.getOurInstance().getUser(this.googleDriverProvider.getAccountId()));
        Debug.INSTANCE.m32035d(GoogleDriveLoadAccountRequest.class, "google-drive, account:" + getAccount().toPrettyString(), new Object[0]);
        return GoogleDriverUtils.INSTANCE.toAccountInfo(getAccount());
    }

    public final void setAccount(@NotNull User user) {
        Intrinsics.checkNotNullParameter(user, "<set-?>");
        this.account = user;
    }
}
