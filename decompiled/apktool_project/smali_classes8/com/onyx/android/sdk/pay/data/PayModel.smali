.class public final Lcom/onyx/android/sdk/pay/data/PayModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002R$\u0010\n\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\u0004\u0010\t\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/android/sdk/pay/data/PayModel;",
        "",
        "Lcom/onyx/android/sdk/pay/bean/OrderBean;",
        "orderBean",
        "setOrder",
        "a",
        "Lcom/onyx/android/sdk/pay/bean/OrderBean;",
        "getOrder",
        "()Lcom/onyx/android/sdk/pay/bean/OrderBean;",
        "(Lcom/onyx/android/sdk/pay/bean/OrderBean;)V",
        "order",
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


# instance fields
.field public a:Lcom/onyx/android/sdk/pay/bean/OrderBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOrder()Lcom/onyx/android/sdk/pay/bean/OrderBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/data/PayModel;->a:Lcom/onyx/android/sdk/pay/bean/OrderBean;

    return-object p0
.end method

.method public final setOrder(Lcom/onyx/android/sdk/pay/bean/OrderBean;)Lcom/onyx/android/sdk/pay/data/PayModel;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/pay/bean/OrderBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/pay/data/PayModel;->a:Lcom/onyx/android/sdk/pay/bean/OrderBean;

    return-object p0
.end method

.method public final setOrder(Lcom/onyx/android/sdk/pay/bean/OrderBean;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/pay/bean/OrderBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/pay/data/PayModel;->a:Lcom/onyx/android/sdk/pay/bean/OrderBean;

    return-void
.end method
