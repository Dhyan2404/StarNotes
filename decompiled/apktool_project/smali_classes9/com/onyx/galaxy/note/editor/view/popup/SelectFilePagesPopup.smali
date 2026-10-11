.class public abstract Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectFilePagesPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectFilePagesPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,156:1\n256#2,2:157\n*S KotlinDebug\n*F\n+ 1 SelectFilePagesPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup\n*L\n90#1:157,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\n\u0008&\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u000c\u001a\u00020\t\u0012\u0006\u0010\u000f\u001a\u00020\r\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0014\u00a2\u0006\u0004\u0008,\u0010-J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002J\u0008\u0010\u0006\u001a\u00020\u0002H\u0002J\u0008\u0010\u0007\u001a\u00020\u0002H\u0002J\u0008\u0010\u0008\u001a\u00020\u0002H\u0002R\u0014\u0010\u000c\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000f\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0016\u001a\u00020\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0015R\u001b\u0010\u001b\u001a\u00020\u00178BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\n\u0010\u001aR\"\u0010#\u001a\u00020\u001c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\"\u0010+\u001a\u00020$8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008%\u0010&\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*\u00a8\u0006."
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;",
        "Lcom/google/android/material/bottomsheet/BottomSheetDialog;",
        "",
        "import",
        "C",
        "y",
        "w",
        "G",
        "F",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "v",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "docManagerBundle",
        "Landroid/content/Context;",
        "Landroid/content/Context;",
        "context",
        "Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;",
        "x",
        "Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;",
        "fileEntry",
        "",
        "I",
        "maxCount",
        "Lcom/onyx/galaxy/note/databinding/PopupSelectFilePagesBinding;",
        "z",
        "Lkotlin/Lazy;",
        "()Lcom/onyx/galaxy/note/databinding/PopupSelectFilePagesBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/editor/view/adapter/ReaderPageThumbnailListAdapter;",
        "J",
        "Lcom/onyx/galaxy/note/editor/view/adapter/ReaderPageThumbnailListAdapter;",
        "getPageListAdapter",
        "()Lcom/onyx/galaxy/note/editor/view/adapter/ReaderPageThumbnailListAdapter;",
        "setPageListAdapter",
        "(Lcom/onyx/galaxy/note/editor/view/adapter/ReaderPageThumbnailListAdapter;)V",
        "pageListAdapter",
        "",
        "O",
        "Z",
        "getDeleteFileAfterSelected",
        "()Z",
        "setDeleteFileAfterSelected",
        "(Z)V",
        "deleteFileAfterSelected",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;I)V",
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
        "SMAP\nSelectFilePagesPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectFilePagesPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,156:1\n256#2,2:157\n*S KotlinDebug\n*F\n+ 1 SelectFilePagesPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup\n*L\n90#1:157,2\n*E\n"
    }
.end annotation


# instance fields
.field public J:Lcom/onyx/galaxy/note/editor/view/adapter/ReaderPageThumbnailListAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public O:Z

.field public final v:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final w:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final x:Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final y:I

.field public final z:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;I)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "docManagerBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileEntry"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget v0, Lcom/onyx/galaxy/note/R$style;->commonDialog:I

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    .line 3
    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->v:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    .line 4
    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->w:Landroid/content/Context;

    .line 5
    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->x:Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;

    .line 6
    iput p4, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->y:I

    .line 7
    new-instance p1, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup$binding$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup$binding$2;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->z:Lkotlin/Lazy;

    .line 8
    new-instance p1, Lcom/onyx/galaxy/note/editor/view/adapter/ReaderPageThumbnailListAdapter;

    invoke-direct {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/ReaderPageThumbnailListAdapter;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->J:Lcom/onyx/galaxy/note/editor/view/adapter/ReaderPageThumbnailListAdapter;

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->O:Z

    .line 10
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->C()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;I)V

    return-void
.end method

