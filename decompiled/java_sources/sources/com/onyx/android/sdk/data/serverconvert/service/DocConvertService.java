package com.onyx.android.sdk.data.serverconvert.service;

import com.onyx.android.sdk.data.serverconvert.bean.ConvertRequestBody;
import com.onyx.android.sdk.data.serverconvert.bean.DocConvertAsyncResponse;
import com.onyx.android.sdk.data.serverconvert.bean.QueryConvertResultResponse;
import com.onyx.android.sdk.data.serverconvert.convertor.bean.DocConvertBean;
import com.onyx.android.sdk.data.serverconvert.convertor.bean.DocConvertResponse;
import com.onyx.android.sdk.data.serverconvert.convertor.bean.QueryBean;
import com.onyx.android.sdk.data.serverconvert.convertor.bean.QueryResponse;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Query;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u0006H'J\u0018\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u00032\b\b\u0001\u0010\t\u001a\u00020\nH'J\u0018\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\u00032\b\b\u0001\u0010\r\u001a\u00020\u000eH'J\u0018\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00100\u00032\b\b\u0001\u0010\u0011\u001a\u00020\u0012H'¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/data/serverconvert/service/DocConvertService;", "", "docConvertASync", "Lretrofit2/Call;", "Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertAsyncResponse;", "requestBody", "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertRequestBody;", "docConvertV2", "Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertResponse;", "convertBean", "Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertBean;", "queryDocConvertResult", "Lcom/onyx/android/sdk/data/serverconvert/bean/QueryConvertResultResponse;", "ticket", "", "queryDocConvertResultV2", "Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/QueryResponse;", "queryBean", "Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/QueryBean;", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public interface DocConvertService {
    @POST("converter/convertAsync/")
    @NotNull
    Call<DocConvertAsyncResponse> docConvertASync(@Body @NotNull ConvertRequestBody requestBody);

    @POST("converter/startCloudConvertTask/")
    @NotNull
    Call<DocConvertResponse> docConvertV2(@Body @NotNull DocConvertBean convertBean);

    @GET("converter/query")
    @NotNull
    Call<QueryConvertResultResponse> queryDocConvertResult(@NotNull @Query("ticket") String ticket);

    @POST("converter/queryCloudConvertTask/")
    @NotNull
    Call<QueryResponse> queryDocConvertResultV2(@Body @NotNull QueryBean queryBean);
}
