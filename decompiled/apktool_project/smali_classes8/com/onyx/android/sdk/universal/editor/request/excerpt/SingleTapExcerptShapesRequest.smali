.class public final Lcom/onyx/android/sdk/universal/editor/request/excerpt/SingleTapExcerptShapesRequest;
.super Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSingleTapExcerptShapesRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SingleTapExcerptShapesRequest.kt\ncom/onyx/android/sdk/universal/editor/request/excerpt/SingleTapExcerptShapesRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,76:1\n288#2,2:77\n*S KotlinDebug\n*F\n+ 1 SingleTapExcerptShapesRequest.kt\ncom/onyx/android/sdk/universal/editor/request/excerpt/SingleTapExcerptShapesRequest\n*L\n46#1:77,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0017\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\'\u0010(J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u001e\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0002J$\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u0002R\"\u0010\u0017\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001d\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00188\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001bR\u001d\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u00188\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u0019\u001a\u0004\u0008\u001d\u0010\u001bR$\u0010&\u001a\u0004\u0018\u00010\u001f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%\u00a8\u0006)"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/request/excerpt/SingleTapExcerptShapesRequest;",
        "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;",
        "Lcom/onyx/android/sdk/note/NoteBundle;",
        "noteBundle",
        "",
        "execute",
        "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        "notePage",
        "f",
        "",
        "excerptId",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;",
        "g",
        "excerptCollectionList",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "h",
        "Lcom/onyx/android/sdk/note/common/data/shape/SingleTapExcerptShapeArgs;",
        "Lcom/onyx/android/sdk/note/common/data/shape/SingleTapExcerptShapeArgs;",
        "getArgs",
        "()Lcom/onyx/android/sdk/note/common/data/shape/SingleTapExcerptShapeArgs;",
        "setArgs",
        "(Lcom/onyx/android/sdk/note/common/data/shape/SingleTapExcerptShapeArgs;)V",
        "args",
        "",
        "Ljava/util/List;",
        "getExcerptCollectionList",
        "()Ljava/util/List;",
        "i",
        "getNoteModelList",
        "noteModelList",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "j",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "getHitTestShape",
        "()Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "setHitTestShape",
        "(Lcom/onyx/android/sdk/note/common/shape/Shape;)V",
        "hitTestShape",
        "<init>",
        "(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/data/shape/SingleTapExcerptShapeArgs;)V",
        "sdk-universal_overseasRelease"
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
        "SMAP\nSingleTapExcerptShapesRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SingleTapExcerptShapesRequest.kt\ncom/onyx/android/sdk/universal/editor/request/excerpt/SingleTapExcerptShapesRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,76:1\n288#2,2:77\n*S KotlinDebug\n*F\n+ 1 SingleTapExcerptShapesRequest.kt\ncom/onyx/android/sdk/universal/editor/request/excerpt/SingleTapExcerptShapesRequest\n*L\n46#1:77,2\n*E\n"
    }
.end annotation


