.class public final Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;
.super Lcom/onyx/galaxy/note/common/view/BaseThemeDialogFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$DragListenerDelegateListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoteOverviewFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteOverviewFragment.kt\ncom/onyx/galaxy/note/editor/ui/NoteOverviewFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,359:1\n1#2:360\n256#3,2:361\n256#3,2:363\n*S KotlinDebug\n*F\n+ 1 NoteOverviewFragment.kt\ncom/onyx/galaxy/note/editor/ui/NoteOverviewFragment\n*L\n283#1:361,2\n315#1:363,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0019\u0018\u00002\u00020\u00012\u00020\u0002:\u0001gB\u0007\u00a2\u0006\u0004\u0008e\u0010fJ\u0008\u0010\u0004\u001a\u00020\u0003H\u0002J\u0008\u0010\u0005\u001a\u00020\u0003H\u0002J\u0008\u0010\u0006\u001a\u00020\u0003H\u0002J\u0008\u0010\u0007\u001a\u00020\u0003H\u0002J\u0008\u0010\u0008\u001a\u00020\u0003H\u0002J\u0008\u0010\t\u001a\u00020\u0003H\u0002J\u0010\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0008\u0010\u0010\u001a\u00020\u0003H\u0002J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\nH\u0002J\u0018\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\rH\u0002J\u0018\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\rH\u0002J\u0008\u0010\u0019\u001a\u00020\u0003H\u0002J\u0010\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\nH\u0002J\u0008\u0010\u001c\u001a\u00020\u0003H\u0002J\u0008\u0010\u001d\u001a\u00020\u0003H\u0002J\u0008\u0010\u001e\u001a\u00020\u0003H\u0002J\u0010\u0010!\u001a\u00020\u00032\u0008\u0010 \u001a\u0004\u0018\u00010\u001fJ\u0008\u0010\"\u001a\u00020\u0003H\u0016J\u0012\u0010%\u001a\u00020\u00032\u0008\u0010$\u001a\u0004\u0018\u00010#H\u0016J\u0012\u0010\'\u001a\u00020&2\u0008\u0010$\u001a\u0004\u0018\u00010#H\u0016J$\u0010,\u001a\u00020\u00132\u0006\u0010)\u001a\u00020(2\u0008\u0010+\u001a\u0004\u0018\u00010*2\u0008\u0010$\u001a\u0004\u0018\u00010#H\u0016J\u001a\u0010-\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00132\u0008\u0010$\u001a\u0004\u0018\u00010#H\u0016J\u0008\u0010.\u001a\u00020\u0003H\u0016J\u0010\u00101\u001a\u00020\u00032\u0006\u00100\u001a\u00020/H\u0007J\u0010\u00104\u001a\u00020\u00032\u0006\u00103\u001a\u000202H\u0016JR\u0010?\u001a\u00020\u00032\u0008\u00105\u001a\u0004\u0018\u00010\u00132\u0006\u00107\u001a\u0002062\u0006\u00108\u001a\u0002062\u0006\u00109\u001a\u0002062\u0006\u0010:\u001a\u0002062\u0006\u0010;\u001a\u0002062\u0006\u0010<\u001a\u0002062\u0006\u0010=\u001a\u0002062\u0006\u0010>\u001a\u000206H\u0016R\u001b\u0010E\u001a\u00020@8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008A\u0010B\u001a\u0004\u0008C\u0010DR\u001b\u0010J\u001a\u00020F8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008G\u0010B\u001a\u0004\u0008H\u0010IR\u0014\u0010N\u001a\u00020K8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008L\u0010MR$\u0010V\u001a\u0004\u0018\u00010O8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008P\u0010Q\u001a\u0004\u0008R\u0010S\"\u0004\u0008T\u0010UR\"\u0010]\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008W\u0010X\u001a\u0004\u0008Y\u0010Z\"\u0004\u0008[\u0010\\R\u0018\u0010 \u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008^\u0010_R\u0016\u0010a\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008`\u0010XR\u0016\u0010d\u001a\u0002068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008b\u0010c\u00a8\u0006h"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;",
        "Lcom/onyx/galaxy/note/common/view/BaseThemeDialogFragment;",
        "Landroid/view/View$OnLayoutChangeListener;",
        "",
        "W0",
        "L0",
        "F0",
        "K0",
        "G0",
        "E0",
        "",
        "key",
        "N0",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
        "note",
        "R0",
        "T0",
        "douId",
        "O0",
        "Landroid/view/View;",
        "view",
        "selectedItem",
        "",
        "P0",
        "Q0",
        "y0",
        "docId",
        "X0",
        "z0",
        "U0",
        "C0",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "setEditorBundle",
        "onDestroy",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "Landroid/app/Dialog;",
        "onCreateDialog",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "onCreateView",
        "onViewCreated",
        "onDestroyView",
        "Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;",
        "event",
        "onVirtualDocViewInfoEvent",
        "Landroid/content/res/Configuration;",
        "newConfig",
        "onConfigurationChanged",
        "v",
        "",
        "left",
        "top",
        "right",
        "bottom",
        "oldLeft",
        "oldTop",
        "oldRight",
        "oldBottom",
        "onLayoutChange",
        "Lcom/onyx/galaxy/note/databinding/FragmentNoteOverviewBinding;",
        "z1",
        "Lkotlin/Lazy;",
        "A0",
        "()Lcom/onyx/galaxy/note/databinding/FragmentNoteOverviewBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;",
        "A1",
        "B0",
        "()Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;",
        "viewmodel",
        "Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;",
        "B1",
        "Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;",
        "adapter",
        "Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$DragListenerDelegateListener;",
        "C1",
        "Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$DragListenerDelegateListener;",
        "getDragListener",
        "()Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$DragListenerDelegateListener;",
        "setDragListener",
        "(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$DragListenerDelegateListener;)V",
        "dragListener",
        "D1",
        "Z",
        "getLocationOnLeft",
        "()Z",
        "setLocationOnLeft",
        "(Z)V",
        "locationOnLeft",
        "E1",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "F1",
        "isShowed",
        "G1",
        "I",
        "translationX",
        "<init>",
        "()V",
        "DragListenerDelegateListener",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nNoteOverviewFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteOverviewFragment.kt\ncom/onyx/galaxy/note/editor/ui/NoteOverviewFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,359:1\n1#2:360\n256#3,2:361\n256#3,2:363\n*S KotlinDebug\n*F\n+ 1 NoteOverviewFragment.kt\ncom/onyx/galaxy/note/editor/ui/NoteOverviewFragment\n*L\n283#1:361,2\n315#1:363,2\n*E\n"
    }
