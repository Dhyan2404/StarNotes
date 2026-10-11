.class public final Lcom/onyx/android/sdk/universal/editor/action/selection/ScaleAction$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/selection/ScaleAction;->r(Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/selection/ScaleAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/selection/ScaleAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/ScaleAction$d;->e:Lcom/onyx/android/sdk/universal/editor/action/selection/ScaleAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/ScaleAction$d;->e:Lcom/onyx/android/sdk/universal/editor/action/selection/ScaleAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/action/selection/ScaleAction;->access$scaleShape(Lcom/onyx/android/sdk/universal/editor/action/selection/ScaleAction;Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;Landroid/graphics/RectF;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/selection/ScaleAction$d;->a(Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;)V

    return-void
.end method
