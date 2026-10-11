.class public final Lcom/onyx/galaxy/note/editor/action/SwitchPenBrushAction;
.super Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u000c\u001a\u00020\u0007\u0012\u0006\u0010\u000f\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\n\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002R\u0017\u0010\u000c\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u0016\u0010\u000f\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/action/SwitchPenBrushAction;",
        "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
        "l",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "g",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "getEditorBundle",
        "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "h",
        "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
        "currentPenType",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final g:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/galaxy/note/editor/data/ShapeToolType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentPenType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/SwitchPenBrushAction;->g:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/action/SwitchPenBrushAction;->h:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    return-void
.end method

.method public static final synthetic access$getNextBush(Lcom/onyx/galaxy/note/editor/action/SwitchPenBrushAction;)Lcom/onyx/galaxy/note/editor/data/ShapeToolType;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/SwitchPenBrushAction;->l()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/SwitchPenBrushAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/SwitchPenBrushAction$a;-><init>(Lcom/onyx/galaxy/note/editor/action/SwitchPenBrushAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/SwitchPenBrushAction;->g:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public final l()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;->Companion:Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->hasPenBox()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-static {v0, v3, v2, v3}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->getPenBox$default(Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;->getSelectedId()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;->getNextPenArgs(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v3

    :cond_2
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/SwitchPenBrushAction;->g:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance v1, Lcom/onyx/android/sdk/universal/common/events/StylusClickPenBoxEvent;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->clone()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/onyx/android/sdk/universal/common/events/StylusClickPenBoxEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V

    invoke-static {p0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_3
    return-object v3

    :cond_4
    sget-object v0, Lcom/onyx/galaxy/note/utils/ShapeToolUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/ShapeToolUtils;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/utils/ShapeToolUtils;->getEnableSwitchBrushList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    return-object v3

    :cond_5
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/SwitchPenBrushAction;->h:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p0, v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr p0, v1

    sget-object v1, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p0, v2, v3}, Lcom/onyx/android/sdk/base/utils/MathUtils;->clamp(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    return-object p0
.end method
