.class public final Lcom/onyx/android/sdk/note/request/selection/StartTransformRequest;
.super Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStartTransformRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StartTransformRequest.kt\ncom/onyx/android/sdk/note/request/selection/StartTransformRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,126:1\n766#2:127\n857#2,2:128\n215#3,2:130\n*S KotlinDebug\n*F\n+ 1 StartTransformRequest.kt\ncom/onyx/android/sdk/note/request/selection/StartTransformRequest\n*L\n115#1:127\n115#1:128,2\n117#1:130,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\n\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u001a\u001a\u00020\u0016\u0012\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001b\u0012\u0006\u0010$\u001a\u00020 \u00a2\u0006\u0004\u0008-\u0010.J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0016\u0010\t\u001a\u00020\u00042\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\u0008\u0010\n\u001a\u00020\u0007H\u0002J\u0008\u0010\u000c\u001a\u00020\u000bH\u0002J\u0012\u0010\u000f\u001a\u00020\u00042\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0010H\u0002R\u0017\u0010\u0011\u001a\u00020\u00108\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\u0017\u0010\u001a\u001a\u00020\u00168\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019R\u0019\u0010\u001f\u001a\u0004\u0018\u00010\u001b8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001eR\u0017\u0010$\u001a\u00020 8\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010!\u001a\u0004\u0008\"\u0010#R\"\u0010,\u001a\u00020%8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+\u00a8\u0006/"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/request/selection/StartTransformRequest;",
        "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;",
        "Lcom/onyx/android/sdk/note/NoteBundle;",
        "noteBundle",
        "",
        "execute",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "transformShapes",
        "j",
        "f",
        "Lcom/onyx/android/sdk/base/data/TouchPointList;",
        "h",
        "Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;",
        "selectionRect",
        "g",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "renderContext",
        "i",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "getRenderContext",
        "()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "getVirtualBoxInfo",
        "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "virtualBoxInfo",
        "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        "getNotePage",
        "()Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        "notePage",
        "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;",
        "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;",
        "getStartTransformBean",
        "()Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;",
        "startTransformBean",
        "",
        "k",
        "Z",
        "getNeedUpdateSelectionBitmap",
        "()Z",
        "setNeedUpdateSelectionBitmap",
        "(Z)V",
        "needUpdateSelectionBitmap",
        "<init>",
        "(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)V",
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
        "SMAP\nStartTransformRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StartTransformRequest.kt\ncom/onyx/android/sdk/note/request/selection/StartTransformRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,126:1\n766#2:127\n857#2,2:128\n215#3,2:130\n*S KotlinDebug\n*F\n+ 1 StartTransformRequest.kt\ncom/onyx/android/sdk/note/request/selection/StartTransformRequest\n*L\n115#1:127\n115#1:128,2\n117#1:130,2\n*E\n"
    }
.end annotation


# instance fields
.field public final g:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lcom/onyx/android/sdk/note/common/document/page/NotePage;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final j:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Z


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/note/common/document/page/NotePage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtualBoxInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startTransformBean"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/note/request/selection/StartTransformRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iput-object p3, p0, Lcom/onyx/android/sdk/note/request/selection/StartTransformRequest;->h:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iput-object p4, p0, Lcom/onyx/android/sdk/note/request/selection/StartTransformRequest;->i:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    iput-object p5, p0, Lcom/onyx/android/sdk/note/request/selection/StartTransformRequest;->j:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/request/selection/StartTransformRequest;->k:Z

    return-void
.end method


