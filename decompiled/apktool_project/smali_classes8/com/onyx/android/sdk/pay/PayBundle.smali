.class public final Lcom/onyx/android/sdk/pay/PayBundle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPayBundle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PayBundle.kt\ncom/onyx/android/sdk/pay/PayBundle\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,90:1\n1#2:91\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u00082\u00103J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J(\u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u000c2\u0006\u0010\u0007\u001a\u00020\u00062\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\tJ*\u0010\u0015\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u0010\u0018\u00010\u00132\u0006\u0010\u000f\u001a\u00020\u000e2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010J\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u00182\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0016J\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0018J\u000e\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u0001J\u000e\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u0001J\u000e\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u0001J\u000e\u0010 \u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u0001R\u0014\u0010#\u001a\u00020\u00118\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u001b\u0010\u0003\u001a\u00020\u00028BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008$\u0010%\u001a\u0004\u0008!\u0010&R\u0018\u0010)\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R\u001d\u0010-\u001a\u0004\u0018\u00010*8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008+\u0010%\u001a\u0004\u0008$\u0010,R\u001b\u00101\u001a\u00020.8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008/\u0010%\u001a\u0004\u0008\'\u00100\u00a8\u00064"
    }
    d2 = {
        "Lcom/onyx/android/sdk/pay/PayBundle;",
        "",
        "Lorg/greenrobot/eventbus/EventBus;",
        "eventBus",
        "",
        "initStatisticBus",
        "Landroid/app/Activity;",
        "activity",
        "checkIAPOrder",
        "Lcom/onyx/android/sdk/data/account/bean/DataResponse;",
        "Lcom/onyx/android/sdk/pay/bean/OrderBean;",
        "data",
        "Lio/reactivex/rxjava3/core/Observable;",
        "checkedPaymentReady",
        "Landroid/content/Context;",
        "context",
        "",
        "",
        "productIdList",
        "Lcom/onyx/android/sdk/pay/action/BasePayAction;",
        "Lcom/onyx/android/sdk/pay/bean/ProductInfoBean;",
        "getProductInfoByProductIdAction",
        "Lcom/onyx/android/sdk/pay/data/PayType;",
        "payType",
        "Lcom/onyx/android/sdk/pay/BasePayment;",
        "getPayment",
        "findIapPayment",
        "event",
        "reportStatisticEvent",
        "subscriber",
        "register",
        "unRegister",
        "postEvent",
        "a",
        "Ljava/lang/String;",
        "PAYMENT_CONFIG_RAW_NAME",
        "b",
        "Lkotlin/Lazy;",
        "()Lorg/greenrobot/eventbus/EventBus;",
        "c",
        "Lorg/greenrobot/eventbus/EventBus;",
        "statisticBus",
        "Lcom/onyx/android/sdk/pay/data/PaymentConfig;",
        "d",
        "()Lcom/onyx/android/sdk/pay/data/PaymentConfig;",
        "paymentConfig",
        "Lcom/onyx/android/sdk/pay/PaymentSelector$Factory;",
        "e",
        "()Lcom/onyx/android/sdk/pay/PaymentSelector$Factory;",
        "paymentFactory",
        "<init>",
        "()V",
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
        "SMAP\nPayBundle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PayBundle.kt\ncom/onyx/android/sdk/pay/PayBundle\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,90:1\n1#2:91\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/pay/PayBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:Ljava/lang/String; = "payment_config"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static c:Lorg/greenrobot/eventbus/EventBus;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public static final d:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final e:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/pay/PayBundle;

    invoke-direct {v0}, Lcom/onyx/android/sdk/pay/PayBundle;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/pay/PayBundle;->INSTANCE:Lcom/onyx/android/sdk/pay/PayBundle;

    sget-object v0, Lcom/onyx/android/sdk/pay/PayBundle$eventBus$2;->INSTANCE:Lcom/onyx/android/sdk/pay/PayBundle$eventBus$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/pay/PayBundle;->b:Lkotlin/Lazy;

    sget-object v0, Lcom/onyx/android/sdk/pay/PayBundle$paymentConfig$2;->INSTANCE:Lcom/onyx/android/sdk/pay/PayBundle$paymentConfig$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/pay/PayBundle;->d:Lkotlin/Lazy;

    sget-object v0, Lcom/onyx/android/sdk/pay/PayBundle$paymentFactory$2;->INSTANCE:Lcom/onyx/android/sdk/pay/PayBundle$paymentFactory$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/pay/PayBundle;->e:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lorg/greenrobot/eventbus/EventBus;
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/pay/PayBundle;->b:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/greenrobot/eventbus/EventBus;

    return-object p0
.end method

.method public final b()Lcom/onyx/android/sdk/pay/data/PaymentConfig;
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/pay/PayBundle;->d:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/pay/data/PaymentConfig;

    return-object p0
.end method

.method public final c()Lcom/onyx/android/sdk/pay/PaymentSelector$Factory;
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/pay/PayBundle;->e:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/pay/PaymentSelector$Factory;

    return-object p0
.end method

.method public final checkIAPOrder(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/PayBundle;->findIapPayment()Lcom/onyx/android/sdk/pay/BasePayment;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pay/BasePayment;->checkIAPOrder(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public final checkedPaymentReady(Landroid/app/Activity;Lcom/onyx/android/sdk/data/account/bean/DataResponse;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/data/account/bean/DataResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Lcom/onyx/android/sdk/pay/bean/OrderBean;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Lcom/onyx/android/sdk/pay/bean/OrderBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/PayBundle;->findIapPayment()Lcom/onyx/android/sdk/pay/BasePayment;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {p2}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/pay/BasePayment;->checkPaymentReady(Landroid/app/Activity;Lcom/onyx/android/sdk/data/account/bean/DataResponse;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final findIapPayment()Lcom/onyx/android/sdk/pay/BasePayment;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/PayBundle;->b()Lcom/onyx/android/sdk/pay/data/PaymentConfig;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/pay/data/PaymentConfig;->getPaymentTypeList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/onyx/android/sdk/pay/data/PaymentArgs;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/pay/data/PaymentArgs;->getIapPayment()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    check-cast v2, Lcom/onyx/android/sdk/pay/data/PaymentArgs;

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    if-nez v2, :cond_3

    return-object v1

    :cond_3
    sget-object v0, Lcom/onyx/android/sdk/pay/data/PayType;->Companion:Lcom/onyx/android/sdk/pay/data/PayType$Companion;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/pay/data/PaymentArgs;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/pay/data/PayType$Companion;->getPayTypeByTypeName(Ljava/lang/String;)Lcom/onyx/android/sdk/pay/data/PayType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/pay/PayBundle;->getPayment(Lcom/onyx/android/sdk/pay/data/PayType;)Lcom/onyx/android/sdk/pay/BasePayment;

    move-result-object p0

    return-object p0
.end method

.method public final getPayment(Lcom/onyx/android/sdk/pay/data/PayType;)Lcom/onyx/android/sdk/pay/BasePayment;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/pay/data/PayType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/data/PayType;->getType()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/PayBundle;->c()Lcom/onyx/android/sdk/pay/PaymentSelector$Factory;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/pay/PaymentSelector$Factory;->create(Ljava/lang/String;)Lcom/onyx/android/sdk/pay/PaymentSelector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/PaymentSelector;->getPayment()Lcom/onyx/android/sdk/pay/BasePayment;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getProductInfoByProductIdAction(Landroid/content/Context;Ljava/util/List;)Lcom/onyx/android/sdk/pay/action/BasePayAction;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/onyx/android/sdk/pay/action/BasePayAction<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/pay/bean/ProductInfoBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productIdList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/PayBundle;->findIapPayment()Lcom/onyx/android/sdk/pay/BasePayment;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/pay/BasePayment;->getProductInfoByProductIdAction(Landroid/content/Context;Ljava/util/List;)Lcom/onyx/android/sdk/pay/action/BasePayAction;

    move-result-object p0

    return-object p0
.end method

.method public final initStatisticBus(Lorg/greenrobot/eventbus/EventBus;)V
    .locals 0
    .param p1    # Lorg/greenrobot/eventbus/EventBus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "eventBus"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/onyx/android/sdk/pay/PayBundle;->c:Lorg/greenrobot/eventbus/EventBus;

    return-void
.end method

.method public final postEvent(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/PayBundle;->a()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final register(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/PayBundle;->a()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolderKt;->ensureRegister(Lorg/greenrobot/eventbus/EventBus;Ljava/lang/Object;)V

    return-void
.end method

.method public final reportStatisticEvent(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "event"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/pay/PayBundle;->c:Lorg/greenrobot/eventbus/EventBus;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final unRegister(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pay/PayBundle;->a()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolderKt;->ensureUnRegister(Lorg/greenrobot/eventbus/EventBus;Ljava/lang/Object;)V

    return-void
.end method
