package com.onyx.android.sdk.data.account.request.cloud;

import com.onyx.android.sdk.data.account.bean.AccountContext;
import com.onyx.android.sdk.data.common.cloud.BaseCloudRequest;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b&\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0005\u001a\u00020\u0003R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/request/cloud/BaseAccountRequest;", "Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;", "accountContext", "Lcom/onyx/android/sdk/data/account/bean/AccountContext;", "(Lcom/onyx/android/sdk/data/account/bean/AccountContext;)V", "getAccountContext", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public abstract class BaseAccountRequest extends BaseCloudRequest {

    @NotNull
    private final AccountContext accountContext;

    public BaseAccountRequest(@NotNull AccountContext accountContext) {
        Intrinsics.checkNotNullParameter(accountContext, "accountContext");
        this.accountContext = accountContext;
    }

    @NotNull
    public final AccountContext getAccountContext() {
        return this.accountContext;
    }
}
