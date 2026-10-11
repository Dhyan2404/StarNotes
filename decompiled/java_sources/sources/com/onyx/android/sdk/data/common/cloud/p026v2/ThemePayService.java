package com.onyx.android.sdk.data.common.cloud.p026v2;

import com.onyx.android.sdk.data.account.bean.ResponseData;
import com.onyx.android.sdk.data.common.data.ResponeData;
import com.onyx.android.sdk.data.common.data.theme.ThemeCreateOrderBean;
import com.onyx.android.sdk.data.common.data.theme.ThemeOrderBean;
import com.onyx.android.sdk.data.common.data.theme.ThemePaymentEnableBean;
import com.onyx.android.sdk.data.common.data.theme.ThemeProduceBean;
import com.onyx.android.sdk.data.common.data.theme.UserThemeBean;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00040\u00032\b\b\u0001\u0010\u0006\u001a\u00020\u0007H'J\u0014\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\u00040\u0003H'J\u0016\u0010\n\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u00040\u0003H'J\u001a\u0010\f\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u000e0\r0\u0003H'J\u0016\u0010\u0010\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00040\u0003H'¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/cloud/v2/ThemePayService;", "", "createThemeOrder", "Lretrofit2/Call;", "Lcom/onyx/android/sdk/data/common/data/ResponeData;", "Lcom/onyx/android/sdk/data/common/data/theme/ThemeOrderBean;", "orderBean", "Lcom/onyx/android/sdk/data/common/data/theme/ThemeCreateOrderBean;", "getThemeConfig", "Lcom/onyx/android/sdk/data/common/data/theme/ThemePaymentEnableBean;", "getThemeProductInfo", "Lcom/onyx/android/sdk/data/common/data/theme/ThemeProduceBean;", "getUsersTheme", "Lcom/onyx/android/sdk/data/account/bean/ResponseData;", "", "Lcom/onyx/android/sdk/data/common/data/theme/UserThemeBean;", "queryThemeOrder", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public interface ThemePayService {
    @POST("themes/huaweiOrder")
    @NotNull
    Call<ResponeData<ThemeOrderBean>> createThemeOrder(@Body @NotNull ThemeCreateOrderBean orderBean);

    @GET("config/theme")
    @NotNull
    Call<ResponeData<ThemePaymentEnableBean>> getThemeConfig();

    @GET("themes/huaweiProduct")
    @NotNull
    Call<ResponeData<ThemeProduceBean>> getThemeProductInfo();

    @GET("themes")
    @NotNull
    Call<ResponseData<List<UserThemeBean>>> getUsersTheme();

    @GET("themes/huaweiOrder")
    @NotNull
    Call<ResponeData<ThemeOrderBean>> queryThemeOrder();
}
