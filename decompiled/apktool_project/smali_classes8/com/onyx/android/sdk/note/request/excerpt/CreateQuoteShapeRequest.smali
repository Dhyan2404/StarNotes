.class public final Lcom/onyx/android/sdk/note/request/excerpt/CreateQuoteShapeRequest;
.super Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0015\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0018\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nH\u0002R\"\u0010\u0015\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R(\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001c\u00a8\u0006 "
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/request/excerpt/CreateQuoteShapeRequest;",
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
        "Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;",
        "Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;",
        "getArgs",
        "()Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;",
        "setArgs",
        "(Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;)V",
        "args",
        "",
        "h",
        "Ljava/util/List;",
        "getShapeList",
        "()Ljava/util/List;",
        "setShapeList",
        "(Ljava/util/List;)V",
        "shapeList",
        "<init>",
        "(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;)V",
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
.field public g:Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Ljava/util/List;
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
.method public constructor <init>(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/note/request/excerpt/CreateQuoteShapeRequest;->g:Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/excerpt/CreateQuoteShapeRequest;->h:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public execute(Lcom/onyx/android/sdk/note/NoteBundle;)V
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/note/request/excerpt/CreateQuoteShapeRequest;->g:Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;->getSourceImgPath()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/base/data/Size;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/onyx/android/sdk/base/data/Size;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v1, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/BitmapUtils;

    invoke-virtual {v1, p1, v0}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->decodeBitmapSizeSupportExif(Ljava/lang/String;Lcom/onyx/android/sdk/base/data/Size;)Z

    sget-object v1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v2, Lcom/onyx/android/sdk/note/request/excerpt/CreateQuoteShapeRequest;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", imgSize = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/Size;->toRectF()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, p1, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/Size;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/onyx/android/sdk/note/request/excerpt/CreateQuoteShapeRequest;->h:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/request/excerpt/CreateQuoteShapeRequest;->f(Lcom/onyx/android/sdk/base/data/Size;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final f(Lcom/onyx/android/sdk/base/data/Size;)Lcom/onyx/android/sdk/note/common/shape/Shape;
    .locals 8

    iget-object v0, p0, Lcom/onyx/android/sdk/note/request/excerpt/CreateQuoteShapeRequest;->g:Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;->getSourceImgPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/note/request/excerpt/CreateQuoteShapeRequest;->g:Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;->getSourceExcerptQuoteIndicatorAnchorRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;

    const/16 v3, 0x2a

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->create(I)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result p1

    iget-object v4, p0, Lcom/onyx/android/sdk/note/request/excerpt/CreateQuoteShapeRequest;->g:Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;->getDownPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v5

    int-to-float v3, v3

    sget-object v6, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v7, Lcom/onyx/android/sdk/note/R$dimen;->paste_single_image_by_drop_left_width_percent:I

    invoke-virtual {v6, v7}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v7

    mul-float/2addr v7, v3

    sub-float/2addr v5, v7

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setX(F)V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v5

    int-to-float p1, p1

    sget v7, Lcom/onyx/android/sdk/note/R$dimen;->paste_single_image_by_drop_top_height_percent:I

    invoke-virtual {v6, v7}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v6

    mul-float/2addr v6, p1

    sub-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setY(F)V

    invoke-interface {v2, v4, v4}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->onDown(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v5

    add-float/2addr v5, v3

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setX(F)V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v3

    add-float/2addr v3, p1

    invoke-virtual {v4, v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setY(F)V

    invoke-interface {v2, v4, v4}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->onUp(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-interface {v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->ensureShapeUniqueId()V

    invoke-interface {v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->updateShapeRect()V

    sget-object p1, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;->getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getDocumentUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/onyx/android/sdk/note/request/excerpt/CreateQuoteShapeRequest;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->setResource(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/excerpt/CreateQuoteShapeRequest;->g:Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;->getSourceExcerptQuote()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->setText(Ljava/lang/String;)V

    invoke-static {v2, v1}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->setQuoteIndicatorAnchorRect(Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/RectF;)V

    const/4 p0, 0x1

    invoke-static {v2, p0}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->setBottom(Lcom/onyx/android/sdk/note/common/shape/Shape;Z)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class p1, Lcom/onyx/android/sdk/note/request/excerpt/CreateQuoteShapeRequest;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "originRect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", boundingRect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2
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

.method public final getArgs()Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/excerpt/CreateQuoteShapeRequest;->g:Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;

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

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/excerpt/CreateQuoteShapeRequest;->h:Ljava/util/List;

    return-object p0
.end method

.method public final setArgs(Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/excerpt/CreateQuoteShapeRequest;->g:Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;

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

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/excerpt/CreateQuoteShapeRequest;->h:Ljava/util/List;

    return-void
.end method
