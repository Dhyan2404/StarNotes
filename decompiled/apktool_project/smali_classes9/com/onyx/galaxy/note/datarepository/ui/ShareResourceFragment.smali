.class public final Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;
.super Lcom/onyx/galaxy/note/common/base/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShareResourceFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShareResourceFragment.kt\ncom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment\n+ 2 JSONUtils.kt\ncom/onyx/android/sdk/data/utils/JSONUtils\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,257:1\n46#2:258\n256#3,2:259\n256#3,2:261\n256#3,2:263\n256#3,2:265\n256#3,2:267\n256#3,2:269\n256#3,2:271\n256#3,2:273\n256#3,2:275\n*S KotlinDebug\n*F\n+ 1 ShareResourceFragment.kt\ncom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment\n*L\n79#1:258\n167#1:259,2\n168#1:261,2\n181#1:263,2\n186#1:265,2\n188#1:267,2\n189#1:269,2\n201#1:271,2\n202#1:273,2\n210#1:275,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008>\u0010?J$\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u001a\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u0008\u0010\r\u001a\u00020\u000bH\u0016J\u0010\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0007J\u0008\u0010\u0011\u001a\u00020\u000bH\u0002J\u0008\u0010\u0012\u001a\u00020\u000bH\u0002J\u0008\u0010\u0013\u001a\u00020\u000bH\u0002J\u0008\u0010\u0014\u001a\u00020\u000bH\u0002J\u0008\u0010\u0015\u001a\u00020\u000bH\u0002J\u0008\u0010\u0016\u001a\u00020\u000bH\u0002J\u0008\u0010\u0017\u001a\u00020\u000bH\u0002J\u0008\u0010\u0018\u001a\u00020\u000bH\u0002J\u0016\u0010\u001c\u001a\u00020\u000b2\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0019H\u0002J\u0016\u0010\u001f\u001a\u00020\u000b2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u0019H\u0002J\u0010\u0010!\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u001dH\u0002R\u0016\u0010%\u001a\u00020\"8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0016\u0010)\u001a\u00020&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R\u0018\u0010-\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\u0018\u00101\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008/\u00100R\u0016\u00105\u001a\u0002028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00083\u00104R\u0016\u00107\u001a\u0002028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00086\u00104R\u001b\u0010=\u001a\u0002088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00089\u0010:\u001a\u0004\u0008;\u0010<\u00a8\u0006@"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;",
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
        "Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsCancelEvent;",
        "event",
        "onImportDocumentsCancelEvent",
        "J0",
        "K0",
        "I0",
        "F0",
        "E0",
        "y0",
        "D0",
        "t0",
        "",
        "Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;",
        "libraryList",
        "B0",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "notes",
        "u0",
        "note",
        "M0",
        "Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;",
        "d1",
        "Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter;",
        "e1",
        "Lcom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter;",
        "resourceAdapter",
        "Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceBean;",
        "f1",
        "Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceBean;",
        "data",
        "Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;",
        "g1",
        "Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;",
        "progressEventHandler",
        "",
        "h1",
        "Z",
        "finishDownload",
        "i1",
        "startDownloaded",
        "Lcom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel;",
        "j1",
        "Lkotlin/Lazy;",
        "x0",
        "()Lcom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel;",
        "viewModel",
        "<init>",
        "()V",
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
        "SMAP\nShareResourceFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShareResourceFragment.kt\ncom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment\n+ 2 JSONUtils.kt\ncom/onyx/android/sdk/data/utils/JSONUtils\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,257:1\n46#2:258\n256#3,2:259\n256#3,2:261\n256#3,2:263\n256#3,2:265\n256#3,2:267\n256#3,2:269\n256#3,2:271\n256#3,2:273\n256#3,2:275\n*S KotlinDebug\n*F\n+ 1 ShareResourceFragment.kt\ncom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment\n*L\n79#1:258\n167#1:259,2\n168#1:261,2\n181#1:263,2\n186#1:265,2\n188#1:267,2\n189#1:269,2\n201#1:271,2\n202#1:273,2\n210#1:275,2\n*E\n"
    }
.end annotation


# instance fields
.field public d1:Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;

.field public e1:Lcom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f1:Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public g1:Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h1:Z

.field public i1:Z

