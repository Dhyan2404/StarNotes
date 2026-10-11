.class public final Lcom/onyx/android/sdk/note/request/tape/ShowAllTapeShapeOverlayRequest;
.super Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShowAllTapeShapeOverlayRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShowAllTapeShapeOverlayRequest.kt\ncom/onyx/android/sdk/note/request/tape/ShowAllTapeShapeOverlayRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,35:1\n1549#2:36\n1620#2,3:37\n*S KotlinDebug\n*F\n+ 1 ShowAllTapeShapeOverlayRequest.kt\ncom/onyx/android/sdk/note/request/tape/ShowAllTapeShapeOverlayRequest\n*L\n27#1:36\n27#1:37,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/request/tape/ShowAllTapeShapeOverlayRequest;",
        "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;",
        "Lcom/onyx/android/sdk/note/NoteBundle;",
        "noteBundle",
        "",
        "execute",
        "",
        "g",
        "Z",
        "show",
        "<init>",
        "(Lcom/onyx/android/sdk/note/NoteBundle;Z)V",
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
        "SMAP\nShowAllTapeShapeOverlayRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShowAllTapeShapeOverlayRequest.kt\ncom/onyx/android/sdk/note/request/tape/ShowAllTapeShapeOverlayRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,35:1\n1549#2:36\n1620#2,3:37\n*S KotlinDebug\n*F\n+ 1 ShowAllTapeShapeOverlayRequest.kt\ncom/onyx/android/sdk/note/request/tape/ShowAllTapeShapeOverlayRequest\n*L\n27#1:36\n27#1:37,3\n*E\n"
    }
.end annotation


# instance fields
.field public final g:Z


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/note/NoteBundle;Z)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;)V

    iput-boolean p2, p0, Lcom/onyx/android/sdk/note/request/tape/ShowAllTapeShapeOverlayRequest;->g:Z

    return-void
.end method

.method public static synthetic f(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/note/request/tape/ShowAllTapeShapeOverlayRequest;->i(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/note/request/tape/ShowAllTapeShapeOverlayRequest;->k(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic h(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/note/request/tape/ShowAllTapeShapeOverlayRequest;->j(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final i(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/stream/Stream;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    return-object p0
.end method

.method public static final j(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final k(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

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

    iget-boolean p0, p0, Lcom/onyx/android/sdk/note/request/tape/ShowAllTapeShapeOverlayRequest;->g:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;->STRIPES_FILL:Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;->STROKE:Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;

    :goto_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getPageDataMap()Lorg/apache/commons/collections4/map/ListOrderedMap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/ListOrderedMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "<get-values>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getShapeList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/note/request/tape/ShowAllTapeShapeOverlayRequest$execute$2;->INSTANCE:Lcom/onyx/android/sdk/note/request/tape/ShowAllTapeShapeOverlayRequest$execute$2;

    new-instance v2, Lcom/sunia/HTREnginev2/jpm;

    invoke-direct {v2, v1}, Lcom/sunia/HTREnginev2/jpm;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/note/request/tape/ShowAllTapeShapeOverlayRequest$execute$3;->INSTANCE:Lcom/onyx/android/sdk/note/request/tape/ShowAllTapeShapeOverlayRequest$execute$3;

    new-instance v2, Lcom/sunia/HTREnginev2/kpm;

    invoke-direct {v2, v1}, Lcom/sunia/HTREnginev2/kpm;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/note/request/tape/ShowAllTapeShapeOverlayRequest$execute$4;

    invoke-direct {v1, p1, p0}, Lcom/onyx/android/sdk/note/request/tape/ShowAllTapeShapeOverlayRequest$execute$4;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;)V

    new-instance p0, Lcom/sunia/HTREnginev2/lpm;

    invoke-direct {p0, v1}, Lcom/sunia/HTREnginev2/lpm;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, p0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
