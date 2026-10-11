.class public final Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$a;->e:Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$a;->e:Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$a;->e:Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;->access$scaleEnd(Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$a;->e:Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;->access$scaling(Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$a;->e:Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;->access$scaleBegin(Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$a;->a(Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
