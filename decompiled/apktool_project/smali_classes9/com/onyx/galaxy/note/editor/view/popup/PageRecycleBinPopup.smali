.class public final Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPageRecycleBinPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PageRecycleBinPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,344:1\n256#2,2:345\n256#2,2:347\n256#2,2:349\n256#2,2:351\n1549#3:353\n1620#3,3:354\n1549#3:357\n1620#3,2:358\n1622#3:361\n1#4:360\n*S KotlinDebug\n*F\n+ 1 PageRecycleBinPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup\n*L\n189#1:345,2\n190#1:347,2\n191#1:349,2\n192#1:351,2\n199#1:353\n199#1:354,3\n254#1:357\n254#1:358,2\n254#1:361\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010/\u001a\u00020*\u0012\u0006\u00102\u001a\u00020*\u0012\u0006\u00106\u001a\u000203\u00a2\u0006\u0004\u0008A\u0010BJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002J\u0008\u0010\u0006\u001a\u00020\u0002H\u0002J\u0008\u0010\u0007\u001a\u00020\u0002H\u0002J\u0008\u0010\u0008\u001a\u00020\u0002H\u0002J\u0008\u0010\t\u001a\u00020\u0002H\u0002J\u000e\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u0018\u0010\u000e\u001a\u00020\u00022\u000e\u0008\u0002\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u0018\u0010\u000f\u001a\u00020\u00022\u000e\u0008\u0002\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u0016\u0010\u0010\u001a\u00020\u00022\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u0012\u0010\u0013\u001a\u00020\u00022\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0002J\u0008\u0010\u0014\u001a\u00020\u0002H\u0002J\u001c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00170\n2\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00150\nH\u0002J\u0010\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u000c\u0010\u001b\u001a\u0006\u0012\u0002\u0008\u00030\u001aH\u0002J\u0008\u0010\u001d\u001a\u00020\u001cH\u0002J\u0008\u0010\u001e\u001a\u00020\u0002H\u0002J\u0008\u0010\u001f\u001a\u00020\u0002H\u0002J\u0018\u0010$\u001a\u00020\u00022\u0006\u0010!\u001a\u00020 2\u0006\u0010#\u001a\u00020\"H\u0002J\u0016\u0010\'\u001a\u00020\u00022\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u00020%H\u0002J\u0008\u0010(\u001a\u00020\u0002H\u0002J\u0008\u0010)\u001a\u00020\u0002H\u0002R\u0017\u0010/\u001a\u00020*8\u0006\u00a2\u0006\u000c\n\u0004\u0008+\u0010,\u001a\u0004\u0008-\u0010.R\u0017\u00102\u001a\u00020*8\u0006\u00a2\u0006\u000c\n\u0004\u00080\u0010,\u001a\u0004\u00081\u0010.R\u0014\u00106\u001a\u0002038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00084\u00105R\u001b\u0010<\u001a\u0002078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00088\u00109\u001a\u0004\u0008:\u0010;R\u0016\u0010@\u001a\u00020=8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008>\u0010?\u00a8\u0006C"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;",
        "Lcom/google/android/material/bottomsheet/BottomSheetDialog;",
        "",
        "V",
        "Q",
        "J",
        "N",
        "K",
        "k0",
        "m0",
        "",
        "",
        "I",
        "pageList",
        "d0",
        "B",
        "D",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "noteModel",
        "Z",
        "c0",
        "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;",
        "removePageList",
        "Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;",
        "G",
        "W",
        "Lio/reactivex/rxjava3/core/Observable;",
        "Y",
        "Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;",
        "j0",
        "a0",
        "l0",
        "Landroid/view/View;",
        "view",
        "",
        "pos",
        "h0",
        "Lkotlin/Function0;",
        "action",
        "i0",
        "X",
        "b0",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "v",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "getEditorBundle",
        "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "w",
        "getDocManagerBundle",
        "docManagerBundle",
        "Landroid/content/Context;",
        "x",
        "Landroid/content/Context;",
        "context",
        "Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;",
        "y",
        "Lkotlin/Lazy;",
        "H",
        "()Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/editor/view/adapter/RemovedPageThumbnailListAdapter;",
        "z",
        "Lcom/onyx/galaxy/note/editor/view/adapter/RemovedPageThumbnailListAdapter;",
        "adapter",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;)V",
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
        "SMAP\nPageRecycleBinPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PageRecycleBinPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,344:1\n256#2,2:345\n256#2,2:347\n256#2,2:349\n256#2,2:351\n1549#3:353\n1620#3,3:354\n1549#3:357\n1620#3,2:358\n1622#3:361\n1#4:360\n*S KotlinDebug\n*F\n+ 1 PageRecycleBinPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup\n*L\n189#1:345,2\n190#1:347,2\n191#1:349,2\n192#1:351,2\n199#1:353\n199#1:354,3\n254#1:357\n254#1:358,2\n254#1:361\n*E\n"
    }
