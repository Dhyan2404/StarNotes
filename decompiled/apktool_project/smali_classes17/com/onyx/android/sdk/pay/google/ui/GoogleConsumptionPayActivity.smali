.class public final Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/theme/config/IUnSupportThemeRecreateActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGoogleConsumptionPayActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GoogleConsumptionPayActivity.kt\ncom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,274:1\n1855#2,2:275\n*S KotlinDebug\n*F\n+ 1 GoogleConsumptionPayActivity.kt\ncom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity\n*L\n224#1:275,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000]\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007*\u0001-\u0018\u0000 72\u00020\u00012\u00020\u0002:\u00017B\u0007\u00a2\u0006\u0004\u00085\u00106J\u0012\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0014J\u0008\u0010\u0007\u001a\u00020\u0005H\u0014J\u0008\u0010\u0008\u001a\u00020\u0005H\u0002J\u0008\u0010\t\u001a\u00020\u0005H\u0002J\u0008\u0010\n\u001a\u00020\u0005H\u0002J\u0016\u0010\u000e\u001a\u00020\u00052\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u0002J\u0008\u0010\u000f\u001a\u00020\u0005H\u0002J\u000e\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000bH\u0002J\u0010\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u000cH\u0002J\u0018\u0010\u0016\u001a\u00020\u00052\u000e\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u000bH\u0002J\u0016\u0010\u0017\u001a\u00020\u00052\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u000bH\u0002J\u0010\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u0014H\u0002J\u0008\u0010\u001a\u001a\u00020\u0005H\u0002J\u0010\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u001bH\u0002J\u0008\u0010\u001e\u001a\u00020\u0005H\u0002R\u0016\u0010\"\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0016\u0010$\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010!R\u0016\u0010&\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010!R\u0016\u0010(\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010!R\u0018\u0010,\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R\u0014\u00100\u001a\u00020-8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008.\u0010/R\u0014\u00104\u001a\u0002018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00082\u00103\u00a8\u00068"
    }
    d2 = {
        "Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Lcom/onyx/android/sdk/theme/config/IUnSupportThemeRecreateActivity;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "onDestroy",
        "O",
        "P",
        "L",
        "",
        "Lcom/android/billingclient/api/ProductDetails;",
        "productDetailList",
        "U",
        "S",
        "Lcom/android/billingclient/api/QueryProductDetailsParams$Product;",
        "K",
        "item",
        "Q",
        "Lcom/android/billingclient/api/Purchase;",
        "purchaseList",
        "N",
        "I",
        "purchase",
        "H",
        "F",
        "",
        "resultCode",
        "J",
        "G",
        "",
        "w0",
        "Ljava/lang/String;",
        "priceType",
        "x0",
        "productId",
        "y0",
        "orderId",
        "z0",
        "outTradeNo",
        "Lcom/android/billingclient/api/BillingClient;",
        "A0",
        "Lcom/android/billingclient/api/BillingClient;",
        "billingClient",
        "com/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity$clientStateListener$1",
        "B0",
        "Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity$clientStateListener$1;",
        "clientStateListener",
        "Lcom/android/billingclient/api/PurchasesUpdatedListener;",
        "C0",
        "Lcom/android/billingclient/api/PurchasesUpdatedListener;",
        "purchasesUpdatedListener",
        "<init>",
        "()V",
        "Companion",
        "sdk-pay_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nGoogleConsumptionPayActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GoogleConsumptionPayActivity.kt\ncom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,274:1\n1855#2,2:275\n*S KotlinDebug\n*F\n+ 1 GoogleConsumptionPayActivity.kt\ncom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity\n*L\n224#1:275,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEVELOPER_PARAMS_MAX_LENGTH:I = 0x40

.field public static final KEY_PAYMENT_ORDER_ID:Ljava/lang/String; = "key_payment_order_id"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_PAYMENT_OUT_TRADE_NO:Ljava/lang/String; = "key_payment_out_trade_no"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_PAYMENT_PRODUCT_ID:Ljava/lang/String; = "key_payment_product_id"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_PAYMENT_PRODUCT_TYPE:Ljava/lang/String; = "key_payment_product_type"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public A0:Lcom/android/billingclient/api/BillingClient;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final B0:Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity$clientStateListener$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final C0:Lcom/android/billingclient/api/PurchasesUpdatedListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public w0:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public x0:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public y0:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public z0:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;->Companion:Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, "inapp"

    iput-object v0, p0, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;->w0:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;->x0:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;->y0:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;->z0:Ljava/lang/String;

    new-instance v0, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity$clientStateListener$1;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity$clientStateListener$1;-><init>(Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;->B0:Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity$clientStateListener$1;

    new-instance v0, Lcom/sunia/HTREnginev2/f4h;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/f4h;-><init>(Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;->C0:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    return-void
.end method

.method public static synthetic C(Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;->M(Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic D(Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;->T(Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic E(Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;->R(Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method public static final M(Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "billingResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productDetailList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_1

    move-object p1, p2

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7d1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;->J(I)V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;->U(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query product filed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;->J(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static final R(Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "billingResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 p2, 0x1

    if-eq v0, p2, :cond_2

    const/4 p2, 0x3

    const-string v1, " message:"

    if-eq v0, p2, :cond_1

    const/4 p2, 0x5

    if-eq v0, p2, :cond_0

    sget-object p2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "purchasesUpdated error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;->J(I)V

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "purchasesUpdated INVALID PARAMETER VALUE code:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;->J(I)V

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "purchasesUpdated BILLING_UNAVAILABLE code:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;->J(I)V

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-string p2, "purchasesUpdated error user canceled"

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;->F()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;->N(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public static final T(Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "billingResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "purchaseList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-nez p1, :cond_0

    move-object p1, p2

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;->N(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;->L()V

    :goto_0
    return-void
.end method

.method public static final synthetic access$completePayment(Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;->G()V

    return-void
.end method

.method public static final synthetic access$failPayment(Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;->J(I)V

    return-void
.end method

.method public static final synthetic access$getProductDetails(Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;->L()V

    return-void
.end method


# virtual methods
.method public final F()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/pay/data/PayResult;

    sget-object v1, Lcom/onyx/android/sdk/pay/data/PayType;->GOOGLE:Lcom/onyx/android/sdk/pay/data/PayType;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/pay/data/PayResult;-><init>(Lcom/onyx/android/sdk/pay/data/PayType;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/pay/data/PayResult;->setStatus(I)V

    sget-object v1, Lcom/onyx/android/sdk/pay/PayBundle;->INSTANCE:Lcom/onyx/android/sdk/pay/PayBundle;

    new-instance v2, Lcom/onyx/android/sdk/pay/event/PayResultEvent;

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/pay/event/PayResultEvent;-><init>(Lcom/onyx/android/sdk/pay/data/PayResult;)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/pay/PayBundle;->postEvent(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final G()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/pay/data/PayResult;

    sget-object v1, Lcom/onyx/android/sdk/pay/data/PayType;->GOOGLE:Lcom/onyx/android/sdk/pay/data/PayType;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/pay/data/PayResult;-><init>(Lcom/onyx/android/sdk/pay/data/PayType;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/pay/data/PayResult;->setStatus(I)V

    sget-object v1, Lcom/onyx/android/sdk/pay/PayBundle;->INSTANCE:Lcom/onyx/android/sdk/pay/PayBundle;

    new-instance v2, Lcom/onyx/android/sdk/pay/event/PayResultEvent;

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/pay/event/PayResultEvent;-><init>(Lcom/onyx/android/sdk/pay/data/PayResult;)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/pay/PayBundle;->postEvent(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final H(Lcom/android/billingclient/api/Purchase;)V
    .locals 5

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;->A0:Lcom/android/billingclient/api/BillingClient;

    if-nez v0, :cond_0

    const/16 p1, 0x3ea

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;->J(I)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getAccountIdentifiers()Lcom/android/billingclient/api/AccountIdentifiers;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/billingclient/api/AccountIdentifiers;->getObfuscatedAccountId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, ""

    :cond_2
    const-class v1, Lcom/onyx/android/sdk/pay/google/viewmodel/GooglePayViewModel;

    invoke-static {p0, v1}, Lcom/onyx/android/sdk/base/extension/FragmentActivityKt;->getViewModel(Landroidx/fragment/app/FragmentActivity;Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/pay/google/viewmodel/GooglePayViewModel;

    iget-object v2, p0, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;->A0:Lcom/android/billingclient/api/BillingClient;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;->y0:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object p1

    const-string v4, "getPurchaseToken(...)"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3, p1, v0}, Lcom/onyx/android/sdk/pay/google/viewmodel/GooglePayViewModel;->verifyGooglePurchaseToken(Lcom/android/billingclient/api/BillingClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity$consumeOwnedPurchase$1;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity$consumeOwnedPurchase$1;-><init>(Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;)V

    new-instance v1, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity$a;

    invoke-direct {v1, v0}, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final I(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/Purchase;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;->H(Lcom/android/billingclient/api/Purchase;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final J(I)V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/pay/data/PayResult;

    sget-object v1, Lcom/onyx/android/sdk/pay/data/PayType;->GOOGLE:Lcom/onyx/android/sdk/pay/data/PayType;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/pay/data/PayResult;-><init>(Lcom/onyx/android/sdk/pay/data/PayType;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/pay/data/PayResult;->setStatus(I)V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/pay/data/PayResult;->setCode(I)V

    sget-object v1, Lcom/onyx/android/sdk/pay/google/PaymentErrorCodeUtils;->INSTANCE:Lcom/onyx/android/sdk/pay/google/PaymentErrorCodeUtils;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/pay/google/PaymentErrorCodeUtils;->getErrorMessage(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/pay/data/PayResult;->setMessage(Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/pay/PayBundle;->INSTANCE:Lcom/onyx/android/sdk/pay/PayBundle;

    new-instance v1, Lcom/onyx/android/sdk/pay/event/PayResultEvent;

    invoke-direct {v1, v0}, Lcom/onyx/android/sdk/pay/event/PayResultEvent;-><init>(Lcom/onyx/android/sdk/pay/data/PayResult;)V

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/pay/PayBundle;->postEvent(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final K()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/QueryProductDetailsParams$Product;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;->x0:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductId(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object p0

    const-string v1, "inapp"

    invoke-virtual {p0, v1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    move-result-object p0

    const-string v1, "build(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final L()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;->K()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->setProductList(Ljava/util/List;)Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;->A0:Lcom/android/billingclient/api/BillingClient;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/sunia/HTREnginev2/g4h;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/g4h;-><init>(Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/billingclient/api/BillingClient;->queryProductDetailsAsync(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    :cond_0
    return-void
.end method

.method public final N(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    const-string p1, "result is empty"

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/16 p1, 0x7d4

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;->J(I)V

    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;->I(Ljava/util/List;)V

    return-void
.end method

.method public final O()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_payment_product_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    iput-object v0, p0, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;->x0:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "key_payment_order_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    iput-object v0, p0, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;->y0:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "key_payment_out_trade_no"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;->z0:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_payment_product_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "inapp"

    goto :goto_1

    :cond_3
    const-string v0, "subs"

    :goto_1
    iput-object v0, p0, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;->w0:Ljava/lang/String;

    return-void
.end method

.method public final P()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/android/billingclient/api/PendingPurchasesParams;->newBuilder()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->enableOneTimeProducts()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->build()Lcom/android/billingclient/api/PendingPurchasesParams;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases(Lcom/android/billingclient/api/PendingPurchasesParams;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;->C0:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;->A0:Lcom/android/billingclient/api/BillingClient;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;->B0:Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity$clientStateListener$1;

    invoke-virtual {v0, p0}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public final Q(Lcom/android/billingclient/api/ProductDetails;)V
    .locals 6

    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setProductDetails(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;->z0:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x40

    if-le v2, v3, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/android/sdk/pay/R$string;->developer_params_error:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v0, v3, v1, v2}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;Ljava/lang/CharSequence;ZILjava/lang/Object;)V

    const/16 p1, 0x7d2

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;->J(I)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object v2

    const-string v3, ""

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    move-object v2, v3

    :cond_2
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceAmountMicros()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_0

    :cond_3
    move-object v4, v3

    :goto_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getFormattedPrice()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    :cond_4
    move-object v5, v3

    :cond_5
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5f

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setProductDetailsParamsList(Ljava/util/List;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;->z0:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setObfuscatedAccountId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setObfuscatedProfileId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;->A0:Lcom/android/billingclient/api/BillingClient;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p0, p1}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    :cond_7
    return-void
.end method

.method public final S()V
    .locals 3

    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;->w0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;->A0:Lcom/android/billingclient/api/BillingClient;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/sunia/HTREnginev2/h4h;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/h4h;-><init>(Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    :cond_0
    return-void
.end method

.method public final U(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/ProductDetails;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/billingclient/api/ProductDetails;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;->S()V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;->Q(Lcom/android/billingclient/api/ProductDetails;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54ffffef

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;->A0:Lcom/android/billingclient/api/BillingClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClient;->endConnection()V

    :cond_0
    return-void
.end method
