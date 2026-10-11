.class public final Lcom/onyx/android/sdk/note/request/SingleTapTapeShapesRequest;
.super Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSingleTapTapeShapesRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SingleTapTapeShapesRequest.kt\ncom/onyx/android/sdk/note/request/SingleTapTapeShapesRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,64:1\n766#2:65\n857#2,2:66\n1855#2,2:68\n*S KotlinDebug\n*F\n+ 1 SingleTapTapeShapesRequest.kt\ncom/onyx/android/sdk/note/request/SingleTapTapeShapesRequest\n*L\n44#1:65\n44#1:66,2\n59#1:68,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0010\u001a\u00020\n\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0008\u0010\t\u001a\u00020\u0004H\u0002R\"\u0010\u0010\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR(\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00118\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/request/SingleTapTapeShapesRequest;",
        "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;",
        "Lcom/onyx/android/sdk/note/NoteBundle;",
        "noteBundle",
        "",
        "execute",
        "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        "notePage",
        "f",
        "g",
        "Lcom/onyx/android/sdk/note/common/data/shape/SingleTapTapeShapeArgs;",
        "Lcom/onyx/android/sdk/note/common/data/shape/SingleTapTapeShapeArgs;",
        "getArgs",
        "()Lcom/onyx/android/sdk/note/common/data/shape/SingleTapTapeShapeArgs;",
        "setArgs",
        "(Lcom/onyx/android/sdk/note/common/data/shape/SingleTapTapeShapeArgs;)V",
        "args",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "h",
        "Ljava/util/List;",
        "getHitTestTapeShapeList",
        "()Ljava/util/List;",
        "setHitTestTapeShapeList",
        "(Ljava/util/List;)V",
        "hitTestTapeShapeList",
        "<init>",
        "(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/data/shape/SingleTapTapeShapeArgs;)V",
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
        "SMAP\nSingleTapTapeShapesRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SingleTapTapeShapesRequest.kt\ncom/onyx/android/sdk/note/request/SingleTapTapeShapesRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,64:1\n766#2:65\n857#2,2:66\n1855#2,2:68\n*S KotlinDebug\n*F\n+ 1 SingleTapTapeShapesRequest.kt\ncom/onyx/android/sdk/note/request/SingleTapTapeShapesRequest\n*L\n44#1:65\n44#1:66,2\n59#1:68,2\n*E\n"
    }
.end annotation


# instance fields
.field public g:Lcom/onyx/android/sdk/note/common/data/shape/SingleTapTapeShapeArgs;
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
.method public constructor <init>(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/data/shape/SingleTapTapeShapeArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/data/shape/SingleTapTapeShapeArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/note/request/SingleTapTapeShapesRequest;->g:Lcom/onyx/android/sdk/note/common/data/shape/SingleTapTapeShapeArgs;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/SingleTapTapeShapesRequest;->h:Ljava/util/List;

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

    iget-object v0, p0, Lcom/onyx/android/sdk/note/request/SingleTapTapeShapesRequest;->g:Lcom/onyx/android/sdk/note/common/data/shape/SingleTapTapeShapeArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/shape/SingleTapTapeShapeArgs;->getPageUniqueId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->getPageByUniqueId(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/request/SingleTapTapeShapesRequest;->f(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/note/request/SingleTapTapeShapesRequest;->h:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onSingleTap, hit test tapeShape, toggle tape shapes"

    invoke-virtual {p1, v0, v2, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/SingleTapTapeShapesRequest;->g()V

    :cond_1
    return-void
.end method

.method public final f(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V
    .locals 8

    iget-object v0, p0, Lcom/onyx/android/sdk/note/request/SingleTapTapeShapesRequest;->g:Lcom/onyx/android/sdk/note/common/data/shape/SingleTapTapeShapeArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/shape/SingleTapTapeShapeArgs;->getPointInDocument()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;->getTapeShapes(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/onyx/android/sdk/note/common/shape/Shape;

    sget-object v5, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;

    invoke-virtual {v5, p1, v4}, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->isShapeOnCurrentLayer(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v5

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/onyx/android/sdk/note/request/SingleTapTapeShapesRequest;->g:Lcom/onyx/android/sdk/note/common/data/shape/SingleTapTapeShapeArgs;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/note/common/data/shape/SingleTapTapeShapeArgs;->getHitTestRadius()F

    move-result v7

    invoke-interface {v4, v5, v6, v7}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->hitTest(FFF)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/SingleTapTapeShapesRequest;->h:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    check-cast p1, Ljava/util/Collection;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    return-void
.end method

.method public final g()V
    .locals 5

    iget-object v0, p0, Lcom/onyx/android/sdk/note/request/SingleTapTapeShapesRequest;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/note/request/SingleTapTapeShapesRequest;->h:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/note/common/shape/Shape;

    new-instance v2, Lcom/onyx/android/sdk/note/request/tape/ToggleTapeShapeStrokeStyleRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;->getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v3

    sget-object v4, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v4, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->getTargetShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/onyx/android/sdk/note/request/tape/ToggleTapeShapeStrokeStyleRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->execute()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final getArgs()Lcom/onyx/android/sdk/note/common/data/shape/SingleTapTapeShapeArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/SingleTapTapeShapesRequest;->g:Lcom/onyx/android/sdk/note/common/data/shape/SingleTapTapeShapeArgs;

    return-object p0
.end method

.method public final getHitTestTapeShapeList()Ljava/util/List;
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

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/SingleTapTapeShapesRequest;->h:Ljava/util/List;

    return-object p0
.end method

.method public final setArgs(Lcom/onyx/android/sdk/note/common/data/shape/SingleTapTapeShapeArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/shape/SingleTapTapeShapeArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/SingleTapTapeShapesRequest;->g:Lcom/onyx/android/sdk/note/common/data/shape/SingleTapTapeShapeArgs;

    return-void
.end method

.method public final setHitTestTapeShapeList(Ljava/util/List;)V
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

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/SingleTapTapeShapesRequest;->h:Ljava/util/List;

    return-void
.end method
