package com.onyx.android.sdk.cloudstorage.provider.dropbox.request;

import com.dropbox.core.p006v2.users.FullAccount;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.model.AccountInfoBean;
import com.onyx.android.sdk.cloudstorage.model.ProviderAccountModel;
import com.onyx.android.sdk.cloudstorage.provider.common.request.FetchAccountInfoRequest;
import com.onyx.android.sdk.cloudstorage.provider.dropbox.DropBoxProvider;
import com.onyx.android.sdk.cloudstorage.provider.dropbox.DropBoxUtils;
import com.onyx.android.sdk.cloudstorage.provider.dropbox.bean.DropBoxCredential;
import com.onyx.android.sdk.data.account.bean.DropBoxAccount;
import com.onyx.android.sdk.data.account.bean.LoginAuthConst;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u001b\u0010\u000f\u001a\u00020\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchAccountInfoRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/FetchAccountInfoRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;", "credential", "Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;", "fetch", "Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;", "dropProvider", "Lcom/onyx/android/sdk/data/account/bean/DropBoxAccount;", "b", "Lkotlin/Lazy;", "getAccount", "()Lcom/onyx/android/sdk/data/account/bean/DropBoxAccount;", LoginAuthConst.ACCOUNT_AUTH, Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class DropBoxFetchAccountInfoRequest extends FetchAccountInfoRequest<DropBoxCredential> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final DropBoxProvider dropProvider;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final Lazy account;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DropBoxFetchAccountInfoRequest(@NotNull DropBoxProvider dropProvider, @NotNull DropBoxCredential credential) {
        super(Provider.DROP_BOX.getTitle(), credential);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(dropProvider, "dropProvider");
        Intrinsics.checkNotNullParameter(credential, "credential");
        this.dropProvider = dropProvider;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<DropBoxAccount>() { // from class: com.onyx.android.sdk.cloudstorage.provider.dropbox.request.DropBoxFetchAccountInfoRequest$account$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DropBoxAccount invoke() {
                DropBoxProvider dropBoxProvider;
                dropBoxProvider = DropBoxFetchAccountInfoRequest.this.dropProvider;
                FullAccount currentAccount = dropBoxProvider.getDbxClient().users().getCurrentAccount();
                Debug.INSTANCE.m32035d(DropBoxFetchAccountInfoRequest.this.getClass(), "dropbox,fullAccount:" + currentAccount, new Object[0]);
                DropBoxAccount dropBoxAccount = new DropBoxAccount();
                dropBoxAccount.setDisplayName(currentAccount.getName().getDisplayName());
                dropBoxAccount.setEmail(currentAccount.getEmail());
                dropBoxAccount.setId(currentAccount.getAccountId());
                return dropBoxAccount;
            }
        });
        this.account = lazy;
    }

    public final DropBoxAccount getAccount() {
        return (DropBoxAccount) this.account.getValue();
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.FetchAccountInfoRequest
    @NotNull
    public ProviderAccountModel fetch(@NotNull DropBoxCredential credential) {
        Intrinsics.checkNotNullParameter(credential, "credential");
        AccountInfoBean createAccountInfoBean = DropBoxUtils.INSTANCE.createAccountInfoBean(getAccount());
        ProviderAccountModel providerAccountModel = new ProviderAccountModel(null, null, null, null, null, null, 63, null);
        providerAccountModel.setProviderName(getProviderName());
        String id = createAccountInfoBean.getId();
        if (id == null) {
            id = "";
        }
        providerAccountModel.setAccountId(id);
        providerAccountModel.setAccountInfoBean(createAccountInfoBean);
        providerAccountModel.setAccountCredentialJson(JSONUtils.INSTANCE.toJson(credential));
        providerAccountModel.setEnableFeatures(this.dropProvider.getEnableFeatures());
        return providerAccountModel;
    }
}
