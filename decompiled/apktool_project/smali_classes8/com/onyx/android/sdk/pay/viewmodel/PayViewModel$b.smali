.class public final Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->i(Z)V
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
.field public final synthetic e:Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;

.field public final synthetic f:Lcom/onyx/android/sdk/pay/data/PayStatusType;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;Lcom/onyx/android/sdk/pay/data/PayStatusType;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel$b;->e:Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;

    iput-object p2, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel$b;->f:Lcom/onyx/android/sdk/pay/data/PayStatusType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel$b;->e:Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;->getPayStatusType()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel$b;->f:Lcom/onyx/android/sdk/pay/data/PayStatusType;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel$b;->a(Ljava/lang/Throwable;)V

    return-void
.end method