# instance fields
.field public g:Lcom/onyx/android/sdk/note/common/data/shape/SingleTapExcerptShapeArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Lcom/onyx/android/sdk/note/common/shape/Shape;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/data/shape/SingleTapExcerptShapeArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/data/shape/SingleTapExcerptShapeArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/request/excerpt/SingleTapExcerptShapesRequest;->g:Lcom/onyx/android/sdk/note/common/data/shape/SingleTapExcerptShapeArgs;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/request/excerpt/SingleTapExcerptShapesRequest;->h:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/request/excerpt/SingleTapExcerptShapesRequest;->i:Ljava/util/List;

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

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/request/excerpt/SingleTapExcerptShapesRequest;->g:Lcom/onyx/android/sdk/note/common/data/shape/SingleTapExcerptShapeArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/shape/SingleTapExcerptShapeArgs;->getPageUniqueId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->getPageByUniqueId(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/request/excerpt/SingleTapExcerptShapesRequest;->f(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/request/excerpt/SingleTapExcerptShapesRequest;->j:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/request/excerpt/SingleTapExcerptShapesRequest;->h:Ljava/util/List;

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getShapeUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/request/excerpt/SingleTapExcerptShapesRequest;->g(Lcom/onyx/android/sdk/note/NoteBundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/request/excerpt/SingleTapExcerptShapesRequest;->h:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/request/excerpt/SingleTapExcerptShapesRequest;->i:Ljava/util/List;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/request/excerpt/SingleTapExcerptShapesRequest;->h:Ljava/util/List;

    invoke-virtual {p0, p1, v1}, Lcom/onyx/android/sdk/universal/editor/request/excerpt/SingleTapExcerptShapesRequest;->h(Lcom/onyx/android/sdk/note/NoteBundle;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-void
.end method

.method public final f(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V
    .locals 7

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/request/excerpt/SingleTapExcerptShapesRequest;->g:Lcom/onyx/android/sdk/note/common/data/shape/SingleTapExcerptShapeArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/shape/SingleTapExcerptShapeArgs;->getPointInDocument()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;->getExcerptShapes(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/onyx/android/sdk/note/common/shape/Shape;

    sget-object v4, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;

    invoke-virtual {v4, p1, v3}, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->isShapeOnCurrentLayer(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v4

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/onyx/android/sdk/universal/editor/request/excerpt/SingleTapExcerptShapesRequest;->g:Lcom/onyx/android/sdk/note/common/data/shape/SingleTapExcerptShapeArgs;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/note/common/data/shape/SingleTapExcerptShapeArgs;->getHitTestRadius()F

    move-result v6

    invoke-interface {v3, v4, v5, v6}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->hitTest(FFF)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_0

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    check-cast v2, Lcom/onyx/android/sdk/note/common/shape/Shape;

    iput-object v2, p0, Lcom/onyx/android/sdk/universal/editor/request/excerpt/SingleTapExcerptShapesRequest;->j:Lcom/onyx/android/sdk/note/common/shape/Shape;

    return-void
.end method

.method public final g(Lcom/onyx/android/sdk/note/NoteBundle;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/NoteBundle;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;",
            ">;"
        }
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/note/request/excerpt/LoadExcerptCollectionListByExcerptIdRequest;

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/note/request/excerpt/LoadExcerptCollectionListByExcerptIdRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->execute()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/excerpt/LoadExcerptCollectionListByExcerptIdRequest;->getExcerptCollectionList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getArgs()Lcom/onyx/android/sdk/note/common/data/shape/SingleTapExcerptShapeArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/request/excerpt/SingleTapExcerptShapesRequest;->g:Lcom/onyx/android/sdk/note/common/data/shape/SingleTapExcerptShapeArgs;

    return-object p0
.end method

.method public final getExcerptCollectionList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/request/excerpt/SingleTapExcerptShapesRequest;->h:Ljava/util/List;

    return-object p0
.end method

.method public final getHitTestShape()Lcom/onyx/android/sdk/note/common/shape/Shape;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/request/excerpt/SingleTapExcerptShapesRequest;->j:Lcom/onyx/android/sdk/note/common/shape/Shape;

    return-object p0
.end method

.method public final getNoteModelList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/request/excerpt/SingleTapExcerptShapesRequest;->i:Ljava/util/List;

    return-object p0
.end method

.method public final h(Lcom/onyx/android/sdk/note/NoteBundle;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/NoteBundle;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;"
        }
    .end annotation

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object p0

    sget-object p2, Lcom/onyx/android/sdk/universal/editor/request/excerpt/SingleTapExcerptShapesRequest$loadNoteModelList$idList$1;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/request/excerpt/SingleTapExcerptShapesRequest$loadNoteModelList$idList$1;

    invoke-static {p0, p2}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    invoke-static {p0}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object p0

    new-instance p2, Lcom/onyx/android/sdk/note/request/excerpt/LoadNoteModelListByIdListRequest;

    invoke-direct {p2, p1, p0}, Lcom/onyx/android/sdk/note/request/excerpt/LoadNoteModelListByIdListRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;Ljava/util/List;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->execute()V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/request/excerpt/LoadNoteModelListByIdListRequest;->getModelList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final setArgs(Lcom/onyx/android/sdk/note/common/data/shape/SingleTapExcerptShapeArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/shape/SingleTapExcerptShapeArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/request/excerpt/SingleTapExcerptShapesRequest;->g:Lcom/onyx/android/sdk/note/common/data/shape/SingleTapExcerptShapeArgs;

    return-void
.end method

.method public final setHitTestShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/request/excerpt/SingleTapExcerptShapesRequest;->j:Lcom/onyx/android/sdk/note/common/shape/Shape;

    return-void
.end method
