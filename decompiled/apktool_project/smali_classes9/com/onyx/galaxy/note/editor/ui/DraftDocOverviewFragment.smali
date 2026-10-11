.class public final Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;
.super Lcom/onyx/galaxy/note/common/base/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDraftDocOverviewFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DraftDocOverviewFragment.kt\ncom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,649:1\n310#2:650\n326#2,4:651\n311#2:655\n256#2,2:660\n256#2,2:662\n256#2,2:664\n256#2,2:666\n256#2,2:668\n256#2,2:670\n256#2,2:672\n256#2,2:674\n1549#3:656\n1620#3,3:657\n*S KotlinDebug\n*F\n+ 1 DraftDocOverviewFragment.kt\ncom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment\n*L\n319#1:650\n319#1:651,4\n319#1:655\n544#1:660,2\n547#1:662,2\n548#1:664,2\n607#1:666,2\n608#1:668,2\n609#1:670,2\n621#1:672,2\n623#1:674,2\n380#1:656\n380#1:657,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ee\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \u0085\u00012\u00020\u0001:\u0002\u0085\u0001B\t\u00a2\u0006\u0006\u0008\u0083\u0001\u0010\u0084\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0006\u001a\u00020\u0004H\u0002J\u0008\u0010\u0007\u001a\u00020\u0004H\u0003J\u0008\u0010\t\u001a\u00020\u0008H\u0002J\u0008\u0010\n\u001a\u00020\u0004H\u0002J\u0012\u0010\r\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000bH\u0002J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J\u0008\u0010\u000f\u001a\u00020\u0004H\u0002J\u0008\u0010\u0010\u001a\u00020\u0004H\u0002J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0002H\u0002J\u0010\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J\u0010\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0013H\u0002J\u0008\u0010\u0018\u001a\u00020\u0004H\u0002J\u0008\u0010\u0019\u001a\u00020\u0004H\u0002J\u000e\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001aH\u0002J\u0008\u0010\u001d\u001a\u00020\u0004H\u0002J\u0010\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u0013H\u0002J\u0010\u0010 \u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u0013H\u0002J\u0008\u0010!\u001a\u00020\u0004H\u0002J\u0008\u0010\"\u001a\u00020\u0004H\u0002J\u0012\u0010%\u001a\u00020\u00042\u0008\u0010$\u001a\u0004\u0018\u00010#H\u0002J\u0008\u0010&\u001a\u00020\u0004H\u0002J\u0008\u0010\'\u001a\u00020\u0002H\u0002J\u0010\u0010*\u001a\u00020\u00042\u0006\u0010)\u001a\u00020(H\u0002J\u0008\u0010+\u001a\u00020\u0004H\u0002J\u0008\u0010,\u001a\u00020\u0004H\u0002J\u0008\u0010-\u001a\u00020\u0004H\u0002J\u0008\u0010.\u001a\u00020\u0004H\u0002J\u0008\u0010/\u001a\u00020\u0002H\u0002J\u0010\u00102\u001a\u00020\u00042\u0006\u00101\u001a\u000200H\u0002J\u000e\u00105\u001a\u00020\u00042\u0006\u00104\u001a\u000203J\u000e\u00106\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0013J\u000e\u00108\u001a\u00020\u00042\u0006\u00107\u001a\u00020\u0002J$\u0010@\u001a\u00020?2\u0006\u0010:\u001a\u0002092\u0008\u0010<\u001a\u0004\u0018\u00010;2\u0008\u0010>\u001a\u0004\u0018\u00010=H\u0016J\u001a\u0010B\u001a\u00020\u00042\u0006\u0010A\u001a\u00020?2\u0008\u0010>\u001a\u0004\u0018\u00010=H\u0016J\u0008\u0010C\u001a\u00020\u0004H\u0016J\u0008\u0010D\u001a\u00020\u0004H\u0016J\u0008\u0010E\u001a\u00020\u0004H\u0016J\u0010\u0010H\u001a\u00020\u00042\u0006\u0010G\u001a\u00020FH\u0007J\u0010\u0010J\u001a\u00020\u00042\u0006\u0010G\u001a\u00020IH\u0007J\u0010\u0010M\u001a\u00020\u00042\u0006\u0010L\u001a\u00020KH\u0007J\u0010\u0010O\u001a\u00020\u00042\u0006\u0010G\u001a\u00020NH\u0007J\u0010\u0010Q\u001a\u00020\u00042\u0006\u0010G\u001a\u00020PH\u0007J\u0010\u0010S\u001a\u00020\u00042\u0006\u0010G\u001a\u00020RH\u0007J\u0010\u0010U\u001a\u00020\u00042\u0006\u0010G\u001a\u00020TH\u0007J\u0010\u0010W\u001a\u00020\u00042\u0006\u0010G\u001a\u00020VH\u0007J\u0010\u0010Y\u001a\u00020\u00042\u0006\u0010G\u001a\u00020XH\u0007R\u001b\u0010_\u001a\u00020Z8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008[\u0010\\\u001a\u0004\u0008]\u0010^R\u0014\u0010b\u001a\u00020`8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010aR\u0016\u00104\u001a\u0002038\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010cR\u0018\u0010g\u001a\u0004\u0018\u00010d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008e\u0010fR\u0016\u0010k\u001a\u00020h8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008i\u0010jR\u0016\u0010n\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008l\u0010mR\u001a\u0010r\u001a\u0008\u0012\u0004\u0012\u00020\u00020o8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008p\u0010qR\u0016\u0010v\u001a\u00020s8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008t\u0010uR\u0018\u0010z\u001a\u0004\u0018\u00010w8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008x\u0010yR\u0016\u0010}\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008{\u0010|R\u0016\u00107\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008~\u0010mR\u0019\u0010\u0082\u0001\u001a\u00020\u007f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0080\u0001\u0010\u0081\u0001\u00a8\u0006\u0086\u0001"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;",
        "Lcom/onyx/galaxy/note/common/base/BaseFragment;",
        "",
        "K0",
        "",
        "N0",
        "H0",
        "I0",
        "",
        "v0",
        "V0",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "viewportBoxInfo",
        "c1",
        "e1",
        "z0",
        "C0",
        "fullscreen",
        "a1",
        "",
        "level",
        "f1",
        "pos",
        "O0",
        "W0",
        "b1",
        "",
        "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
        "w0",
        "Y0",
        "pageIndex",
        "X0",
        "x0",
        "B0",
        "E0",
        "Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;",
        "searchHighlightRegion",
        "y0",
        "A0",
        "M0",
        "",
        "keyword",
        "Q0",
        "T0",
        "U0",
        "s0",
        "Z0",
        "L0",
        "Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;",
        "type",
        "t0",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "setEditBundle",
        "setCurrentVisibleLevel",
        "selectable",
        "setSelectable",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "view",
        "onViewCreated",
        "onResume",
        "onPause",
        "onDestroyView",
        "Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;",
        "event",
        "onVirtualDocViewInfoEvent",
        "Lcom/onyx/galaxy/note/editor/event/SidebarWidthChangedEvent;",
        "onSidebarWidthChangedEvent",
        "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;",
        "bean",
        "onChangedShapeBean",
        "Lcom/onyx/android/sdk/note/common/event/NoteShapeChangedEvent;",
        "onNoteShapeChangedEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/DraftCellAddedEvent;",
        "onDraftCellAddedEvent",
        "Lcom/onyx/galaxy/note/editor/event/SidebarVisibleLevelChangedEvent;",
        "onSidebarVisibleLevelChangedEvent",
        "Lcom/onyx/galaxy/note/editor/event/OverviewSearchEvent;",
        "onOverviewSearchEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/UpdateSearchProgressEvent;",
        "onUpdateSearchProgressEvent",
        "Lcom/onyx/android/sdk/data/account/event/ActivationStateChangedEvent;",
        "onActivationStateChangedEvent",
        "Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;",
        "d1",
        "Lkotlin/Lazy;",
        "u0",
        "()Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;",
        "Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;",
        "viewModel",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;",
        "g1",
        "Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;",
        "result",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "h1",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "compositeDisposable",
        "i1",
        "Z",
        "isViewportMoving",
        "Lcom/onyx/android/sdk/base/rx/RxFilter;",
        "j1",
        "Lcom/onyx/android/sdk/base/rx/RxFilter;",
        "loadThumbnailFilter",
        "Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter;",
        "k1",
        "Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter;",
        "adapter",
        "Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;",
        "l1",
        "Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;",
        "itemAnimatorBackup",
        "m1",
        "I",
        "currentVisibleLevel",
        "n1",
        "Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;",
        "o1",
        "Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;",
        "searchHighlightRegionData",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDraftDocOverviewFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DraftDocOverviewFragment.kt\ncom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,649:1\n310#2:650\n326#2,4:651\n311#2:655\n256#2,2:660\n256#2,2:662\n256#2,2:664\n256#2,2:666\n256#2,2:668\n256#2,2:670\n256#2,2:672\n256#2,2:674\n1549#3:656\n1620#3,3:657\n*S KotlinDebug\n*F\n+ 1 DraftDocOverviewFragment.kt\ncom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment\n*L\n319#1:650\n319#1:651,4\n319#1:655\n544#1:660,2\n547#1:662,2\n548#1:664,2\n607#1:666,2\n608#1:668,2\n609#1:670,2\n621#1:672,2\n623#1:674,2\n380#1:656\n380#1:657,3\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "DraftDocOverviewFragment"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final d1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e1:Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

