.class public final Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;
.super Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectShapesRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectShapesRequest.kt\ncom/onyx/android/sdk/note/request/selection/SelectShapesRequest\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,220:1\n215#2,2:221\n*S KotlinDebug\n*F\n+ 1 SelectShapesRequest.kt\ncom/onyx/android/sdk/note/request/selection/SelectShapesRequest\n*L\n159#1:221,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0016\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u00109\u001a\u000205\u0012\u0008\u0010,\u001a\u0004\u0018\u00010+\u0012\u0006\u0010A\u001a\u00020=\u00a2\u0006\u0004\u0008Q\u0010RJ\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0008J\u0014\u0010\u000e\u001a\u00020\u00002\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bJ\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u000fJ\u0014\u0010\u0013\u001a\u00020\u00002\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bJ\u000e\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0014J\u0010\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u0017H\u0016J\u000e\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u001bJ\u0010\u0010\u001e\u001a\u00020\u00082\u0006\u0010\u001d\u001a\u00020\u000cH\u0002J$\u0010#\u001a\u00020\u00192\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020!0\u001f2\u0006\u0010\u001d\u001a\u00020\u000cH\u0002J,\u0010&\u001a\u00020\u00082\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020!0$2\u0006\u0010\u001d\u001a\u00020\u000c2\u0006\u0010%\u001a\u00020\u0014H\u0002J\u0018\u0010\'\u001a\u00020\u00082\u0006\u0010\u001d\u001a\u00020\u000c2\u0006\u0010%\u001a\u00020\u0014H\u0002J(\u0010*\u001a\u00020\u00082\u0006\u0010(\u001a\u00020 2\u0006\u0010)\u001a\u00020!2\u0006\u0010\u001d\u001a\u00020\u000c2\u0006\u0010%\u001a\u00020\u0014H\u0002J\u0010\u0010-\u001a\u00020\u00192\u0006\u0010,\u001a\u00020+H\u0002J\u0008\u0010.\u001a\u00020\u0019H\u0002J\u0010\u0010/\u001a\u00020\u00082\u0006\u0010\u001d\u001a\u00020\u000cH\u0002J0\u00104\u001a\u00020\u00192\u0006\u0010,\u001a\u00020+2\u000e\u00101\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u0001002\u0006\u00102\u001a\u00020\u000c2\u0006\u00103\u001a\u00020\u0008H\u0002R\u0017\u00109\u001a\u0002058\u0006\u00a2\u0006\u000c\n\u0004\u0008.\u00106\u001a\u0004\u00087\u00108R\u0019\u0010,\u001a\u0004\u0018\u00010+8\u0006\u00a2\u0006\u000c\n\u0004\u0008&\u0010:\u001a\u0004\u0008;\u0010<R\u0017\u0010A\u001a\u00020=8\u0006\u00a2\u0006\u000c\n\u0004\u0008/\u0010>\u001a\u0004\u0008?\u0010@R\u0014\u0010C\u001a\u00020\u000f8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008*\u0010BR\u0016\u0010\u0006\u001a\u00020\u00058\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\'\u0010DR\u001e\u0010F\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u0001008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010ER\u0016\u0010G\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008-\u0010BR\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00084\u0010HR\u0016\u0010K\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008I\u0010JR\u001e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008L\u0010MR\u001e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008N\u0010MR\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008O\u0010P\u00a8\u0006S"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;",
        "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;",
        "",
        "selectionPenWidth",
        "setSelectionPenWidth",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "virtualBoxInfo",
        "setVirtualBoxInfo",
        "",
        "selectAll",
        "setSelectAllShapes",
        "Lio/reactivex/rxjava3/functions/Predicate;",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shapePredicate",
        "setShapePredicate",
        "",
        "type",
        "setSelectionType",
        "selectedPredicate",
        "setSelectedPredicate",
        "Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;",
        "hitTestsHelper",
        "setHitTestsHelper",
        "Lcom/onyx/android/sdk/note/NoteBundle;",
        "noteBundle",
        "",
        "execute",
        "",
        "getSelectedShapes",
        "shape",
        "l",
        "",
        "Landroid/graphics/Region;",
        "Landroid/graphics/RectF;",
        "areaEraseRegionMap",
        "f",
        "",
        "areaHitTestsHelper",
        "h",
        "k",
        "region",
        "rectF",
        "j",
        "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        "notePage",
        "m",
        "g",
        "i",
        "",
        "shapeList",
        "selectedShape",
        "reverse",
        "n",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "getRenderContext",
        "()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "renderContext",
        "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        "getNotePage",
        "()Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        "Lcom/onyx/android/sdk/base/data/TouchPointList;",
        "Lcom/onyx/android/sdk/base/data/TouchPointList;",
        "getPointList",
        "()Lcom/onyx/android/sdk/base/data/TouchPointList;",
        "pointList",
        "I",
        "SELECT_RECT_MAX",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "Ljava/util/List;",
        "selectedShapes",
        "selectionType",
        "F",
        "o",
        "Z",
        "selectAllShapes",
        "p",
        "Lio/reactivex/rxjava3/functions/Predicate;",
        "q",
        "r",
        "Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;",
        "<init>",
        "(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/base/data/TouchPointList;)V",
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
        "SMAP\nSelectShapesRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectShapesRequest.kt\ncom/onyx/android/sdk/note/request/selection/SelectShapesRequest\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,220:1\n215#2,2:221\n*S KotlinDebug\n*F\n+ 1 SelectShapesRequest.kt\ncom/onyx/android/sdk/note/request/selection/SelectShapesRequest\n*L\n159#1:221,2\n*E\n"
    }
