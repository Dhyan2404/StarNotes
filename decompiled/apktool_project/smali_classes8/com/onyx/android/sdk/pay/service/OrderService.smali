.class public interface abstract Lcom/onyx/android/sdk/pay/service/OrderService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00040\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006H\'J \u0010\u0007\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00040\u00032\u0008\u0008\u0001\u0010\u0008\u001a\u00020\tH\'J\u001e\u0010\n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\u00040\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u000cH\'J\u0014\u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\u00040\u0003H\'J\u0014\u0010\u000f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\u00040\u0003H\'J\u001e\u0010\u0010\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\u00040\u00032\u0008\u0008\u0001\u0010\u0008\u001a\u00020\tH\'J(\u0010\u0011\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\u00040\u00032\u0008\u0008\u0001\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0001\u0010\u0013\u001a\u00020\u0014H\'J\u001e\u0010\u0015\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\u00040\u00032\u0008\u0008\u0001\u0010\u0008\u001a\u00020\tH\'J \u0010\u0016\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00040\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0017H\'J \u0010\u0018\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00040\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0019H\'J*\u0010\u001a\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00040\u00032\u0008\u0008\u0001\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0001\u0010\u001b\u001a\u00020\u001cH\'J(\u0010\u001d\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001e0\u00040\u00032\u0008\u0008\u0001\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0001\u0010\u001b\u001a\u00020\u001fH\'\u00a8\u0006 "
    }
    d2 = {
        "Lcom/onyx/android/sdk/pay/service/OrderService;",
        "",
        "consumeGooglePurchaseToken",
        "Lretrofit2/Call;",
        "Lcom/onyx/android/sdk/data/account/bean/DataResponse;",
        "params",
        "Lcom/onyx/android/sdk/pay/data/GoogleConsumePurchaseListArgs;",
        "consumeHuaweiPurchaseToken",
        "id",
        "",
        "createOrder",
        "Lcom/onyx/android/sdk/pay/bean/OrderBean;",
        "Lcom/onyx/android/sdk/pay/data/CreateOrderArgs;",
        "loadGooglePurchaseToken",
        "Lcom/onyx/android/sdk/pay/bean/PurchaseOrderListBean;",
        "loadHuaweiPurchaseToken",
        "loadOrderInfo",
        "loadPayInfo",
        "Lcom/onyx/android/sdk/pay/bean/PayBean;",
        "body",
        "Lcom/onyx/android/sdk/pay/data/PayArgs;",
        "recreateOrder",
        "retryVerifyGooglePurchaseToken",
        "Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;",
        "retryVerifyHuaweiPurchaseToken",
        "Lcom/onyx/android/sdk/pay/data/RetryVerifyPurchaseTokenArgs;",
        "verifyGooglePurchaseToken",
        "args",
        "Lcom/onyx/android/sdk/pay/bean/GoogleOrderArgs;",
        "verifyHuaweiPurchaseToken",
        "Lcom/onyx/android/sdk/pay/bean/HuaweiOrderResultBean;",
        "Lcom/onyx/android/sdk/pay/data/HuaweiOrderArgs;",
        "sdk-pay_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract consumeGooglePurchaseToken(Lcom/onyx/android/sdk/pay/data/GoogleConsumePurchaseListArgs;)Lretrofit2/Call;
    .param p1    # Lcom/onyx/android/sdk/pay/data/GoogleConsumePurchaseListArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/pay/data/GoogleConsumePurchaseListArgs;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "commerce/order/{id}/consumeGooglePurchaseToken"
    .end annotation
.end method

.method public abstract consumeHuaweiPurchaseToken(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "commerce/order/{id}/consumeHuaweiPurchaseToken"
    .end annotation
.end method

.method public abstract createOrder(Lcom/onyx/android/sdk/pay/data/CreateOrderArgs;)Lretrofit2/Call;
    .param p1    # Lcom/onyx/android/sdk/pay/data/CreateOrderArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/pay/data/CreateOrderArgs;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Lcom/onyx/android/sdk/pay/bean/OrderBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "commerce/order"
    .end annotation
.end method

.method public abstract loadGooglePurchaseToken()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Lcom/onyx/android/sdk/pay/bean/PurchaseOrderListBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "commerce/order/googlePurchaseToken"
    .end annotation
.end method

.method public abstract loadHuaweiPurchaseToken()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Lcom/onyx/android/sdk/pay/bean/PurchaseOrderListBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "commerce/order/huaweiPurchaseToken"
    .end annotation
.end method

.method public abstract loadOrderInfo(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Lcom/onyx/android/sdk/pay/bean/OrderBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "commerce/order/{id}"
    .end annotation
.end method

.method public abstract loadPayInfo(Ljava/lang/String;Lcom/onyx/android/sdk/pay/data/PayArgs;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/pay/data/PayArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/pay/data/PayArgs;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Lcom/onyx/android/sdk/pay/bean/PayBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "commerce/order/{id}/pay"
    .end annotation
.end method

.method public abstract recreateOrder(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Lcom/onyx/android/sdk/pay/bean/OrderBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "commerce/order/{id}/recreate"
    .end annotation
.end method

.method public abstract retryVerifyGooglePurchaseToken(Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;)Lretrofit2/Call;
    .param p1    # Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "commerce/order/reverifyGooglePurchaseToken"
    .end annotation
.end method

.method public abstract retryVerifyHuaweiPurchaseToken(Lcom/onyx/android/sdk/pay/data/RetryVerifyPurchaseTokenArgs;)Lretrofit2/Call;
    .param p1    # Lcom/onyx/android/sdk/pay/data/RetryVerifyPurchaseTokenArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/pay/data/RetryVerifyPurchaseTokenArgs;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "commerce/order/reverifyHuaweiPurchaseToken"
    .end annotation
.end method

.method public abstract verifyGooglePurchaseToken(Ljava/lang/String;Lcom/onyx/android/sdk/pay/bean/GoogleOrderArgs;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/pay/bean/GoogleOrderArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/pay/bean/GoogleOrderArgs;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "commerce/order/{id}/verifyGooglePurchaseToken"
    .end annotation
.end method

.method public abstract verifyHuaweiPurchaseToken(Ljava/lang/String;Lcom/onyx/android/sdk/pay/data/HuaweiOrderArgs;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/pay/data/HuaweiOrderArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/pay/data/HuaweiOrderArgs;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Lcom/onyx/android/sdk/pay/bean/HuaweiOrderResultBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "commerce/order/{id}/verifyHuaweiPurchaseToken"
    .end annotation
.end method
