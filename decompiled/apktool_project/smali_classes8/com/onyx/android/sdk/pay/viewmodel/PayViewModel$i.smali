.class public final Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->loadOrderInfo(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;

.field public final synthetic f:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel$i;->e:Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;

    iput-object p2, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel$i;->f:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/data/account/bean/DataResponse;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/account/bean/DataResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Lcom/onyx/android/sdk/pay/bean/OrderBean;",
            ">;)",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Lcom/onyx/android/sdk/pay/bean/OrderBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel$i;->e:Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel$i;->f:Landroid/app/Activity;

    invoke-static {v0, p0, p1}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->access$checkPaymentReady(Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;Landroid/app/Activity;Lcom/onyx/android/sdk/data/account/bean/DataResponse;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/data/account/bean/DataResponse;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel$i;->a(Lcom/onyx/android/sdk/data/account/bean/DataResponse;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
