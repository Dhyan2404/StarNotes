.class public final Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$onCreate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->onCreate(Landroid/os/Bundle;)V
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
        "com/onyx/galaxy/note/category/ui/SearchNoteFragment$onCreate$1",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "onCreate",
        "",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "onDestroy",
        "onStop",
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
.field public final synthetic e:Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$onCreate$1;->e:Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$onCreate$1;->b(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;I)V

    return-void
.end method

.method public static final b(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->access$getBinding(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->textInputEditTextViewName:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    :cond_0
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

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onCreate(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$onCreate$1;->e:Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$onCreate$1;->e:Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;

    new-instance v1, Lcom/sunia/HTREnginev2/q7m;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/q7m;-><init>(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)V

    invoke-static {p1, v1}, Lcom/blankj/utilcode/util/KeyboardUtils;->registerSoftInputChangedListener(Landroid/view/Window;Lcom/blankj/utilcode/util/KeyboardUtils$OnSoftInputChangedListener;)V

    sget-object p1, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$onCreate$1;->e:Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->register(Ljava/lang/Object;)V

    sget-object p1, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$onCreate$1;->e:Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->ensureRegister(Ljava/lang/Object;)V

    sget-object p0, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction;->Companion:Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$Companion;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$Companion;->debounceFetch()V

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

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$onCreate$1;->e:Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->access$getSearchDisposable$p(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_0
    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$onCreate$1;->e:Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->access$getCompositeDisposable$p(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$onCreate$1;->e:Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/KeyboardUtils;->unregisterSoftInputChangedListener(Landroid/view/Window;)V

    sget-object p1, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$onCreate$1;->e:Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->unregister(Ljava/lang/Object;)V

    sget-object p1, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$onCreate$1;->e:Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->ensureUnRegister(Ljava/lang/Object;)V

    return-void
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onStop(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$onCreate$1;->e:Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->access$getBinding(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->textInputEditTextViewName:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->hideInputKeyboard(Landroid/view/View;)V

    return-void
.end method
