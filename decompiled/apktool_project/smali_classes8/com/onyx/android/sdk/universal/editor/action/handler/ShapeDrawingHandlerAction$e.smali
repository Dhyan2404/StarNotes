.class public final Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->r(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Z)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;

.field public final synthetic f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic g:Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;",
            "Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$e;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$e;->f:Ljava/util/List;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$e;->g:Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$e;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$e;->f:Ljava/util/List;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$e;->g:Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;

    invoke-static {v0, p1, v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->access$forceRenderNoteOnDemand(Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/ForceRenderNoteDirtyArgs;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$e$a;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$e$a;-><init>(Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$e;->a(Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
