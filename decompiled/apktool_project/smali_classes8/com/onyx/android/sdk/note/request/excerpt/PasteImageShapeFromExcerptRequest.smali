.class public final Lcom/onyx/android/sdk/note/request/excerpt/PasteImageShapeFromExcerptRequest;
.super Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010!\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0014\u001a\u00020\n\u0012\u0006\u0010\u001c\u001a\u00020\u0015\u00a2\u0006\u0004\u0008-\u0010.J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0018\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nH\u0002R\"\u0010\u0014\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\"\u0010\u001c\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR(\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u001d8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\"\u0010,\u001a\u00020%8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+\u00a8\u0006/"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/request/excerpt/PasteImageShapeFromExcerptRequest;",
        "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;",
        "Lcom/onyx/android/sdk/note/NoteBundle;",
        "noteBundle",
        "",
        "execute",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "imageSize",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "f",
        "",
        "localPath",
        "documentId",
        "Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;",
        "g",
        "Ljava/lang/String;",
        "getImageFilePath",
        "()Ljava/lang/String;",
        "setImageFilePath",
        "(Ljava/lang/String;)V",
        "imageFilePath",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "h",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "getDownPoint",
        "()Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "setDownPoint",
        "(Lcom/onyx/android/sdk/base/data/TouchPoint;)V",
        "downPoint",
        "",
        "i",
        "Ljava/util/List;",
        "getShapeList",
        "()Ljava/util/List;",
        "setShapeList",
        "(Ljava/util/List;)V",
        "shapeList",
        "Landroid/graphics/RectF;",
        "j",
        "Landroid/graphics/RectF;",
        "getSourceRectF",
        "()Landroid/graphics/RectF;",
        "setSourceRectF",
        "(Landroid/graphics/RectF;)V",
        "sourceRectF",
        "<init>",
        "(Lcom/onyx/android/sdk/note/NoteBundle;Ljava/lang/String;Lcom/onyx/android/sdk/base/data/TouchPoint;)V",
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
.field public g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Ljava/util/List;
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

.field public j:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/note/NoteBundle;Ljava/lang/String;Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageFilePath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downPoint"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/note/request/excerpt/PasteImageShapeFromExcerptRequest;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/onyx/android/sdk/note/request/excerpt/PasteImageShapeFromExcerptRequest;->h:Lcom/onyx/android/sdk/base/data/TouchPoint;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/excerpt/PasteImageShapeFromExcerptRequest;->i:Ljava/util/List;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/excerpt/PasteImageShapeFromExcerptRequest;->j:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public execute(Lcom/onyx/android/sdk/note/NoteBundle;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/note/common/utils/ImageManager;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ImageManager;

    iget-object v0, p0, Lcom/onyx/android/sdk/note/request/excerpt/PasteImageShapeFromExcerptRequest;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/note/common/utils/ImageManager;->decodeSize(Ljava/lang/String;)Lcom/onyx/android/sdk/base/data/Size;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/note/request/excerpt/PasteImageShapeFromExcerptRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/onyx/android/sdk/note/request/excerpt/PasteImageShapeFromExcerptRequest;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", imgSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Size;->toRectF()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Size;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/note/request/excerpt/PasteImageShapeFromExcerptRequest;->i:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/request/excerpt/PasteImageShapeFromExcerptRequest;->f(Lcom/onyx/android/sdk/base/data/Size;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final f(Lcom/onyx/android/sdk/base/data/Size;)Lcom/onyx/android/sdk/note/common/shape/Shape;
    .locals 8

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/ImageManager;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ImageManager;

    iget-object v2, p0, Lcom/onyx/android/sdk/note/request/excerpt/PasteImageShapeFromExcerptRequest;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/note/common/utils/ImageManager;->getShapeType(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->create(I)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/note/request/excerpt/PasteImageShapeFromExcerptRequest;->j:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/onyx/android/sdk/note/request/excerpt/PasteImageShapeFromExcerptRequest;->j:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object v4, p0, Lcom/onyx/android/sdk/note/request/excerpt/PasteImageShapeFromExcerptRequest;->j:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/onyx/android/sdk/note/request/excerpt/PasteImageShapeFromExcerptRequest;->j:Landroid/graphics/RectF;

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Size;->toRectF()Landroid/graphics/RectF;

    move-result-object p1

    :goto_2
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    iget-object v4, p0, Lcom/onyx/android/sdk/note/request/excerpt/PasteImageShapeFromExcerptRequest;->h:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v5

    sget-object v6, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v7, Lcom/onyx/android/sdk/note/R$dimen;->paste_single_image_by_drop_left_width_percent:I

    invoke-virtual {v6, v7}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v7

    mul-float/2addr v7, v1

    sub-float/2addr v5, v7

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setX(F)V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v5

    sget v7, Lcom/onyx/android/sdk/note/R$dimen;->paste_single_image_by_drop_top_height_percent:I

    invoke-virtual {v6, v7}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v6

    mul-float/2addr v6, p1

    sub-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setY(F)V

    invoke-interface {v0, v4, v4}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->onDown(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v5

    add-float/2addr v5, v1

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setX(F)V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    add-float/2addr v1, p1

    invoke-virtual {v4, v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setY(F)V

    invoke-interface {v0, v4, v4}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->onUp(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->ensureShapeUniqueId()V

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->updateShapeRect()V

    sget-object p1, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    iget-object v1, p0, Lcom/onyx/android/sdk/note/request/excerpt/PasteImageShapeFromExcerptRequest;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;->getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getDocumentUniqueId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/onyx/android/sdk/note/request/excerpt/PasteImageShapeFromExcerptRequest;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->setResource(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;)V

    invoke-static {v0, v2}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->setBottom(Lcom/onyx/android/sdk/note/common/shape/Shape;Z)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class p1, Lcom/onyx/android/sdk/note/request/excerpt/PasteImageShapeFromExcerptRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "originRect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", boundingRect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v1, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/utils/ResourceModels;->INSTANCE:Lcom/onyx/android/sdk/replicator/utils/ResourceModels;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;->getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/note/extension/ResourceModelKt;->loadAndSaveResource(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/utils/ResourceModels;->toShapeResource(Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;)Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;

    move-result-object p0

    return-object p0
.end method

.method public final getDownPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/excerpt/PasteImageShapeFromExcerptRequest;->h:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public final getImageFilePath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/excerpt/PasteImageShapeFromExcerptRequest;->g:Ljava/lang/String;

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

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/excerpt/PasteImageShapeFromExcerptRequest;->i:Ljava/util/List;

    return-object p0
.end method

.method public final getSourceRectF()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/excerpt/PasteImageShapeFromExcerptRequest;->j:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final setDownPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/excerpt/PasteImageShapeFromExcerptRequest;->h:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-void
.end method

.method public final setImageFilePath(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/excerpt/PasteImageShapeFromExcerptRequest;->g:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/excerpt/PasteImageShapeFromExcerptRequest;->i:Ljava/util/List;

    return-void
.end method

.method public final setSourceRectF(Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/excerpt/PasteImageShapeFromExcerptRequest;->j:Landroid/graphics/RectF;

    return-void
.end method
