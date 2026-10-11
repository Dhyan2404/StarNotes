package com.onyx.android.sdk.cloudstorage.provider.baiduyun;

import com.onyx.android.sdk.cloudstorage.model.AccountInfoBean;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunUserBean;
import com.onyx.android.sdk.cloudstorage.provider.common.utils.ProviderAccountModelUtils;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunUtils;", "", "()V", "createAccountInfoBean", "Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;", "userBean", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUserBean;", "logoutAccount", "", "accountId", "", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class BaiduYunUtils {

    @NotNull
    public static final BaiduYunUtils INSTANCE = new BaiduYunUtils();

    @NotNull
    public final AccountInfoBean createAccountInfoBean(@NotNull BaiduYunUserBean userBean) {
        Intrinsics.checkNotNullParameter(userBean, "userBean");
        AccountInfoBean accountInfoBean = new AccountInfoBean(null, null, null, 7, null);
        accountInfoBean.setAccountName(userBean.getBaiduName());
        accountInfoBean.setNickName(userBean.getBaiduName());
        accountInfoBean.setId(String.valueOf(userBean.getUk()));
        return accountInfoBean;
    }

    public final long logoutAccount(@NotNull String accountId) {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        return ProviderAccountModelUtils.INSTANCE.deleteAccount(Provider.BAIDU_YUN.getTitle(), accountId);
    }
}
