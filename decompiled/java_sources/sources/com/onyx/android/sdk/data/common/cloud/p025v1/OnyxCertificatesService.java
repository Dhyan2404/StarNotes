package com.onyx.android.sdk.data.common.cloud.p025v1;

import com.onyx.android.sdk.data.common.cos.CosStsResponse;
import com.onyx.android.sdk.data.common.data.Certificates;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import retrofit2.Call;
import retrofit2.http.GET;
import retrofit2.http.Header;
import retrofit2.http.Query;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u0006H'J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u0003H'J\u0018\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\u00032\b\b\u0001\u0010\n\u001a\u00020\u0006H'¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/cloud/v1/OnyxCertificatesService;", "", "getCertificates", "Lretrofit2/Call;", "Lcom/onyx/android/sdk/data/common/data/Certificates;", "name", "", "getCosStss", "Lcom/onyx/android/sdk/data/common/cos/CosStsResponse;", "getStss", "token", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public interface OnyxCertificatesService {
    @GET("certificates/findByNameWithKey")
    @NotNull
    Call<Certificates> getCertificates(@NotNull @Query("name") String name);

    @GET("config/tencent/stss")
    @NotNull
    Call<CosStsResponse> getCosStss();

    @GET("config/stss")
    @NotNull
    Call<String> getStss(@Header("authorization") @NotNull String token);
}
