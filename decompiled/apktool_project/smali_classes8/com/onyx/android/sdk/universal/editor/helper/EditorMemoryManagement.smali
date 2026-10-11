.class public final Lcom/onyx/android/sdk/universal/editor/helper/EditorMemoryManagement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/note/common/document/doc/NoteDocMemoryManagement;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEditorMemoryManagement.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditorMemoryManagement.kt\ncom/onyx/android/sdk/universal/editor/helper/EditorMemoryManagement\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,42:1\n1549#2:43\n1620#2,3:44\n766#2:47\n857#2,2:48\n1549#2:50\n1620#2,3:51\n*S KotlinDebug\n*F\n+ 1 EditorMemoryManagement.kt\ncom/onyx/android/sdk/universal/editor/helper/EditorMemoryManagement\n*L\n30#1:43\n30#1:44,3\n31#1:47\n31#1:48,2\n35#1:50\n35#1:51,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\r\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\u0011\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/helper/EditorMemoryManagement;",
        "Lcom/onyx/android/sdk/note/common/document/doc/NoteDocMemoryManagement;",
        "",
        "checkTraceMemoryAvailable",
        "Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;",
        "noteDoc",
        "",
        "currentPageId",
        "",
        "requireReleaseMemory",
        "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
        "a",
        "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
        "workBundle",
        "Lcom/onyx/android/sdk/note/common/document/doc/DefaultNoteDocMemoryManagement;",
        "b",
        "Lcom/onyx/android/sdk/note/common/document/doc/DefaultNoteDocMemoryManagement;",
        "noteDocMemoryManagement",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V",
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
        "SMAP\nEditorMemoryManagement.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditorMemoryManagement.kt\ncom/onyx/android/sdk/universal/editor/helper/EditorMemoryManagement\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,42:1\n1549#2:43\n1620#2,3:44\n766#2:47\n857#2,2:48\n1549#2:50\n1620#2,3:51\n*S KotlinDebug\n*F\n+ 1 EditorMemoryManagement.kt\ncom/onyx/android/sdk/universal/editor/helper/EditorMemoryManagement\n*L\n30#1:43\n30#1:44,3\n31#1:47\n31#1:48,2\n35#1:50\n35#1:51,3\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lcom/onyx/android/sdk/note/common/document/doc/DefaultNoteDocMemoryManagement;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "workBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/EditorMemoryManagement;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    new-instance p1, Lcom/onyx/android/sdk/note/common/document/doc/DefaultNoteDocMemoryManagement;

    invoke-direct {p1}, Lcom/onyx/android/sdk/note/common/document/doc/DefaultNoteDocMemoryManagement;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/EditorMemoryManagement;->b:Lcom/onyx/android/sdk/note/common/document/doc/DefaultNoteDocMemoryManagement;

    return-void
.end method


# virtual methods
.method public checkTraceMemoryAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/EditorMemoryManagement;->b:Lcom/onyx/android/sdk/note/common/document/doc/DefaultNoteDocMemoryManagement;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/document/doc/DefaultNoteDocMemoryManagement;->checkTraceMemoryAvailable()Z

    move-result p0

    return p0
.end method

.method public requireReleaseMemory(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/lang/String;)V
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteDoc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentPageId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getLoadedNotePages()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getPageUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/EditorMemoryManagement;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->visibleBoxList(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocCache;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocCache;

    invoke-static {p2, v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->diff(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocCache;->saveAndUnloadPage(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/util/Collection;)Ljava/util/List;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/EditorMemoryManagement;->checkTraceMemoryAvailable()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/EditorMemoryManagement;->a:Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/note/ReleaseOtherNoteMemoryEvent;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ReleaseOtherNoteMemoryEvent;-><init>()V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Ljava/lang/Object;)V

    :cond_4
    return-void
.end method
