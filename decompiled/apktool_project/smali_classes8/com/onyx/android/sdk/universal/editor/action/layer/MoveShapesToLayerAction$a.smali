.class public final Lcom/onyx/android/sdk/universal/editor/action/layer/MoveShapesToLayerAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/layer/MoveShapesToLayerAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/layer/MoveShapesToLayerAction;

.field public final synthetic f:I


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/layer/MoveShapesToLayerAction;I)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/layer/MoveShapesToLayerAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/layer/MoveShapesToLayerAction;

    iput p2, p0, Lcom/onyx/android/sdk/universal/editor/action/layer/MoveShapesToLayerAction$a;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/Unit;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 4
    .param p1    # Lkotlin/Unit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Unit;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/note/common/command/Command;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/command/AddUndoRedoCommandAction;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/layer/MoveShapesToLayerAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/layer/MoveShapesToLayerAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/note/common/command/ShapeLayerCommand;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/layer/MoveShapesToLayerAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/layer/MoveShapesToLayerAction;

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/action/layer/MoveShapesToLayerAction;->access$getShapes$p(Lcom/onyx/android/sdk/universal/editor/action/layer/MoveShapesToLayerAction;)Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/onyx/android/sdk/universal/editor/action/layer/MoveShapesToLayerAction$a;->f:I

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/layer/MoveShapesToLayerAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/layer/MoveShapesToLayerAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/layer/MoveShapesToLayerAction;->access$getLayerId$p(Lcom/onyx/android/sdk/universal/editor/action/layer/MoveShapesToLayerAction;)I

    move-result p0

    invoke-direct {v1, v2, v3, p0}, Lcom/onyx/android/sdk/note/common/command/ShapeLayerCommand;-><init>(Ljava/util/List;II)V

    invoke-direct {p1, v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/command/AddUndoRedoCommandAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/command/Command;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/layer/MoveShapesToLayerAction$a;->a(Lkotlin/Unit;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
