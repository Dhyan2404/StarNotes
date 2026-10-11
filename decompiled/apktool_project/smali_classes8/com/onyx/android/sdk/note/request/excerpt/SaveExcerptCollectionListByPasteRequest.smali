.class public final Lcom/onyx/android/sdk/note/request/excerpt/SaveExcerptCollectionListByPasteRequest;
.super Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSaveExcerptCollectionListByPasteRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SaveExcerptCollectionListByPasteRequest.kt\ncom/onyx/android/sdk/note/request/excerpt/SaveExcerptCollectionListByPasteRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,46:1\n1855#2,2:47\n*S KotlinDebug\n*F\n+ 1 SaveExcerptCollectionListByPasteRequest.kt\ncom/onyx/android/sdk/note/request/excerpt/SaveExcerptCollectionListByPasteRequest\n*L\n26#1:47,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00060\t\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R(\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00060\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/request/excerpt/SaveExcerptCollectionListByPasteRequest;",
        "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;",
        "Lcom/onyx/android/sdk/note/NoteBundle;",
        "noteBundle",
        "",
        "execute",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shape",
        "f",
        "",
        "g",
        "Ljava/util/List;",
        "getShapeList",
        "()Ljava/util/List;",
        "setShapeList",
        "(Ljava/util/List;)V",
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
        "SMAP\nSaveExcerptCollectionListByPasteRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SaveExcerptCollectionListByPasteRequest.kt\ncom/onyx/android/sdk/note/request/excerpt/SaveExcerptCollectionListByPasteRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,46:1\n1855#2,2:47\n*S KotlinDebug\n*F\n+ 1 SaveExcerptCollectionListByPasteRequest.kt\ncom/onyx/android/sdk/note/request/excerpt/SaveExcerptCollectionListByPasteRequest\n*L\n26#1:47,2\n*E\n"
    }
.end annotation


# instance fields
.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
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
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)V"
        }
    .end annotation

    const-string v0, "noteBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shapeList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/note/request/excerpt/SaveExcerptCollectionListByPasteRequest;->g:Ljava/util/List;

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

    iget-object p1, p0, Lcom/onyx/android/sdk/note/request/excerpt/SaveExcerptCollectionListByPasteRequest;->g:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/request/excerpt/SaveExcerptCollectionListByPasteRequest;->f(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f(Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->getExcerptCollectionList(Lcom/onyx/android/sdk/note/common/shape/Shape;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v2, Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;

    invoke-direct {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;-><init>()V

    sget-object v3, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;->getSourceDocId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;->setSourceDocId(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;->getSourceShapeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;->setSourceShapeId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;->getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getDocumentUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;->setQuoteDocId(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getShapeUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;->setQuoteShapeId(Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->setExcerptCollectionList(Lcom/onyx/android/sdk/note/common/shape/Shape;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;->getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/note/extension/NoteBundleKt;->getExcerptCollectionProvider(Lcom/onyx/android/sdk/note/NoteBundle;)Lcom/onyx/android/sdk/replicator/note/db/ExcerptCollectionProvider;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/replicator/note/db/ExcerptCollectionProvider;->saveExcerptCollection(Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;)V

    return-void
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

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/excerpt/SaveExcerptCollectionListByPasteRequest;->g:Ljava/util/List;

    return-object p0
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
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/excerpt/SaveExcerptCollectionListByPasteRequest;->g:Ljava/util/List;

    return-void
.end method
