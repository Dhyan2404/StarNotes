.class public final Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initTabView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->i1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoteScribbleFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteScribbleFragment.kt\ncom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initTabView$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,2309:1\n1855#2,2:2310\n*S KotlinDebug\n*F\n+ 1 NoteScribbleFragment.kt\ncom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initTabView$2\n*L\n639#1:2310,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0016J\u0012\u0010\u0007\u001a\u00020\u00032\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0006H\u0016J\u0008\u0010\t\u001a\u00020\u0003H\u0016J\u001a\u0010\n\u001a\u00020\u00032\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u000b\u001a\u00020\u0006H\u0016J\u001a\u0010\u000c\u001a\u00020\u00032\u0008\u0010\r\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u000e\u001a\u00020\u0006H\u0016J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0003H\u0016\u00a8\u0006\u0013"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initTabView$2",
        "Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$TabListener;",
        "closedOtherTab",
        "",
        "closedTabs",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;",
        "onCloseLastTab",
        "closedTab",
        "onCloseOtherTab",
        "onCloseTab",
        "prepareOpenTab",
        "onSelectedChanged",
        "oldTab",
        "newTab",
        "onTabVisibilityChanged",
        "visibility",
        "",
        "onToggleTabVisibility",
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
        "SMAP\nNoteScribbleFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteScribbleFragment.kt\ncom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initTabView$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,2309:1\n1855#2,2:2310\n*S KotlinDebug\n*F\n+ 1 NoteScribbleFragment.kt\ncom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initTabView$2\n*L\n639#1:2310,2\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initTabView$2;->a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closedOtherTab(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "closedTabs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$TabListener$DefaultImpls;->closedOtherTab(Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$TabListener;Ljava/util/List;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;

    sget-object v1, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->INSTANCE:Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->removeAutoReLockNoteTask(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initTabView$2;->a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->access$updateTabLayoutAndIndicator(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    return-void
.end method

.method public onCloseLastTab(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initTabView$2;->a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->access$quitNote(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    return-void
.end method

.method public onCloseOtherTab()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initTabView$2;->a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getEditorBundleManager$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->onCloseOtherTab()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initTabView$2;->a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->access$updateTabLayoutAndIndicator(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    return-void
.end method

.method public onCloseTab(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "prepareOpenTab"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initTabView$2;->a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getEditorBundleManager$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->onCloseTab(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initTabView$2;->a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-static {p2}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->access$updateTabLayoutAndIndicator(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initTabView$2;->a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->closeSelectionMenu$note_overseasRelease()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p1, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->INSTANCE:Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->removeAutoReLockNoteTask(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSelectedChanged(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newTab"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class p1, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initTabView$2;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is already opened"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initTabView$2;->a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-static {p1, p2}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->access$activateDocument(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initTabView$2;->a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->closeSelectionMenu$note_overseasRelease()V

    return-void
.end method

.method public onTabVisibilityChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initTabView$2;->a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->access$updateNotch(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initTabView$2;->a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->access$updateFunctionLayoutUi(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;I)V

    return-void
.end method

.method public onToggleTabVisibility()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initTabView$2;->a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->tabLayout:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->toggleGone(Landroid/view/View;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initTabView$2;->a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->funcLayout:Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->toggleTabIndicator()V

    return-void
.end method
