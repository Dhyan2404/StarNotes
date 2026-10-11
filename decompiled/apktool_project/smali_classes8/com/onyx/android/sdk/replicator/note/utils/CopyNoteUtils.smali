.class public final Lcom/onyx/android/sdk/replicator/note/utils/CopyNoteUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCopyNoteUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CopyNoteUtils.kt\ncom/onyx/android/sdk/replicator/note/utils/CopyNoteUtils\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,69:1\n215#2,2:70\n*S KotlinDebug\n*F\n+ 1 CopyNoteUtils.kt\ncom/onyx/android/sdk/replicator/note/utils/CopyNoteUtils\n*L\n40#1:70,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ\n\u0010\u000b\u001a\u00020\u000c*\u00020\u000cJ\u0012\u0010\r\u001a\u00020\u0006*\u00020\u000c2\u0006\u0010\t\u001a\u00020\nJ\u0012\u0010\u000e\u001a\u00020\u0006*\u00020\u000c2\u0006\u0010\t\u001a\u00020\nR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/utils/CopyNoteUtils;",
        "",
        "()V",
        "TITLE_REPEAT_SUFFIX",
        "",
        "generateUniqueName",
        "",
        "noteProvider",
        "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
        "noteModel",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "copyNoteAttr",
        "Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;",
        "updateNotePageInfo",
        "updateNotePageNameList",
        "sdk-replicator_overseasRelease"
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
        "SMAP\nCopyNoteUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CopyNoteUtils.kt\ncom/onyx/android/sdk/replicator/note/utils/CopyNoteUtils\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,69:1\n215#2,2:70\n*S KotlinDebug\n*F\n+ 1 CopyNoteUtils.kt\ncom/onyx/android/sdk/replicator/note/utils/CopyNoteUtils\n*L\n40#1:70,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/CopyNoteUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TITLE_REPEAT_SUFFIX:Ljava/lang/String; = "_1"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/utils/CopyNoteUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/utils/CopyNoteUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/utils/CopyNoteUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/CopyNoteUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final copyNoteAttr(Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;)Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getDocNote()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getDstDocId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getDstGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setGroupId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getDstParentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setParentUniqueId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUser(Ljava/lang/String;)V

    return-object p1
.end method

.method public final generateUniqueName(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "noteProvider"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "noteModel"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/utils/CopyNoteUtils$generateUniqueName$newTitle$1;

    invoke-direct {v0, p2}, Lcom/onyx/android/sdk/replicator/note/utils/CopyNoteUtils$generateUniqueName$newTitle$1;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    const-string v1, "_1"

    invoke-static {p1, p0, v1, v0}, Lcom/onyx/android/sdk/replicator/note/db/NoteModelProviderKt;->generateUniqueName(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public final updateNotePageInfo(Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "noteModel"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getNotePageInfo()Lcom/onyx/android/sdk/replicator/note/data/page/NotePageInfo;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getCopyGlobalPage()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getSrcDocId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/replicator/note/data/page/NotePageInfo;->getPageInfo(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    move-result-object p2

    move-object v0, p2

    :cond_0
    if-eqz v0, :cond_2

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getSrcDocId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/replicator/note/data/page/NotePageInfo;->removePageInfo(Ljava/lang/String;)V

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getDstDocId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, v0}, Lcom/onyx/android/sdk/replicator/note/data/page/NotePageInfo;->addPageInfo(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)V

    :cond_2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getPageIdCopyMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    if-eqz p0, :cond_3

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/data/page/NotePageInfo;->getPageInfo(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/replicator/note/data/page/NotePageInfo;->removePageInfo(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2, v1}, Lcom/onyx/android/sdk/replicator/note/data/page/NotePageInfo;->addPageInfo(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)V

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->mergePageInfo(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final updateNotePageNameList(Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "noteModel"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getPageIdCopyMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;->addAll(Ljava/util/List;)V

    invoke-virtual {p2, p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setPageNameList(Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;)V

    return-void
.end method
