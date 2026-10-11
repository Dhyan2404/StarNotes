package com.onyx.android.sdk.cloudstorage.provider.googledriver;

import com.onyx.android.sdk.cloudstorage.provider.googledriver.data.GoogleDriveTokenResponse;
import java.util.Map;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import retrofit2.Call;
import retrofit2.http.POST;
import retrofit2.http.QueryMap;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\bf\u0018\u00002\u00020\u0001J&\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0016\b\u0001\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006H'¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveAuthService;", "", "accessToken", "Lretrofit2/Call;", "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/GoogleDriveTokenResponse;", "queryMap", "", "", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public interface GoogleDriveAuthService {
    @POST("token")
    @NotNull
    Call<GoogleDriveTokenResponse> accessToken(@QueryMap @NotNull Map<String, String> queryMap);
}
