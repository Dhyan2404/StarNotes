.class public final Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$onCreate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->onCreate(Landroid/os/Bundle;)V
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
        "com/onyx/galaxy/note/category/ui/NoteListContainerFragment$onCreate$1",
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
.field public final synthetic e:Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$onCreate$1;->e:Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;

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

    sget-object p1, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$onCreate$1;->e:Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->register(Ljava/lang/Object;)V

    sget-object p1, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$onCreate$1;->e:Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->register(Ljava/lang/Object;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const-string v0, "getDefault(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$onCreate$1;->e:Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolderKt;->ensureRegister(Lorg/greenrobot/eventbus/EventBus;Ljava/lang/Object;)V

    sget-object p1, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$onCreate$1;->e:Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->ensureRegister(Ljava/lang/Object;)V

    sget-object p1, Lcom/onyx/galaxy/note/settings/data/SettingsBundle;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/SettingsBundle;

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$onCreate$1;->e:Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/settings/data/SettingsBundle;->ensureRegister(Ljava/lang/Object;)V

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$onCreate$1;->e:Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->register(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$onCreate$1;->e:Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$onCreate$1$a;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$onCreate$1$a;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;)V

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/FragmentKt;->getMultipleDocuments(Landroidx/fragment/app/Fragment;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->access$setGetBookContentLauncher$p(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;Landroidx/activity/result/ActivityResultLauncher;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$onCreate$1;->e:Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$onCreate$1$b;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$onCreate$1$b;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;)V

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/FragmentKt;->getMultipleContents(Landroidx/fragment/app/Fragment;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->access$setGetImageContentLauncher$p(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;Landroidx/activity/result/ActivityResultLauncher;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$onCreate$1;->e:Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$onCreate$1$c;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$onCreate$1$c;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;)V

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/FragmentKt;->getMultipleContents(Landroidx/fragment/app/Fragment;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->access$setGetPaperImageContentLauncher$p(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;Landroidx/activity/result/ActivityResultLauncher;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$onCreate$1;->e:Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$onCreate$1$d;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$onCreate$1$d;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;)V

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/FragmentKt;->getMultipleContents(Landroidx/fragment/app/Fragment;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->access$setGetCoverImageContentLauncher$p(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;Landroidx/activity/result/ActivityResultLauncher;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$onCreate$1;->e:Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$onCreate$1$e;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$onCreate$1$e;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;)V

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/FragmentKt;->getSingleDocuments(Landroidx/fragment/app/Fragment;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->access$setGetCoverDocumentsLauncher$p(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;Landroidx/activity/result/ActivityResultLauncher;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$onCreate$1;->e:Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;

    new-instance p1, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$onCreate$1$f;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$onCreate$1$f;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;)V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/FragmentKt;->getSingleDocuments(Landroidx/fragment/app/Fragment;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->access$setGetPaperDocumentsLauncher$p(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;Landroidx/activity/result/ActivityResultLauncher;)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$onCreate$1;->e:Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->unRegister(Ljava/lang/Object;)V

    sget-object p1, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$onCreate$1;->e:Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->unRegister(Ljava/lang/Object;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const-string v0, "getDefault(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$onCreate$1;->e:Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolderKt;->ensureUnRegister(Lorg/greenrobot/eventbus/EventBus;Ljava/lang/Object;)V

    sget-object p1, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$onCreate$1;->e:Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->ensureUnRegister(Ljava/lang/Object;)V

    sget-object p1, Lcom/onyx/galaxy/note/settings/data/SettingsBundle;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/SettingsBundle;

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$onCreate$1;->e:Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/settings/data/SettingsBundle;->ensureUnRegister(Ljava/lang/Object;)V

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$onCreate$1;->e:Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->unregister(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$onCreate$1;->e:Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->access$getCompositeDisposable$p(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;)Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$onCreate$1;->e:Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->access$getGetBookContentLauncher$p(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "getBookContentLauncher"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResultLauncher;->unregister()V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$onCreate$1;->e:Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->access$getGetImageContentLauncher$p(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "getImageContentLauncher"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_1
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResultLauncher;->unregister()V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$onCreate$1;->e:Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->access$getGetCoverDocumentsLauncher$p(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "getCoverDocumentsLauncher"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_2
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResultLauncher;->unregister()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment$onCreate$1;->e:Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;->access$getGetPaperDocumentsLauncher$p(Lcom/onyx/galaxy/note/category/ui/NoteListContainerFragment;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p0

    if-nez p0, :cond_3

    const-string p0, "getPaperDocumentsLauncher"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v0, p0

    :goto_0
    invoke-virtual {v0}, Landroidx/activity/result/ActivityResultLauncher;->unregister()V

    return-void
.end method
