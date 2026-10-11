package com.onyx.android.sdk.pay.service;

import com.onyx.android.sdk.data.account.bean.DataResponse;
import com.onyx.android.sdk.pay.bean.GoogleOrderArgs;
import com.onyx.android.sdk.pay.bean.HuaweiOrderResultBean;
import com.onyx.android.sdk.pay.bean.OrderBean;
import com.onyx.android.sdk.pay.bean.PayBean;
import com.onyx.android.sdk.pay.bean.PurchaseOrderListBean;
import com.onyx.android.sdk.pay.data.CreateOrderArgs;
import com.onyx.android.sdk.pay.data.GoogleConsumePurchaseListArgs;
import com.onyx.android.sdk.pay.data.GooglePurchaseTokenArgs;
import com.onyx.android.sdk.pay.data.HuaweiOrderArgs;
import com.onyx.android.sdk.pay.data.PayArgs;
import com.onyx.android.sdk.pay.data.RetryVerifyPurchaseTokenArgs;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Path;

@Metadata(m61527d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u0006H'J \u0010\u0007\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00040\u00032\b\b\u0001\u0010\b\u001a\u00020\tH'J\u001e\u0010\n\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\fH'J\u0014\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\u00040\u0003H'J\u0014\u0010\u000f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\u00040\u0003H'J\u001e\u0010\u0010\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u00040\u00032\b\b\u0001\u0010\b\u001a\u00020\tH'J(\u0010\u0011\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120\u00040\u00032\b\b\u0001\u0010\b\u001a\u00020\t2\b\b\u0001\u0010\u0013\u001a\u00020\u0014H'J\u001e\u0010\u0015\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u00040\u00032\b\b\u0001\u0010\b\u001a\u00020\tH'J \u0010\u0016\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u0017H'J \u0010\u0018\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u0019H'J*\u0010\u001a\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00040\u00032\b\b\u0001\u0010\b\u001a\u00020\t2\b\b\u0001\u0010\u001b\u001a\u00020\u001cH'J(\u0010\u001d\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001e0\u00040\u00032\b\b\u0001\u0010\b\u001a\u00020\t2\b\b\u0001\u0010\u001b\u001a\u00020\u001fH'¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/pay/service/OrderService;", "", "consumeGooglePurchaseToken", "Lretrofit2/Call;", "Lcom/onyx/android/sdk/data/account/bean/DataResponse;", "params", "Lcom/onyx/android/sdk/pay/data/GoogleConsumePurchaseListArgs;", "consumeHuaweiPurchaseToken", "id", "", "createOrder", "Lcom/onyx/android/sdk/pay/bean/OrderBean;", "Lcom/onyx/android/sdk/pay/data/CreateOrderArgs;", "loadGooglePurchaseToken", "Lcom/onyx/android/sdk/pay/bean/PurchaseOrderListBean;", "loadHuaweiPurchaseToken", "loadOrderInfo", "loadPayInfo", "Lcom/onyx/android/sdk/pay/bean/PayBean;", "body", "Lcom/onyx/android/sdk/pay/data/PayArgs;", "recreateOrder", "retryVerifyGooglePurchaseToken", "Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;", "retryVerifyHuaweiPurchaseToken", "Lcom/onyx/android/sdk/pay/data/RetryVerifyPurchaseTokenArgs;", "verifyGooglePurchaseToken", "args", "Lcom/onyx/android/sdk/pay/bean/GoogleOrderArgs;", "verifyHuaweiPurchaseToken", "Lcom/onyx/android/sdk/pay/bean/HuaweiOrderResultBean;", "Lcom/onyx/android/sdk/pay/data/HuaweiOrderArgs;", "sdk-pay_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface OrderService {
    @POST("commerce/order/{id}/consumeGooglePurchaseToken")
    @NotNull
    Call<DataResponse<Object>> consumeGooglePurchaseToken(@Body @NotNull GoogleConsumePurchaseListArgs params);

    @POST("commerce/order/{id}/consumeHuaweiPurchaseToken")
    @NotNull
    Call<DataResponse<Object>> consumeHuaweiPurchaseToken(@Path("id") @NotNull String id);

    @POST("commerce/order")
    @NotNull
    Call<DataResponse<OrderBean>> createOrder(@Body @NotNull CreateOrderArgs params);

    @GET("commerce/order/googlePurchaseToken")
    @NotNull
    Call<DataResponse<PurchaseOrderListBean>> loadGooglePurchaseToken();

    @GET("commerce/order/huaweiPurchaseToken")
    @NotNull
    Call<DataResponse<PurchaseOrderListBean>> loadHuaweiPurchaseToken();

    @GET("commerce/order/{id}")
    @NotNull
    Call<DataResponse<OrderBean>> loadOrderInfo(@Path("id") @NotNull String id);

    @POST("commerce/order/{id}/pay")
    @NotNull
    Call<DataResponse<PayBean>> loadPayInfo(@Path("id") @NotNull String id, @Body @NotNull PayArgs body);

    @POST("commerce/order/{id}/recreate")
    @NotNull
    Call<DataResponse<OrderBean>> recreateOrder(@Path("id") @NotNull String id);

    @POST("commerce/order/reverifyGooglePurchaseToken")
    @NotNull
    Call<DataResponse<Object>> retryVerifyGooglePurchaseToken(@Body @NotNull GooglePurchaseTokenArgs params);

    @POST("commerce/order/reverifyHuaweiPurchaseToken")
    @NotNull
    Call<DataResponse<Object>> retryVerifyHuaweiPurchaseToken(@Body @NotNull RetryVerifyPurchaseTokenArgs params);

    @POST("commerce/order/{id}/verifyGooglePurchaseToken")
    @NotNull
    Call<DataResponse<Object>> verifyGooglePurchaseToken(@Path("id") @NotNull String id, @Body @NotNull GoogleOrderArgs args);

    @POST("commerce/order/{id}/verifyHuaweiPurchaseToken")
    @NotNull
    Call<DataResponse<HuaweiOrderResultBean>> verifyHuaweiPurchaseToken(@Path("id") @NotNull String id, @Body @NotNull HuaweiOrderArgs args);
}
