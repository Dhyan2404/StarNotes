.class public final Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppShapeAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppShapeAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B5\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000c\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0002H\u0002J\u000e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0002H\u0002R\u001d\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR\u001d\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\n\u001a\u0004\u0008\u000f\u0010\u000cR\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\nR\u001a\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010\n\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppShapeAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "m",
        "Lcom/onyx/android/sdk/note/common/command/Command;",
        "l",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "i",
        "Ljava/util/List;",
        "getOriginShapes",
        "()Ljava/util/List;",
        "originShapes",
        "j",
        "getNewShapes",
        "newShapes",
        "",
        "k",
        "Z",
        "addToCmdStack",
        "",
        "removedShapes",
        "addedShapes",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Ljava/util/List;Z)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Z

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Ljava/util/List;Z)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "originShapes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newShapes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppShapeAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    .line 3
    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction;->i:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction;->j:Ljava/util/List;

    .line 5
    iput-boolean p4, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction;->k:Z

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction;->l:Ljava/util/List;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction;->m:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x1

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Ljava/util/List;Z)V

    return-void
.end method

.method public static final synthetic access$addUndoRedoCommand(Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction;->l()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAddToCmdStack$p(Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction;->k:Z

    return p0
.end method

.method public static final synthetic access$getAddedShapes$p(Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction;->m:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getRemovedShapes$p(Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction;->l:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$invalidateDisplay(Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction;->m()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction$c;->e:Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction$c;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction$f;-><init>(Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction$g;-><init>(Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction$h;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction$h;-><init>(Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "observeOn(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction$create$8;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction$create$8;-><init>(Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction;)V

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction$create$9;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction$create$9;-><init>(Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getNewShapes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction;->j:Ljava/util/List;

    return-object p0
.end method

.method public final getOriginShapes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction;->i:Ljava/util/List;

    return-object p0
.end method

.method public final l()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/note/common/command/Command;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction;->l:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;->removeShapes(Ljava/util/Collection;)Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction;->m:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;->addShapes(Ljava/util/Collection;)Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/command/AddUndoRedoCommandAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/command/AddUndoRedoCommandAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/command/Command;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final m()Lio/reactivex/rxjava3/core/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/util/Collection;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction;->i:Ljava/util/List;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/ReplaceShapesAction;->m:Ljava/util/List;

    aput-object v4, v1, v2

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->mergeList([Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v3, v0, v2}, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt;->forceRenderNoteDirtyRectToDisplay$default(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Ljava/util/List;ZILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
