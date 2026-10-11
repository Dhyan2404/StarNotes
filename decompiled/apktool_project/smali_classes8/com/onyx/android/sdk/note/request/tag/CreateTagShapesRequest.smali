.class public final Lcom/onyx/android/sdk/note/request/tag/CreateTagShapesRequest;
.super Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreateTagShapesRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateTagShapesRequest.kt\ncom/onyx/android/sdk/note/request/tag/CreateTagShapesRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,128:1\n1549#2:129\n1620#2,3:130\n1864#2,3:134\n1864#2,3:137\n1#3:133\n*S KotlinDebug\n*F\n+ 1 CreateTagShapesRequest.kt\ncom/onyx/android/sdk/note/request/tag/CreateTagShapesRequest\n*L\n95#1:129\n95#1:130,3\n101#1:134,3\n119#1:137,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\t\n\u0002\u0010!\n\u0002\u0008\n\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u001f\u001a\u00020\u0008\u0012\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008)\u0010*J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J0\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0008\u0010\u0013\u001a\u00020\u0012H\u0002J\u0010\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J$\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00172\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00172\u0006\u0010\u0019\u001a\u00020\u0008H\u0002J\u0010\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u001cR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u001dR\u0016\u0010\u001f\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001eR\u0016\u0010\r\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010 R(\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00100!8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'\u00a8\u0006+"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/request/tag/CreateTagShapesRequest;",
        "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;",
        "Lcom/onyx/android/sdk/note/NoteBundle;",
        "noteBundle",
        "",
        "execute",
        "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        "notePage",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "downPoint",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "renderContext",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;",
        "tagBean",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "imageSize",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "h",
        "",
        "j",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;",
        "model",
        "g",
        "",
        "models",
        "centerPointInPage",
        "f",
        "i",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "startPoint",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;",
        "",
        "k",
        "Ljava/util/List;",
        "getShapeList",
        "()Ljava/util/List;",
        "setShapeList",
        "(Ljava/util/List;)V",
        "shapeList",
        "<init>",
        "(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;)V",
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
        "SMAP\nCreateTagShapesRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateTagShapesRequest.kt\ncom/onyx/android/sdk/note/request/tag/CreateTagShapesRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,128:1\n1549#2:129\n1620#2,3:130\n1864#2,3:134\n1864#2,3:137\n1#3:133\n*S KotlinDebug\n*F\n+ 1 CreateTagShapesRequest.kt\ncom/onyx/android/sdk/note/request/tag/CreateTagShapesRequest\n*L\n95#1:129\n95#1:130,3\n101#1:134,3\n119#1:137,3\n*E\n"
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

