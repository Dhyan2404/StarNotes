.class public final Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;->q()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;

.field public final synthetic f:Lkotlin/jvm/internal/Ref$IntRef;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction$b;->e:Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction$b;->f:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction$b;->e:Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;

    invoke-static {p1}, Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;->access$loadOrderStatus(Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;)Lcom/onyx/android/sdk/pay/bean/OrderBean;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/bean/OrderBean;->isUnpaid()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction$b;->e:Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;->setOrder(Lcom/onyx/android/sdk/pay/bean/OrderBean;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction$b;->f:Lkotlin/jvm/internal/Ref$IntRef;

    const/4 p1, 0x0

    iput p1, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction$b;->f:Lkotlin/jvm/internal/Ref$IntRef;

    iget p1, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction$b;->a(Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;)V

    return-void
.end method
