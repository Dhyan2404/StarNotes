.class public final Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->D(Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;Z)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$q0;->e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$q0;->e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->access$getTransformHandlerAction$p(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;)Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "transformHandlerAction"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->setTransformStarted(Z)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$q0;->a(Lcom/onyx/android/sdk/universal/editor/action/selection/StartTransformAction;)V

    return-void
.end method
