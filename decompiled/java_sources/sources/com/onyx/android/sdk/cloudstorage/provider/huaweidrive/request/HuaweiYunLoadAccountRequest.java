package com.onyx.android.sdk.cloudstorage.provider.huaweidrive.request;

import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.model.AccountInfoBean;
import com.onyx.android.sdk.cloudstorage.model.ProviderAccountModel;
import com.onyx.android.sdk.cloudstorage.provider.common.request.LoadAccountInfoRequest;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.HuaweiYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.HuaweiYunService;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunAccount;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunTokenResponse;
import com.onyx.android.sdk.data.account.bean.LoginAuthConst;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.Call;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014J\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR(\u0010\u0010\u001a\u0004\u0018\u00010\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunLoadAccountRequest;", "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;", "Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;", "providerAccountModel", "Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;", "loadFromCloud", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;", "huaweiYunProvider", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunAccount;", "<set-?>", "b", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunAccount;", "getAccount", "()Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunAccount;", LoginAuthConst.ACCOUNT_AUTH, "", "isForceLoad", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;Z)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public class HuaweiYunLoadAccountRequest extends LoadAccountInfoRequest {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final HuaweiYunProvider huaweiYunProvider;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public HuaweiYunAccount account;

    public /* synthetic */ HuaweiYunLoadAccountRequest(HuaweiYunProvider huaweiYunProvider, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(huaweiYunProvider, (i & 2) != 0 ? false : z);
    }

    @Nullable
    public final HuaweiYunAccount getAccount() {
        return this.account;
    }

    @Override // com.onyx.android.sdk.cloudstorage.provider.common.request.LoadAccountInfoRequest
    @Nullable
    public AccountInfoBean loadFromCloud(@Nullable ProviderAccountModel providerAccountModel) {
        HuaweiYunTokenResponse huaweiYunTokenResponse;
        if (getForceLoadFromCloud() && getProviderAccountModel() == null) {
            setProviderAccountModel(new ProviderAccountModel(null, null, null, null, null, null, 63, null));
        }
        if (providerAccountModel == null) {
            providerAccountModel = getProviderAccountModel();
        }
        if (providerAccountModel != null && (huaweiYunTokenResponse = (HuaweiYunTokenResponse) JSONUtils.INSTANCE.parseObject(providerAccountModel.getAccountCredentialJson(), HuaweiYunTokenResponse.class)) != null) {
            this.huaweiYunProvider.setDriveToken(huaweiYunTokenResponse);
        }
        final String bearAccessToken = this.huaweiYunProvider.getBearAccessToken();
        HuaweiYunAccount huaweiYunAccount = (HuaweiYunAccount) this.huaweiYunProvider.getDriveClient().executeCall(new Function1<HuaweiYunService, Call<HuaweiYunAccount>>() { // from class: com.onyx.android.sdk.cloudstorage.provider.huaweidrive.request.HuaweiYunLoadAccountRequest$loadFromCloud$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Call<HuaweiYunAccount> invoke(@NotNull HuaweiYunService it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.getDriveInfo(bearAccessToken);
            }
        }).body();
        if (huaweiYunAccount == null) {
            huaweiYunAccount = null;
        } else if (providerAccountModel != null) {
            providerAccountModel.setAccountInfoBean(huaweiYunAccount.toAccountInfo());
        }
        this.account = huaweiYunAccount;
        Debug.INSTANCE.m32035d(getClass(), "huaweiyun drive,account:" + this.account, new Object[0]);
        if (this.account != null) {
            String driveId = providerAccountModel != null ? providerAccountModel.getDriveId() : null;
            if ((driveId == null || driveId.length() == 0) && providerAccountModel != null) {
                HuaweiYunAccount huaweiYunAccount2 = this.account;
                Intrinsics.checkNotNull(huaweiYunAccount2);
                providerAccountModel.setAccountId(huaweiYunAccount2.getUser().getPermissionId());
                HuaweiYunAccount huaweiYunAccount3 = this.account;
                Intrinsics.checkNotNull(huaweiYunAccount3);
                providerAccountModel.setDriveId(huaweiYunAccount3.getUser().getPermissionId());
                providerAccountModel.setProviderName(this.huaweiYunProvider.getProviderType().getTitle());
                providerAccountModel.setAccountCredentialJson(JSONUtils.INSTANCE.toJson(this.huaweiYunProvider.getTokenResponse()));
                providerAccountModel.setEnableFeatures(this.huaweiYunProvider.getEnableFeatures());
            }
        }
        this.huaweiYunProvider.configureProviderAccountModel(providerAccountModel);
        if (providerAccountModel != null) {
            return providerAccountModel.getAccountInfoBean();
        }
        return null;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HuaweiYunLoadAccountRequest(@NotNull HuaweiYunProvider huaweiYunProvider, boolean z) {
        super(Provider.HUAWEI_YUN, z);
        Intrinsics.checkNotNullParameter(huaweiYunProvider, "huaweiYunProvider");
        this.huaweiYunProvider = huaweiYunProvider;
        setProviderAccountModel(huaweiYunProvider.getProviderAccountModel());
    }
}
