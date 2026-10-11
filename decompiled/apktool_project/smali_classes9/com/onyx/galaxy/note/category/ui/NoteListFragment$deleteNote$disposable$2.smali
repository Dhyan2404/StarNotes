.class final Lcom/onyx/galaxy/note/category/ui/NoteListFragment$deleteNote$disposable$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->E0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lio/reactivex/rxjava3/core/Observable<",
        "+",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoteListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteListFragment.kt\ncom/onyx/galaxy/note/category/ui/NoteListFragment$deleteNote$disposable$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1546:1\n1549#2:1547\n1620#2,3:1548\n*S KotlinDebug\n*F\n+ 1 NoteListFragment.kt\ncom/onyx/galaxy/note/category/ui/NoteListFragment$deleteNote$disposable$2\n*L\n1242#1:1547\n1242#1:1548,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lio/reactivex/rxjava3/core/Observable;",
        "",
        "it",
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
        "SMAP\nNoteListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteListFragment.kt\ncom/onyx/galaxy/note/category/ui/NoteListFragment$deleteNote$disposable$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1546:1\n1549#2:1547\n1620#2,3:1548\n*S KotlinDebug\n*F\n+ 1 NoteListFragment.kt\ncom/onyx/galaxy/note/category/ui/NoteListFragment$deleteNote$disposable$2\n*L\n1242#1:1547\n1242#1:1548,3\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $ids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $mulSelectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/category/ui/NoteListFragment;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$deleteNote$disposable$2;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$deleteNote$disposable$2;->$ids:Ljava/util/List;

    iput-object p3, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$deleteNote$disposable$2;->$mulSelectList:Ljava/util/List;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Z)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$deleteNote$disposable$2;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "requireContext(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$deleteNote$disposable$2;->$ids:Ljava/util/List;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$deleteNote$disposable$2;->$mulSelectList:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4
    check-cast v2, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    .line 5
    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    new-instance p0, Lcom/onyx/galaxy/note/category/action/DeleteListNoteAction;

    invoke-direct {p0, p1, v0, v1}, Lcom/onyx/galaxy/note/category/action/DeleteListNoteAction;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 8
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$deleteNote$disposable$2;->invoke(Z)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
