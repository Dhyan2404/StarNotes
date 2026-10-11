.class public final Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLocalRestoreFileListDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocalRestoreFileListDialog.kt\ncom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,219:1\n58#2,23:220\n93#2,3:243\n1549#3:246\n1620#3,3:247\n766#3:250\n857#3,2:251\n256#4,2:253\n*S KotlinDebug\n*F\n+ 1 LocalRestoreFileListDialog.kt\ncom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog\n*L\n125#1:220,23\n125#1:243,3\n140#1:246\n140#1:247,3\n180#1:250\n180#1:251,2\n186#1:253,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\r\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 12\u00020\u0001:\u00011B\u0007\u00a2\u0006\u0004\u0008/\u00100J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u0006\u001a\u00020\u0004H\u0016J\u0008\u0010\u0007\u001a\u00020\u0004H\u0016J$\u0010\r\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000c2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0010H\u0007J\u0008\u0010\u0013\u001a\u00020\u0004H\u0002J\u0008\u0010\u0014\u001a\u00020\u0004H\u0002J\u0008\u0010\u0015\u001a\u00020\u0004H\u0002J\u0008\u0010\u0016\u001a\u00020\u0004H\u0002J\u0008\u0010\u0017\u001a\u00020\u0004H\u0003J\u0012\u0010\u001a\u001a\u00020\u00042\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0002J\u0008\u0010\u001c\u001a\u00020\u001bH\u0002J\u0008\u0010\u001d\u001a\u00020\u0004H\u0003R\u0014\u0010!\u001a\u00020\u001e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0014\u0010%\u001a\u00020\"8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u001c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\'0&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010)R\u0016\u0010.\u001a\u00020+8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008,\u0010-\u00a8\u00062"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;",
        "Landroidx/fragment/app/DialogFragment;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "onStart",
        "onDestroy",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/view/View;",
        "onCreateView",
        "view",
        "onViewCreated",
        "Lcom/onyx/android/sdk/universal/editor/events/note/LocalRestoreFileRequestPermissionEvent;",
        "event",
        "onLocalRestoreFileRequestPermissionEvent",
        "E0",
        "F0",
        "y0",
        "x0",
        "I0",
        "",
        "keyword",
        "H0",
        "",
        "w0",
        "G0",
        "Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter;",
        "z1",
        "Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter;",
        "adapter",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "A1",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "compositeDisposable",
        "",
        "",
        "B1",
        "Ljava/util/List;",
        "list",
        "Lcom/onyx/galaxy/note/databinding/DialogLocalRestoreFileBinding;",
        "C1",
        "Lcom/onyx/galaxy/note/databinding/DialogLocalRestoreFileBinding;",
        "binding",
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
        "SMAP\nLocalRestoreFileListDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocalRestoreFileListDialog.kt\ncom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,219:1\n58#2,23:220\n93#2,3:243\n1549#3:246\n1620#3,3:247\n766#3:250\n857#3,2:251\n256#4,2:253\n*S KotlinDebug\n*F\n+ 1 LocalRestoreFileListDialog.kt\ncom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog\n*L\n125#1:220,23\n125#1:243,3\n140#1:246\n140#1:247,3\n180#1:250\n180#1:251,2\n186#1:253,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "LocalRestoreFileListDialog"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final A1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public B1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public C1:Lcom/onyx/galaxy/note/databinding/DialogLocalRestoreFileBinding;

.field public final z1:Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->Companion:Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    new-instance v0, Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->z1:Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter;

    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->A1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->B1:Ljava/util/List;

    return-void
.end method

