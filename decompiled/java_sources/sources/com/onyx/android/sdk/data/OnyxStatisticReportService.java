package com.onyx.android.sdk.data;

import com.onyx.android.sdk.data.account.bean.ResultData;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.HTTP;
import retrofit2.http.POST;
import retrofit2.http.Url;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u001e\u0010\u0002\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u00032\b\b\u0001\u0010\u0006\u001a\u00020\u0007H'J(\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u00032\b\b\u0001\u0010\t\u001a\u00020\u00052\b\b\u0001\u0010\u0006\u001a\u00020\nH'J\u0014\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u00040\u0003H'J\u001e\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u00032\b\b\u0001\u0010\u000e\u001a\u00020\u000fH'J\u001e\u0010\u0010\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u00032\b\b\u0001\u0010\u0006\u001a\u00020\u0007H'¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/data/OnyxStatisticReportService;", "", "deletedNoteItem", "Lretrofit2/Call;", "Lcom/onyx/android/sdk/data/account/bean/ResultData;", "", "reportBean", "Lcom/onyx/android/sdk/data/OnyxNoteReportBean;", "eventRecord", "url", "Lcom/onyx/android/sdk/data/OnyxStatisticReportBean;", "getStatisticConfig", "Lcom/onyx/android/sdk/data/StatistConfig;", "noteItemSummary", "summaryReportBean", "Lcom/onyx/android/sdk/data/OnyxNoteSummaryReportBean;", "updateNoteItem", "sdk-statistics_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public interface OnyxStatisticReportService {
    @NotNull
    @HTTP(hasBody = true, method = "DELETE", path = "noteItem")
    Call<ResultData<String>> deletedNoteItem(@Body @NotNull OnyxNoteReportBean reportBean);

    @POST
    @NotNull
    Call<ResultData<String>> eventRecord(@Url @NotNull String url, @Body @NotNull OnyxStatisticReportBean reportBean);

    @GET("config/dataAnalysis")
    @NotNull
    Call<ResultData<StatistConfig>> getStatisticConfig();

    @POST("noteItem/summary")
    @NotNull
    Call<ResultData<String>> noteItemSummary(@Body @NotNull OnyxNoteSummaryReportBean summaryReportBean);

    @POST("noteItem")
    @NotNull
    Call<ResultData<String>> updateNoteItem(@Body @NotNull OnyxNoteReportBean reportBean);
}
