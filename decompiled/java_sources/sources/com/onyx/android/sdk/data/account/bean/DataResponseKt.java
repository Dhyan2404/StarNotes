package com.onyx.android.sdk.data.account.bean;

import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0018\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0004\u0012\u0002H\u0002\u0018\u00010\u0003¨\u0006\u0004"}, m61528d2 = {"isSuccess", "", "T", "Lcom/onyx/android/sdk/data/account/bean/DataResponse;", "sdk-data_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class DataResponseKt {
    public static final <T> boolean isSuccess(@Nullable DataResponse<T> dataResponse) {
        return dataResponse != null && dataResponse.getResultCode() == 0;
    }
}
