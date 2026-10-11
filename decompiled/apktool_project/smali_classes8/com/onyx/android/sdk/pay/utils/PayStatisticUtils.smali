.class public final Lcom/onyx/android/sdk/pay/utils/PayStatisticUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006J\u001e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u0006J\u001e\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fJ\u0016\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rJ\u0010\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/onyx/android/sdk/pay/utils/PayStatisticUtils;",
        "",
        "Lcom/onyx/android/sdk/pay/data/OrderArgs;",
        "args",
        "",
        "reportPayDialogView",
        "",
        "duration",
        "reportPayDialogClose",
        "Lcom/onyx/android/sdk/pay/data/PayType;",
        "payment",
        "reportAppPay",
        "orderArgs",
        "Lcom/onyx/android/sdk/pay/data/PayResult;",
        "payResult",
        "",
        "isQrcode",
        "reportNormalPayResult",
        "reportHuaweiPayResult",
        "",
        "a",
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


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/pay/utils/PayStatisticUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/pay/utils/PayStatisticUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/pay/utils/PayStatisticUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/pay/utils/PayStatisticUtils;->INSTANCE:Lcom/onyx/android/sdk/pay/utils/PayStatisticUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/pay/data/PayResult;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/data/PayResult;->getStatus()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    const-string p0, "cancel"

    goto :goto_0

    :cond_0
    const-string p0, "fail"

    goto :goto_0

    :cond_1
    const-string p0, "success"

    :goto_0
    return-object p0
.end method

