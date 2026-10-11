package com.onyx.android.sdk.hwr.service.http;

import com.onyx.android.sdk.hwr.data.bean.HWRMyscriptActivateBody;
import com.onyx.android.sdk.hwr.data.bean.HWRResource;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Query;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u0004H'J\u001e\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u00032\b\b\u0001\u0010\t\u001a\u00020\nH'J\u0018\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u0004H'¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/service/http/OnyxHWRResourceService;", "", "commitMyscriptActivateRecord", "Lretrofit2/Call;", "Lcom/onyx/android/sdk/hwr/data/bean/HWRMyscriptActivateBody;", "body", "getMyscriptResource", "", "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;", "version", "", "verifyMyscriptPermission", "", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public interface OnyxHWRResourceService {
    @POST("/api/myScriptActives")
    @NotNull
    Call<HWRMyscriptActivateBody> commitMyscriptActivateRecord(@Body @NotNull HWRMyscriptActivateBody body);

    @GET("/api/myscripts")
    @NotNull
    Call<List<HWRResource>> getMyscriptResource(@NotNull @Query("version") String version);

    @POST("/api/myScriptModels/check")
    @NotNull
    Call<Boolean> verifyMyscriptPermission(@Body @NotNull HWRMyscriptActivateBody body);
}
