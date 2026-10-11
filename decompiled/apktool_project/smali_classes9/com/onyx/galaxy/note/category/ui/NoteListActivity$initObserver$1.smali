.class public final Lcom/onyx/galaxy/note/category/ui/NoteListActivity$initObserver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->Z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/onyx/galaxy/note/category/ui/NoteListActivity$initObserver$1",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "onCreate",
        "",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "onDestroy",
        "onResume",
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
.field public final synthetic e:Lcom/onyx/galaxy/note/category/ui/NoteListActivity;

.field public final synthetic f:Lcom/onyx/galaxy/note/category/ui/NoteListActivity;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;Lcom/onyx/galaxy/note/category/ui/NoteListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$initObserver$1;->e:Lcom/onyx/galaxy/note/category/ui/NoteListActivity;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$initObserver$1;->f:Lcom/onyx/galaxy/note/category/ui/NoteListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$initObserver$1;->e:Lcom/onyx/galaxy/note/category/ui/NoteListActivity;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->access$getMultiWindowModeChangedConsumer$p(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;)Landroidx/core/util/Consumer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/activity/ComponentActivity;->addOnMultiWindowModeChangedListener(Landroidx/core/util/Consumer;)V

    sget-object p1, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->docManagerBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$initObserver$1;->f:Lcom/onyx/galaxy/note/category/ui/NoteListActivity;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$initObserver$1;->e:Lcom/onyx/galaxy/note/category/ui/NoteListActivity;

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->register(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;

    invoke-direct {v1, v0, p1}, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-static {p0, v1}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->access$setProgressEventHandler$p(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;)V

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

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onDestroy(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$initObserver$1;->e:Lcom/onyx/galaxy/note/category/ui/NoteListActivity;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->access$getProgressEventHandler$p(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;)Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "progressEventHandler"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->destroy()V

    sget-object p1, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$initObserver$1;->f:Lcom/onyx/galaxy/note/category/ui/NoteListActivity;

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->ensureUnRegister(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$initObserver$1;->e:Lcom/onyx/galaxy/note/category/ui/NoteListActivity;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->access$getMultiWindowModeChangedConsumer$p(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;)Landroidx/core/util/Consumer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->removeOnMultiWindowModeChangedListener(Landroidx/core/util/Consumer;)V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onResume(Landroidx/lifecycle/LifecycleOwner;)V

    sget-object p1, Lcom/onyx/galaxy/note/utils/LoginUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/LoginUtils;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/utils/LoginUtils;->isLoginRequired()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$initObserver$1;->e:Lcom/onyx/galaxy/note/category/ui/NoteListActivity;

    const-class p1, Lcom/onyx/galaxy/note/account/ui/RecentLoginActivity;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/common/extension/ContextExtKt;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method
