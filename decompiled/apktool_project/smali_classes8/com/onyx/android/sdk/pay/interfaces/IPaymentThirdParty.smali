.class public interface abstract Lcom/onyx/android/sdk/pay/interfaces/IPaymentThirdParty;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/pay/interfaces/IPayment;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\n\u0010\u0007\u001a\u0004\u0018\u00010\u0008H&J\u0008\u0010\t\u001a\u00020\nH&J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH&\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/pay/interfaces/IPaymentThirdParty;",
        "Lcom/onyx/android/sdk/pay/interfaces/IPayment;",
        "getAliPayAction",
        "Lcom/onyx/android/sdk/pay/action/BasePayAction;",
        "Lcom/onyx/android/sdk/pay/data/PayResult;",
        "orderStr",
        "",
        "getWxApiProxy",
        "Lcom/onyx/android/sdk/pay/interfaces/IWXApiProxy;",
        "isPaymentInstalled",
        "",
        "onWechatPay",
        "",
        "payBean",
        "Lcom/onyx/android/sdk/pay/bean/PayBean;",
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
.method public abstract getAliPayAction(Ljava/lang/String;)Lcom/onyx/android/sdk/pay/action/BasePayAction;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/onyx/android/sdk/pay/action/BasePayAction<",
            "Lcom/onyx/android/sdk/pay/data/PayResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getWxApiProxy()Lcom/onyx/android/sdk/pay/interfaces/IWXApiProxy;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract isPaymentInstalled()Z
.end method

.method public abstract onWechatPay(Lcom/onyx/android/sdk/pay/bean/PayBean;)V
    .param p1    # Lcom/onyx/android/sdk/pay/bean/PayBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
