.class public final Lcom/onyx/android/sdk/note/request/CreateLinkShapeRequest;
.super Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0016\u001a\u00020\n\u0012\u0006\u0010\u001a\u001a\u00020\u0017\u00a2\u0006\u0004\u0008\'\u0010(J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J(\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002R\u0014\u0010\r\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0016\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0016\u0010\u001a\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\"\u0010\u001b\u001a\u00020\u00088\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u0017\u0010&\u001a\u00020!8\u0006\u00a2\u0006\u000c\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%\u00a8\u0006)"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/request/CreateLinkShapeRequest;",
        "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;",
        "Lcom/onyx/android/sdk/note/NoteBundle;",
        "noteBundle",
        "",
        "execute",
        "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        "notePage",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "f",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "downPoint",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "renderContext",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "imageSize",
        "g",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "h",
        "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        "i",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "startPoint",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;",
        "j",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;",
        "linkBean",
        "linkShape",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "getLinkShape",
        "()Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "setLinkShape",
        "(Lcom/onyx/android/sdk/note/common/shape/Shape;)V",
        "Lcom/onyx/android/sdk/note/common/command/CompositeCommand;",
        "k",
        "Lcom/onyx/android/sdk/note/common/command/CompositeCommand;",
        "getCompositeCommand",
        "()Lcom/onyx/android/sdk/note/common/command/CompositeCommand;",
        "compositeCommand",
        "<init>",
        "(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;)V",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final g:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lcom/onyx/android/sdk/note/common/document/page/NotePage;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Lcom/onyx/android/sdk/note/common/command/CompositeCommand;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public linkShape:Lcom/onyx/android/sdk/note/common/shape/Shape;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/note/common/document/page/NotePage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notePage"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startPoint"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "linkBean"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/note/request/CreateLinkShapeRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iput-object p3, p0, Lcom/onyx/android/sdk/note/request/CreateLinkShapeRequest;->h:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    iput-object p4, p0, Lcom/onyx/android/sdk/note/request/CreateLinkShapeRequest;->i:Lcom/onyx/android/sdk/base/data/TouchPoint;

    iput-object p5, p0, Lcom/onyx/android/sdk/note/request/CreateLinkShapeRequest;->j:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    new-instance p1, Lcom/onyx/android/sdk/note/common/command/CompositeCommand;

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-direct {p1, p2, p3, p2}, Lcom/onyx/android/sdk/note/common/command/CompositeCommand;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/CreateLinkShapeRequest;->k:Lcom/onyx/android/sdk/note/common/command/CompositeCommand;

    return-void
.end method


# virtual methods
.method public execute(Lcom/onyx/android/sdk/note/NoteBundle;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/note/request/CreateLinkShapeRequest;->h:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/request/CreateLinkShapeRequest;->f(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/request/CreateLinkShapeRequest;->setLinkShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    sget-object v0, Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;

    iget-object v1, p0, Lcom/onyx/android/sdk/note/request/CreateLinkShapeRequest;->h:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/CreateLinkShapeRequest;->getLinkShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;->saveShape(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/CreateLinkShapeRequest;->getLinkShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/note/NoteBundle;->postAddShapeEvent(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/note/request/CreateLinkShapeRequest;->k:Lcom/onyx/android/sdk/note/common/command/CompositeCommand;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/CreateLinkShapeRequest;->getLinkShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOfNotNull(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/command/CompositeCommand;->addShapesUndoRedoCommand(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/NoteBundle;->getCommandManager()Lcom/onyx/android/sdk/note/common/command/CommandManager;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/CreateLinkShapeRequest;->k:Lcom/onyx/android/sdk/note/common/command/CompositeCommand;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/note/common/command/CommandManager;->addCommand(Lcom/onyx/android/sdk/note/common/command/Command;)V

    return-void
.end method

.method public final f(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)Lcom/onyx/android/sdk/note/common/shape/Shape;
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/note/request/CreateLinkShapeRequest;->j:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    iget-object v2, p0, Lcom/onyx/android/sdk/note/request/CreateLinkShapeRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getRenderMeasure()Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;->calculateLinkWidth(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;)I

    move-result v1

    iget-object v2, p0, Lcom/onyx/android/sdk/note/request/CreateLinkShapeRequest;->j:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->isOnlyIconStyle()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;->calculateLinkHeight(Z)I

    move-result v0

    new-instance v2, Lcom/onyx/android/sdk/base/data/Size;

    invoke-direct {v2, v1, v0}, Lcom/onyx/android/sdk/base/data/Size;-><init>(II)V

    iget-object v0, p0, Lcom/onyx/android/sdk/note/request/CreateLinkShapeRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getRenderMeasure()Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget-object v3, p0, Lcom/onyx/android/sdk/note/request/CreateLinkShapeRequest;->i:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v1, v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->matrixPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/note/request/CreateLinkShapeRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/onyx/android/sdk/note/request/CreateLinkShapeRequest;->g(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/base/data/Size;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p0

    return-object p0
.end method

.method public final g(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/base/data/Size;)Lcom/onyx/android/sdk/note/common/shape/Shape;
    .locals 7

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {p3}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getRenderMeasure()Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    move-result-object p3

    invoke-virtual {p3}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getScale()F

    move-result p3

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/ShapeMatrixUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeMatrixUtils;

    invoke-virtual {v1, p2, v0}, Lcom/onyx/android/sdk/note/common/utils/ShapeMatrixUtils;->matrixTouchPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    sget-object v3, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;

    const/16 v4, 0x21

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->create(I)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v3

    invoke-interface {v3, v2, v2}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->onDown(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    new-instance v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v2, p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v4

    invoke-virtual {p4}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p3

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setX(F)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p2

    invoke-virtual {p4}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result p4

    int-to-float p4, p4

    mul-float/2addr p4, p3

    float-to-double p3, p4

    invoke-static {p3, p4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p3

    double-to-float p3, p3

    add-float/2addr p2, p3

    invoke-virtual {v2, p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setY(F)V

    invoke-virtual {v1, v2, v0}, Lcom/onyx/android/sdk/note/common/utils/ShapeMatrixUtils;->matrixTouchPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p2

    invoke-interface {v3, p2, p2}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->onUp(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-interface {v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->ensureShapeUniqueId()V

    sget-object p2, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;

    invoke-virtual {p2, v3, p1}, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->setShapeZOrder(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V

    sget-object p1, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/CreateLinkShapeRequest;->j:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v3, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->setText(Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->updateShapeRect()V

    invoke-interface {v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->updateShapeTime()V

    return-object v3
.end method

.method public final getCompositeCommand()Lcom/onyx/android/sdk/note/common/command/CompositeCommand;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/CreateLinkShapeRequest;->k:Lcom/onyx/android/sdk/note/common/command/CompositeCommand;

    return-object p0
.end method

.method public final getLinkShape()Lcom/onyx/android/sdk/note/common/shape/Shape;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/CreateLinkShapeRequest;->linkShape:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "linkShape"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final setLinkShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/CreateLinkShapeRequest;->linkShape:Lcom/onyx/android/sdk/note/common/shape/Shape;

    return-void
.end method
