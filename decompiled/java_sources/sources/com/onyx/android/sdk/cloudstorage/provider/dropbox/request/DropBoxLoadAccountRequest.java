package com.onyx.android.sdk.cloudstorage.provider.dropbox.request;

import com.dropbox.core.p006v2.DbxClientV2;
import com.dropbox.core.p006v2.users.FullAccount;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.model.AccountInfoBean;
import com.onyx.android.sdk.cloudstorage.model.ProviderAccountModel;
import com.onyx.android.sdk.cloudstorage.provider.common.request.LoadAccountInfoRequest;
import com.onyx.android.sdk.cloudstorage.provider.dropbox.DropBoxUtils;
import com.onyx.android.sdk.data.account.bean.DropBoxAccount;
import com.onyx.android.sdk.data.account.bean.LoginAuthConst;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\u0012\u0010\u0013J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR$\u0010\u0011\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxLoadAccountRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;", "Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;", "providerAccountModel", "Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;", "loadFromCloud", "Lcom/dropbox/core/v2/DbxClientV2;", "a", "Lcom/dropbox/core/v2/DbxClientV2;", Constant.CLIENT, "Lcom/onyx/android/sdk/data/account/bean/DropBoxAccount;", "b", "Lcom/onyx/android/sdk/data/account/bean/DropBoxAccount;", "getAccount", "()Lcom/onyx/android/sdk/data/account/bean/DropBoxAccount;", "setAccount", "(Lcom/onyx/android/sdk/data/account/bean/DropBoxAccount;)V", LoginAuthConst.ACCOUNT_AUTH, Constants.CONSTRUCTOR_NAME, "(Lcom/dropbox/core/v2/DbxClientV2;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class DropBoxLoadAccountRequest extends LoadAccountInfoRequest {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final DbxClientV2 client;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public DropBoxAccount account;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DropBoxLoadAccountRequest(@NotNull DbxClientV2 client) {
        super(Provider.DROP_BOX, false, 2, null);
        Intrinsics.checkNotNullParameter(client, "client");
        this.client = client;
    }

    @Nullable
    public final DropBoxAccount getAccount() {
        return this.account;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.LoadAccountInfoRequest
    @NotNull
    public AccountInfoBean loadFromCloud(@Nullable ProviderAccountModel providerAccountModel) {
        FullAccount currentAccount = this.client.users().getCurrentAccount();
        DropBoxAccount dropBoxAccount = new DropBoxAccount();
        dropBoxAccount.setDisplayName(currentAccount.getName().getDisplayName());
        dropBoxAccount.setEmail(currentAccount.getEmail());
        dropBoxAccount.setId(currentAccount.getAccountId());
        this.account = dropBoxAccount;
        Debug.INSTANCE.m32035d(DropBoxLoadAccountRequest.class, "dropbox,fullAccount:" + currentAccount, new Object[0]);
        DropBoxUtils dropBoxUtils = DropBoxUtils.INSTANCE;
        DropBoxAccount dropBoxAccount2 = this.account;
        Intrinsics.checkNotNull(dropBoxAccount2);
        return dropBoxUtils.createAccountInfoBean(dropBoxAccount2);
    }

    public final void setAccount(@Nullable DropBoxAccount dropBoxAccount) {
        this.account = dropBoxAccount;
    }
}
