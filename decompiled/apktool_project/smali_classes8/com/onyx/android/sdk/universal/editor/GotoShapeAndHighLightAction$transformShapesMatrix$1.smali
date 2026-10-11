.class public final Lcom/onyx/android/sdk/universal/editor/GotoShapeAndHighLightAction$transformShapesMatrix$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/GotoShapeAndHighLightAction;->p(Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/request/page/FindBoxInfoByNotePageIdRequest;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic f:Lcom/onyx/android/sdk/geometry/data/BoxInfo;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/GotoShapeAndHighLightAction$transformShapesMatrix$1;->e:Ljava/util/List;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/GotoShapeAndHighLightAction$transformShapesMatrix$1;->f:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
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
            ">;)V"
        }
    .end annotation

    const-string v0, "boxList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/GotoShapeAndHighLightAction$transformShapesMatrix$1;->e:Ljava/util/List;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/GotoShapeAndHighLightAction$transformShapesMatrix$1;->f:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->setTransformShapes(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    check-cast p1, Ljava/util/Collection;

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/GotoShapeAndHighLightAction$transformShapesMatrix$1$1$1;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GotoShapeAndHighLightAction$transformShapesMatrix$1$1$1;

    invoke-static {p1, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->toMap(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->setTransformBoxInfoMap(Ljava/util/Map;)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->buildSelectionRectShapes(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Ljava/util/List;

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/GotoShapeAndHighLightAction$transformShapesMatrix$1;->a(Ljava/util/List;)V

    return-void
.end method