# virtual methods
.method public execute(Lcom/onyx/android/sdk/note/NoteBundle;)V
    .locals 9
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "noteBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/note/request/selection/StartTransformRequest;->i:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/onyx/android/sdk/note/request/selection/StartTransformRequest;->j:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->getTransformShapes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/onyx/android/sdk/note/request/selection/StartTransformRequest;->j:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->getSelectionType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/onyx/android/sdk/note/request/selection/StartTransformRequest;->j:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->isSelectAll()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/onyx/android/sdk/note/request/selection/StartTransformRequest;->j:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->getSelectionTrackPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/selection/StartTransformRequest;->f()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/note/request/selection/StartTransformRequest;->j:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->getTransformShapes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/onyx/android/sdk/note/request/selection/StartTransformRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->clearSelectionRect()V

    iget-object v0, p0, Lcom/onyx/android/sdk/note/request/selection/StartTransformRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getSelectionArgs()Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/note/request/selection/StartTransformRequest;->j:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->getSelectionType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;->setSelectionType(I)V

    iget-object v0, p0, Lcom/onyx/android/sdk/note/request/selection/StartTransformRequest;->j:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    iget-object v1, p0, Lcom/onyx/android/sdk/note/request/selection/StartTransformRequest;->h:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->buildSelectionRectShapes(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Ljava/util/List;

    move-result-object v0

    sget-object v2, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->Companion:Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect$Companion;

    iget-object v4, p0, Lcom/onyx/android/sdk/note/request/selection/StartTransformRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iget-object v1, p0, Lcom/onyx/android/sdk/note/request/selection/StartTransformRequest;->j:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->getLimitRect()Landroid/graphics/RectF;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v3, v0

    invoke-static/range {v2 .. v8}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect$Companion;->buildSelectionRect$default(Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect$Companion;Ljava/util/List;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Landroid/graphics/RectF;ZILjava/lang/Object;)Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/note/request/selection/StartTransformRequest;->g(Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;)V

    iget-object v2, p0, Lcom/onyx/android/sdk/note/request/selection/StartTransformRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->setSelectionRect(Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;)V

    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->setTrackPointList(Lcom/onyx/android/sdk/base/data/TouchPointList;)V

    :cond_3
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/request/selection/StartTransformRequest;->j(Ljava/util/List;)V

    if-eqz v1, :cond_4

    iget-object p1, p0, Lcom/onyx/android/sdk/note/request/selection/StartTransformRequest;->h:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result p1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->setRenderScale(F)V

    :cond_4
    iget-object p1, p0, Lcom/onyx/android/sdk/note/request/selection/StartTransformRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/request/selection/StartTransformRequest;->i(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V

    return-void
.end method

.method public final f()Lcom/onyx/android/sdk/note/common/shape/Shape;
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;->getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDrawingArgs()Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/note/request/selection/StartTransformRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    const/16 v3, 0x24

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->createFreeShape(Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;I)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-interface {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->setStrokeWidth(F)V

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;

    invoke-direct {v1}, Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;-><init>()V

    sget-object v2, Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;->Companion:Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle$Companion;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle$Companion;->create([F)Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;->setLineStyle(Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;)Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;

    sget-object v2, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    invoke-virtual {v2, v0, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->setShapeLineStyle(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/note/request/selection/StartTransformRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getLinePaintColor()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->setStrokeColor(I)V

    new-instance v1, Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/selection/StartTransformRequest;->h()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/base/data/TouchPointList;-><init>(Lcom/onyx/android/sdk/base/data/TouchPointList;)V

    invoke-interface {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->addPoints(Lcom/onyx/android/sdk/base/data/TouchPointList;)V

    return-object v0

    :array_0
    .array-data 4
        0x40c00000    # 6.0f
        0x40c00000    # 6.0f
    .end array-data
.end method

.method public final g(Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/note/request/selection/StartTransformRequest;->j:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->isExpandSelectionRect()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/selection/StartTransformRequest;->h:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->expandSelectionRect(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final getNeedUpdateSelectionBitmap()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/note/request/selection/StartTransformRequest;->k:Z

    return p0
.end method

.method public final getNotePage()Lcom/onyx/android/sdk/note/common/document/page/NotePage;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/selection/StartTransformRequest;->i:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    return-object p0
.end method

.method public final getRenderContext()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/selection/StartTransformRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    return-object p0
.end method

.method public final getStartTransformBean()Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/selection/StartTransformRequest;->j:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    return-object p0
.end method

.method public final getVirtualBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/selection/StartTransformRequest;->h:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-object p0
.end method

.method public final h()Lcom/onyx/android/sdk/base/data/TouchPointList;
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/base/data/TouchPointList;

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/selection/StartTransformRequest;->j:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->getSelectionTrackPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/base/data/TouchPointList;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final i(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V
    .locals 5

    iget-object p1, p0, Lcom/onyx/android/sdk/note/request/selection/StartTransformRequest;->j:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->isRenderPageShapes()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    iget-object v0, p0, Lcom/onyx/android/sdk/note/request/selection/StartTransformRequest;->j:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;->getTransformShapes()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/onyx/android/sdk/note/common/shape/Shape;

    sget-object v4, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v4, v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isEraseShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->toPageShapeMap(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    sget-object v1, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;->getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->ensureNotePage(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getShapeList()Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->filterReferenceShapes(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->filterNormalShapes(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->removeByShapeId(Ljava/util/List;Ljava/util/List;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v4, v0}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->removeShapeList(Ljava/util/List;Z)Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final j(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/onyx/android/sdk/note/request/selection/StartTransformRequest;->k:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;->getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/note/request/selection/StartTransformRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/selection/StartTransformRequest;->h:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->execute()V

    return-void
.end method

.method public final setNeedUpdateSelectionBitmap(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/request/selection/StartTransformRequest;->k:Z

    return-void
.end method
