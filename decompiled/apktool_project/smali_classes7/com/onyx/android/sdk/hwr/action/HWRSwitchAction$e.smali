.class public final Lcom/onyx/android/sdk/hwr/action/HWRSwitchAction$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/hwr/action/HWRSwitchAction;->n()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/hwr/action/HWRSwitchAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/hwr/action/HWRSwitchAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/action/HWRSwitchAction$e;->e:Lcom/onyx/android/sdk/hwr/action/HWRSwitchAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/android/sdk/hwr/action/HWROpenAction;

    iget-object v0, p0, Lcom/onyx/android/sdk/hwr/action/HWRSwitchAction$e;->e:Lcom/onyx/android/sdk/hwr/action/HWRSwitchAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;->getBundle()Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/action/HWRSwitchAction$e;->e:Lcom/onyx/android/sdk/hwr/action/HWRSwitchAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/action/HWRSwitchAction;->getInput()Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/onyx/android/sdk/hwr/action/HWROpenAction;-><init>(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/action/HWRSwitchAction$e;->a(Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
