.class public final Lcom/onyx/android/sdk/note/request/excerpt/SaveRectExcerptRequest;
.super Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010!\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\"\u0010#J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0007\u001a\u00020\u0006H\u0002J\u0018\u0010\r\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002R\"\u0010\u000f\u001a\u00020\u000e8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\"\u0010\u0015\u001a\u00020\u000c8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR(\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u001b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 \u00a8\u0006$"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/request/excerpt/SaveRectExcerptRequest;",
        "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;",
        "Lcom/onyx/android/sdk/note/NoteBundle;",
        "noteBundle",
        "",
        "execute",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "g",
        "",
        "shapeUniqueId",
        "Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;",
        "resourceModel",
        "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;",
        "f",
        "Lcom/onyx/android/sdk/note/common/data/excerpt/SaveRectExcerptArgs;",
        "args",
        "Lcom/onyx/android/sdk/note/common/data/excerpt/SaveRectExcerptArgs;",
        "getArgs",
        "()Lcom/onyx/android/sdk/note/common/data/excerpt/SaveRectExcerptArgs;",
        "setArgs",
        "(Lcom/onyx/android/sdk/note/common/data/excerpt/SaveRectExcerptArgs;)V",
        "excerptInfoBean",
        "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;",
        "getExcerptInfoBean",
        "()Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;",
        "setExcerptInfoBean",
        "(Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;)V",
        "",
        "Ljava/util/List;",
        "getShapeList",
        "()Ljava/util/List;",
        "setShapeList",
        "(Ljava/util/List;)V",
        "shapeList",
        "<init>",
        "(Lcom/onyx/android/sdk/note/NoteBundle;)V",
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
.field public args:Lcom/onyx/android/sdk/note/common/data/excerpt/SaveRectExcerptArgs;

.field public excerptInfoBean:Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

.field public g:Ljava/util/List;
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
.method public constructor <init>(Lcom/onyx/android/sdk/note/NoteBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/excerpt/SaveRectExcerptRequest;->g:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public execute(Lcom/onyx/android/sdk/note/NoteBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/note/request/excerpt/SaveRectExcerptRequest;->g:Ljava/util/List;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/excerpt/SaveRectExcerptRequest;->g()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final f(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;)Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/excerpt/SaveRectExcerptRequest;->getArgs()Lcom/onyx/android/sdk/note/common/data/excerpt/SaveRectExcerptArgs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveRectExcerptArgs;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->noteNormalizeMatrix(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->Companion:Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean$Companion;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean$Companion;->createRectExcerptInfoBean()Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->setUniqueId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;->ensureUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->setImgId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/excerpt/SaveRectExcerptRequest;->getArgs()Lcom/onyx/android/sdk/note/common/data/excerpt/SaveRectExcerptArgs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveRectExcerptArgs;->getExcerptAttr()Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;->getStrokeColor()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->setColor(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/excerpt/SaveRectExcerptRequest;->getArgs()Lcom/onyx/android/sdk/note/common/data/excerpt/SaveRectExcerptArgs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveRectExcerptArgs;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->setPageUniqueId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/excerpt/SaveRectExcerptRequest;->getArgs()Lcom/onyx/android/sdk/note/common/data/excerpt/SaveRectExcerptArgs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveRectExcerptArgs;->getRegionInViewport()Landroid/graphics/RectF;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->getRectList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public final g()Lcom/onyx/android/sdk/note/common/shape/Shape;
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/excerpt/SaveRectExcerptRequest;->getArgs()Lcom/onyx/android/sdk/note/common/data/excerpt/SaveRectExcerptArgs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveRectExcerptArgs;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->noteNormalizeMatrix(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/excerpt/SaveRectExcerptRequest;->getArgs()Lcom/onyx/android/sdk/note/common/data/excerpt/SaveRectExcerptArgs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveRectExcerptArgs;->getRegionInViewport()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    new-instance v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v1, Landroid/graphics/RectF;->top:F

    invoke-direct {v0, v2, v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    new-instance v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget v3, v1, Landroid/graphics/RectF;->right:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v2, v3, v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    sget-object v1, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;

    const/16 v3, 0x29

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->create(I)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v1

    invoke-interface {v1, v0, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->onDown(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-interface {v1, v2, v2}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->onUp(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-interface {v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->ensureShapeUniqueId()V

    invoke-interface {v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->updateShapeRect()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;->getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/excerpt/SaveRectExcerptRequest;->getArgs()Lcom/onyx/android/sdk/note/common/data/excerpt/SaveRectExcerptArgs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveRectExcerptArgs;->getImgPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getDocumentUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/onyx/android/sdk/note/extension/ResourceModelKt;->loadAndSaveResource(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;

    move-result-object v0

    invoke-interface {v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getShapeUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/onyx/android/sdk/note/request/excerpt/SaveRectExcerptRequest;->f(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;)Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/note/request/excerpt/SaveRectExcerptRequest;->setExcerptInfoBean(Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/excerpt/SaveRectExcerptRequest;->getExcerptInfoBean()Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/excerpt/SaveRectExcerptRequest;->getArgs()Lcom/onyx/android/sdk/note/common/data/excerpt/SaveRectExcerptArgs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveRectExcerptArgs;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->setDocScaleOnCreate(F)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/excerpt/SaveRectExcerptRequest;->getExcerptInfoBean()Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->getColor()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->setStrokeColor(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/excerpt/SaveRectExcerptRequest;->getExcerptInfoBean()Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->setExcerptInfoBean(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;)V

    sget-object p0, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    sget-object v2, Lcom/onyx/android/sdk/replicator/utils/ResourceModels;->INSTANCE:Lcom/onyx/android/sdk/replicator/utils/ResourceModels;

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/replicator/utils/ResourceModels;->toShapeResource(Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;)Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->setResource(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;)V

    return-object v1
.end method

.method public final getArgs()Lcom/onyx/android/sdk/note/common/data/excerpt/SaveRectExcerptArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/excerpt/SaveRectExcerptRequest;->args:Lcom/onyx/android/sdk/note/common/data/excerpt/SaveRectExcerptArgs;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "args"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getExcerptInfoBean()Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/excerpt/SaveRectExcerptRequest;->excerptInfoBean:Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "excerptInfoBean"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getShapeList()Ljava/util/List;
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

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/excerpt/SaveRectExcerptRequest;->g:Ljava/util/List;

    return-object p0
.end method

.method public final setArgs(Lcom/onyx/android/sdk/note/common/data/excerpt/SaveRectExcerptArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/excerpt/SaveRectExcerptArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/excerpt/SaveRectExcerptRequest;->args:Lcom/onyx/android/sdk/note/common/data/excerpt/SaveRectExcerptArgs;

    return-void
.end method

.method public final setExcerptInfoBean(Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/excerpt/SaveRectExcerptRequest;->excerptInfoBean:Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    return-void
.end method

.method public final setShapeList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/excerpt/SaveRectExcerptRequest;->g:Ljava/util/List;

    return-void
.end method
