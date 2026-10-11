.class public final Lcom/onyx/android/sdk/universal/editor/data/PageDataModel$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPageDataModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PageDataModel.kt\ncom/onyx/android/sdk/universal/editor/data/PageDataModel$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,141:1\n1559#2:142\n1590#2,4:143\n1549#2:147\n1620#2,3:148\n*S KotlinDebug\n*F\n+ 1 PageDataModel.kt\ncom/onyx/android/sdk/universal/editor/data/PageDataModel$Companion\n*L\n92#1:142\n92#1:143,4\n101#1:147\n101#1:148,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\"\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00040\n2\u0006\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00080\nJ\u001e\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010J\"\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00040\n2\u0006\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00100\nJ\u0012\u0010\u0013\u001a\u00020\u0014*\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0004J\u0012\u0010\u0016\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0010\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/data/PageDataModel$Companion;",
        "",
        "()V",
        "fromNoteSearchBean",
        "Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;",
        "editorBundle",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "noteSearchBean",
        "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
        "fromNoteSearchBeanList",
        "",
        "noteSearchBeanList",
        "fromVirtualPage",
        "index",
        "",
        "virtualPage",
        "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;",
        "fromVirtualPageList",
        "virtualPageList",
        "merge",
        "",
        "data",
        "updateByVirtualPage",
        "sdk-universal_overseasRelease"
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
        "SMAP\nPageDataModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PageDataModel.kt\ncom/onyx/android/sdk/universal/editor/data/PageDataModel$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,141:1\n1559#2:142\n1590#2,4:143\n1549#2:147\n1620#2,3:148\n*S KotlinDebug\n*F\n+ 1 PageDataModel.kt\ncom/onyx/android/sdk/universal/editor/data/PageDataModel$Companion\n*L\n92#1:142\n92#1:143,4\n101#1:147\n101#1:148,3\n*E\n"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromNoteSearchBean(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;)Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "editorBundle"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "noteSearchBean"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getPageDisplayRect()Landroid/graphics/RectF;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v4

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getPageIndex()I

    move-result v2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getPageId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    move-object v3, v0

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;ILjava/lang/String;Landroid/graphics/RectF;Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->setNoteSearchBean(Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getNoteSearchBean()Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->setEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    :goto_0
    sget-object p1, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->Companion:Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean$Companion;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v0, v1}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean$Companion;->toObjectCacheKey$default(Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean$Companion;Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->setExtraCacheKey(Ljava/lang/String;)V

    return-object p0
.end method

.method public final fromNoteSearchBeanList(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
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
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "editorBundle"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "noteSearchBeanList"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->Companion:Lcom/onyx/android/sdk/universal/editor/data/PageDataModel$Companion;

    invoke-virtual {v1, p1, v0}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel$Companion;->fromNoteSearchBean(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;)Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final fromVirtualPage(Lcom/onyx/android/sdk/universal/editor/EditorBundle;ILcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;)Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "editorBundle"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "virtualPage"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;ILjava/lang/String;Landroid/graphics/RectF;Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->Companion:Lcom/onyx/android/sdk/universal/editor/data/PageDataModel$Companion;

    invoke-virtual {p1, p0, p3}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel$Companion;->updateByVirtualPage(Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;)Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    return-object p0
.end method

.method public final fromVirtualPageList(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
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
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "editorBundle"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "virtualPageList"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    if-gez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;

    sget-object v3, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->Companion:Lcom/onyx/android/sdk/universal/editor/data/PageDataModel$Companion;

    invoke-virtual {v3, p1, v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel$Companion;->fromVirtualPage(Lcom/onyx/android/sdk/universal/editor/EditorBundle;ILcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;)Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final merge(Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "data"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getNoteSearchBean()Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getNoteSearchBean()Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->setNoteSearchBean(Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;)V

    return-void

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getNoteSearchBean()Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getSelections()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getNoteSearchBean()Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getSelections()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getNoteSearchBean()Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getSelections()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getNoteSearchBean()Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getSelections()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getNoteSearchBean()Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->setSelections(Ljava/util/List;)V

    :goto_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getNoteSearchBean()Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getSelectionRegions()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    :goto_1
    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getNoteSearchBean()Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getSelectionRegions()Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object v0, v1

    :goto_2
    check-cast v0, Ljava/util/Collection;

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    :cond_6
    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getNoteSearchBean()Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getSelectionRegions()Ljava/util/List;

    move-result-object v0

    goto :goto_3

    :cond_7
    move-object v0, v1

    :goto_3
    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getNoteSearchBean()Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getSelectionRegions()Ljava/util/List;

    move-result-object v1

    :cond_8
    check-cast v1, Ljava/util/Collection;

    invoke-static {p0, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    :cond_9
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getNoteSearchBean()Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    move-result-object p1

    if-nez p1, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->setSelectionRegions(Ljava/util/List;)V

    :goto_4
    return-void
.end method

.method public final updateByVirtualPage(Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;)Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "virtualPage"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->getPageSizeWithMargin()Landroid/graphics/RectF;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->setPageDisplayRectF(Landroid/graphics/RectF;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->setPageId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUpdatedAt()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->setUpdatedAt(J)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getUpdatedAt()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->setExtraCacheKey(Ljava/lang/String;)V

    return-object p1
.end method
