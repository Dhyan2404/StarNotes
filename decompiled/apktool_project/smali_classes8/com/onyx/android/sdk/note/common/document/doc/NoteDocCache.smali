.class public final Lcom/onyx/android/sdk/note/common/document/doc/NoteDocCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoteDocCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteDocCache.kt\ncom/onyx/android/sdk/note/common/document/doc/NoteDocCache\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,58:1\n1#2:59\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u001e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u00020\u0004*\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\n\u0010\u0008\u001a\u00020\t*\u00020\u0005J\u001e\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000b*\u00020\u00052\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00070\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/document/doc/NoteDocCache;",
        "",
        "()V",
        "cachePage",
        "",
        "Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;",
        "cachePageId",
        "",
        "calculatePointByteSize",
        "",
        "saveAndUnloadPage",
        "",
        "pageIdList",
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
        "SMAP\nNoteDocCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteDocCache.kt\ncom/onyx/android/sdk/note/common/document/doc/NoteDocCache\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,58:1\n1#2:59\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocCache;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocCache;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocCache;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocCache;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final cachePage(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/lang/String;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getCachedPageMap()Lorg/apache/commons/collections4/map/ListOrderedMap;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocCache;->calculatePointByteSize(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;)J

    move-result-wide v0

    sget-object p0, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteConstant;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/constant/NoteConstant;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteConstant;->getMAX_CACHED_PAGE_MEMORY_COUNT()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getMemoryManagement()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocMemoryManagement;

    move-result-object p0

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocMemoryManagement;->checkTraceMemoryAvailable()Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getMemoryManagement()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocMemoryManagement;

    move-result-object p0

    if-nez p2, :cond_2

    const-string p2, ""

    :cond_2
    invoke-interface {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocMemoryManagement;->requireReleaseMemory(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/lang/String;)V

    return-void
.end method

.method public final calculatePointByteSize(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;)J
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getCachedPageMap()Lorg/apache/commons/collections4/map/ListOrderedMap;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/ListOrderedMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getPageDataMap()Lorg/apache/commons/collections4/map/ListOrderedMap;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getShapePointByteSize()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    add-long/2addr v0, v3

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public final saveAndUnloadPage(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/util/Collection;)Ljava/util/List;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "pageIdList"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getPageDataMap()Lorg/apache/commons/collections4/map/ListOrderedMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getPageDataMap()Lorg/apache/commons/collections4/map/ListOrderedMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->isLoaded()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;

    invoke-virtual {v2, p1, v1}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->toggleValidShapePageSet(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V

    sget-object v2, Lcom/onyx/android/sdk/note/common/document/page/NotePageSave;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/page/NotePageSave;

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/note/common/document/page/NotePageSave;->saveAndUnloadPage(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V

    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getCachedPageMap()Lorg/apache/commons/collections4/map/ListOrderedMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/commons/collections4/map/ListOrderedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getMemoryManagement()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocMemoryManagement;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocMemoryManagement;->checkTraceMemoryAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_4

    move-object p2, p0

    goto :goto_0

    :cond_4
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_5

    sget-object p2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " unload page count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v1, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    if-eqz p1, :cond_5

    new-instance p2, Lcom/onyx/android/sdk/note/common/event/PageUnloadedEvent;

    invoke-direct {p2, p0}, Lcom/onyx/android/sdk/note/common/event/PageUnloadedEvent;-><init>(Ljava/util/List;)V

    invoke-static {p1, p2}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolderKt;->safelyPostEvent(Lorg/greenrobot/eventbus/EventBus;Ljava/lang/Object;)V

    :cond_5
    return-object p0
.end method
