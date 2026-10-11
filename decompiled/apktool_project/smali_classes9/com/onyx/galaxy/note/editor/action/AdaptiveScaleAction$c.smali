.class public final Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;->p()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$c;->e:Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Matrix;)Lkotlin/Pair;
    .locals 1
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Matrix;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/Pair;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$c;->e:Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;->access$collectVisibleBoxList(Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;Landroid/graphics/Matrix;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$c;->a(Landroid/graphics/Matrix;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method