.method public final reportAppPay(Lcom/onyx/android/sdk/pay/data/OrderArgs;Lcom/onyx/android/sdk/pay/data/PayType;J)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/pay/data/OrderArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/pay/data/PayType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "args"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "payment"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/data/OrderArgs;->getStatisticSource()Ljava/lang/String;

    move-result-object v0

    const-string v1, "function_from"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "operation_code"

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/data/OrderArgs;->getOperationCode()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p2, v1, p1, v0}, Lcom/onyx/android/sdk/pay/data/PayType;->getPaymentMethod$default(Lcom/onyx/android/sdk/pay/data/PayType;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "trigger_payment_methods"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "stay_duration"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/onyx/android/sdk/data/OnyxStatisticConstant;->INSTANCE:Lcom/onyx/android/sdk/data/OnyxStatisticConstant;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/OnyxStatisticConstant;->getTriggerSystem()Ljava/lang/String;

    move-result-object p1

    const-string p2, "device_system"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/onyx/android/sdk/data/OnyxStatisticEvent;

    const-string p2, "click_starnote_payment_popups_app_pay"

    invoke-direct {p1, p2, p0}, Lcom/onyx/android/sdk/data/OnyxStatisticEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sget-object p0, Lcom/onyx/android/sdk/pay/PayBundle;->INSTANCE:Lcom/onyx/android/sdk/pay/PayBundle;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pay/PayBundle;->reportStatisticEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final reportHuaweiPayResult(Lcom/onyx/android/sdk/pay/data/OrderArgs;Lcom/onyx/android/sdk/pay/data/PayResult;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/pay/data/OrderArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/pay/data/PayResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "orderArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payResult"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/data/OrderArgs;->getStatisticSource()Ljava/lang/String;

    move-result-object v1

    const-string v2, "function_from"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "operation_code"

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/data/OrderArgs;->getOperationCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/data/OrderArgs;->getInterfaceFrom()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "no"

    :cond_0
    const-string v2, "interface_from"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "huawei_pay_result"

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/pay/utils/PayStatisticUtils;->a(Lcom/onyx/android/sdk/pay/data/PayResult;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/data/OrderArgs;->getNoteAmount()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "note_amount"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/onyx/android/sdk/data/OnyxStatisticConstant;->INSTANCE:Lcom/onyx/android/sdk/data/OnyxStatisticConstant;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/OnyxStatisticConstant;->getTriggerSystem()Ljava/lang/String;

    move-result-object p0

    const-string p1, "device_system"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/onyx/android/sdk/data/OnyxStatisticEvent;

    const-string p1, "state_huawei_pay"

    invoke-direct {p0, p1, v0}, Lcom/onyx/android/sdk/data/OnyxStatisticEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sget-object p1, Lcom/onyx/android/sdk/pay/PayBundle;->INSTANCE:Lcom/onyx/android/sdk/pay/PayBundle;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/pay/PayBundle;->reportStatisticEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final reportNormalPayResult(Lcom/onyx/android/sdk/pay/data/OrderArgs;Lcom/onyx/android/sdk/pay/data/PayResult;Z)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/pay/data/OrderArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/pay/data/PayResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "orderArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payResult"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/data/OrderArgs;->getStatisticSource()Ljava/lang/String;

    move-result-object v1

    const-string v2, "function_from"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "operation_code"

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/data/OrderArgs;->getOperationCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/data/OrderArgs;->getInterfaceFrom()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "interface_from"

    if-eqz v2, :cond_0

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v1, "no"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {p2}, Lcom/onyx/android/sdk/pay/data/PayResult;->getPayType()Lcom/onyx/android/sdk/pay/data/PayType;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/onyx/android/sdk/pay/data/PayType;->getPaymentMethod(Z)Ljava/lang/String;

    move-result-object p3

    const-string v1, "trigger_payment_methods"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "starnote_pay_result"

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/pay/utils/PayStatisticUtils;->a(Lcom/onyx/android/sdk/pay/data/PayResult;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/data/OrderArgs;->getNoteAmount()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "note_amount"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/onyx/android/sdk/data/OnyxStatisticConstant;->INSTANCE:Lcom/onyx/android/sdk/data/OnyxStatisticConstant;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/OnyxStatisticConstant;->getTriggerSystem()Ljava/lang/String;

    move-result-object p0

    const-string p1, "device_system"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/onyx/android/sdk/data/OnyxStatisticEvent;

    const-string p1, "state_starnote_payment_popups_pay_result"

    invoke-direct {p0, p1, v0}, Lcom/onyx/android/sdk/data/OnyxStatisticEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sget-object p1, Lcom/onyx/android/sdk/pay/PayBundle;->INSTANCE:Lcom/onyx/android/sdk/pay/PayBundle;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/pay/PayBundle;->reportStatisticEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final reportPayDialogClose(Lcom/onyx/android/sdk/pay/data/OrderArgs;J)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/pay/data/OrderArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "args"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/data/OrderArgs;->getStatisticSource()Ljava/lang/String;

    move-result-object v0

    const-string v1, "function_from"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "operation_code"

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/data/OrderArgs;->getOperationCode()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "stay_duration"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/onyx/android/sdk/data/OnyxStatisticConstant;->INSTANCE:Lcom/onyx/android/sdk/data/OnyxStatisticConstant;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/OnyxStatisticConstant;->getTriggerSystem()Ljava/lang/String;

    move-result-object p1

    const-string p2, "device_system"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/onyx/android/sdk/data/OnyxStatisticEvent;

    const-string p2, "click_starnote_payment_popups_close"

    invoke-direct {p1, p2, p0}, Lcom/onyx/android/sdk/data/OnyxStatisticEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sget-object p0, Lcom/onyx/android/sdk/pay/PayBundle;->INSTANCE:Lcom/onyx/android/sdk/pay/PayBundle;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pay/PayBundle;->reportStatisticEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final reportPayDialogView(Lcom/onyx/android/sdk/pay/data/OrderArgs;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/pay/data/OrderArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "args"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/data/OrderArgs;->getStatisticSource()Ljava/lang/String;

    move-result-object v0

    const-string v1, "function_from"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "operation_code"

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/data/OrderArgs;->getOperationCode()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/onyx/android/sdk/data/OnyxStatisticConstant;->INSTANCE:Lcom/onyx/android/sdk/data/OnyxStatisticConstant;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/OnyxStatisticConstant;->getTriggerSystem()Ljava/lang/String;

    move-result-object p1

    const-string v0, "device_system"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/onyx/android/sdk/data/OnyxStatisticEvent;

    const-string v0, "view_starnote_payment_popups"

    invoke-direct {p1, v0, p0}, Lcom/onyx/android/sdk/data/OnyxStatisticEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sget-object p0, Lcom/onyx/android/sdk/pay/PayBundle;->INSTANCE:Lcom/onyx/android/sdk/pay/PayBundle;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pay/PayBundle;->reportStatisticEvent(Ljava/lang/Object;)V

    return-void
.end method
