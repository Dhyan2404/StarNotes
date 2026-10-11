.class public final Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;->r()Lio/reactivex/rxjava3/core/Observable;
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

.field public final synthetic f:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;Landroid/graphics/Matrix;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$c;->e:Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$c;->f:Landroid/graphics/Matrix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;)Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$c;->e:Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$c;->f:Landroid/graphics/Matrix;

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;->access$scale(Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$c;->a(Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;)Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    move-result-object p0

    return-object p0
.end method
