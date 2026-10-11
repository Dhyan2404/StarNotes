package com.onyx.android.sdk.data.common.cloud.p026v2;

import com.onyx.android.sdk.data.common.data.CloudStorageStatusBean;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.Call;
import retrofit2.http.GET;
import retrofit2.http.Header;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\bf\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u0006H'¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/cloud/v2/StatisticsService;", "", "getCloudStorageStatus", "Lretrofit2/Call;", "Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean;", "token", "", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public interface StatisticsService {
    @GET("statistics/v2/user/storage")
    @NotNull
    Call<CloudStorageStatusBean> getCloudStorageStatus(@Header("authorization") @Nullable String token);
}
