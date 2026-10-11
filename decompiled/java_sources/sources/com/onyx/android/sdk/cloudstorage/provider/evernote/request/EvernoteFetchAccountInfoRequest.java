package com.onyx.android.sdk.cloudstorage.provider.evernote.request;

import com.evernote.edam.type.User;
import com.onyx.android.sdk.cloudstorage.model.AccountInfoBean;
import com.onyx.android.sdk.cloudstorage.model.ProviderAccountModel;
import com.onyx.android.sdk.cloudstorage.provider.common.request.FetchAccountInfoRequest;
import com.onyx.android.sdk.cloudstorage.provider.evernote.EverNoteProvider;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/evernote/request/EvernoteFetchAccountInfoRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/FetchAccountInfoRequest;", "", "credential", "Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;", "fetch", "Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;", "everNoteProvider", "accountId", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;Ljava/lang/String;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class EvernoteFetchAccountInfoRequest extends FetchAccountInfoRequest<String> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final EverNoteProvider everNoteProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EvernoteFetchAccountInfoRequest(@NotNull EverNoteProvider everNoteProvider, @NotNull String accountId) {
        super(Provider.EVER_NOTE.getTitle(), accountId);
        Intrinsics.checkNotNullParameter(everNoteProvider, "everNoteProvider");
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        this.everNoteProvider = everNoteProvider;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.FetchAccountInfoRequest
    @Nullable
    public ProviderAccountModel fetch(@NotNull String credential) {
        Intrinsics.checkNotNullParameter(credential, "credential");
        EverNoteProvider.Companion companion = EverNoteProvider.INSTANCE;
        if (!companion.getSession().isLoggedIn()) {
            return null;
        }
        User user = companion.getSession().getEvernoteClientFactory().getUserStoreClient().getUser();
        AccountInfoBean accountInfoBean = new AccountInfoBean(null, null, null, 7, null);
        accountInfoBean.setAccountName(user.getUsername());
        accountInfoBean.setNickName(user.getName());
        accountInfoBean.setId(credential);
        ProviderAccountModel providerAccountModel = new ProviderAccountModel(null, null, null, null, null, null, 63, null);
        providerAccountModel.setAccountId(credential);
        providerAccountModel.setAccountInfoBean(accountInfoBean);
        providerAccountModel.setAccountCredentialJson(credential);
        providerAccountModel.setProviderName(getProviderName());
        providerAccountModel.setEnableFeatures(this.everNoteProvider.getEnableFeatures());
        return providerAccountModel;
    }
}