.end annotation


# instance fields
.field public final v:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final w:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final x:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final y:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public z:Lcom/onyx/galaxy/note/editor/view/adapter/RemovedPageThumbnailListAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "docManagerBundle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/onyx/galaxy/note/R$style;->commonDialog:I

    invoke-direct {p0, p3, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->v:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->w:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->x:Landroid/content/Context;

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$binding$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$binding$2;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->y:Lkotlin/Lazy;

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/adapter/RemovedPageThumbnailListAdapter;

    invoke-direct {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/RemovedPageThumbnailListAdapter;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->z:Lcom/onyx/galaxy/note/editor/view/adapter/RemovedPageThumbnailListAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->Q()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->V()V

    return-void
.end method

.method public static synthetic A(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->f0(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;)V

    return-void
.end method

.method public static synthetic C(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;Ljava/util/List;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->I()Ljava/util/List;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->B(Ljava/util/List;)V

    return-void
.end method

.method public static final E()V
    .locals 5

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v1, Lcom/onyx/android/sdk/ui/R$string;->delete_sucess:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return-void
.end method

.method public static final F(Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;)V
    .locals 1

    const-string v0, "$progressDialog"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;->dismiss()V

    return-void
.end method

.method public static final L(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 1>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->z:Lcom/onyx/galaxy/note/editor/view/adapter/RemovedPageThumbnailListAdapter;

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/editor/view/adapter/BasePageListAdapter;->isSelectionMode()Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->z:Lcom/onyx/galaxy/note/editor/view/adapter/RemovedPageThumbnailListAdapter;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/BasePageListAdapter;->onItemClick(Ljava/lang/Object;)V

    return-void
.end method

.method public static final M(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "view"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->h0(Landroid/view/View;I)V

    return-void
.end method

.method public static final O(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->e0(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method

.method public static final P(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->C(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method

.method public static final R(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void
.end method

.method public static final S(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->k0()V

    return-void
.end method

.method public static final T(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->z:Lcom/onyx/galaxy/note/editor/view/adapter/RemovedPageThumbnailListAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/BasePageListAdapter;->toggleSelectAll()V

    return-void
.end method

.method public static final U(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->X()V

    return-void
.end method

.method public static final synthetic access$forceRemovePages(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->B(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$forceRemovePagesImpl(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->D(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$generatePageModelList(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->G(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAdapter$p(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;)Lcom/onyx/galaxy/note/editor/view/adapter/RemovedPageThumbnailListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->z:Lcom/onyx/galaxy/note/editor/view/adapter/RemovedPageThumbnailListAdapter;

    return-object p0
.end method

.method public static final synthetic access$getBinding(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;)Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->H()Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->x:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$onDocOpenedObservable(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->Y()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onNoteItemClick(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->Z(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    return-void
.end method

.method public static final synthetic access$onSelectedItemChange(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->a0()V

    return-void
.end method

.method public static final synthetic access$reopenDocument(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->c0()V

    return-void
.end method

.method public static final synthetic access$restoreNotePages(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->d0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic e0(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;Ljava/util/List;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->I()Ljava/util/List;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->d0(Ljava/util/List;)V

    return-void
.end method

.method public static final f0(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->c0()V

    return-void
.end method

.method public static final g0(Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;)V
    .locals 1

    const-string v0, "$progressDialog"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;->dismiss()V

    return-void
.end method

.method public static synthetic p(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->M(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic q(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->L(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic r(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->U(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic s(Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->g0(Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;)V

    return-void
.end method

.method public static synthetic t(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->R(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->T(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic v()V
    .locals 0

    invoke-static {}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->E()V

    return-void
.end method

.method public static synthetic w(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->S(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic x(Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->F(Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;)V

    return-void
.end method

.method public static synthetic y(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->P(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic z(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->O(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final B(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$forceRemovePages$1;

    invoke-direct {v0, p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$forceRemovePages$1;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->i0(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final D(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->j0()Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->v:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$a;

    invoke-direct {v2, p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$a;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object v1, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$b;->e:Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$b;

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v1, Lcom/sunia/HTREnginev2/jtk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/jtk;-><init>()V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$c;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/sunia/HTREnginev2/mtk;

    invoke-direct {p1, v0}, Lcom/sunia/HTREnginev2/mtk;-><init>(Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final G(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->v:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualModelProvider()Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;->loadValidVirtualPageModelList()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    sget-object v2, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$generatePageModelList$allPageMap$1;->INSTANCE:Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$generatePageModelList$allPageMap$1;

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->toMap(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object v1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;

    if-eqz v4, :cond_0

    invoke-interface {v0, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    sget-object v5, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->Companion:Lcom/onyx/android/sdk/universal/editor/data/PageDataModel$Companion;

    iget-object v6, p0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->w:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {v5, v6, v4, v3}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel$Companion;->fromVirtualPage(Lcom/onyx/android/sdk/universal/editor/EditorBundle;ILcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;)Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->z:Lcom/onyx/galaxy/note/editor/view/adapter/RemovedPageThumbnailListAdapter;

    invoke-virtual {p0, v2}, Lcom/onyx/galaxy/note/editor/view/adapter/RemovedPageThumbnailListAdapter;->scalePageDisplayRectF(Ljava/util/List;)V

    return-object v2
.end method

.method public final H()Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->y:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;

    return-object p0
.end method

.method public final I()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->z:Lcom/onyx/galaxy/note/editor/view/adapter/RemovedPageThumbnailListAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSwipeAbleDifferAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final J()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->H()Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;

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

    move-result-object p0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    :cond_1
    return-void
.end method

.method public final K()V
    .locals 14

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/adapter/RemovedPageThumbnailListAdapter;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/RemovedPageThumbnailListAdapter;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->z:Lcom/onyx/galaxy/note/editor/view/adapter/RemovedPageThumbnailListAdapter;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/BasePageListAdapter;->quitSelectionMode()V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->z:Lcom/onyx/galaxy/note/editor/view/adapter/RemovedPageThumbnailListAdapter;

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/ttk;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/ttk;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/chad/library/adapter4/util/ItemClickUtilsKt;->setOnDebouncedItemClick$default(Lcom/chad/library/adapter4/BaseQuickAdapter;JLcom/chad/library/adapter4/BaseQuickAdapter$OnItemClickListener;ILjava/lang/Object;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    iget-object v7, p0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->z:Lcom/onyx/galaxy/note/editor/view/adapter/RemovedPageThumbnailListAdapter;

    sget v8, Lcom/onyx/galaxy/note/R$id;->more_settings:I

    const-wide/16 v9, 0x0

    new-instance v11, Lcom/sunia/HTREnginev2/utk;

    invoke-direct {v11, p0}, Lcom/sunia/HTREnginev2/utk;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;)V

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-static/range {v7 .. v13}, Lcom/chad/library/adapter4/util/ItemClickUtilsKt;->addOnDebouncedChildClick$default(Lcom/chad/library/adapter4/BaseQuickAdapter;IJLcom/chad/library/adapter4/BaseQuickAdapter$OnItemChildClickListener;ILjava/lang/Object;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->z:Lcom/onyx/galaxy/note/editor/view/adapter/RemovedPageThumbnailListAdapter;

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$initPageAdapter$3;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$initPageAdapter$3;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSwipeAbleDifferAdapter;->setSelectItemChangeCallback(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->H()Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;->swipeContainer:Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->getRecycleView()Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->dp_126:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;->setItemWidthLarge(F)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->H()Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;->swipeContainer:Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$initPageAdapter$4;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$initPageAdapter$4;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->setOnSwipeStateChangeListener(Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer$OnSwipeStateChangeListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->H()Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;->swipeContainer:Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->getRecycleView()Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->H()Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;->swipeContainer:Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->getRecycleView()Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$initPageAdapter$5;

    invoke-direct {v1}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$initPageAdapter$5;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->H()Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;->swipeContainer:Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->getRecycleView()Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->z:Lcom/onyx/galaxy/note/editor/view/adapter/RemovedPageThumbnailListAdapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public final N()V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->H()Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;->tvDustBinOpRestore:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvDustBinOpRestore"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/rtk;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/rtk;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->H()Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;->tvDustBinOpDelete:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvDustBinOpDelete"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/stk;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/stk;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->K()V

    return-void
.end method

.method public final Q()V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->H()Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCancelable(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->H()Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;->close:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "close"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/ntk;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/ntk;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->H()Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;->finish:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "finish"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/otk;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/otk;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->H()Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;->selectAll:Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;

    new-instance v1, Lcom/sunia/HTREnginev2/ptk;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/ptk;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->H()Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;->emptyView:Lcom/onyx/galaxy/note/category/view/CommonEmptyView;

    sget-object v1, Lcom/onyx/galaxy/note/category/view/CommonEmptyView;->Companion:Lcom/onyx/galaxy/note/category/view/CommonEmptyView$Companion;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/view/CommonEmptyView$Companion;->getDUSTBIN_EMPTY_BEAN()Lcom/onyx/galaxy/note/category/view/CommonEmptyView$EmptyBean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/view/CommonEmptyView;->setEmptyBean(Lcom/onyx/galaxy/note/category/view/CommonEmptyView$EmptyBean;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->N()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->J()V

    new-instance v0, Lcom/sunia/HTREnginev2/qtk;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/qtk;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;)V

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public final V()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->v:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    sget-object v1, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$loadData$1;->INSTANCE:Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$loadData$1;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocCommonActionsKt;->createNoteObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$d;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$d;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final W(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->z:Lcom/onyx/galaxy/note/editor/view/adapter/RemovedPageThumbnailListAdapter;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->w:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/adapter/BasePageListAdapter;->setEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->Companion:Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs$Companion;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs$Companion;->createFrom(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/replicator/bean/DataFetchType;->REMOVED:Lcom/onyx/android/sdk/replicator/bean/DataFetchType;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->setPageDataFetchType(Lcom/onyx/android/sdk/replicator/bean/DataFetchType;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->v:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;->setForceSave(Z)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$e;

    invoke-direct {v1, p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$e;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$f;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$f;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final X()V
    .locals 7

    new-instance v6, Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->w:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->b0()V

    return-void
.end method

.method public final Y()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/page/LoadVirtualPageModelListAction;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->w:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/page/LoadVirtualPageModelListAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->v:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->coreScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$g;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$g;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$h;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$h;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$i;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$i;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnNext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final Z(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->W(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    return-void
.end method

.method public final a0()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->z:Lcom/onyx/galaxy/note/editor/view/adapter/RemovedPageThumbnailListAdapter;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSwipeAbleDifferAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->H()Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;->llDustBinOpRestore:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->H()Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;->ivDustBinOpRestore:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->H()Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;->tvDustBinOpRestore:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->H()Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;->llDustBinOpDelete:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->H()Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;->ivDustBinOpDelete:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->H()Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;->tvDustBinOpDelete:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->l0()V

    return-void
.end method

.method public final b0()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->H()Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;->swipeContainer:Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->getRecycleView()Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public final c0()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->z:Lcom/onyx/galaxy/note/editor/view/adapter/RemovedPageThumbnailListAdapter;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/BasePageListAdapter;->quitSelectionMode()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->m0()V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/doc/ReopenDocumentAction;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->w:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/doc/ReopenDocumentAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$j;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$j;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final d0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->j0()Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->v:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$k;

    invoke-direct {v2, p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$k;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v1, Lcom/sunia/HTREnginev2/ktk;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/ktk;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/sunia/HTREnginev2/ltk;

    invoke-direct {p1, v0}, Lcom/sunia/HTREnginev2/ltk;-><init>(Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final getDocManagerBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->w:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public final getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->v:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public final h0(Landroid/view/View;I)V
    .locals 8

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->z:Lcom/onyx/galaxy/note/editor/view/adapter/RemovedPageThumbnailListAdapter;

    invoke-virtual {v0, p2}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    new-instance v7, Lcom/onyx/galaxy/note/editor/view/popup/ContextMenuPopup;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->x:Landroid/content/Context;

    sget v2, Lcom/onyx/galaxy/note/R$menu;->page_recycle_bin_more_action_menu:I

    new-instance v3, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$showActionPopup$popup$1;

    invoke-direct {v3, p0, p2}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$showActionPopup$popup$1;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/onyx/galaxy/note/editor/view/popup/ContextMenuPopup;-><init>(Landroid/content/Context;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object p2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/device/R$dimen;->dp_12:I

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->H()Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p2, "getRoot(...)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->globalVisibleRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x4

    move-object v0, v7

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/onyx/android/sdk/base/extension/PopupExtKt;->showActionPopup$default(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/graphics/Rect;IIILjava/lang/Object;)V

    return-void
.end method

.method public final i0(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->x:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p0, Lcom/onyx/galaxy/note/R$string;->delete:I

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setTitle(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setWarning(Z)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    sget v0, Lcom/onyx/galaxy/note/R$string;->force_delete_page_warning:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setMessage(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$showForceDeleteConfirmDialog$1;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$showForceDeleteConfirmDialog$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setConfirmCallback(Lkotlin/jvm/functions/Function2;)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->create()Lcom/onyx/android/sdk/ui/CommonDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/CommonDialog;->show()V

    return-void
.end method

.method public final j0()Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->x:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;-><init>(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->x:Landroid/content/Context;

    sget v1, Lcom/onyx/galaxy/note/R$string;->in_progress:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "getString(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;->setTitleText(Ljava/lang/String;)Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-object p0
.end method

.method public final k0()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->z:Lcom/onyx/galaxy/note/editor/view/adapter/RemovedPageThumbnailListAdapter;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/BasePageListAdapter;->toggleSelectionMode()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->m0()V

    return-void
.end method

.method public final l0()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->H()Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;->selectedCount:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->x:Landroid/content/Context;

    sget v2, Lcom/onyx/galaxy/note/R$string;->page_selected_count:I

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->z:Lcom/onyx/galaxy/note/editor/view/adapter/RemovedPageThumbnailListAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSwipeAbleDifferAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final m0()V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->z:Lcom/onyx/galaxy/note/editor/view/adapter/RemovedPageThumbnailListAdapter;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/BasePageListAdapter;->isSelectionMode()Z

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->H()Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;->finish:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    if-eqz v0, :cond_0

    sget v2, Lcom/onyx/galaxy/note/R$string;->finish:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/onyx/galaxy/note/R$string;->select:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->H()Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;->close:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v2, "close"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 v2, v0, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->H()Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;->selectAll:Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;

    const-string v2, "selectAll"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    move v2, v4

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->H()Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;->selectionActionLayout:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const-string v2, "selectionActionLayout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    move v2, v4

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->H()Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;->selectedCount:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v2, "selectedCount"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_4

    move v3, v4

    :cond_4
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->H()Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupPageRecycleBinBinding;->selectAll:Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->l0()V

    return-void
.end method
