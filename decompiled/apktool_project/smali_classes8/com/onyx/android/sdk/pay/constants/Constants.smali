.class public final Lcom/onyx/android/sdk/pay/constants/Constants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0011\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/onyx/android/sdk/pay/constants/Constants;",
        "",
        "()V",
        "ALIPAY_PACKAGE",
        "",
        "ERROR_CODE_GOOGLE_DUPLICATE_PAYMENT",
        "",
        "KEY_GOOGLE_PRODUCT_ID",
        "ORDER_STATUS_CANCEL",
        "ORDER_STATUS_COMPLETE",
        "ORDER_STATUS_PAID",
        "ORDER_STATUS_UNPAID",
        "PAY_ATTACH_APP",
        "PAY_ATTACH_NATIVE",
        "PAY_CANCEL",
        "PAY_FAILED",
        "PAY_GOOGLE",
        "PAY_HUAWEI_IAP",
        "PAY_SUCCESS",
        "PAY_TYPE_ALIPAY",
        "PAY_TYPE_CRYPTO",
        "PAY_TYPE_UNIONPAY",
        "PAY_TYPE_WECHAT",
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


# static fields
.field public static final ALIPAY_PACKAGE:Ljava/lang/String; = "com.eg.android.AlipayGphone"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ERROR_CODE_GOOGLE_DUPLICATE_PAYMENT:I = 0x19e16

.field public static final INSTANCE:Lcom/onyx/android/sdk/pay/constants/Constants;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_GOOGLE_PRODUCT_ID:Ljava/lang/String; = "productId"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ORDER_STATUS_CANCEL:I = 0x3

.field public static final ORDER_STATUS_COMPLETE:I = 0x2

.field public static final ORDER_STATUS_PAID:I = 0x1

.field public static final ORDER_STATUS_UNPAID:I = 0x0

.field public static final PAY_ATTACH_APP:Ljava/lang/String; = "app"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PAY_ATTACH_NATIVE:Ljava/lang/String; = "native"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PAY_CANCEL:I = 0x1

.field public static final PAY_FAILED:I = 0x2

.field public static final PAY_GOOGLE:Ljava/lang/String; = "GOOGLE_IAP"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PAY_HUAWEI_IAP:Ljava/lang/String; = "HUAWEI_IAP"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PAY_SUCCESS:I = 0x0

.field public static final PAY_TYPE_ALIPAY:Ljava/lang/String; = "ALIPAY"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PAY_TYPE_CRYPTO:Ljava/lang/String; = "CRYPTO"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PAY_TYPE_UNIONPAY:Ljava/lang/String; = "UNIONPAY"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PAY_TYPE_WECHAT:Ljava/lang/String; = "WECHAT"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/pay/constants/Constants;

    invoke-direct {v0}, Lcom/onyx/android/sdk/pay/constants/Constants;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/pay/constants/Constants;->INSTANCE:Lcom/onyx/android/sdk/pay/constants/Constants;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