.field public j:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Ljava/util/List;
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
.method public constructor <init>(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;)V
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
    .param p5    # Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;
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

    const-string v0, "tagBean"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/note/request/tag/CreateTagShapesRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iput-object p3, p0, Lcom/onyx/android/sdk/note/request/tag/CreateTagShapesRequest;->h:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    iput-object p4, p0, Lcom/onyx/android/sdk/note/request/tag/CreateTagShapesRequest;->i:Lcom/onyx/android/sdk/base/data/TouchPoint;

    iput-object p5, p0, Lcom/onyx/android/sdk/note/request/tag/CreateTagShapesRequest;->j:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/tag/CreateTagShapesRequest;->k:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public execute(Lcom/onyx/android/sdk/note/NoteBundle;)V
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/note/request/tag/CreateTagShapesRequest;->h:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/request/tag/CreateTagShapesRequest;->i(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V

    sget-object v1, Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;

    iget-object v2, p0, Lcom/onyx/android/sdk/note/request/tag/CreateTagShapesRequest;->h:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    iget-object v0, p0, Lcom/onyx/android/sdk/note/request/tag/CreateTagShapesRequest;->k:Ljava/util/List;

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;->addShapeList$default(Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Ljava/util/Collection;IILjava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/tag/CreateTagShapesRequest;->k:Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/note/NoteBundle;->postAddShapeEvent(Ljava/util/List;)V

    return-void
.end method

.method public final f(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TouchPoint;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;",
            ">;",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;

    invoke-virtual {p0, v3}, Lcom/onyx/android/sdk/note/request/tag/CreateTagShapesRequest;->g(Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;)Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/tag/CreateTagShapesRequest;->j()I

    move-result p0

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v3

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v4

    if-ge v3, v4, :cond_1

    move v3, v4

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    move v5, v4

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, -0x1

    mul-int/2addr v0, p0

    add-int/2addr v5, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v4, 0x1

    if-gez v4, :cond_4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_4
    check-cast v6, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v6

    sub-int v6, v3, v6

    int-to-float v6, v6

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    new-instance v8, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v8, v6, v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result v4

    add-int/2addr v4, p0

    int-to-float v4, v4

    add-float/2addr v2, v4

    move v4, v7

    goto :goto_3

    :cond_5
    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result p0

    div-int/lit8 v3, v3, 0x2

    int-to-float p1, v3

    sub-float/2addr p0, p1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p1

    div-int/lit8 v5, v5, 0x2

    int-to-float p2, v5

    sub-float/2addr p1, p2

    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p2, p0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    sget-object p0, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->transform(Ljava/util/List;Landroid/graphics/Matrix;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_6
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final g(Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;)Lcom/onyx/android/sdk/base/data/Size;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/object/TagShape;->Companion:Lcom/onyx/android/sdk/note/common/shape/object/TagShape$Companion;

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/tag/CreateTagShapesRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getRenderMeasure()Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    move-result-object p0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/shape/object/TagShape$Companion;->getTagDisplayTitle(Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/note/common/shape/object/TagShape$Companion;->calculateWidth(Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/shape/object/TagShape$Companion;->getTagHeight()I

    move-result p1

    new-instance v0, Lcom/onyx/android/sdk/base/data/Size;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/base/data/Size;-><init>(II)V

    return-object v0
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

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/tag/CreateTagShapesRequest;->k:Ljava/util/List;

    return-object p0
.end method

.method public final h(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;Lcom/onyx/android/sdk/base/data/Size;)Lcom/onyx/android/sdk/note/common/shape/Shape;
    .locals 6

    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {p3}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getRenderMeasure()Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    move-result-object p3

    invoke-virtual {p3}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getScale()F

    move-result p3

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeMatrixUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeMatrixUtils;

    invoke-virtual {v0, p2, p0}, Lcom/onyx/android/sdk/note/common/utils/ShapeMatrixUtils;->matrixTouchPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->create(I)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v2

    invoke-interface {v2, v1, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->onDown(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    new-instance v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v1, p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v3

    invoke-virtual {p5}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p3

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setX(F)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p2

    invoke-virtual {p5}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result p5

    int-to-float p5, p5

    mul-float/2addr p5, p3

    float-to-double v3, p5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-float p3, v3

    add-float/2addr p2, p3

    invoke-virtual {v1, p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setY(F)V

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/note/common/utils/ShapeMatrixUtils;->matrixTouchPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    invoke-interface {v2, p0, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->onUp(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-interface {v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->ensureShapeUniqueId()V

    sget-object p0, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;

    invoke-virtual {p0, v2, p1}, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->setShapeZOrder(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V

    sget-object p0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {p0, p4}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->setText(Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    invoke-virtual {p0, v2, p4}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->setTagBean(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;)V

    invoke-interface {v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->updateShapeRect()V

    return-object v2
.end method

.method public final i(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V
    .locals 11

    iget-object v0, p0, Lcom/onyx/android/sdk/note/request/tag/CreateTagShapesRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getRenderMeasure()Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget-object v2, p0, Lcom/onyx/android/sdk/note/request/tag/CreateTagShapesRequest;->i:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->matrixPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/note/request/tag/CreateTagShapesRequest;->j:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;->getTagList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/onyx/android/sdk/note/request/tag/CreateTagShapesRequest;->f(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TouchPoint;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/note/request/tag/CreateTagShapesRequest;->j:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;->getTagList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v3, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/onyx/android/sdk/base/data/TouchPoint;

    new-instance v9, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;

    invoke-direct {v9}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;-><init>()V

    invoke-virtual {v9}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;->getTagList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v3}, Lcom/onyx/android/sdk/note/request/tag/CreateTagShapesRequest;->g(Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;)Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v10

    iget-object v8, p0, Lcom/onyx/android/sdk/note/request/tag/CreateTagShapesRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-object v5, p0

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/onyx/android/sdk/note/request/tag/CreateTagShapesRequest;->h(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;Lcom/onyx/android/sdk/base/data/Size;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/android/sdk/note/request/tag/CreateTagShapesRequest;->k:Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3, v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    move v2, v4

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final j()I
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/note/R$dimen;->tag_padding:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result p0

    return p0
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

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/tag/CreateTagShapesRequest;->k:Ljava/util/List;

    return-void
.end method
