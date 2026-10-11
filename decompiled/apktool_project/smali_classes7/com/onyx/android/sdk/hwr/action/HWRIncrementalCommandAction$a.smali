.class public final Lcom/onyx/android/sdk/hwr/action/HWRIncrementalCommandAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/hwr/action/HWRIncrementalCommandAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/hwr/action/HWRIncrementalCommandAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/hwr/action/HWRIncrementalCommandAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/action/HWRIncrementalCommandAction$a;->e:Lcom/onyx/android/sdk/hwr/action/HWRIncrementalCommandAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;)Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/hwr/action/HWRBaseAction<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;",
            ">;)",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/action/HWRIncrementalCommandAction$a;->e:Lcom/onyx/android/sdk/hwr/action/HWRIncrementalCommandAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/action/HWRIncrementalCommandAction;->execCommand()Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/action/HWRIncrementalCommandAction$a;->a(Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;)Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;

    move-result-object p0

    return-object p0
.end method
