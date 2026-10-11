.class final Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction$createAnnotationShape$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction;->m()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/note/NoteBundle;",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "it",
        "Lcom/onyx/android/sdk/note/NoteBundle;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction$createAnnotationShape$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onyx/android/sdk/note/NoteBundle;)Lcom/onyx/android/sdk/note/common/shape/Shape;
    .locals 23
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "it"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, v0, Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction$createAnnotationShape$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction;->getInfo()Lcom/onyx/android/sdk/universal/editor/events/note/TextSelectionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/events/note/TextSelectionInfo;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    .line 3
    iget-object v2, v0, Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction$createAnnotationShape$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction;->getInfo()Lcom/onyx/android/sdk/universal/editor/events/note/TextSelectionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/events/note/TextSelectionInfo;->getSelection()Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object v2

    .line 4
    sget-object v3, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    invoke-virtual {v3, v1}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->normalizeUnRotatedMatrix(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object v3

    .line 5
    iget-object v4, v0, Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction$createAnnotationShape$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction;

    invoke-static {v4, v2, v3}, Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction;->access$createAnnotationInfo(Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction;Lcom/onyx/android/sdk/reader/api/ReaderSelection;Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;

    move-result-object v2

    .line 6
    iget-object v0, v0, Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction$createAnnotationShape$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;->getRectFList()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction;->access$textRegionToTouchPointList(Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction;Ljava/util/List;)Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v0

    .line 7
    sget-object v3, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->create(I)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v3

    .line 8
    new-instance v15, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    move-object v4, v15

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v22, v15

    move/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x7fff

    const/16 v21, 0x0

    invoke-direct/range {v4 .. v21}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;-><init>(FFLcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;FFFFFFFFFZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v4

    move-object/from16 v5, v22

    invoke-virtual {v5, v4}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->setDisplayScale(F)V

    .line 10
    invoke-interface {v3, v5}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->setShapeCreateArgs(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;)V

    .line 11
    sget-object v4, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->Companion:Lcom/onyx/android/sdk/geometry/data/BoxInfo$Companion;

    invoke-virtual {v4, v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo$Companion;->getRotatedMatrix(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->setShapeMatrix(Landroid/graphics/Matrix;)V

    .line 12
    invoke-interface {v3, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->addPoints(Lcom/onyx/android/sdk/base/data/TouchPointList;)V

    .line 13
    invoke-interface {v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->ensureShapeUniqueId()V

    .line 14
    invoke-interface {v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->updateShapeRect()V

    .line 15
    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;->getColor()I

    move-result v0

    invoke-interface {v3, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->setStrokeColor(I)V

    .line 16
    invoke-static {v3, v2}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->setAnnotationInfoBean(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;)V

    const/4 v0, 0x1

    .line 17
    invoke-static {v3, v0}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->setShapeVersion(Lcom/onyx/android/sdk/note/common/shape/Shape;I)V

    return-object v3
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/note/NoteBundle;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/annotation/SaveAnnotationAction$createAnnotationShape$1;->invoke(Lcom/onyx/android/sdk/note/NoteBundle;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p0

    return-object p0
.end method
