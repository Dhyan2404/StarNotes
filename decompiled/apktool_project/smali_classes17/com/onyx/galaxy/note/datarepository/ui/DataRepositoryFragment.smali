.class public final Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;
.super Lcom/onyx/galaxy/note/common/base/BaseFragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0097\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006*\u0001\u0018\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008C\u0010DJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002J\u0010\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0008\u0010\n\u001a\u00020\u0002H\u0002J\u0010\u0010\r\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0008\u0010\u0011\u001a\u00020\u0002H\u0002J\u0010\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0016\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00152\u0006\u0010\u000f\u001a\u00020\u0006H\u0002J\u0010\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u0006H\u0002J\u000f\u0010\u0019\u001a\u00020\u0018H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0016\u0010\u001d\u001a\u00020\u00022\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u0015H\u0002J\u0012\u0010 \u001a\u00020\u00022\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0016J\u0008\u0010!\u001a\u00020\u0002H\u0016J$\u0010\'\u001a\u00020&2\u0006\u0010#\u001a\u00020\"2\u0008\u0010%\u001a\u0004\u0018\u00010$2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0016J\u001a\u0010)\u001a\u00020\u00022\u0006\u0010(\u001a\u00020&2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0016J\u0010\u0010+\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020*H\u0007J\u0010\u0010,\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u000bH\u0007J\u0010\u0010.\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020-H\u0007J\u0010\u00100\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020/H\u0007R\u0016\u00104\u001a\u0002018\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u00082\u00103R\u0018\u00108\u001a\u0004\u0018\u0001058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00086\u00107R\u001b\u0010>\u001a\u0002098BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008:\u0010;\u001a\u0004\u0008<\u0010=R\u0014\u0010B\u001a\u00020?8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008@\u0010A\u00a8\u0006E"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;",
        "Lcom/onyx/galaxy/note/common/base/BaseFragment;",
        "",
        "A0",
        "B0",
        "y0",
        "",
        "id",
        "D0",
        "C0",
        "F0",
        "Lcom/onyx/galaxy/note/datarepository/event/DownloadEvent;",
        "event",
        "E0",
        "Lcom/onyx/android/sdk/pay/data/OrderArgs;",
        "params",
        "x0",
        "t0",
        "Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;",
        "data",
        "v0",
        "",
        "u0",
        "r0",
        "com/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment$getOnyxWebViewCallback$1",
        "p0",
        "()Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment$getOnyxWebViewCallback$1;",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "notes",
        "o0",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "onDestroy",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/view/View;",
        "onCreateView",
        "view",
        "onViewCreated",
        "Lcom/onyx/android/sdk/note/common/event/NetworkStatusChangeEvent;",
        "onNetworkChanged",
        "onDownloadEvent",
        "Lcom/onyx/android/sdk/data/account/event/VipRoleChanged;",
        "onVipRoleChange",
        "Lcom/onyx/android/sdk/data/account/event/LoginAccountChanged;",
        "onAccountChangedEvent",
        "Lcom/onyx/galaxy/note/databinding/FragmentDataRepositoryBinding;",
        "d1",
        "Lcom/onyx/galaxy/note/databinding/FragmentDataRepositoryBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;",
        "e1",
        "Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;",
        "progressEventHandler",
        "Lcom/onyx/galaxy/note/datarepository/viewmodel/DataRepositoryViewModel;",
        "f1",
        "Lkotlin/Lazy;",
        "q0",
        "()Lcom/onyx/galaxy/note/datarepository/viewmodel/DataRepositoryViewModel;",
        "viewmodel",
        "Lcom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler;",
        "g1",
        "Lcom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler;",
        "priceHandler",
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


# instance fields
.field public d1:Lcom/onyx/galaxy/note/databinding/FragmentDataRepositoryBinding;

