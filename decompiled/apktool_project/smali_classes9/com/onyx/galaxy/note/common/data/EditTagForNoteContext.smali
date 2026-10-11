.class public final Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEditTagForNoteContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditTagForNoteContext.kt\ncom/onyx/galaxy/note/common/data/EditTagForNoteContext\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,30:1\n1549#2:31\n1620#2,3:32\n1855#2,2:35\n*S KotlinDebug\n*F\n+ 1 EditTagForNoteContext.kt\ncom/onyx/galaxy/note/common/data/EditTagForNoteContext\n*L\n20#1:31\n20#1:32,3\n22#1:35,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0017R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R$\u0010\t\u001a\u000c\u0012\u0004\u0012\u00020\u000b0\nj\u0002`\u000cX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u0017\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;",
        "",
        "()V",
        "noteModelBean",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
        "getNoteModelBean",
        "()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
        "setNoteModelBean",
        "(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V",
        "rootNode",
        "Lcom/onyx/android/sdk/base/data/TreeNode;",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
        "Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNode;",
        "getRootNode",
        "()Lcom/onyx/android/sdk/base/data/TreeNode;",
        "setRootNode",
        "(Lcom/onyx/android/sdk/base/data/TreeNode;)V",
        "selectTagIds",
        "",
        "",
        "getSelectTagIds",
        "()Ljava/util/List;",
        "getSelectedNoteTagBean",
        "",
        "note_overseasRelease"
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
        "SMAP\nEditTagForNoteContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditTagForNoteContext.kt\ncom/onyx/galaxy/note/common/data/EditTagForNoteContext\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,30:1\n1549#2:31\n1620#2,3:32\n1855#2,2:35\n*S KotlinDebug\n*F\n+ 1 EditTagForNoteContext.kt\ncom/onyx/galaxy/note/common/data/EditTagForNoteContext\n*L\n20#1:31\n20#1:32,3\n22#1:35,2\n*E\n"
    }
.end annotation


# instance fields
.field private noteModelBean:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public rootNode:Lcom/onyx/android/sdk/base/data/TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
            ">;"
        }
    .end annotation
.end field

.field private final selectTagIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;->selectTagIds:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getNoteModelBean()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;->noteModelBean:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    return-object p0
.end method

.method public final getRootNode()Lcom/onyx/android/sdk/base/data/TreeNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;->rootNode:Lcom/onyx/android/sdk/base/data/TreeNode;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "rootNode"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSelectTagIds()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;->selectTagIds:Ljava/util/List;

    return-object p0
.end method

.method public final getSelectedNoteTagBean()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;->getRootNode()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v1

    const-string v2, "DFS"

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/data/TreeNode;->findChildrenNodes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    iget-object v3, p0, Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;->selectTagIds:Ljava/util/List;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public final setNoteModelBean(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;->noteModelBean:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    return-void
.end method

.method public final setRootNode(Lcom/onyx/android/sdk/base/data/TreeNode;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TreeNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;->rootNode:Lcom/onyx/android/sdk/base/data/TreeNode;

    return-void
.end method
