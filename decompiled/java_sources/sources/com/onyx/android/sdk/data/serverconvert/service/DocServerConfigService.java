package com.onyx.android.sdk.data.serverconvert.service;

import com.onyx.android.sdk.data.serverconvert.bean.ConvertServerConfigResponse;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import retrofit2.Call;
import retrofit2.http.GET;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u000e\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H'¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/android/sdk/data/serverconvert/service/DocServerConfigService;", "", "getSSLSeverInfo", "Lretrofit2/Call;", "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertServerConfigResponse;", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public interface DocServerConfigService {
    @GET("serverInfos/ssl/")
    @NotNull
    Call<ConvertServerConfigResponse> getSSLSeverInfo();
}
