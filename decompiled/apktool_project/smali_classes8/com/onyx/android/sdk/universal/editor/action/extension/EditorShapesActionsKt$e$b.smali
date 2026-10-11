.class public final Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt$e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt$e;->a(Ljava/util/Map$Entry;)Lio/reactivex/rxjava3/core/ObservableSource;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;

.field public final synthetic f:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;",
            "Ljava/util/Map$Entry<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt$e$b;->e:Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt$e$b;->f:Ljava/util/Map$Entry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt$e$b;->e:Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;->getUndoRedoCommand()Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt$e$b;->f:Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;->addShapes(Ljava/util/Collection;)Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt$e$b;->a(Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;)V

    return-void
.end method
