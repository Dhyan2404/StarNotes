package com.onyx.android.sdk.data.common.cloud.p026v2;

import com.onyx.android.sdk.data.common.data.GuideInfo;
import com.onyx.android.sdk.data.common.data.ResponeData;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import retrofit2.Call;
import retrofit2.http.GET;
import retrofit2.http.Query;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J8\u0010\u0002\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u00040\u00032\b\b\u0001\u0010\u0007\u001a\u00020\b2\b\b\u0001\u0010\t\u001a\u00020\b2\b\b\u0001\u0010\n\u001a\u00020\bH'¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/cloud/v2/GuideInfoService;", "", "getGuideInfo", "Lretrofit2/Call;", "Lcom/onyx/android/sdk/data/common/data/ResponeData;", "", "Lcom/onyx/android/sdk/data/common/data/GuideInfo;", "functionId", "", "version", "lang", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public interface GuideInfoService {
    @GET("guides")
    @NotNull
    Call<ResponeData<List<GuideInfo>>> getGuideInfo(@NotNull @Query("functionId") String functionId, @NotNull @Query("version") String version, @NotNull @Query("version") String lang);
}
