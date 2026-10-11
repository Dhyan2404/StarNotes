.class public final Lcom/onyx/galaxy/note/editor/ui/NoteOutlineDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008 \u0010!B!\u0008\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0016\u0012\u0006\u0010\"\u001a\u00020\u0016\u0012\u0006\u0010\u001f\u001a\u00020\u001c\u00a2\u0006\u0004\u0008 \u0010#J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J$\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u000c\u001a\u00020\u0004H\u0016J\u0008\u0010\r\u001a\u00020\u0004H\u0002R\u0016\u0010\u0011\u001a\u00020\u000e8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0015\u001a\u00020\u00128\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u0018R\u0016\u0010\u001f\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001e\u00a8\u0006$"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/ui/NoteOutlineDialogFragment;",
        "Landroidx/fragment/app/DialogFragment;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/view/View;",
        "onCreateView",
        "onStart",
        "s0",
        "Lcom/onyx/galaxy/note/databinding/FragmentContainerBinding;",
        "z1",
        "Lcom/onyx/galaxy/note/databinding/FragmentContainerBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;",
        "A1",
        "Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;",
        "fragment",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "B1",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "C1",
        "docManagerBundle",
        "",
        "D1",
        "I",
        "switchPageIndex",
        "<init>",
        "()V",
        "docManagerHandler",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/EditorBundle;I)V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public A1:Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;

.field public B1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public C1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public D1:I

.field public z1:Lcom/onyx/galaxy/note/databinding/FragmentContainerBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/EditorBundle;I)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "docManagerHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineDialogFragment;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineDialogFragment;->B1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    .line 4
    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineDialogFragment;->C1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    .line 5
    iput p3, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineDialogFragment;->D1:I

    return-void
.end method

.method public static final synthetic access$getFragment$p(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineDialogFragment;)Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineDialogFragment;->A1:Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;

    return-object p0
.end method

.method public static synthetic r0(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineDialogFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineDialogFragment;->t0(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineDialogFragment;)V

    return-void
.end method

.method public static final t0(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineDialogFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54ffffb4

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/onyx/galaxy/note/databinding/FragmentContainerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/FragmentContainerBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineDialogFragment;->z1:Lcom/onyx/galaxy/note/databinding/FragmentContainerBinding;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineDialogFragment;->s0()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineDialogFragment;->z1:Lcom/onyx/galaxy/note/databinding/FragmentContainerBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v0}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    return-void
.end method

.method public final s0()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineDialogFragment;->B1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineDialogFragment;->C1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->setFullScreen(Z)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineDialogFragment;->B1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->setEditBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineDialogFragment;->C1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->setDocManagerBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iget v2, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineDialogFragment;->D1:I

    invoke-virtual {v0, v2}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->setSwitchPageIndex(I)V

    new-instance v2, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineDialogFragment$initView$2$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineDialogFragment$initView$2$1;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineDialogFragment;)V

    invoke-virtual {v0, v2}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->setCloseAction(Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineDialogFragment;->A1:Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineDialogFragment;->A1:Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;

    if-nez p0, :cond_1

    const-string p0, "fragment"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    sget p0, Lcom/onyx/galaxy/note/R$id;->container:I

    invoke-static {v0, v1, p0}, Lcom/blankj/utilcode/util/FragmentUtils;->replace(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;I)V

    return-void

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineDialogFragment;->z1:Lcom/onyx/galaxy/note/databinding/FragmentContainerBinding;

    if-nez v0, :cond_3

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move-object v1, v0

    :goto_2
    invoke-virtual {v1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/zyj;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/zyj;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
