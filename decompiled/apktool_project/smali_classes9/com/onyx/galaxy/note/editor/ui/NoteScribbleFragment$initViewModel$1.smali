.class final Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initViewModel$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->k1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoteScribbleFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteScribbleFragment.kt\ncom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initViewModel$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,2309:1\n1#2:2310\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "list",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;",
        "kotlin.jvm.PlatformType",
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
        "SMAP\nNoteScribbleFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteScribbleFragment.kt\ncom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initViewModel$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,2309:1\n1#2:2310\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initViewModel$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initViewModel$1;->invoke(Ljava/util/List;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initViewModel$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->tabLayout:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->setDataList(Ljava/util/List;)V

    .line 3
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initViewModel$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->tabLayout:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;

    check-cast p1, Ljava/lang/Iterable;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initViewModel$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->access$getNoteModel$p(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    :cond_2
    check-cast v3, Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;

    invoke-virtual {v0, v3}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->setSelectedItem(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V

    .line 4
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initViewModel$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->access$updateTabLayoutAndIndicator(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    return-void
.end method
