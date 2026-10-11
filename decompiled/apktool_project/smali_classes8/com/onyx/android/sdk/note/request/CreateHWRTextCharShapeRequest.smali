.class public final Lcom/onyx/android/sdk/note/request/CreateHWRTextCharShapeRequest;
.super Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreateHWRTextCharShapeRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateHWRTextCharShapeRequest.kt\ncom/onyx/android/sdk/note/request/CreateHWRTextCharShapeRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,91:1\n1855#2,2:92\n1855#2,2:94\n1360#2:96\n1446#2,2:97\n1360#2:99\n1446#2,5:100\n1448#2,3:105\n1549#2:108\n1620#2,3:109\n*S KotlinDebug\n*F\n+ 1 CreateHWRTextCharShapeRequest.kt\ncom/onyx/android/sdk/note/request/CreateHWRTextCharShapeRequest\n*L\n29#1:92,2\n38#1:94,2\n46#1:96\n46#1:97,2\n47#1:99\n47#1:100,5\n46#1:105,3\n54#1:108\n54#1:109,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00070\t\u00a2\u0006\u0004\u0008%\u0010&J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0006\u001a\u00020\u0004H\u0002J\u0016\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0016\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\r\u001a\u00020\u000cH\u0002J@\u0010\u001c\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001aH\u0002R\u001a\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00070\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u001dR\'\u0010$\u001a\u0012\u0012\u0004\u0012\u00020\n0\u001fj\u0008\u0012\u0004\u0012\u00020\n` 8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010!\u001a\u0004\u0008\"\u0010#\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/request/CreateHWRTextCharShapeRequest;",
        "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;",
        "Lcom/onyx/android/sdk/note/NoteBundle;",
        "noteBundle",
        "",
        "execute",
        "i",
        "Lcom/onyx/android/sdk/note/common/data/shape/HWRTextBlockBean;",
        "block",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
        "g",
        "Lcom/onyx/android/sdk/neohwr/layout/TextRunBox;",
        "run",
        "h",
        "",
        "text",
        "",
        "textColor",
        "fontFace",
        "",
        "textSize",
        "Landroid/graphics/RectF;",
        "region",
        "Landroid/graphics/Matrix;",
        "mtx",
        "Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;",
        "sourcePointGroup",
        "f",
        "Ljava/util/List;",
        "blocks",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "Ljava/util/ArrayList;",
        "getShapeList",
        "()Ljava/util/ArrayList;",
        "shapeList",
        "<init>",
        "(Lcom/onyx/android/sdk/note/NoteBundle;Ljava/util/List;)V",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCreateHWRTextCharShapeRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateHWRTextCharShapeRequest.kt\ncom/onyx/android/sdk/note/request/CreateHWRTextCharShapeRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,91:1\n1855#2,2:92\n1855#2,2:94\n1360#2:96\n1446#2,2:97\n1360#2:99\n1446#2,5:100\n1448#2,3:105\n1549#2:108\n1620#2,3:109\n*S KotlinDebug\n*F\n+ 1 CreateHWRTextCharShapeRequest.kt\ncom/onyx/android/sdk/note/request/CreateHWRTextCharShapeRequest\n*L\n29#1:92,2\n38#1:94,2\n46#1:96\n46#1:97,2\n47#1:99\n47#1:100,5\n46#1:105,3\n54#1:108\n54#1:109,3\n*E\n"
    }
.end annotation


# instance fields
.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/data/shape/HWRTextBlockBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/note/NoteBundle;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/NoteBundle;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/data/shape/HWRTextBlockBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "noteBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blocks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/note/request/CreateHWRTextCharShapeRequest;->g:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/CreateHWRTextCharShapeRequest;->h:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public execute(Lcom/onyx/android/sdk/note/NoteBundle;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/note/request/CreateHWRTextCharShapeRequest;->g:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/note/common/data/shape/HWRTextBlockBean;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/request/CreateHWRTextCharShapeRequest;->g(Lcom/onyx/android/sdk/note/common/data/shape/HWRTextBlockBean;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/note/request/CreateHWRTextCharShapeRequest;->h:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/CreateHWRTextCharShapeRequest;->i()V

    return-void
.end method

.method public final f(Ljava/lang/String;ILjava/lang/String;FLandroid/graphics/RectF;Landroid/graphics/Matrix;Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;)Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;
    .locals 2

    sget-object p0, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->create(I)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type com.onyx.android.sdk.note.common.shape.object.HWRTextShape"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    invoke-virtual {p0, p7}, Lcom/onyx/android/sdk/note/common/shape/object/HWRShape;->setSourceShapeGroup(Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;)V

    new-instance p7, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget v0, p5, Landroid/graphics/RectF;->left:F

    iget v1, p5, Landroid/graphics/RectF;->top:F

    invoke-direct {p7, v0, v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-virtual {p0, p7, p7}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->onDown(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    new-instance p7, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget v0, p5, Landroid/graphics/RectF;->right:F

    iget p5, p5, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p7, v0, p5}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-virtual {p0, p7, p7}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->onUp(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setFillColor(I)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setText(Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    invoke-direct {p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;-><init>()V

    invoke-virtual {p1, p3}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->setFontFace(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    invoke-virtual {p1, p4}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->setTextSize(F)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setTextStyle(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;)V

    invoke-virtual {p0, p6}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setShapeMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->ensureShapeUniqueId()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->updateShapeRect()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->updateShapeTime()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;->updateShapeLayoutVersion()V

    return-object p0
.end method

.method public final g(Lcom/onyx/android/sdk/note/common/data/shape/HWRTextBlockBean;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/data/shape/HWRTextBlockBean;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/shape/HWRTextBlockBean;->getBlockBox()Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;->getLines()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;->getRuns()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/neohwr/layout/TextRunBox;

    invoke-virtual {p0, v3}, Lcom/onyx/android/sdk/note/request/CreateHWRTextCharShapeRequest;->h(Lcom/onyx/android/sdk/neohwr/layout/TextRunBox;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_1

    :cond_0
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getShapeList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/CreateHWRTextCharShapeRequest;->h:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final h(Lcom/onyx/android/sdk/neohwr/layout/TextRunBox;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/neohwr/layout/TextRunBox;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/neohwr/layout/TextRunBox;->getChars()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;->getTextColor()I

    move-result v5

    invoke-virtual {p1}, Lcom/onyx/android/sdk/neohwr/layout/TextRunBox;->getFont()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/onyx/android/sdk/neohwr/layout/TextRunBox;->getTextSize()F

    move-result v7

    invoke-virtual {v2}, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;->getRegion()Landroid/graphics/RectF;

    move-result-object v8

    invoke-virtual {v2}, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    invoke-virtual {v2}, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;->getSourcePointGroup()Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;

    move-result-object v10

    move-object v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/onyx/android/sdk/note/request/CreateHWRTextCharShapeRequest;->f(Ljava/lang/String;ILjava/lang/String;FLandroid/graphics/RectF;Landroid/graphics/Matrix;Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;)Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final i()V
    .locals 5

    sget-object v0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->millisOfNow()J

    move-result-wide v0

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/CreateHWRTextCharShapeRequest;->h:Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setCreatedAt(Ljava/util/Date;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setUpdatedAt(Ljava/util/Date;)V

    goto :goto_0

    :cond_0
    return-void
.end method
