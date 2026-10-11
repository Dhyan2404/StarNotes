package com.onyx.android.sdk.cloudstorage.provider.evernote.request;

import com.evernote.edam.type.User;
import com.onyx.android.sdk.cloudstorage.model.AccountInfoBean;
import com.onyx.android.sdk.cloudstorage.model.ProviderAccountModel;
import com.onyx.android.sdk.cloudstorage.provider.common.request.LoadAccountInfoRequest;
import com.onyx.android.sdk.cloudstorage.provider.evernote.EverNoteProvider;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0014¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/evernote/request/EvernoteLoadAccountInfoRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;", "()V", "loadFromCloud", "Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;", "providerAccountModel", "Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class EvernoteLoadAccountInfoRequest extends LoadAccountInfoRequest {
    public EvernoteLoadAccountInfoRequest() {
        super(Provider.EVER_NOTE, false, 2, null);
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.LoadAccountInfoRequest
    @NotNull
    public AccountInfoBean loadFromCloud(@Nullable ProviderAccountModel providerAccountModel) {
        EverNoteProvider.Companion companion = EverNoteProvider.INSTANCE;
        if (!companion.getSession().isLoggedIn()) {
            return new AccountInfoBean(null, null, null, 7, null);
        }
        User user = companion.getSession().getEvernoteClientFactory().getUserStoreClient().getUser();
        AccountInfoBean accountInfoBean = new AccountInfoBean(null, null, null, 7, null);
        accountInfoBean.setAccountName(user.getUsername());
        accountInfoBean.setNickName(user.getName());
        accountInfoBean.setId(getAccountId());
        return accountInfoBean;
    }
}
