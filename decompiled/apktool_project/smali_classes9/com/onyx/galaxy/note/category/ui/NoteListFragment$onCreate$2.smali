.class public final Lcom/onyx/galaxy/note/category/ui/NoteListFragment$onCreate$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/onyx/galaxy/note/category/ui/NoteListFragment$onCreate$2",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "onCreate",
        "",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "onDestroy",
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


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$onCreate$2;->e:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$onCreate$2;->e:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->register(Ljava/lang/Object;)V

    sget-object p1, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$onCreate$2;->e:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->ensureRegister(Ljava/lang/Object;)V

    sget-object p1, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$onCreate$2;->e:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->register(Ljava/lang/Object;)V

    sget-object p1, Lcom/onyx/android/sdk/replicator/progress/SyncProgressBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/progress/SyncProgressBundle;

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$onCreate$2;->e:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/progress/SyncProgressBundle;->register(Ljava/lang/Object;)V

    sget-object p1, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$onCreate$2;->e:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->register(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$onCreate$2;->e:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    new-instance p1, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$onCreate$2$a;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$onCreate$2$a;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/FragmentKt;->takePicture(Landroidx/fragment/app/Fragment;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->access$setTakePictureLauncher$p(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Landroidx/activity/result/ActivityResultLauncher;)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$onCreate$2;->e:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->ensureUnRegister(Ljava/lang/Object;)V

    sget-object p1, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$onCreate$2;->e:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->unRegister(Ljava/lang/Object;)V

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$onCreate$2;->e:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->unregister(Ljava/lang/Object;)V

    sget-object p1, Lcom/onyx/android/sdk/replicator/progress/SyncProgressBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/progress/SyncProgressBundle;

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$onCreate$2;->e:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/progress/SyncProgressBundle;->unregister(Ljava/lang/Object;)V

    sget-object p1, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$onCreate$2;->e:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->unRegister(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$onCreate$2;->e:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->access$getTakePictureLauncher$p(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "takePictureLauncher"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResultLauncher;->unregister()V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$onCreate$2;->e:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->access$getBinding(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$onCreate$2;->e:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->access$getToggleDisplayRunnable(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->access$getToggleMulSelectRunnable(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->access$getHideGoTopRunnable(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->access$getUpdateNoteListViewRunnable(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$onCreate$2;->e:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->access$getNoteEncryptionLoginDialog$p(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)Lcom/onyx/android/sdk/ui/CommonDialog;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/CommonDialog;->dismiss()V

    :cond_1
    return-void
.end method
