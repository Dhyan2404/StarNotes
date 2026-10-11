.class public final Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;->n()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;

.field public final synthetic f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic g:Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;Ljava/util/List;Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;",
            "Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction$c;->e:Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction$c;->f:Ljava/util/List;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction$c;->g:Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/excerpt/SelectOnScreenAction;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/excerpt/SelectOnScreenAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction$c;->e:Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SelectOnScreenAction;->getSelection()Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction$c;->e:Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction$c;->f:Ljava/util/List;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction$c;->g:Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;

    invoke-static {v1, v2, p1, p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;->access$constructNewReaderSelection(Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;Ljava/util/List;Lcom/onyx/android/sdk/reader/api/ReaderSelection;Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;)Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;->setSelection(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)V

    return-void
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SelectOnScreenAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction$c;->a(Lcom/onyx/android/sdk/universal/editor/action/excerpt/SelectOnScreenAction;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