.field public e1:Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final f1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g1:Lcom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;-><init>()V

    new-instance v0, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment$viewmodel$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment$viewmodel$2;-><init>(Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;->f1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;->g1:Lcom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler;

    return-void
.end method

.method public static final synthetic access$createComplete(Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;->o0(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$getBinding$p(Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;)Lcom/onyx/galaxy/note/databinding/FragmentDataRepositoryBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentDataRepositoryBinding;

    return-object p0
.end method

.method public static final synthetic access$getPriceHandler$p(Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;)Lcom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;->g1:Lcom/onyx/galaxy/note/usercenter/handler/MemberPriceHandler;

    return-object p0
.end method

.method public static final synthetic access$getViewmodel(Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;)Lcom/onyx/galaxy/note/datarepository/viewmodel/DataRepositoryViewModel;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;->q0()Lcom/onyx/galaxy/note/datarepository/viewmodel/DataRepositoryViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handleAddMaterials(Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;->r0(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$handleBack(Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;->t0()V

    return-void
.end method

.method public static final synthetic access$handleCheckLocalLibraries(Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;->u0(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handleCreateNote(Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;->v0(Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;)V

    return-void
.end method

.method public static final synthetic access$handlePay(Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;Lcom/onyx/android/sdk/pay/data/OrderArgs;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;->x0(Lcom/onyx/android/sdk/pay/data/OrderArgs;)V

    return-void
.end method

.method public static final synthetic access$payFail(Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;->C0(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$paySuccess(Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;->D0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic l0(Lcom/onyx/galaxy/note/common/view/LoadingDialog;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;->s0(Lcom/onyx/galaxy/note/common/view/LoadingDialog;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic m0(Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;->w0(Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;)V

    return-void
.end method

.method public static synthetic n0(Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;->z0(Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final s0(Lcom/onyx/galaxy/note/common/view/LoadingDialog;Ljava/lang/Object;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public static final w0(Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;->e1:Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->destroy()V

    :cond_0
    return-void
.end method

.method public static final z0(Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;->t0()V

    return-void
.end method


# virtual methods
.method public final A0()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;->B0()V

    return-void
.end method

.method public final B0()V
    .locals 13

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/onyx/galaxy/note/utils/Navigator;->INSTANCE:Lcom/onyx/galaxy/note/utils/Navigator;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/utils/Navigator;->getNavigateToDataUrl()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;->p0()Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment$getOnyxWebViewCallback$1;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentDataRepositoryBinding;

    const/4 v3, 0x0

    const-string v4, "binding"

    if-nez v2, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_2
    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/FragmentDataRepositoryBinding;->webView:Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    invoke-virtual {v2, v1}, Lcom/onyx/galaxy/note/ui/view/OnyxWebView;->setWebViewCallback(Lcom/onyx/galaxy/note/ui/view/OnyxWebViewCallback;)Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    iget-object v2, p0, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentDataRepositoryBinding;

    if-nez v2, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_3
    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/FragmentDataRepositoryBinding;->webView:Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    const-string v5, "native"

    invoke-virtual {v2, v5, v1}, Lcom/onyx/galaxy/note/ui/view/OnyxWebView;->registerNativeObject(Ljava/lang/String;Ljava/lang/Object;)Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    iget-object v2, p0, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentDataRepositoryBinding;

    if-nez v2, :cond_4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_4
    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/FragmentDataRepositoryBinding;->webView:Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    invoke-virtual {v2, v0}, Lcom/onyx/galaxy/note/ui/view/OnyxWebView;->openWebpage(Ljava/lang/String;)Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    iget-object v0, p0, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentDataRepositoryBinding;

    if-nez v0, :cond_5

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_5
    iget-object v5, v0, Lcom/onyx/galaxy/note/databinding/FragmentDataRepositoryBinding;->loadingView:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const-string v0, "loadingView"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xd

    const/4 v12, 0x0

    invoke-static/range {v5 .. v12}, Lcom/onyx/galaxy/note/common/extension/ViewExtKt;->startAlphaAnimation$default(Landroid/view/View;FFJLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentDataRepositoryBinding;

    if-nez v0, :cond_6

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_6
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDataRepositoryBinding;->webView:Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentDataRepositoryBinding;

    if-nez p0, :cond_7

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    move-object v3, p0

    :goto_0
    iget-object p0, v3, Lcom/onyx/galaxy/note/databinding/FragmentDataRepositoryBinding;->webView:Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    invoke-virtual {p0, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    sget-object v3, Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction;->Companion:Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction$Companion;

    const/4 v4, 0x0

    new-instance v5, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment$loadWebpage$1;

    invoke-direct {v5, v1}, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment$loadWebpage$1;-><init>(Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment$getOnyxWebViewCallback$1;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x5

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction$Companion;->checkNetwork$default(Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction$Companion;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ZILjava/lang/Object;)V

    return-void
.end method

.method public final C0(Ljava/lang/String;)V
    .locals 7

    new-instance v2, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment$payFail$nativeArgs$1;

    invoke-direct {v2, p1}, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment$payFail$nativeArgs$1;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentDataRepositoryBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/databinding/FragmentDataRepositoryBinding;->webView:Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    const-string p0, "webView"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "window.errorForPay"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/onyx/galaxy/note/ui/view/OnyxWebView;->executeJavascriptSentence$default(Lcom/onyx/galaxy/note/ui/view/OnyxWebView;Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    return-void
.end method

.method public final D0(Ljava/lang/String;)V
    .locals 7

    new-instance v2, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment$paySuccess$nativeArgs$1;

    invoke-direct {v2, p1}, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment$paySuccess$nativeArgs$1;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentDataRepositoryBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/databinding/FragmentDataRepositoryBinding;->webView:Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    const-string p0, "webView"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "window.successForPay"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/onyx/galaxy/note/ui/view/OnyxWebView;->executeJavascriptSentence$default(Lcom/onyx/galaxy/note/ui/view/OnyxWebView;Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    return-void
.end method

.method public final E0(Lcom/onyx/galaxy/note/datarepository/event/DownloadEvent;)V
    .locals 7

    new-instance v2, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment$refreshProgress$nativeArgs$1;

    invoke-direct {v2, p1}, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment$refreshProgress$nativeArgs$1;-><init>(Lcom/onyx/galaxy/note/datarepository/event/DownloadEvent;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentDataRepositoryBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/databinding/FragmentDataRepositoryBinding;->webView:Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    const-string p0, "webView"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "window.refreshProgress"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/onyx/galaxy/note/ui/view/OnyxWebView;->executeJavascriptSentence$default(Lcom/onyx/galaxy/note/ui/view/OnyxWebView;Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    return-void
.end method

.method public final F0()V
    .locals 7

    iget-object p0, p0, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentDataRepositoryBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/databinding/FragmentDataRepositoryBinding;->webView:Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    const-string p0, "webView"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "window.refreshUserShip"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/onyx/galaxy/note/ui/view/OnyxWebView;->executeJavascriptSentence$default(Lcom/onyx/galaxy/note/ui/view/OnyxWebView;Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    return-void
.end method

.method public final o0(Ljava/util/List;)V
    .locals 5
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

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne p1, v1, :cond_1

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v1, Lcom/onyx/galaxy/note/R$string;->single_library_create_success:I

    invoke-static {p1, v1, v4, v3, v2}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    sget-object p1, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity;->Companion:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity$Companion;

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity$Companion;->openNewTask(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/FragmentKt;->finishActivity(Landroidx/fragment/app/Fragment;)Lkotlin/Unit;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget p1, Lcom/onyx/galaxy/note/R$string;->multi_library_create_success:I

    invoke-static {p0, p1, v4, v3, v2}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final onAccountChangedEvent(Lcom/onyx/android/sdk/data/account/event/LoginAccountChanged;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/data/account/event/LoginAccountChanged;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->isDataRepositoryNeedRedirection()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/onyx/galaxy/note/utils/Navigator;->INSTANCE:Lcom/onyx/galaxy/note/utils/Navigator;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Lcom/onyx/galaxy/note/utils/Navigator;->navigateToDataRepository$default(Lcom/onyx/galaxy/note/utils/Navigator;Lcom/onyx/android/sdk/base/extension/StringMap;ILjava/lang/Object;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/FragmentKt;->finishActivity(Landroidx/fragment/app/Fragment;)Lkotlin/Unit;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;->F0()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54ffffb5

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

    invoke-static {p1, p2, p3}, Lcom/onyx/galaxy/note/databinding/FragmentDataRepositoryBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/FragmentDataRepositoryBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentDataRepositoryBinding;

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

.method public onDestroy()V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->unregister(Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->unRegister(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;->e1:Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->destroy()V

    :cond_0
    invoke-super {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onDestroy()V

    return-void
.end method

.method public final onDownloadEvent(Lcom/onyx/galaxy/note/datarepository/event/DownloadEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/datarepository/event/DownloadEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;->E0(Lcom/onyx/galaxy/note/datarepository/event/DownloadEvent;)V

    return-void
.end method

.method public final onNetworkChanged(Lcom/onyx/android/sdk/note/common/event/NetworkStatusChangeEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/event/NetworkStatusChangeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/event/NetworkStatusChangeEvent;->getConnected()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentDataRepositoryBinding;

    if-nez p1, :cond_1

    const-string p1, "binding"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_1
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentDataRepositoryBinding;->webView:Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->isVisible(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;->B0()V

    :cond_2
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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;->A0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;->y0()V

    return-void
.end method

.method public final onVipRoleChange(Lcom/onyx/android/sdk/data/account/event/VipRoleChanged;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/account/event/VipRoleChanged;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->isVipRole()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;->F0()V

    :cond_0
    return-void
.end method

.method public final p0()Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment$getOnyxWebViewCallback$1;
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment$getOnyxWebViewCallback$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment$getOnyxWebViewCallback$1;-><init>(Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;)V

    return-object v0
.end method

.method public final q0()Lcom/onyx/galaxy/note/datarepository/viewmodel/DataRepositoryViewModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;->f1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/datarepository/viewmodel/DataRepositoryViewModel;

    return-object p0
.end method

.method public final r0(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/onyx/galaxy/note/common/extension/ContextExtKt;->createLoadingDialog(Landroid/content/Context;)Lcom/onyx/galaxy/note/common/view/LoadingDialog;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sget v1, Lcom/onyx/galaxy/note/R$string;->adding:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/common/view/LoadingDialog;->updateTitle(Ljava/lang/String;)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;->q0()Lcom/onyx/galaxy/note/datarepository/viewmodel/DataRepositoryViewModel;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/onyx/galaxy/note/datarepository/viewmodel/DataRepositoryViewModel;->addMaterials(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p0

    new-instance v1, Lcom/sunia/HTREnginev2/rue;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/rue;-><init>(Lcom/onyx/galaxy/note/common/view/LoadingDialog;)V

    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final t0()V
    .locals 3

    sget-object v0, Lcom/onyx/galaxy/note/utils/WebViewExt;->INSTANCE:Lcom/onyx/galaxy/note/utils/WebViewExt;

    iget-object v1, p0, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentDataRepositoryBinding;

    if-nez v1, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentDataRepositoryBinding;->webView:Lcom/onyx/galaxy/note/ui/view/OnyxWebView;

    const-string v2, "webView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment$handleBack$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment$handleBack$1;-><init>(Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/onyx/galaxy/note/utils/WebViewExt;->onBackPressed(Lcom/onyx/galaxy/note/ui/view/OnyxWebView;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final u0(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/datarepository/event/DownloadEvent;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;->q0()Lcom/onyx/galaxy/note/datarepository/viewmodel/DataRepositoryViewModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/datarepository/viewmodel/DataRepositoryViewModel;->toLibraryList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p1, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;->INSTANCE:Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;->checkLocalLibraries(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final v0(Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;)V
    .locals 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/onyx/galaxy/note/common/extension/ContextExtKt;->createLoadingDialog(Landroid/content/Context;)Lcom/onyx/galaxy/note/common/view/LoadingDialog;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sget v1, Lcom/onyx/galaxy/note/R$string;->creating_note:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/common/view/LoadingDialog;->updateTitle(Ljava/lang/String;)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_2
    iget-object v1, p0, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;->e1:Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->destroy()V

    :cond_3
    sget-object v1, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->docManagerBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "requireActivity(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->register(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    new-instance v2, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v2, v4, v1}, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object v2, p0, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;->e1:Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;->disableToast()V

    new-instance v1, Lcom/onyx/galaxy/note/datarepository/action/CreateNoteAction;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, p1}, Lcom/onyx/galaxy/note/datarepository/action/CreateNoteAction;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v1, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment$a;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment$a;-><init>(Lcom/onyx/galaxy/note/common/view/LoadingDialog;)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnSubscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment$b;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment$b;-><init>(Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/pue;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/pue;-><init>(Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final x0(Lcom/onyx/android/sdk/pay/data/OrderArgs;)V
    .locals 6

    new-instance v0, Lcom/onyx/galaxy/note/common/action/PayAction;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "getChildFragmentManager(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment$handlePay$1;

    invoke-direct {v2, p0, p1}, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment$handlePay$1;-><init>(Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;Lcom/onyx/android/sdk/pay/data/OrderArgs;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/onyx/galaxy/note/common/action/PayAction;-><init>(Landroidx/fragment/app/FragmentManager;Lcom/onyx/android/sdk/pay/data/OrderArgs;Lcom/onyx/android/sdk/pay/view/PayDialog$PayListener;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final y0()V
    .locals 7

    iget-object v0, p0, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentDataRepositoryBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentDataRepositoryBinding;->backButton:Landroid/widget/ImageView;

    const-string v0, "backButton"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/que;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/que;-><init>(Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment$initListener$2;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment$initListener$2;-><init>(Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;)V

    invoke-virtual {v0, v1}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/activity/OnBackPressedCallback;)V

    return-void
.end method
