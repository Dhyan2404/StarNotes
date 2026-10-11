.class final Lcom/onyx/galaxy/note/category/action/CopyNoteListAction$topNodeIds$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCopyNoteListAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CopyNoteListAction.kt\ncom/onyx/galaxy/note/category/action/CopyNoteListAction$topNodeIds$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,346:1\n1549#2:347\n1620#2,3:348\n*S KotlinDebug\n*F\n+ 1 CopyNoteListAction.kt\ncom/onyx/galaxy/note/category/action/CopyNoteListAction$topNodeIds$2\n*L\n63#1:347\n63#1:348,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCopyNoteListAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CopyNoteListAction.kt\ncom/onyx/galaxy/note/category/action/CopyNoteListAction$topNodeIds$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,346:1\n1549#2:347\n1620#2,3:348\n*S KotlinDebug\n*F\n+ 1 CopyNoteListAction.kt\ncom/onyx/galaxy/note/category/action/CopyNoteListAction$topNodeIds$2\n*L\n63#1:347\n63#1:348,3\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction$topNodeIds$2;->this$0:Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction$topNodeIds$2;->invoke()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/util/List;
    .locals 2
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

    .line 2
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction$topNodeIds$2;->this$0:Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;->access$getNodes$p(Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    .line 6
    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