.field public g1:Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i1:Z

.field public final j1:Lcom/onyx/android/sdk/base/rx/RxFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/base/rx/RxFilter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k1:Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter;

.field public l1:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public m1:I

.field public n1:Z

.field public o1:Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->Companion:Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;-><init>()V

    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$binding$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$binding$2;-><init>(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->d1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->e1:Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;

    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->h1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    new-instance v0, Lcom/onyx/android/sdk/base/rx/RxFilter;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/rx/RxFilter;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->j1:Lcom/onyx/android/sdk/base/rx/RxFilter;

    const/4 v0, 0x1

    iput v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->m1:I

    new-instance v0, Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->o1:Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;

    return-void
.end method

.method public static final D0(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->O0(I)V

    return-void
.end method

.method public static final F0(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->o1:Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;->findPrevRegion()Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->k1:Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter;

    if-nez v0, :cond_1

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;->getPageIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter;->setCurrentIndex(I)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->y0(Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;)V

    return-void
.end method

.method public static final G0(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->o1:Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;->findNextRegion()Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->k1:Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter;

    if-nez v0, :cond_1

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;->getPageIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter;->setCurrentIndex(I)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->y0(Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;)V

    return-void
.end method

.method public static final J0(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;Landroid/graphics/PointF;Landroid/graphics/PointF;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$FloatRef;FLandroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p10

    const-string v10, "this$0"

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "$downRawPoint"

    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "$downViewPosition"

    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "$rangeX"

    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "$rangeY"

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "$viewportRectF"

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "$editorRangeX"

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "$editorRangeY"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "$renderScale"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p11 .. p11}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    const/4 v11, 0x3

    const/4 v12, 0x1

    const-string v13, "editorBundle"

    const/4 v14, 0x0

    if-eqz v10, :cond_5

    if-eq v10, v12, :cond_3

    const/4 v15, 0x2

    if-eq v10, v15, :cond_0

    if-eq v10, v11, :cond_3

    goto/16 :goto_2

    :cond_0
    invoke-virtual/range {p11 .. p11}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    iget v11, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v10, v11

    invoke-virtual/range {p11 .. p11}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v11, v1

    iget-object v1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const-string v3, "element"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lorg/apache/commons/lang3/Range;

    iget v15, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v15, v10

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/onyx/android/sdk/base/extension/RangeKt;->clamp(Lorg/apache/commons/lang3/Range;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    iget-object v4, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lorg/apache/commons/lang3/Range;

    iget v10, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/onyx/android/sdk/base/extension/RangeKt;->clamp(Lorg/apache/commons/lang3/Range;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual/range {p10 .. p10}, Landroid/view/View;->getX()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpg-float v10, v10, p9

    if-gez v10, :cond_1

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual/range {p10 .. p10}, Landroid/view/View;->getY()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpg-float v10, v10, p9

    if-gez v10, :cond_1

    return v12

    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v9, v1}, Landroid/view/View;->setX(F)V

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v9, v1}, Landroid/view/View;->setY(F)V

    iget-object v1, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lorg/apache/commons/lang3/Range;

    invoke-virtual/range {p10 .. p10}, Landroid/view/View;->getX()F

    move-result v4

    iget v6, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v6

    iget v6, v8, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    mul-float/2addr v4, v6

    iget-object v6, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/onyx/android/sdk/base/extension/RangeKt;->clamp(Lorg/apache/commons/lang3/Range;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    iget-object v4, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lorg/apache/commons/lang3/Range;

    invoke-virtual/range {p10 .. p10}, Landroid/view/View;->getY()F

    move-result v3

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v2

    iget v2, v8, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    mul-float/2addr v3, v2

    iget-object v2, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/onyx/android/sdk/base/extension/RangeKt;->clamp(Lorg/apache/commons/lang3/Range;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v3, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v3

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    iget-object v0, v0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v0, :cond_2

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v14, v0

    :goto_0
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/app/ScrollingEvent;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object/from16 p0, v0

    move/from16 p1, v1

    move/from16 p2, v2

    move/from16 p3, v3

    move/from16 p4, v4

    move-object/from16 p5, v5

    invoke-direct/range {p0 .. p5}, Lcom/onyx/android/sdk/universal/editor/events/app/ScrollingEvent;-><init>(FFIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v14, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3
    iget-object v1, v0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v1, :cond_4

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v14, v1

    :goto_1
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/app/ScrollEndEvent;

    invoke-direct {v1}, Lcom/onyx/android/sdk/universal/editor/events/app/ScrollEndEvent;-><init>()V

    invoke-static {v14, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->i1:Z

    goto/16 :goto_2

    :cond_5
    iput-boolean v12, v0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->i1:Z

    invoke-virtual/range {p11 .. p11}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    invoke-virtual/range {p11 .. p11}, Landroid/view/MotionEvent;->getRawY()F

    move-result v15

    invoke-virtual {v1, v10, v15}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual/range {p10 .. p10}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual/range {p10 .. p10}, Landroid/view/View;->getY()F

    move-result v10

    invoke-virtual {v2, v1, v10}, Landroid/graphics/PointF;->set(FF)V

    invoke-static/range {p10 .. p10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static/range {p10 .. p10}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getParentView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v15

    invoke-virtual/range {p10 .. p10}, Landroid/view/View;->getWidth()I

    move-result v16

    sub-int v15, v15, v16

    int-to-float v15, v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-static {v10, v15}, Lorg/apache/commons/lang3/Range;->between(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/apache/commons/lang3/Range;

    move-result-object v10

    iput-object v10, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual/range {p10 .. p10}, Landroid/view/View;->getHeight()I

    move-result v9

    sub-int/2addr v1, v9

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v3, v1}, Lorg/apache/commons/lang3/Range;->between(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/apache/commons/lang3/Range;

    move-result-object v1

    iput-object v1, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v1, v0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v1, :cond_6

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v14

    :cond_6
    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->boundingRect(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Landroid/graphics/RectF;

    move-result-object v1

    iget-object v3, v0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v3, :cond_7

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v14

    :cond_7
    invoke-static {v3}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->viewport(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v3

    iput-object v3, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget v3, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v4, v1, Landroid/graphics/RectF;->right:F

    iget-object v9, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v9, Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    sub-float/2addr v4, v9

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/commons/lang3/Range;->between(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/apache/commons/lang3/Range;

    move-result-object v3

    iput-object v3, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget v3, v1, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v4, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v3, v1}, Lorg/apache/commons/lang3/Range;->between(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/apache/commons/lang3/Range;

    move-result-object v1

    iput-object v1, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->v0()F

    move-result v1

    iput v1, v8, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget-object v1, v0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v1, :cond_8

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v14

    :cond_8
    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->stopScroll(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Z

    iget-object v0, v0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v0, :cond_9

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v14

    :cond_9
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/app/ScrollBeginEvent;

    invoke-direct {v1, v2, v2, v11, v14}, Lcom/onyx/android/sdk/universal/editor/events/app/ScrollBeginEvent;-><init>(FFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :goto_2
    return v12
.end method

.method public static final P0(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;Lcom/onyx/galaxy/note/editor/event/OverviewSearchEvent;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->e1:Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/OverviewSearchEvent;->getSearchType()Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;->setSearchType(Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;)V

    sget-object v0, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;->layoutSearch:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    const-string v2, "layoutSearch"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/OverviewSearchEvent;->getKeyword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/OverviewSearchEvent;->getSearchType()Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;->initInputData(Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/OverviewSearchEvent;->getKeyword()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->Q0(Ljava/lang/String;)V

    return-void
.end method

.method public static final R0(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;Ljava/util/List;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->k1:Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez p0, :cond_1

    const-string p0, "editorBundle"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->currentPageIndex(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter;->addPageSearchData(Ljava/util/List;I)V

    return-void
.end method

.method public static final S0(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->T0()V

    return-void
.end method

.method public static final synthetic access$checkEmptyData(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->s0()V

    return-void
.end method

.method public static final synthetic access$filterSearchResult(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->t0(Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;)V

    return-void
.end method

.method public static final synthetic access$getAdapter$p(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->k1:Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter;

    return-object p0
.end method

.method public static final synthetic access$getBinding(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCompositeDisposable$p(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)Lio/reactivex/rxjava3/disposables/CompositeDisposable;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->h1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-object p0
.end method

.method public static final synthetic access$getEditorBundle$p(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public static final synthetic access$getViewModel$p(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->e1:Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;

    return-object p0
.end method

.method public static final synthetic access$gotoNearestHighlightRegion(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->x0(I)V

    return-void
.end method

.method public static final synthetic access$initFilterLayout(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->A0()V

    return-void
.end method

.method public static final synthetic access$isSearchMode(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->M0()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$onSearch(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->Q0(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$onSearchDone(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->T0()V

    return-void
.end method

.method public static final synthetic access$renderBoundingRectThumbnail(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->V0()V

    return-void
.end method

.method public static final synthetic access$resetHighlightRegionData(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->W0()V

    return-void
.end method

.method public static final synthetic access$setAdapterCurrentIndex(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->Z0()V

    return-void
.end method

.method public static final synthetic access$setResult$p(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->g1:Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;

    return-void
.end method

.method public static final synthetic access$updateSearchHighlightRegionIndex(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->b1()V

    return-void
.end method

.method public static synthetic d1(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;Lcom/onyx/android/sdk/geometry/data/BoxInfo;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez p1, :cond_0

    const-string p1, "editorBundle"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->viewport(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->c1(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    return-void
.end method

.method public static synthetic l0(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->R0(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic m0(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;Landroid/graphics/PointF;Landroid/graphics/PointF;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$FloatRef;FLandroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static/range {p0 .. p11}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->J0(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;Landroid/graphics/PointF;Landroid/graphics/PointF;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$FloatRef;FLandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic n0(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->F0(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o0(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->G0(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p0(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;Lcom/onyx/galaxy/note/editor/event/OverviewSearchEvent;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->P0(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;Lcom/onyx/galaxy/note/editor/event/OverviewSearchEvent;)V

    return-void
.end method

.method public static synthetic q0(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->S0(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)V

    return-void
.end method

.method public static synthetic r0(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->D0(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public final A0()V
    .locals 4

    sget-object v0, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;->filterSearchType()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;->layoutSearch:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    const-string v3, "layoutSearch"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$initFilterLayout$1;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$initFilterLayout$1;-><init>(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;->initFilterLayout(Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final B0()V
    .locals 6

    sget-object v0, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;->layoutSearch:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    const-string v2, "layoutSearch"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->n1:Z

    new-instance v4, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$initInputLayout$1;

    invoke-direct {v4, p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$initInputLayout$1;-><init>(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)V

    const/4 v5, 0x1

    invoke-virtual {v0, v1, v3, v5, v4}, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;->initLayout(Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;ZZLkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->A0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;->layoutSearch:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$initInputLayout$2;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$initInputLayout$2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;->initAiSearch(Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final C0()V
    .locals 8

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "editorBundle"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    new-instance v2, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$initListView$1;

    invoke-direct {v2, v0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$initListView$1;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object v2, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->k1:Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter;

    const-wide/16 v3, 0x0

    new-instance v5, Lcom/sunia/HTREnginev2/khf;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/khf;-><init>(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/chad/library/adapter4/util/ItemClickUtilsKt;->setOnDebouncedItemClick$default(Lcom/chad/library/adapter4/BaseQuickAdapter;JLcom/chad/library/adapter4/BaseQuickAdapter$OnItemClickListener;ILjava/lang/Object;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;->recyclerView:Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->k1:Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter;

    if-nez v2, :cond_1

    const-string v2, "adapter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;->recyclerView:Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->l1:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->n1:Z

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->a1(Z)V

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->n1:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->dp_16:I

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;->recyclerView:Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    invoke-virtual {p0, v0, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public final E0()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;->layoutSearch:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;->gotoPrevHighlight:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v1, "gotoPrevHighlight"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/sunia/HTREnginev2/ihf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/ihf;-><init>(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)V

    const-wide/16 v2, 0x64

    invoke-static {v0, v2, v3, v1}, Lcom/onyx/android/sdk/extension/ViewKt;->click(Landroid/view/View;JLandroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;->layoutSearch:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;->gotoNextHighlight:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v1, "gotoNextHighlight"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/sunia/HTREnginev2/jhf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/jhf;-><init>(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)V

    invoke-static {v0, v2, v3, v1}, Lcom/onyx/android/sdk/extension/ViewKt;->click(Landroid/view/View;JLandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final H0()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->I0()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->j1:Lcom/onyx/android/sdk/base/rx/RxFilter;

    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$b;-><init>(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3, v1}, Lcom/onyx/android/sdk/base/rx/RxFilter;->subscribeDebounce(JLio/reactivex/rxjava3/functions/Consumer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->z0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->C0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->B0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->E0()V

    return-void
.end method

.method public final I0()V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    new-instance v2, Landroid/graphics/PointF;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v2, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v9, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v9, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/high16 v0, 0x447a0000    # 1000.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/apache/commons/lang3/Range;->between(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/apache/commons/lang3/Range;

    move-result-object v5

    iput-object v5, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-static {v1, v0}, Lorg/apache/commons/lang3/Range;->between(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/apache/commons/lang3/Range;

    move-result-object v6

    iput-object v6, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-static {v1, v0}, Lorg/apache/commons/lang3/Range;->between(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/apache/commons/lang3/Range;

    move-result-object v6

    iput-object v6, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-static {v1, v0}, Lorg/apache/commons/lang3/Range;->between(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/apache/commons/lang3/Range;

    move-result-object v0

    iput-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_1:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v10

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;

    move-result-object v0

    iget-object v11, v0, Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;->viewport:Lcom/onyx/android/sdk/theme/widgets/TintView;

    new-instance v12, Lcom/sunia/HTREnginev2/mhf;

    move-object v0, v12

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lcom/sunia/HTREnginev2/mhf;-><init>(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;Landroid/graphics/PointF;Landroid/graphics/PointF;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$FloatRef;F)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public final K0()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final L0()Z
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->k1:Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter;->getCurrentIndex()I

    move-result v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez p0, :cond_1

    const-string p0, "editorBundle"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->currentPageIndex(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)I

    move-result p0

    if-eq v0, p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final M0()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;->layoutSearch:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;->inputEditTextView:Lcom/onyx/android/sdk/theme/widgets/TouchModeTintTextInputEditTextView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public final N0()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->H0()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v0, :cond_0

    const-string v0, "editorBundle"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-static {v0, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->register(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public final O0(I)V
    .locals 6

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->k1:Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter;

    const-string v1, "adapter"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->k1:Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableDifferAdapter;->isSelectionMode()Z

    move-result v0

    const-string v3, "editorBundle"

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->k1:Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableDifferAdapter;->onItemClick(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez p1, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_4
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/AllDataSelectedEvent;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->k1:Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter;

    if-nez p0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v2, p0

    :goto_0
    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableDifferAdapter;->isAllItemSelected()Z

    move-result p0

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/events/note/AllDataSelectedEvent;-><init>(Z)V

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->k1:Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter;

    if-nez v0, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_7
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter;->setCurrentIndex(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->M0()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->x0(I)V

    goto :goto_1

    :cond_8
    sget-object v0, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/page/LocateRectInPageAction;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez p0, :cond_9

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v2

    :cond_9
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getNoteSearchBean()Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    move-result-object p1

    if-eqz p1, :cond_a

    sget-object v2, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->Companion:Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean$Companion;

    invoke-virtual {v2, p1}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean$Companion;->findFirstHighlightRect(Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;)Landroid/graphics/RectF;

    move-result-object v2

    :cond_a
    invoke-direct {v1, p0, v3, v2}, Lcom/onyx/android/sdk/universal/editor/action/page/LocateRectInPageAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Landroid/graphics/RectF;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->executeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    :goto_1
    return-void
.end method

.method public final Q0(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->h1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;->searchEmptyView:Lcom/onyx/galaxy/note/category/view/CommonEmptyView;

    const-string v1, "searchEmptyView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;->llyNormalContent:Landroid/widget/LinearLayout;

    const-string v4, "llyNormalContent"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_2

    move v4, v0

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;->clSearchContent:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    const-string v4, "clSearchContent"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_3

    move v1, v0

    :cond_3
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v1, :cond_4

    const-string v1, "editorBundle"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_4
    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->renderManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->clearNoteSearchBeanList()V

    if-eqz v2, :cond_5

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->e1:Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;->setSearching(Z)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->e1:Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;->ALL:Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;->setSearchType(Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->V0()V

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->U0()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->e1:Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;->setSearchProgress(F)V

    sget-object v0, Lcom/onyx/galaxy/note/utils/SearchActions;->INSTANCE:Lcom/onyx/galaxy/note/utils/SearchActions;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->e1:Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;->getSearchType()Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/utils/SearchActions;->getCorrespondingSearchTypes(Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;->Companion:Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$Companion;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel$Companion;->createSearchArgs(Ljava/util/List;Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;

    move-result-object p1

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$e;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$e;-><init>(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$f;

    invoke-direct {v2, p0, v0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$f;-><init>(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$onSearch$searchDisposable$3;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$onSearch$searchDisposable$3;-><init>(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$g;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$g;-><init>(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$h;

    invoke-direct {v1, p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$h;-><init>(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object v0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$i;->e:Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$i;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-string v0, "map(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$onSearch$searchDisposable$7;->INSTANCE:Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$onSearch$searchDisposable$7;

    new-instance v1, Lcom/sunia/HTREnginev2/nhf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/nhf;-><init>(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)V

    invoke-static {p1, v0, v1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$j;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$j;-><init>(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$c;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$c;-><init>(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnSubscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/ohf;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/ohf;-><init>(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$d;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$d;-><init>(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    const-string v0, "subscribe(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->h1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public final T0()V
    .locals 4

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-wide/16 v1, 0x64

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/rxjava3/core/Observable;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$k;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$k;-><init>(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    const-string v1, "subscribe(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->h1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public final U0()V
    .locals 5

    sget-object v0, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;->layoutSearch:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    const-string v2, "layoutSearch"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;->updateFilterStatus(Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;->searchEmptyView:Lcom/onyx/galaxy/note/category/view/CommonEmptyView;

    const-string v1, "searchEmptyView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;->layoutSearch:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;->searchStatusLayout:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const-string v3, "searchStatusLayout"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;->layoutSearch:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;->highlightNavLayout:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const-string v4, "highlightNavLayout"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->e1:Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;

    invoke-virtual {v0, v2}, Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;->setSearching(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->e1:Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;

    invoke-virtual {v0, v3}, Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;->setUseCachedResult(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->e1:Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;->getCachedSearchResults()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->o1:Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;

    return-void
.end method

.method public final V0()V
    .locals 8

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->h1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;-><init>(ZZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v2, :cond_0

    const-string v2, "editorBundle"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    invoke-direct {v1, v2, v0}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$l;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$l;-><init>(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnSubscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$m;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$m;-><init>(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    const-string p0, "doOnNext(...)"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault$default(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final W0()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->Companion:Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean$Companion;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->w0()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean$Companion;->createSearchHighlightRegionData(Ljava/util/List;)Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->o1:Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;

    return-void
.end method

.method public final X0(I)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->o1:Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;->getNearestRegion(I)Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->o1:Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;->updateSelectedRegion(Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;)V

    return-void
.end method

.method public final Y0()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->k1:Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter;

    if-nez v0, :cond_0

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter;->getCurrentIndex()I

    move-result v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->o1:Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;->getPageFirstRegion(I)Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->o1:Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;->updateSelectedRegion(Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;)V

    return-void
.end method

.method public final Z0()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->L0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;->recyclerView:Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;->recyclerView:Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const-string v2, "editorBundle"

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->currentPageIndex(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->X0(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->k1:Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter;

    if-nez v0, :cond_2

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v3, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, v3

    :goto_0
    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->currentPageIndex(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter;->setCurrentIndex(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->b1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;->recyclerView:Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->l1:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

.method public final a1(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;->recyclerView:Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    sget-object v1, Lcom/onyx/galaxy/note/category/data/NoteDisplayType;->DISPLAY_GRID:Lcom/onyx/galaxy/note/category/data/NoteDisplayType;

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;->setDisplayType(Lcom/onyx/galaxy/note/category/data/NoteDisplayType;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;->recyclerView:Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    iget v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->m1:I

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->f1(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;->setSpanCount(I)V

    :cond_0
    return-void
.end method

.method public final b1()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;->layoutSearch:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;->currentHighlightIndex:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->o1:Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;->getIndicatorText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->e1:Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v1, :cond_0

    const-string v1, "editorBundle"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->o1:Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;->getSelectedRegion()Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;->updatePageSearchHighlightRender(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;)V

    return-void
.end method

.method public final c1(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 8

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->g1:Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;->card:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;->tvDescription:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {v2, v3}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/android/sdk/device/R$dimen;->dp_21:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v3

    sget v4, Lcom/onyx/android/sdk/device/R$dimen;->dp_21:I

    invoke-virtual {v2, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v4

    sget v5, Lcom/onyx/android/sdk/device/R$dimen;->dp_21:I

    invoke-virtual {v2, v5}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v5

    sget v6, Lcom/onyx/android/sdk/device/R$dimen;->dp_8:I

    invoke-virtual {v2, v6}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v6

    sget v7, Lcom/onyx/android/sdk/device/R$dimen;->dp_8:I

    invoke-virtual {v2, v7}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;

    move-result-object v7

    iget-object v7, v7, Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;->llyNormalContent:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int/2addr v7, v3

    sub-int/2addr v7, v4

    int-to-float v3, v7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;->llyNormalContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;

    move-result-object v7

    iget-object v7, v7, Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;->tvDescription:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int/2addr v4, v7

    sub-int/2addr v4, v5

    sub-int/2addr v4, v6

    sub-int/2addr v4, v2

    int-to-float v2, v4

    new-instance v4, Landroid/graphics/RectF;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v3, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->boundingRectF(Landroid/graphics/Bitmap;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleToPage(Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result v3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;->card:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    const-string v5, "card"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v4, v5, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutParams(Landroid/view/View;II)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;->image:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;->setViewBitmapScale(F)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->e1(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    return-void
.end method

.method public final e1(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 6

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->g1:Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;->getActualScale()F

    move-result v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;->getScaleBoundingRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v5

    div-float/2addr v1, v5

    invoke-virtual {v4, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget v1, v2, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    iget v2, v2, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;->getViewBitmapScale()F

    move-result v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;->getViewBitmapScale()F

    move-result v0

    invoke-virtual {v4, v1, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_8:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v2, v2

    if-ge v1, v0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->height()F

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->width()F

    move-result p1

    div-float/2addr v1, p1

    int-to-float p1, v0

    mul-float/2addr v1, p1

    float-to-int v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;->viewport:Lcom/onyx/android/sdk/theme/widgets/TintView;

    iget v1, v3, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1, v1}, Landroid/view/View;->setX(F)V

    iget v1, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v1}, Landroid/view/View;->setY(F)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;->viewport:Lcom/onyx/android/sdk/theme/widgets/TintView;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;->viewport:Lcom/onyx/android/sdk/theme/widgets/TintView;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    if-eq p1, v2, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;->viewport:Lcom/onyx/android/sdk/theme/widgets/TintView;

    const-string p1, "viewport"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutParams(Landroid/view/View;II)V

    :cond_3
    return-void
.end method

.method public final f1(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final onActivationStateChangedEvent(Lcom/onyx/android/sdk/data/account/event/ActivationStateChangedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/account/event/ActivationStateChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;->layoutSearch:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    const-string v0, "layoutSearch"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;->updateAiSearchState(Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;)V

    return-void
.end method

.method public final onChangedShapeBean(Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->j1:Lcom/onyx/android/sdk/base/rx/RxFilter;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/rx/RxFilter;->onNext(Ljava/lang/Object;)V

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

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onDestroyView()V
    .locals 3

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->K0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const-string v2, "editorBundle"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->renderManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->clearNoteSearchBeanList()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-static {v0, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->unregister(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_2
    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->unregister(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->h1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->dispose()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->j1:Lcom/onyx/android/sdk/base/rx/RxFilter;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxFilter;->dispose()V

    iput-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->g1:Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;

    return-void
.end method

.method public final onDraftCellAddedEvent(Lcom/onyx/android/sdk/universal/editor/events/app/DraftCellAddedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/DraftCellAddedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->j1:Lcom/onyx/android/sdk/base/rx/RxFilter;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/rx/RxFilter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onNoteShapeChangedEvent(Lcom/onyx/android/sdk/note/common/event/NoteShapeChangedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/event/NoteShapeChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->j1:Lcom/onyx/android/sdk/base/rx/RxFilter;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/rx/RxFilter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onOverviewSearchEvent(Lcom/onyx/galaxy/note/editor/event/OverviewSearchEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/editor/event/OverviewSearchEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/lhf;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/lhf;-><init>(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;Lcom/onyx/galaxy/note/editor/event/OverviewSearchEvent;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onPause()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->h1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onResume()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->K0()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;->layoutSearch:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    const-string v2, "layoutSearch"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;->clearInput(Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->Q0(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onSidebarVisibleLevelChangedEvent(Lcom/onyx/galaxy/note/editor/event/SidebarVisibleLevelChangedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/event/SidebarVisibleLevelChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/SidebarVisibleLevelChangedEvent;->getLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->setCurrentVisibleLevel(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;->recyclerView:Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/SidebarVisibleLevelChangedEvent;->getLevel()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->f1(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;->setSpanCount(I)V

    return-void
.end method

.method public final onSidebarWidthChangedEvent(Lcom/onyx/galaxy/note/editor/event/SidebarWidthChangedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/event/SidebarWidthChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p1}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->d1(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;Lcom/onyx/android/sdk/geometry/data/BoxInfo;ILjava/lang/Object;)V

    return-void
.end method

.method public final onUpdateSearchProgressEvent(Lcom/onyx/android/sdk/universal/editor/events/note/UpdateSearchProgressEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/UpdateSearchProgressEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->e1:Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/UpdateSearchProgressEvent;->getTotalProgress()F

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/UpdateSearchProgressEvent;->getDeltaProgress()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;->updateSearchProgress(FF)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;->layoutSearch:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;->searchResult:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->e1:Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;->getFormattedSearchProgress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->K0()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->N0()V

    :cond_0
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

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->i1:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;->getVirtualDocViewInfo()Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->e1(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;->getVirtualDocViewInfo()Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->c1(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;->recyclerView:Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$onVirtualDocViewInfoEvent$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$onVirtualDocViewInfoEvent$1;-><init>(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)V

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->postSelf(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final s0()V
    .locals 9

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->e1:Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;->getSearching()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->k1:Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter;

    const/4 v1, 0x0

    const-string v2, "adapter"

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Lcom/chad/library/adapter4/BaseDifferAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;->searchEmptyView:Lcom/onyx/galaxy/note/category/view/CommonEmptyView;

    const-string v4, "searchEmptyView"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->M0()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v5

    :goto_0
    const/16 v6, 0x8

    if-eqz v0, :cond_3

    move v0, v5

    goto :goto_1

    :cond_3
    move v0, v6

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;->layoutSearch:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;->searchResult:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v7, "searchResult"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->o1:Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;->size()I

    move-result v7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->M0()Z

    move-result v8

    invoke-virtual {v0, v3, v7, v8}, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;->setSearchMatchingData(Landroid/widget/TextView;IZ)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;->layoutSearch:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;->highlightNavLayout:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const-string v3, "highlightNavLayout"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->k1:Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter;

    if-nez p0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object v1, p0

    :goto_2
    invoke-virtual {v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result p0

    if-lez p0, :cond_5

    goto :goto_3

    :cond_5
    move v4, v5

    :goto_3
    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    move v5, v6

    :goto_4
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final setCurrentVisibleLevel(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->m1:I

    return-void
.end method

.method public final setEditBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-void
.end method

.method public final setSelectable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->n1:Z

    return-void
.end method

.method public final t0(Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;)V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->e1:Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;->setSearchType(Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->e1:Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;->filterCachedResult(Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->k1:Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter;

    const/4 v1, 0x0

    const-string v2, "adapter"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    new-instance v3, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$filterSearchResult$1;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$filterSearchResult$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v3}, Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter;->submitInObservable(Ljava/util/List;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->W0()V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->k1:Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter;->getCurrentIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->x0(I)V

    return-void
.end method

.method public final u0()Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->d1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;

    return-object p0
.end method

.method public final v0()F
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->g1:Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez p0, :cond_0

    const-string p0, "editorBundle"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->viewport(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result p0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;->getViewBitmapScale()F

    move-result v1

    div-float/2addr p0, v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;->getActualScale()F

    move-result v0

    div-float/2addr p0, v0

    goto :goto_0

    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    return p0
.end method

.method public final w0()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->e1:Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;->getUseCachedResult()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->e1:Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;->getSearchType()Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;->filterCachedResult(Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->k1:Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter;

    if-nez p0, :cond_1

    const-string p0, "adapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_1
    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseDifferAdapter;->getItems()Ljava/util/List;

    move-result-object p0

    :goto_0
    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getNoteSearchBean()Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final x0(I)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->o1:Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;->getNearestRegion(I)Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->y0(Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;)V

    return-void
.end method

.method public final y0(Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->o1:Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;->updateSelectedRegion(Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;)V

    sget-object v0, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/page/LocateRectInPageAction;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v2, :cond_1

    const-string v2, "editorBundle"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;->getPageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/SearchHighlightRegion;->getRect()Landroid/graphics/RectF;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Lcom/onyx/android/sdk/universal/editor/action/page/LocateRectInPageAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Landroid/graphics/RectF;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$a;-><init>(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnNext(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeSilently(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final z0()V
    .locals 3

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->n1:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;->searchEmptyView:Lcom/onyx/galaxy/note/category/view/CommonEmptyView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/CommonEmptyView;->getImageView()Lcom/onyx/android/sdk/theme/widgets/DynamicImageView;

    move-result-object p0

    const-string v0, "<get-imageView>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->dp_148:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->dp_148:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method