.end annotation


# instance fields
.field public final A1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final B1:Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public C1:Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$DragListenerDelegateListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public D1:Z

.field public E1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public F1:Z

.field public G1:I

.field public final z1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/view/BaseThemeDialogFragment;-><init>()V

    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$binding$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$binding$2;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->z1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$viewmodel$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$viewmodel$2;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->A1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->B1:Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;

    return-void
.end method

.method public static final D0(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;Landroid/animation/ValueAnimator;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->A0()Lcom/onyx/galaxy/note/databinding/FragmentNoteOverviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteOverviewBinding;->llyContent:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->G1:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public static final H0(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->C0()V

    return-void
.end method

.method public static final I0(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->C0()V

    return-void
.end method

.method public static final J0(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->T0()V

    return-void
.end method

.method public static final M0(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->U0()V

    return-void
.end method

.method public static final S0(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;Z)V
    .locals 1

    const-string p2, "$note"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->INSTANCE:Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->addAutoReLockNoteTask(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->O0(Ljava/lang/String;)V

    return-void
.end method

.method public static final V0(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->A0()Lcom/onyx/galaxy/note/databinding/FragmentNoteOverviewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteOverviewBinding;->llyContent:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method public static final synthetic access$checkEmptyData(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->y0()V

    return-void
.end method

.method public static final synthetic access$getAdapter$p(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;)Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->B1:Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;

    return-object p0
.end method

.method public static final synthetic access$getBinding(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;)Lcom/onyx/galaxy/note/databinding/FragmentNoteOverviewBinding;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->A0()Lcom/onyx/galaxy/note/databinding/FragmentNoteOverviewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getEditorBundle$p(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->E1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public static final synthetic access$getViewmodel(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;)Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->B0()Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadData(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->N0(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$onChangeDocument(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->O0(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$onLongClick(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->P0(Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$onMore(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->Q0(Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    return-void
.end method

.method public static final synthetic access$onOpenNote(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->R0(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    return-void
.end method

.method public static final synthetic access$updateSelected(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->X0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic r0(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->S0(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;Z)V

    return-void
.end method

.method public static synthetic s0(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->V0(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic t0(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->M0(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;)V

    return-void
.end method

.method public static synthetic u0(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->D0(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic v0(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->I0(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic w0(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->H0(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic x0(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->J0(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final A0()Lcom/onyx/galaxy/note/databinding/FragmentNoteOverviewBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->z1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteOverviewBinding;

    return-object p0
.end method

.method public final B0()Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->A1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;

    return-object p0
.end method

.method public final C0()V
    .locals 2

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->F1:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->F1:Z

    iget v1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->G1:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/wzj;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/wzj;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final E0()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->B0()Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;->getNoteListData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$initData$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$initData$1;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;)V

    new-instance v3, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$c;

    invoke-direct {v3, v2}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->B0()Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;->getNoteTabListData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$initData$2;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$initData$2;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;)V

    new-instance p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$c;

    invoke-direct {p0, v2}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final F0()V
    .locals 7

    sget-object v0, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->A0()Lcom/onyx/galaxy/note/databinding/FragmentNoteOverviewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteOverviewBinding;->layoutSearch:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    const-string v2, "layoutSearch"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$initInputLayout$1;

    invoke-direct {v4, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$initInputLayout$1;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;->initLayout$default(Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->A0()Lcom/onyx/galaxy/note/databinding/FragmentNoteOverviewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteOverviewBinding;->layoutSearch:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;->inputEditTextView:Lcom/onyx/android/sdk/theme/widgets/TouchModeTintTextInputEditTextView;

    sget v0, Lcom/onyx/galaxy/note/R$string;->search_note_hint:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHint(I)V

    return-void
.end method

.method public final G0()V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->A0()Lcom/onyx/galaxy/note/databinding/FragmentNoteOverviewBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteOverviewBinding;->ivClose:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v0, "ivClose"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/rzj;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/rzj;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->A0()Lcom/onyx/galaxy/note/databinding/FragmentNoteOverviewBinding;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    const-string v0, "getRoot(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/szj;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/szj;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->A0()Lcom/onyx/galaxy/note/databinding/FragmentNoteOverviewBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteOverviewBinding;->llyQuickCreate:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const-string v0, "llyQuickCreate"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/tzj;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/tzj;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->A0()Lcom/onyx/galaxy/note/databinding/FragmentNoteOverviewBinding;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$initListener$4;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$initListener$4;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    return-void
.end method

.method public final K0()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->B1:Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->B0()Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;->setViewmodel(Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->A0()Lcom/onyx/galaxy/note/databinding/FragmentNoteOverviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteOverviewBinding;->rvContent:Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;->getAutoFitRecycleView()Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->B1:Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->A0()Lcom/onyx/galaxy/note/databinding/FragmentNoteOverviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteOverviewBinding;->rvContent:Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;->getAutoFitRecycleView()Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/category/data/NoteDisplayType;->DISPLAY_LIST:Lcom/onyx/galaxy/note/category/data/NoteDisplayType;

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;->setDisplayType(Lcom/onyx/galaxy/note/category/data/NoteDisplayType;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->B1:Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;

    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$initRecyclerView$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$initRecyclerView$1;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;->setListener(Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter$NoteOverviewListener;)V

    return-void
.end method

.method public final L0()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/WindowKt;->hideNavigationBar(Landroid/view/Window;)V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->A0()Lcom/onyx/galaxy/note/databinding/FragmentNoteOverviewBinding;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/vzj;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/vzj;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->F0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->K0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->A0()Lcom/onyx/galaxy/note/databinding/FragmentNoteOverviewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteOverviewBinding;->searchEmptyView:Lcom/onyx/galaxy/note/category/view/CommonEmptyView;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_148:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/view/CommonEmptyView;->setIconSize(I)V

    return-void
.end method

.method public final N0(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->B0()Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;->loadNoteData(Ljava/lang/String;)V

    return-void
.end method

.method public final O0(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/app/NoteOverviewStartActivateDocumentEvent;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/events/app/NoteOverviewStartActivateDocumentEvent;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->E1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-eqz p1, :cond_0

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->C0()V

    return-void
.end method

.method public final P0(Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)Z
    .locals 3

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->B1:Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return v1

    :cond_0
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "docId"

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance p2, Landroid/content/ClipData$Item;

    invoke-direct {p2, p0}, Landroid/content/ClipData$Item;-><init>(Landroid/content/Intent;)V

    new-instance p0, Landroid/content/ClipData;

    const-string v0, "text/*"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-direct {p0, v2, v0, p2}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    new-instance p2, Lcom/onyx/android/sdk/universal/common/drag/BitmapDragShadowBuilder;

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v0, v2, v0}, Landroidx/core/view/ViewKt;->drawToBitmap$default(Landroid/view/View;Landroid/graphics/Bitmap$Config;ILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/onyx/android/sdk/universal/common/drag/BitmapDragShadowBuilder;-><init>(Landroid/graphics/Bitmap;)V

    const-string v0, "local_state_start_split_screen"

    invoke-static {p1, p0, p2, v0, v1}, Landroidx/core/view/ViewCompat;->startDragAndDrop(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    return v2
.end method

.method public final Q0(Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->B1:Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter4/BaseDifferAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getNoteModelBean()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    :cond_1
    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->B1:Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;->getSelectedId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    :cond_2
    check-cast v2, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getNoteModelBean()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_3
    move-object v0, p2

    :cond_4
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->B0()Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;->loadNoteTabList(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$onMore$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$onMore$1;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Landroid/view/View;)V

    new-instance p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$c;

    invoke-direct {p0, v2}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final R0(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->B0()Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;->isNoteReLocked(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/onyx/galaxy/note/category/action/AuthNoteAction;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/onyx/galaxy/note/category/action/AuthNoteAction;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$onOpenNote$1;->INSTANCE:Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$onOpenNote$1;

    new-instance v2, Lcom/sunia/HTREnginev2/uzj;

    invoke-direct {v2, p1, p0}, Lcom/sunia/HTREnginev2/uzj;-><init>(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->O0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final T0()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/action/CreateQuicklyNoteAction;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/onyx/galaxy/note/category/action/CreateQuicklyNoteAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$a;->e:Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$a;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$b;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final U0()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->A0()Lcom/onyx/galaxy/note/databinding/FragmentNoteOverviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteOverviewBinding;->llyContent:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->D1:Z

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    goto :goto_0

    :cond_0
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->A0()Lcom/onyx/galaxy/note/databinding/FragmentNoteOverviewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteOverviewBinding;->llyContent:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    iget v2, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->G1:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->A0()Lcom/onyx/galaxy/note/databinding/FragmentNoteOverviewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteOverviewBinding;->llyContent:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->A0()Lcom/onyx/galaxy/note/databinding/FragmentNoteOverviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteOverviewBinding;->llyContent:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const-string v1, "llyContent"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->G1:I

    filled-new-array {v0, v3}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/qzj;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/qzj;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->F1:Z

    return-void
.end method

.method public final W0()V
    .locals 1

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

.method public final X0(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->B1:Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;->getSelectedId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->B1:Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;->updateSelected(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final getDragListener()Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$DragListenerDelegateListener;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->C1:Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$DragListenerDelegateListener;

    return-object p0
.end method

.method public final getLocationOnLeft()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->D1:Z

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->W0()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54ffffb3

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/onyx/galaxy/note/R$style;->TransparentDialog:I

    invoke-direct {p1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-object p1
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

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->A0()Lcom/onyx/galaxy/note/databinding/FragmentNoteOverviewBinding;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->E1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-eqz v0, :cond_0

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->unregister(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0}, Lcom/onyx/galaxy/note/common/view/BaseThemeDialogFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-ne p2, p6, :cond_0

    if-ne p8, p4, :cond_0

    if-ne p3, p7, :cond_0

    if-eq p5, p9, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->W0()V

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->C1:Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$DragListenerDelegateListener;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->W0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->z0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->L0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->G0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->E0()V

    return-void
.end method

.method public final onVirtualDocViewInfoEvent(Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;->getVirtualDocViewInfo()Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;->getDocId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->X0(Ljava/lang/String;)V

    return-void
.end method

.method public final setDragListener(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$DragListenerDelegateListener;)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$DragListenerDelegateListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->C1:Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$DragListenerDelegateListener;

    return-void
.end method

.method public final setEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->E1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-eqz p1, :cond_0

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->register(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final setLocationOnLeft(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->D1:Z

    return-void
.end method

.method public final y0()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->B1:Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter4/BaseDifferAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->A0()Lcom/onyx/galaxy/note/databinding/FragmentNoteOverviewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteOverviewBinding;->searchEmptyView:Lcom/onyx/galaxy/note/category/view/CommonEmptyView;

    const-string v2, "searchEmptyView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->A0()Lcom/onyx/galaxy/note/databinding/FragmentNoteOverviewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteOverviewBinding;->layoutSearch:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;->searchResult:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v2, "searchResult"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->B1:Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;

    invoke-virtual {v2}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->B0()Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;->isSearchMode()Z

    move-result p0

    invoke-virtual {v0, v1, v2, p0}, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;->setSearchMatchingData(Landroid/widget/TextView;IZ)V

    return-void
.end method

.method public final z0()V
    .locals 2

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->D1:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_280:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v0

    neg-int v0, v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_280:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->G1:I

    return-void
.end method
