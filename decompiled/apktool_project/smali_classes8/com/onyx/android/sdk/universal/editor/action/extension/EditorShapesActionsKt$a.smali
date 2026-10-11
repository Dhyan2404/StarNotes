.class public final Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt;->addCrossPageShapes(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;Lcom/onyx/android/sdk/note/common/command/CompositeCommand;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
            "*>;"
        }
    .end annotation
.end field

.field public final synthetic f:Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;

.field public final synthetic g:Lcom/onyx/android/sdk/note/common/command/CompositeCommand;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;Lcom/onyx/android/sdk/note/common/command/CompositeCommand;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
            "*>;",
            "Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;",
            "Lcom/onyx/android/sdk/note/common/command/CompositeCommand;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt$a;->e:Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt$a;->f:Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt$a;->g:Lcom/onyx/android/sdk/note/common/command/CompositeCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;)",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt$a;->e:Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt$a;->f:Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;

    invoke-direct {p1, v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt$a;->g:Lcom/onyx/android/sdk/note/common/command/CompositeCommand;

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction;->setCompositeCommand(Lcom/onyx/android/sdk/note/common/command/CompositeCommand;)V

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt$a;->a(Ljava/util/List;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