.field public final j1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;-><init>()V

    new-instance v0, Lcom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->e1:Lcom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter;

    new-instance v0, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment$viewModel$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment$viewModel$2;-><init>(Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->j1:Lkotlin/Lazy;

    return-void
.end method

.method public static final A0(Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/FragmentKt;->finishActivity(Landroidx/fragment/app/Fragment;)Lkotlin/Unit;

    return-void
.end method

.method public static final C0(Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->g1:Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->destroy()V

    :cond_0
    return-void
.end method

.method public static final G0(Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->y0()V

    return-void
.end method

.method public static final H0(Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;

    if-nez p1, :cond_0

    const-string p1, "binding"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;->tvImport:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-boolean p1, p0, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->h1:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->f1:Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceBean;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceBean;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->B0(Ljava/util/List;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->D0()V

    return-void
.end method

.method public static final L0(Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/FragmentKt;->finishActivity(Landroidx/fragment/app/Fragment;)Lkotlin/Unit;

    return-void
.end method

.method public static final synthetic access$checkDownloadResult(Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->t0()V

    return-void
.end method

.method public static final synthetic access$createComplete(Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->u0(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$getBinding$p(Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;)Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;

    return-object p0
.end method

.method public static final synthetic access$getResourceAdapter$p(Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;)Lcom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->e1:Lcom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter;

    return-object p0
.end method

.method public static synthetic l0(Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->z0(Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;)V

    return-void
.end method

.method public static synthetic m0(Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->C0(Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;)V

    return-void
.end method

.method public static synthetic n0(Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->L0(Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;)V

    return-void
.end method

.method public static synthetic o0(Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->H0(Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p0(Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->w0(Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;)V

    return-void
.end method

.method public static synthetic q0(Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->v0(Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    return-void
.end method

.method public static synthetic r0(Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->G0(Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic s0(Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->A0(Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;)V

    return-void
.end method

.method public static final v0(Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$firstNote"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->M0(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/FragmentKt;->finishActivity(Landroidx/fragment/app/Fragment;)Lkotlin/Unit;

    return-void
.end method

.method public static final w0(Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/FragmentKt;->finishActivity(Landroidx/fragment/app/Fragment;)Lkotlin/Unit;

    return-void
.end method

.method public static final z0(Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/FragmentKt;->finishActivity(Landroidx/fragment/app/Fragment;)Lkotlin/Unit;

    return-void
.end method


# virtual methods
.method public final B0(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->g1:Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;

    if-nez v0, :cond_1

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;->llyContent:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const-string v1, "llyContent"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->g1:Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->destroy()V

    :cond_2
    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->docManagerBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v1, v2, v0}, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object v1, p0, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->g1:Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->disableToast()V

    new-instance v0, Lcom/onyx/galaxy/note/datarepository/action/CreateNoteListAction;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "requireActivity(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/onyx/galaxy/note/datarepository/download/ShareResourceManager;->INSTANCE:Lcom/onyx/galaxy/note/datarepository/download/ShareResourceManager;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/datarepository/download/ShareResourceManager;->getShareResourceDirPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/onyx/galaxy/note/datarepository/action/CreateNoteListAction;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment$a;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment$a;-><init>(Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment$b;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment$b;-><init>(Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/lnm;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/lnm;-><init>(Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    const-string p0, "doFinally(...)"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault$default(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final D0()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->i1:Z

    iget-object v0, p0, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;->tvImport:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v3, "tvImport"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;->flyLoading:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    const-string v3, "flyLoading"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;->ivLoading:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.graphics.drawable.AnimationDrawable"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->x0()Lcom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->f1:Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceBean;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment$handleDownload$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment$handleDownload$1;-><init>(Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel;->startDownload(Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceBean;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final E0()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->f1:Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceBean;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->x0()Lcom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel;->initData(Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceBean;)V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->x0()Lcom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel;->getAttachmentData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    const-string v2, "getViewLifecycleOwner(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment$initData$2;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment$initData$2;-><init>(Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/DataBindingKt;->observeOnce(Landroidx/lifecycle/MutableLiveData;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final F0()V
    .locals 9

    iget-object v0, p0, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v3, v0, Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;->tvCancel:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvCancel"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    new-instance v6, Lcom/sunia/HTREnginev2/jnm;

    invoke-direct {v6, p0}, Lcom/sunia/HTREnginev2/jnm;-><init>(Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iget-object v2, v1, Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;->tvImport:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvImport"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    new-instance v5, Lcom/sunia/HTREnginev2/knm;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/knm;-><init>(Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final I0()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;->rvContent:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    iget-object v3, p0, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->e1:Lcom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;->rvContent:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public final J0()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->K0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->I0()V

    return-void
.end method

.method public final K0()V
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_400:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getScreenWidth()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getScreenWidth()F

    move-result v0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/DimenUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DimenUtils;

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/DimenUtils;->dp2PxFloat(F)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;->llyContent:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_1
    return-void
.end method

.method public final M0(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v0, "requireActivity(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->Companion:Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs$Companion;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs$Companion;->createFrom(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object p1

    sget-object v0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity;->Companion:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity$Companion;->createStartIntent(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

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

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;

    if-nez p1, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onDestroyView()V
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->docManagerBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->unregister(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->x0()Lcom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel;->stopDownloadDisposable()V

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onDestroyView()V

    return-void
.end method

.method public final onImportDocumentsCancelEvent(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsCancelEvent;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsCancelEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/galaxy/note/R$string;->import_canceled:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;

    if-nez p1, :cond_0

    const-string p1, "binding"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v3, p1

    :goto_0
    invoke-virtual {v3}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/mnm;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/mnm;-><init>(Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

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

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "args"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-object p2, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    const-class v0, Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceBean;

    invoke-virtual {p2, p1, v0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceBean;

    iput-object p1, p0, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->f1:Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceBean;

    if-nez p1, :cond_1

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/FragmentKt;->finishActivity(Landroidx/fragment/app/Fragment;)Lkotlin/Unit;

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->J0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->F0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->E0()V

    sget-object p1, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->docManagerBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->register(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final t0()V
    .locals 9

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->x0()Lcom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel;->hasFailedDownloads()Z

    move-result v0

    const-string v1, "llyDownloadTips"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "binding"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;

    if-nez v0, :cond_0

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;->llyDownloadTips:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;

    if-nez v0, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_1
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;->tvDownloadTips:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object v5, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v6, Lcom/onyx/galaxy/note/R$string;->share_resource_download_fail_tips:I

    invoke-virtual {v5, v6}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->x0()Lcom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel;->isAllDownloadsFailed()Z

    move-result v0

    const-string v5, "tvImport"

    const/16 v6, 0x8

    const-string v7, "flyLoading"

    const/4 v8, 0x1

    if-eqz v0, :cond_a

    iput-boolean v8, p0, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->h1:Z

    iget-object v0, p0, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;

    if-nez v0, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_3
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;->llyDownloadTips:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;

    if-nez v0, :cond_4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_4
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;->tvImport:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;

    if-nez v0, :cond_5

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_5
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;->flyLoading:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;

    if-nez v0, :cond_6

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_6
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;->tvImport:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/NetworkUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/NetworkUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p0, p0, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;

    if-nez p0, :cond_7

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    move-object v3, p0

    :goto_0
    iget-object p0, v3, Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;->tvDownloadTips:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$string;->share_resource_download_all_fail_tips:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_8
    iget-object p0, p0, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;

    if-nez p0, :cond_9

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    move-object v3, p0

    :goto_1
    iget-object p0, v3, Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;->tvDownloadTips:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$string;->share_resource_network_tips:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_a
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->x0()Lcom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel;->isAllDownloadFinished()Z

    move-result v0

    if-eqz v0, :cond_f

    iput-boolean v8, p0, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->h1:Z

    iget-object v0, p0, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;

    if-nez v0, :cond_b

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_b
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;->tvImport:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v8}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;

    if-nez v0, :cond_c

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_c
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;->tvImport:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget v1, Lcom/onyx/galaxy/note/R$string;->start_import:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;

    if-nez v0, :cond_d

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_d
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;->flyLoading:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;

    if-nez p0, :cond_e

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_e
    move-object v3, p0

    :goto_2
    iget-object p0, v3, Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;->tvImport:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    :goto_3
    return-void
.end method

.method public final u0(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v2, Lcom/onyx/galaxy/note/category/event/NCreateNoteModelResultEvent;

    invoke-direct {v2, v0}, Lcom/onyx/galaxy/note/category/event/NCreateNoteModelResultEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "binding"

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-ne v1, v2, :cond_2

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v1, Lcom/onyx/galaxy/note/R$string;->recovery_finish_title:I

    invoke-static {p1, v1, v5, v4, v6}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;

    if-nez p1, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v6, p1

    :goto_0
    invoke-virtual {v6}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/sunia/HTREnginev2/fnm;

    invoke-direct {v1, p0, v0}, Lcom/sunia/HTREnginev2/fnm;-><init>(Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$string;->multi_library_import_success:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v5, v4, v6}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;Ljava/lang/CharSequence;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;

    if-nez p1, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v6, p1

    :goto_1
    invoke-virtual {v6}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/gnm;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/gnm;-><init>(Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_2
    return-void
.end method

.method public final x0()Lcom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->j1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel;

    return-object p0
.end method

.method public final y0()V
    .locals 10

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->i1:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/FragmentKt;->finishActivity(Landroidx/fragment/app/Fragment;)Lkotlin/Unit;

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->h1:Z

    const/4 v1, 0x0

    const-string v2, "binding"

    const-string v3, "requireActivity(...)"

    if-nez v0, :cond_2

    sget-object v4, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v6, Lcom/onyx/galaxy/note/R$string;->cancel_download:I

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;Landroid/content/Context;IZILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->x0()Lcom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel;->stopDownloadDisposable()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/hnm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/hnm;-><init>(Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->x0()Lcom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/datarepository/viewmodel/ShareResourceViewModel;->isAllDownloadsFailed()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/FragmentKt;->finishActivity(Landroidx/fragment/app/Fragment;)Lkotlin/Unit;

    return-void

    :cond_3
    sget-object v4, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v6, Lcom/onyx/galaxy/note/R$string;->import_canceled:I

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;Landroid/content/Context;IZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v1, v0

    :goto_1
    invoke-virtual {v1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/inm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/inm;-><init>(Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
