package com.onyx.android.sdk.cloudstorage.provider.aliyun.request;

import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.model.AccountInfoBean;
import com.onyx.android.sdk.cloudstorage.model.ProviderAccountModel;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.AliYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.AliYunService;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunAccount;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunTokenResponse;
import com.onyx.android.sdk.cloudstorage.provider.common.request.LoadAccountInfoRequest;
import com.onyx.android.sdk.data.account.bean.LoginAuthConst;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.Call;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014J\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR(\u0010\u0010\u001a\u0004\u0018\u00010\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunLoadAccountRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;", "Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;", "providerAccountModel", "Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;", "loadFromCloud", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;", "aliYunProvider", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunAccount;", "<set-?>", "b", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunAccount;", "getAccount", "()Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunAccount;", LoginAuthConst.ACCOUNT_AUTH, "", "isForceLoad", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Z)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public class AliYunLoadAccountRequest extends LoadAccountInfoRequest {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final AliYunProvider aliYunProvider;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public AliYunAccount account;

    public /* synthetic */ AliYunLoadAccountRequest(AliYunProvider aliYunProvider, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(aliYunProvider, (i & 2) != 0 ? false : z);
    }

    @Nullable
    public final AliYunAccount getAccount() {
        return this.account;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.LoadAccountInfoRequest
    @Nullable
    public AccountInfoBean loadFromCloud(@Nullable ProviderAccountModel providerAccountModel) {
        AliYunTokenResponse aliYunTokenResponse;
        if (getForceLoadFromCloud() && getProviderAccountModel() == null) {
            setProviderAccountModel(new ProviderAccountModel(null, null, null, null, null, null, 63, null));
        }
        if (providerAccountModel == null) {
            providerAccountModel = getProviderAccountModel();
        }
        if (providerAccountModel != null && (aliYunTokenResponse = (AliYunTokenResponse) JSONUtils.INSTANCE.parseObject(providerAccountModel.getAccountCredentialJson(), AliYunTokenResponse.class)) != null) {
            this.aliYunProvider.setDriveToken(aliYunTokenResponse);
        }
        final String bearAccessToken = this.aliYunProvider.getBearAccessToken();
        AliYunAccount aliYunAccount = (AliYunAccount) this.aliYunProvider.getDriveClient().executeCall(new Function1<AliYunService, Call<AliYunAccount>>() { // from class: com.onyx.android.sdk.cloudstorage.provider.aliyun.request.AliYunLoadAccountRequest$loadFromCloud$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Call<AliYunAccount> invoke(@NotNull AliYunService it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.getDriveInfo(bearAccessToken);
            }
        }).body();
        if (aliYunAccount == null) {
            aliYunAccount = null;
        } else if (providerAccountModel != null) {
            providerAccountModel.setAccountInfoBean(aliYunAccount.toAccountInfo());
        }
        this.account = aliYunAccount;
        Debug.INSTANCE.m32035d(getClass(), "aliyun drive,account:" + this.account, new Object[0]);
        if (this.account != null) {
            if (StringUtils.isEmpty(providerAccountModel != null ? providerAccountModel.getDriveId() : null) && providerAccountModel != null) {
                AliYunAccount aliYunAccount2 = this.account;
                Intrinsics.checkNotNull(aliYunAccount2);
                providerAccountModel.setAccountId(aliYunAccount2.getId());
                AliYunAccount aliYunAccount3 = this.account;
                Intrinsics.checkNotNull(aliYunAccount3);
                providerAccountModel.setDriveId(aliYunAccount3.getDefault_drive_id());
                providerAccountModel.setProviderName(this.aliYunProvider.getProviderType().getTitle());
                providerAccountModel.setAccountCredentialJson(JSONUtils.INSTANCE.toJson(this.aliYunProvider.getTokenResponse()));
                providerAccountModel.setEnableFeatures(this.aliYunProvider.getEnableFeatures());
            }
        }
        this.aliYunProvider.configureProviderAccountModel(providerAccountModel);
        if (providerAccountModel != null) {
            return providerAccountModel.getAccountInfoBean();
        }
        return null;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AliYunLoadAccountRequest(@NotNull AliYunProvider aliYunProvider, boolean z) {
        super(Provider.ALI_YUN, z);
        Intrinsics.checkNotNullParameter(aliYunProvider, "aliYunProvider");
        this.aliYunProvider = aliYunProvider;
        setProviderAccountModel(aliYunProvider.getProviderAccountModel());
    }
}
