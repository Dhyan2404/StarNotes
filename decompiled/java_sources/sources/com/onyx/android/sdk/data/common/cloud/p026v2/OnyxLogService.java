package com.onyx.android.sdk.data.common.cloud.p026v2;

import com.onyx.android.sdk.data.account.bean.DataResponse;
import com.onyx.android.sdk.data.common.data.ResponeData;
import java.util.Map;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.Header;
import retrofit2.http.POST;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0000\bf\u0018\u00002\u00020\u0001J4\u0010\u0002\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u00032\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\b\u0003\u0010\u0007\u001a\u00020\u00052\b\b\u0001\u0010\b\u001a\u00020\tH'J \u0010\n\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\f0\u000b0\u0003H'¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/cloud/v2/OnyxLogService;", "", "feedbacks", "Lretrofit2/Call;", "Lcom/onyx/android/sdk/data/account/bean/DataResponse;", "", "token", "type", "feedbacksParams", "Lcom/onyx/android/sdk/data/common/cloud/v2/FeedbacksParams;", "getEncryptionKey", "Lcom/onyx/android/sdk/data/common/data/ResponeData;", "", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public interface OnyxLogService {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class DefaultImpls {
        public static /* synthetic */ Call feedbacks$default(OnyxLogService onyxLogService, String str, String str2, FeedbacksParams feedbacksParams, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: feedbacks");
            }
            if ((i & 2) != 0) {
                str2 = "galaxy";
            }
            return onyxLogService.feedbacks(str, str2, feedbacksParams);
        }
    }

    @POST("feedbacks")
    @NotNull
    Call<DataResponse<String>> feedbacks(@Header("authorization") @Nullable String token, @Header("client-type") @NotNull String type, @Body @NotNull FeedbacksParams feedbacksParams);

    @GET("encrypt/key")
    @NotNull
    Call<ResponeData<Map<String, String>>> getEncryptionKey();
}