.method public static final A0(Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->C1:Lcom/onyx/galaxy/note/databinding/DialogLocalRestoreFileBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogLocalRestoreFileBinding;->edtSearch:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static final B0(Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->I0()V

    return-void
.end method

.method public static final C0(Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->x0()V

    return-void
.end method

.method public static final D0(Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->z1:Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter;

    invoke-virtual {p1, p3}, Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter;->toggleSelect(I)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->C1:Lcom/onyx/galaxy/note/databinding/DialogLocalRestoreFileBinding;

    const/4 p2, 0x0

    const-string p3, "binding"

    if-nez p1, :cond_0

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/DialogLocalRestoreFileBinding;->btnImport:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->z1:Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter;->getSelectList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->z1:Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter;->getSelectList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->B1:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->C1:Lcom/onyx/galaxy/note/databinding/DialogLocalRestoreFileBinding;

    if-nez p0, :cond_1

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object p2, p0

    :goto_0
    iget-object p0, p2, Lcom/onyx/galaxy/note/databinding/DialogLocalRestoreFileBinding;->tvSelectAll:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p2, Lcom/onyx/galaxy/note/R$string;->un_select_all:I

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->C1:Lcom/onyx/galaxy/note/databinding/DialogLocalRestoreFileBinding;

    if-nez p0, :cond_3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object p2, p0

    :goto_1
    iget-object p0, p2, Lcom/onyx/galaxy/note/databinding/DialogLocalRestoreFileBinding;->tvSelectAll:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p2, Lcom/onyx/galaxy/note/R$string;->select_all:I

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method public static final synthetic access$getAdapter$p(Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;)Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->z1:Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter;

    return-object p0
.end method

.method public static final synthetic access$getCompositeDisposable$p(Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;)Lio/reactivex/rxjava3/disposables/CompositeDisposable;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->A1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-object p0
.end method

.method public static final synthetic access$getList$p(Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->B1:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$search(Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->H0(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static final synthetic access$setList$p(Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->B1:Ljava/util/List;

    return-void
.end method

.method public static synthetic r0(Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->C0(Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic s0(Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->A0(Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic t0(Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->B0(Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u0(Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->z0(Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic v0(Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->D0(Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static final z0(Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method


# virtual methods
.method public final E0()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->C1:Lcom/onyx/galaxy/note/databinding/DialogLocalRestoreFileBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogLocalRestoreFileBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->z1:Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public final F0()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/backup/LoadLocalRestoreFilesAction;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/action/backup/LoadLocalRestoreFilesAction;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog$b;-><init>(Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    const-string v1, "subscribe(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->A1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public final G0()V
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1e
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "setData(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final H0(Ljava/lang/CharSequence;)V
    .locals 7

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->B1:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getName(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x2

    invoke-static {v5, p1, v1, v6, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->z1:Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter;

    invoke-virtual {v0, v3}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->z1:Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter;

    iget-object v3, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->B1:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    :goto_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->C1:Lcom/onyx/galaxy/note/databinding/DialogLocalRestoreFileBinding;

    if-nez p0, :cond_3

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move-object v2, p0

    :goto_2
    iget-object p0, v2, Lcom/onyx/galaxy/note/databinding/DialogLocalRestoreFileBinding;->ivDelete:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v0, "ivDelete"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    const/16 v1, 0x8

    :goto_3
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final I0()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->B1:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->z1:Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter;->getSelectList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    const-string v3, "binding"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->C1:Lcom/onyx/galaxy/note/databinding/DialogLocalRestoreFileBinding;

    if-nez v0, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogLocalRestoreFileBinding;->tvSelectAll:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object v4, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v5, Lcom/onyx/galaxy/note/R$string;->select_all:I

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->z1:Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter;->getSelectList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->C1:Lcom/onyx/galaxy/note/databinding/DialogLocalRestoreFileBinding;

    if-nez v0, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogLocalRestoreFileBinding;->tvSelectAll:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object v4, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v5, Lcom/onyx/galaxy/note/R$string;->un_select_all:I

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->z1:Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter;->getSelectList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->z1:Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter;->getSelectList()Ljava/util/List;

    move-result-object v0

    iget-object v4, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->B1:Ljava/util/List;

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->z1:Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->C1:Lcom/onyx/galaxy/note/databinding/DialogLocalRestoreFileBinding;

    if-nez v0, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object v1, v0

    :goto_2
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/DialogLocalRestoreFileBinding;->btnImport:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->z1:Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter;->getSelectList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v2

    invoke-virtual {v0, p0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54ffffa6

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
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

    const/16 p3, 0x1c

    invoke-static {p3}, Lcom/onyx/android/sdk/base/extension/BuildKt;->isApiLevelAbove(I)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {p3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    invoke-static {p1, p2, v0}, Lcom/onyx/galaxy/note/databinding/DialogLocalRestoreFileBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/DialogLocalRestoreFileBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->C1:Lcom/onyx/galaxy/note/databinding/DialogLocalRestoreFileBinding;

    if-nez p1, :cond_1

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_1
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->unregister(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->A1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->dispose()V

    return-void
.end method

.method public final onLocalRestoreFileRequestPermissionEvent(Lcom/onyx/android/sdk/universal/editor/events/note/LocalRestoreFileRequestPermissionEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/LocalRestoreFileRequestPermissionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->F0()V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    const/4 p0, -0x1

    invoke-virtual {v0, p0, p0}, Landroid/view/Window;->setLayout(II)V

    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, p0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->E0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->y0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->w0()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->F0()V

    :cond_0
    return-void
.end method

.method public final w0()Z
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_1

    invoke-static {}, Lcom/sunia/HTREnginev2/wbe;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->G0()V

    return v3

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Lcom/permissionx/guolindev/PermissionX;->isGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/app/RequestPermissionEvent;

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/events/note/LocalRestoreFileRequestPermissionEvent;

    invoke-direct {v2}, Lcom/onyx/android/sdk/universal/editor/events/note/LocalRestoreFileRequestPermissionEvent;-><init>()V

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/universal/editor/events/app/RequestPermissionEvent;-><init>(Ljava/lang/Object;)V

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/universal/editor/events/app/RequestPermissionEvent;->setPermissions([Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/events/app/RequestPermissionEvent;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    return v3
.end method

.method public final x0()V
    .locals 10

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->z1:Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter;->getSelectList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "requireContext(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog$importNote$dialog$1;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog$importNote$dialog$1;-><init>(Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;)V

    invoke-direct {v0, v1, v3}, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreDialog;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    new-instance v7, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalRestoreAction;

    sget-object v1, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->docManagerBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v8

    new-instance v9, Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->Companion:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs$Companion;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs$Companion;->create$default(Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs$Companion;Ljava/util/List;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v9, v1}, Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;-><init>(Ljava/util/List;)V

    invoke-direct {v7, v8, v9}, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalRestoreAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;)V

    invoke-virtual {v7}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog$a;

    invoke-direct {v2, v0}, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog$a;-><init>(Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreDialog;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnSubscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    const-string v1, "subscribe(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->A1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public final y0()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->C1:Lcom/onyx/galaxy/note/databinding/DialogLocalRestoreFileBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogLocalRestoreFileBinding;->btnBack:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v3, Lcom/sunia/HTREnginev2/u0j;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/u0j;-><init>(Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->C1:Lcom/onyx/galaxy/note/databinding/DialogLocalRestoreFileBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogLocalRestoreFileBinding;->ivDelete:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v3, Lcom/sunia/HTREnginev2/v0j;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/v0j;-><init>(Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->C1:Lcom/onyx/galaxy/note/databinding/DialogLocalRestoreFileBinding;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogLocalRestoreFileBinding;->tvSelectAll:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v3, Lcom/sunia/HTREnginev2/w0j;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/w0j;-><init>(Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->C1:Lcom/onyx/galaxy/note/databinding/DialogLocalRestoreFileBinding;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogLocalRestoreFileBinding;->edtSearch:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    const-string v3, "edtSearch"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog$initListener$$inlined$doAfterTextChanged$1;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog$initListener$$inlined$doAfterTextChanged$1;-><init>(Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->C1:Lcom/onyx/galaxy/note/databinding/DialogLocalRestoreFileBinding;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/DialogLocalRestoreFileBinding;->btnImport:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/x0j;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/x0j;-><init>(Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;->z1:Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter;

    new-instance v1, Lcom/sunia/HTREnginev2/y0j;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/y0j;-><init>(Lcom/onyx/galaxy/note/settings/ui/dialog/LocalRestoreFileListDialog;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemClickListener;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    return-void
.end method
