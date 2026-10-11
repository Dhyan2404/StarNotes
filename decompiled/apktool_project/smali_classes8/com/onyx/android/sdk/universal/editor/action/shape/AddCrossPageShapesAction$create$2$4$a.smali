.class public final Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction$create$2$4$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction$create$2$4;->invoke(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction;

.field public final synthetic f:Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction;Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction$create$2$4$a;->e:Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction$create$2$4$a;->f:Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction$create$2$4$a;->e:Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction;->getCompositeCommand()Lcom/onyx/android/sdk/note/common/command/CompositeCommand;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;-><init>()V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction$create$2$4$a;->f:Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;->removeShapes(Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;)Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/note/common/command/CompositeCommand;->addCommand(Lcom/onyx/android/sdk/note/common/command/Command;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction$create$2$4$a;->a(Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction;)V

    return-void
.end method
