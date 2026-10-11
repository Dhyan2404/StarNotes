.class public final Lcom/onyx/android/sdk/pay/data/PayResult$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/pay/data/PayResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPayResult.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PayResult.kt\ncom/onyx/android/sdk/pay/data/PayResult$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,30:1\n1#2:31\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onyx/android/sdk/pay/data/PayResult$Companion;",
        "",
        "()V",
        "createFailResult",
        "Lcom/onyx/android/sdk/pay/data/PayResult;",
        "payType",
        "Lcom/onyx/android/sdk/pay/data/PayType;",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPayResult.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PayResult.kt\ncom/onyx/android/sdk/pay/data/PayResult$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,30:1\n1#2:31\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/pay/data/PayResult$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFailResult(Lcom/onyx/android/sdk/pay/data/PayType;)Lcom/onyx/android/sdk/pay/data/PayResult;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/pay/data/PayType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "payType"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/pay/data/PayResult;

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/pay/data/PayResult;-><init>(Lcom/onyx/android/sdk/pay/data/PayType;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pay/data/PayResult;->setStatus(I)V

    return-object p0
.end method
