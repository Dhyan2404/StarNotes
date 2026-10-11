.class public final Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->A(Lcom/onyx/android/sdk/geometry/data/TouchData;)Lio/reactivex/rxjava3/core/Observable;
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
        "Lio/reactivex/rxjava3/functions/Predicate;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;

.field public final synthetic f:Lcom/onyx/android/sdk/geometry/data/TouchData;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction$m;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction$m;->f:Lcom/onyx/android/sdk/geometry/data/TouchData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction$m;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction$m;->f:Lcom/onyx/android/sdk/geometry/data/TouchData;

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;->access$filterSingleTap(Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;Lcom/onyx/android/sdk/geometry/data/TouchData;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction$m;->a(Lcom/onyx/android/sdk/universal/editor/action/handler/TransformHandlerAction;)Z

    move-result p0

    return p0
.end method
