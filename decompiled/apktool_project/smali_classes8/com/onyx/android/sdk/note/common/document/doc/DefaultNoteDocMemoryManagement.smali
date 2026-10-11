.class public final Lcom/onyx/android/sdk/note/common/document/doc/DefaultNoteDocMemoryManagement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/note/common/document/doc/NoteDocMemoryManagement;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoteDocMemory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteDocMemory.kt\ncom/onyx/android/sdk/note/common/document/doc/DefaultNoteDocMemoryManagement\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,45:1\n766#2:46\n857#2,2:47\n1054#2:49\n1549#2:50\n1620#2,3:51\n*S KotlinDebug\n*F\n+ 1 NoteDocMemory.kt\ncom/onyx/android/sdk/note/common/document/doc/DefaultNoteDocMemoryManagement\n*L\n33#1:46\n33#1:47,2\n34#1:49\n35#1:50\n35#1:51,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/document/doc/DefaultNoteDocMemoryManagement;",
        "Lcom/onyx/android/sdk/note/common/document/doc/NoteDocMemoryManagement;",
        "()V",
        "checkTraceMemoryAvailable",
        "",
        "requireReleaseMemory",
        "",
        "noteDoc",
        "Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;",
        "currentPageId",
        "",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nNoteDocMemory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteDocMemory.kt\ncom/onyx/android/sdk/note/common/document/doc/DefaultNoteDocMemoryManagement\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,45:1\n766#2:46\n857#2,2:47\n1054#2:49\n1549#2:50\n1620#2,3:51\n*S KotlinDebug\n*F\n+ 1 NoteDocMemory.kt\ncom/onyx/android/sdk/note/common/document/doc/DefaultNoteDocMemoryManagement\n*L\n33#1:46\n33#1:47,2\n34#1:49\n35#1:50\n35#1:51,3\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkTraceMemoryAvailable()Z
    .locals 4

    sget-object p0, Lcom/onyx/android/sdk/base/utils/MemoryUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MemoryUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/MemoryUtils;->getTraceMemory()J

    move-result-wide v0

    const-wide/32 v2, 0x3c00000

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public requireReleaseMemory(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/lang/String;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "noteDoc"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "currentPageId"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getCachedPageMap()Lorg/apache/commons/collections4/map/ListOrderedMap;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/ListOrderedMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/onyx/android/sdk/note/common/document/doc/DefaultNoteDocMemoryManagement$requireReleaseMemory$$inlined$sortedByDescending$1;

    invoke-direct {p2}, Lcom/onyx/android/sdk/note/common/document/doc/DefaultNoteDocMemoryManagement$requireReleaseMemory$$inlined$sortedByDescending$1;-><init>()V

    invoke-static {p0, p2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    sget-object p2, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocCache;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocCache;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p2, p1, v0}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocCache;->saveAndUnloadPage(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/util/Collection;)Ljava/util/List;

    return-void
.end method