.method public static final A(Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->import()V

    return-void
.end method

.method public static final B(Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->J:Lcom/onyx/galaxy/note/editor/view/adapter/ReaderPageThumbnailListAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/BasePageListAdapter;->toggleSelectAll()V

    return-void
.end method

.method public static final D(Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;Landroid/content/DialogInterface;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->v()Lcom/onyx/galaxy/note/databinding/PopupSelectFilePagesBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/PopupSelectFilePagesBinding;->swipeContainer:Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->getRecycleView()Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->v:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocCommonActionsKt;->ensureCloseDoc(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup$a;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup$a;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-string v0, "map(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->onErrorReturnItemWithLog(Lio/reactivex/rxjava3/core/Observable;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->v:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->ioSequenceScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-string v0, "observeOn(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup$initView$2$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup$initView$2$2;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;)V

    new-instance v1, Lcom/sunia/HTREnginev2/udm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/udm;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;)V

    invoke-static {p1, v0, v1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public static final E(Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->J:Lcom/onyx/galaxy/note/editor/view/adapter/ReaderPageThumbnailListAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/ReaderPageThumbnailListAdapter;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    return-void
.end method

.method public static final synthetic access$getBinding(Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;)Lcom/onyx/galaxy/note/databinding/PopupSelectFilePagesBinding;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->v()Lcom/onyx/galaxy/note/databinding/PopupSelectFilePagesBinding;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->w:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$updateImportIcon(Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->G()V

    return-void
.end method

.method public static synthetic p(Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->z(Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q(Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->E(Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;)V

    return-void
.end method

.method public static synthetic r(Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->D(Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic s(Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->x(Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic t(Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->A(Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u(Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->B(Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;Landroid/view/View;)V

    return-void
.end method

.method public static final x(Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 1>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/data/ReaderPageDataModel;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->y:I

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->J:Lcom/onyx/galaxy/note/editor/view/adapter/ReaderPageThumbnailListAdapter;

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSwipeAbleDifferAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iget p3, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->y:I

    if-lt p2, p3, :cond_1

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->J:Lcom/onyx/galaxy/note/editor/view/adapter/ReaderPageThumbnailListAdapter;

    invoke-virtual {p2, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/BasePageListAdapter;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p2, Lcom/onyx/galaxy/note/R$string;->select_max_count_hint:I

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->y:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p2, 0x1

    invoke-static {p0, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "format(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ToastUtils;->showLong(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->J:Lcom/onyx/galaxy/note/editor/view/adapter/ReaderPageThumbnailListAdapter;

    invoke-virtual {p2, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/BasePageListAdapter;->onItemClick(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->G()V

    return-void
.end method

.method public static final z(Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public final C()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->v()Lcom/onyx/galaxy/note/databinding/PopupSelectFilePagesBinding;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCancelable(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->y()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->w()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->F()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->v()Lcom/onyx/galaxy/note/databinding/PopupSelectFilePagesBinding;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.View"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    const-string v1, "from(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/google/android/material/R$id;->design_bottom_sheet:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    :cond_1
    new-instance v0, Lcom/sunia/HTREnginev2/wdm;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/wdm;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;)V

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public final F()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/page/OpenPdfFileForPagesAction;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->v:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->x:Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/page/OpenPdfFileForPagesAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup$b;->e:Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup$b;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup$c;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final G()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->v()Lcom/onyx/galaxy/note/databinding/PopupSelectFilePagesBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupSelectFilePagesBinding;->importAction:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->J:Lcom/onyx/galaxy/note/editor/view/adapter/ReaderPageThumbnailListAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSwipeAbleDifferAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final getDeleteFileAfterSelected()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->O:Z

    return p0
.end method

.method public final getPageListAdapter()Lcom/onyx/galaxy/note/editor/view/adapter/ReaderPageThumbnailListAdapter;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->J:Lcom/onyx/galaxy/note/editor/view/adapter/ReaderPageThumbnailListAdapter;

    return-object p0
.end method

.method public import()V
    .locals 0

    return-void
.end method

.method public final setDeleteFileAfterSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->O:Z

    return-void
.end method

.method public final setPageListAdapter(Lcom/onyx/galaxy/note/editor/view/adapter/ReaderPageThumbnailListAdapter;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/view/adapter/ReaderPageThumbnailListAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->J:Lcom/onyx/galaxy/note/editor/view/adapter/ReaderPageThumbnailListAdapter;

    return-void
.end method

.method public final v()Lcom/onyx/galaxy/note/databinding/PopupSelectFilePagesBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->z:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/PopupSelectFilePagesBinding;

    return-object p0
.end method

.method public final w()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->J:Lcom/onyx/galaxy/note/editor/view/adapter/ReaderPageThumbnailListAdapter;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->v:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/adapter/BasePageListAdapter;->setEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->J:Lcom/onyx/galaxy/note/editor/view/adapter/ReaderPageThumbnailListAdapter;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$integer;->pages_preview_click_time_interval:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getLong(I)J

    move-result-wide v1

    new-instance v3, Lcom/sunia/HTREnginev2/vdm;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/vdm;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;)V

    invoke-static {v0, v1, v2, v3}, Lcom/chad/library/adapter4/util/ItemClickUtilsKt;->setOnDebouncedItemClick(Lcom/chad/library/adapter4/BaseQuickAdapter;JLcom/chad/library/adapter4/BaseQuickAdapter$OnItemClickListener;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->J:Lcom/onyx/galaxy/note/editor/view/adapter/ReaderPageThumbnailListAdapter;

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup$initListView$2;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup$initListView$2;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSwipeAbleDifferAdapter;->setSelectItemChangeCallback(Lkotlin/jvm/functions/Function1;)V

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->y:I

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->v()Lcom/onyx/galaxy/note/databinding/PopupSelectFilePagesBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupSelectFilePagesBinding;->swipeContainer:Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup$initListView$3;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup$initListView$3;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->setOnSwipeStateChangeListener(Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer$OnSwipeStateChangeListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->v()Lcom/onyx/galaxy/note/databinding/PopupSelectFilePagesBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupSelectFilePagesBinding;->swipeContainer:Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->getRecycleView()Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->J:Lcom/onyx/galaxy/note/editor/view/adapter/ReaderPageThumbnailListAdapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public final y()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->v()Lcom/onyx/galaxy/note/databinding/PopupSelectFilePagesBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupSelectFilePagesBinding;->btnBack:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/xdm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/xdm;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->v()Lcom/onyx/galaxy/note/databinding/PopupSelectFilePagesBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupSelectFilePagesBinding;->importAction:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/ydm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/ydm;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->v()Lcom/onyx/galaxy/note/databinding/PopupSelectFilePagesBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupSelectFilePagesBinding;->fileSelectAll:Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;

    new-instance v1, Lcom/sunia/HTREnginev2/zdm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/zdm;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->v()Lcom/onyx/galaxy/note/databinding/PopupSelectFilePagesBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupSelectFilePagesBinding;->fileSelectAll:Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;

    const-string v1, "fileSelectAll"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->y:I

    const/4 v1, 0x0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
