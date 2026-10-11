.class public final Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;
.super Lcom/onyx/galaxy/note/common/base/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment$Companion;,
        Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000q\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0008\t*\u00012\u0018\u0000 92\u00020\u0001:\u00019B\u0007\u00a2\u0006\u0004\u00087\u00108J$\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u001a\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u0008\u0010\r\u001a\u00020\u000bH\u0016J\u0008\u0010\u000e\u001a\u00020\u000bH\u0002J\u0008\u0010\u000f\u001a\u00020\u000bH\u0002J\u0008\u0010\u0010\u001a\u00020\u000bH\u0002J\u0010\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0010\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u0014H\u0002R\u001b\u0010\u001c\u001a\u00020\u00178BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001bR\u001b\u0010!\u001a\u00020\u001d8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u0019\u001a\u0004\u0008\u001f\u0010 R-\u0010(\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\u00110#0\"8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008%\u0010\u0019\u001a\u0004\u0008&\u0010\'R\u0018\u0010,\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R\u001b\u00101\u001a\u00020-8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008.\u0010\u0019\u001a\u0004\u0008/\u00100R\u001b\u00106\u001a\u0002028BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00083\u0010\u0019\u001a\u0004\u00084\u00105\u00a8\u0006:"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;",
        "Lcom/onyx/galaxy/note/common/base/BaseFragment;",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "view",
        "",
        "onViewCreated",
        "onDestroyView",
        "v0",
        "s0",
        "t0",
        "Lcom/onyx/galaxy/note/category/data/NoteSelectType;",
        "noteSelectType",
        "w0",
        "",
        "enable",
        "m0",
        "Lcom/onyx/galaxy/note/databinding/FragmentNoteListViewPageBinding;",
        "d1",
        "Lkotlin/Lazy;",
        "n0",
        "()Lcom/onyx/galaxy/note/databinding/FragmentNoteListViewPageBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;",
        "e1",
        "r0",
        "()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;",
        "viewModel",
        "",
        "Lkotlin/Pair;",
        "",
        "f1",
        "q0",
        "()Ljava/util/List;",
        "tabDataList",
        "Lcom/onyx/galaxy/note/category/view/adapter/NoteListViewPagerAdapter;",
        "g1",
        "Lcom/onyx/galaxy/note/category/view/adapter/NoteListViewPagerAdapter;",
        "pagerAdapter",
        "Ljava/lang/Runnable;",
        "h1",
        "o0",
        "()Ljava/lang/Runnable;",
        "delayRunnable",
        "com/onyx/galaxy/note/category/ui/NoteListViewPageFragment$pageCallBack$2$1",
        "i1",
        "p0",
        "()Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment$pageCallBack$2$1;",
        "pageCallBack",
        "<init>",
        "()V",
        "Companion",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAB_ALL_INDEX:I = 0x0

.field public static final TAB_NOTE_INDEX:I = 0x1

.field public static final TAB_PDF_INDEX:I = 0x2

.field public static final j1:I = 0x3

.field public static final k1:J = 0x3e8L


# instance fields
.field public final d1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g1:Lcom/onyx/galaxy/note/category/view/adapter/NoteListViewPagerAdapter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final h1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;->Companion:Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;-><init>()V

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment$binding$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment$binding$2;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;->d1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment$viewModel$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment$viewModel$2;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;->e1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment$tabDataList$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment$tabDataList$2;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;->f1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment$delayRunnable$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment$delayRunnable$2;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;->h1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment$pageCallBack$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment$pageCallBack$2;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;->i1:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$enableTabClick(Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;->m0(Z)V

    return-void
.end method

.method public static final synthetic access$getBinding(Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;)Lcom/onyx/galaxy/note/databinding/FragmentNoteListViewPageBinding;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;->n0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListViewPageBinding;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDelayRunnable(Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;)Ljava/lang/Runnable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;->o0()Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getViewModel(Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;)Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;->r0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setNoteSelectType(Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;Lcom/onyx/galaxy/note/category/data/NoteSelectType;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;->w0(Lcom/onyx/galaxy/note/category/data/NoteSelectType;)V

    return-void
.end method

.method public static synthetic l0(Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;->u0(Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;Lcom/google/android/material/tabs/TabLayout$Tab;I)V

    return-void
.end method

.method public static final u0(Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;->q0()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Pair;

    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setTag(Ljava/lang/Object;)Lcom/google/android/material/tabs/TabLayout$Tab;

    return-void
.end method


# virtual methods
.method public final m0(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;->n0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListViewPageBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListViewPageBinding;->tabLayout:Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;->n0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListViewPageBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/FragmentNoteListViewPageBinding;->tabLayout:Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    invoke-virtual {v2, v1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v2, p1}, Landroid/view/View;->setClickable(Z)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final n0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListViewPageBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;->d1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListViewPageBinding;

    return-object p0
.end method

.method public final o0()Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;->h1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    return-object p0
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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;->n0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListViewPageBinding;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;->n0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListViewPageBinding;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;->r0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/databinding/FragmentNoteListViewPageBinding;->setViewModel(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;->n0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListViewPageBinding;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;->g1:Lcom/onyx/galaxy/note/category/view/adapter/NoteListViewPagerAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;->n0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListViewPageBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteListViewPageBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;->n0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListViewPageBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListViewPageBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;->p0()Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment$pageCallBack$2$1;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

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

    invoke-super {p0, p1, p2}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;->v0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;->s0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;->t0()V

    return-void
.end method

.method public final p0()Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment$pageCallBack$2$1;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;->i1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment$pageCallBack$2$1;

    return-object p0
.end method

.method public final q0()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lcom/onyx/galaxy/note/category/data/NoteSelectType;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;->f1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final r0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;->e1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    return-object p0
.end method

.method public final s0()V
    .locals 3

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListViewPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "getChildFragmentManager(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    invoke-interface {v2}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListViewPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;->g1:Lcom/onyx/galaxy/note/category/view/adapter/NoteListViewPagerAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;->n0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListViewPageBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListViewPageBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;->g1:Lcom/onyx/galaxy/note/category/view/adapter/NoteListViewPagerAdapter;

    invoke-virtual {v0, p0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 p0, 0x3

    invoke-virtual {v0, p0}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    return-void
.end method

.method public final t0()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;->r0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getSelectTypeOp()Lcom/onyx/galaxy/note/settings/data/NoteSelectTypeOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/NoteSelectTypeOption;->get()Lcom/onyx/galaxy/note/category/data/NoteSelectType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;->w0(Lcom/onyx/galaxy/note/category/data/NoteSelectType;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;->n0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListViewPageBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListViewPageBinding;->tabLayout:Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment$initTabLayout$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment$initTabLayout$1;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;->n0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListViewPageBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListViewPageBinding;->tabLayout:Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setTabRippleColor(Landroid/content/res/ColorStateList;)V

    new-instance v0, Lcom/google/android/material/tabs/TabLayoutMediator;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;->n0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListViewPageBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteListViewPageBinding;->tabLayout:Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;->n0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListViewPageBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/FragmentNoteListViewPageBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v3, Lcom/sunia/HTREnginev2/pyj;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/pyj;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;->n0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListViewPageBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListViewPageBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;->p0()Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment$pageCallBack$2$1;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    return-void
.end method

.method public final v0()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;->r0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getSelectType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment$initViewModel$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment$initViewModel$1;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;)V

    new-instance v3, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment$a;

    invoke-direct {v3, v2}, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;->r0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isSlideAnimating()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment$initViewModel$2;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment$initViewModel$2;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;)V

    new-instance v3, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment$a;

    invoke-direct {v3, v2}, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;->r0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isMulSelect()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment$initViewModel$3;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment$initViewModel$3;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;)V

    new-instance p0, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment$a;

    invoke-direct {p0, v2}, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final w0(Lcom/onyx/galaxy/note/category/data/NoteSelectType;)V
    .locals 2

    sget-object v0, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;->n0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListViewPageBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListViewPageBinding;->tabLayout:Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result p1

    if-eq p1, v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->selectTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    :cond_3
    return-void
.end method