.end annotation


# instance fields
.field public final g:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lcom/onyx/android/sdk/note/common/document/page/NotePage;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final i:Lcom/onyx/android/sdk/base/data/TouchPointList;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:I

.field public k:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public m:I

.field public n:F

.field public o:Z

.field public p:Lio/reactivex/rxjava3/functions/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/functions/Predicate<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public q:Lio/reactivex/rxjava3/functions/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/functions/Predicate<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public r:Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/base/data/TouchPointList;)V
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
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/base/data/TouchPointList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pointList"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iput-object p3, p0, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->h:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    iput-object p4, p0, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->i:Lcom/onyx/android/sdk/base/data/TouchPointList;

    const/16 p1, 0x2710

    iput p1, p0, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->j:I

    const/high16 p1, 0x40000000    # 2.0f

    iput p1, p0, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->n:F

    return-void
.end method

.method public static final synthetic access$getShapePredicate$p(Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;)Lio/reactivex/rxjava3/functions/Predicate;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->p:Lio/reactivex/rxjava3/functions/Predicate;

    return-object p0
.end method


# virtual methods
.method public execute(Lcom/onyx/android/sdk/note/NoteBundle;)V
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->h:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getShapeList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->o:Z

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->h:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->m(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->p:Lio/reactivex/rxjava3/functions/Predicate;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest$execute$1;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest$execute$1;-><init>(Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;)V

    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    invoke-static {p1}, Lkotlin/sequences/SequencesKt;->toMutableList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object p1

    :cond_3
    iget-object v0, p0, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->i:Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->r:Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;

    if-nez v0, :cond_5

    new-instance v0, Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;

    iget-object v1, p0, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iget-object v2, p0, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->i:Lcom/onyx/android/sdk/base/data/TouchPointList;

    iget v3, p0, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->n:F

    iget v4, p0, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->m:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;-><init>(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/base/data/TouchPointList;FI)V

    :cond_5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    :goto_0
    const/4 v4, -0x1

    const/4 v5, 0x1

    if-ge v4, v3, :cond_9

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {p0, v4}, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->l(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {p0, v4, v0}, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->k(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {p0, v1, v4, v0}, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->h(Ljava/util/Map;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;)Z

    move-result v6

    if-nez v6, :cond_8

    :cond_6
    invoke-interface {v4}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getType()I

    move-result v6

    const/16 v7, 0x14

    if-ne v6, v7, :cond_7

    invoke-virtual {p0, v1, v4}, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->f(Ljava/util/Map;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    goto :goto_1

    :cond_7
    iget-object v6, p0, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->h:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    iget-object v7, p0, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->l:Ljava/util/List;

    invoke-virtual {p0, v6, v7, v4, v5}, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->n(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Ljava/util/List;Lcom/onyx/android/sdk/note/common/shape/Shape;Z)V

    :cond_8
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->g()V

    iget-object p1, p0, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->l:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Collection;)I

    move-result p1

    if-ne p1, v2, :cond_a

    iput-boolean v5, p0, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->o:Z

    :cond_a
    return-void
.end method

.method public final f(Ljava/util/Map;Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/graphics/Region;",
            "Landroid/graphics/RectF;",
            ">;",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ")V"
        }
    .end annotation

    invoke-interface {p2}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getType()I

    move-result v0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-interface {p2, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->getRenderMatrix(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-interface {p2}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils;->renderShape(Landroid/graphics/Matrix;Lcom/onyx/android/sdk/base/data/TouchPointList;)Landroid/graphics/Path;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v3, v1, p2, v0}, Lcom/onyx/android/sdk/base/extension/PathKt;->computeBounds$default(Landroid/graphics/Path;ZILjava/lang/Object;)Landroid/graphics/RectF;

    move-result-object p2

    iget p0, p0, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->n:F

    const/4 v0, 0x2

    int-to-float v0, v0

    div-float/2addr p0, v0

    invoke-static {p2, p0}, Lcom/onyx/android/sdk/base/extension/RectKt;->expand(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    sget-object v2, Lcom/onyx/android/sdk/note/common/utils/ShapeRegionUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeRegionUtils;

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v4, p2

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/note/common/utils/ShapeRegionUtils;->createRegionByPath$default(Lcom/onyx/android/sdk/note/common/utils/ShapeRegionUtils;Landroid/graphics/Path;Landroid/graphics/RectF;ZILjava/lang/Object;)Landroid/graphics/Region;

    move-result-object p0

    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->l:Ljava/util/List;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->ensureList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getType()I

    move-result v1

    const/16 v2, 0x14

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->l:Ljava/util/List;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_2
    return-void
.end method

.method public final getNotePage()Lcom/onyx/android/sdk/note/common/document/page/NotePage;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->h:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    return-object p0
.end method

.method public final getPointList()Lcom/onyx/android/sdk/base/data/TouchPointList;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->i:Lcom/onyx/android/sdk/base/data/TouchPointList;

    return-object p0
.end method

.method public final getRenderContext()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    return-object p0
.end method

.method public final getSelectedShapes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->l:Ljava/util/List;

    return-object p0
.end method

.method public final h(Ljava/util/Map;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/graphics/Region;",
            "+",
            "Landroid/graphics/RectF;",
            ">;",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            "Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;",
            ")Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Region;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    invoke-virtual {p0, v1, v0, p2, p3}, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->j(Landroid/graphics/Region;Landroid/graphics/RectF;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final i(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v0, v1, p1}, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->getBoundingRect(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/shape/Shape;)Landroid/graphics/RectF;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->k:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez p0, :cond_0

    const-string p0, "virtualBoxInfo"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getOriginRectFWithMargin()Landroid/graphics/RectF;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result p0

    return p0
.end method

.method public final j(Landroid/graphics/Region;Landroid/graphics/RectF;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;)Z
    .locals 0

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->i(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p4, p3, p1, p2}, Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;->inRegion(Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/Region;Landroid/graphics/RectF;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final k(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->i(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;->inRegion(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final l(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->q:Lio/reactivex/rxjava3/functions/Predicate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->testSafety(Lio/reactivex/rxjava3/functions/Predicate;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final m(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->l:Ljava/util/List;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getShapeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/note/common/shape/Shape;

    iget-object v2, p0, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->l:Ljava/util/List;

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v1, v3}, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->n(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Ljava/util/List;Lcom/onyx/android/sdk/note/common/shape/Shape;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final n(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Ljava/util/List;Lcom/onyx/android/sdk/note/common/shape/Shape;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            "Z)V"
        }
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;

    invoke-virtual {p0, p1, p3}, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->isShapeOnCurrentLayer(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p4, :cond_1

    if-eqz p2, :cond_2

    const/4 p0, 0x0

    invoke-interface {p2, p0, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final setHitTestsHelper(Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;)Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "hitTestsHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->r:Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;

    return-object p0
.end method

.method public final setSelectAllShapes(Z)Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->o:Z

    return-object p0
.end method

.method public final setSelectedPredicate(Lio/reactivex/rxjava3/functions/Predicate;)Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/functions/Predicate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/functions/Predicate<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)",
            "Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "selectedPredicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->q:Lio/reactivex/rxjava3/functions/Predicate;

    return-object p0
.end method

.method public final setSelectionPenWidth(F)Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->n:F

    return-object p0
.end method

.method public final setSelectionType(I)Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->m:I

    return-object p0
.end method

.method public final setShapePredicate(Lio/reactivex/rxjava3/functions/Predicate;)Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/functions/Predicate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/functions/Predicate<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)",
            "Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "shapePredicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->p:Lio/reactivex/rxjava3/functions/Predicate;

    return-object p0
.end method

.method public final setVirtualBoxInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "virtualBoxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/selection/SelectShapesRequest;->k:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-object p0
.end method
