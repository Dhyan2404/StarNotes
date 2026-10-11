.class public final Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCloudRestoreDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CloudRestoreDialog.kt\ncom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,172:1\n256#2,2:173\n256#2,2:175\n256#2,2:177\n256#2,2:182\n256#2,2:184\n256#2,2:186\n256#2,2:188\n256#2,2:190\n256#2,2:197\n1726#3,3:179\n1747#3,3:192\n288#3,2:195\n*S KotlinDebug\n*F\n+ 1 CloudRestoreDialog.kt\ncom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog\n*L\n84#1:173,2\n85#1:175,2\n86#1:177,2\n92#1:182,2\n93#1:184,2\n96#1:186,2\n97#1:188,2\n98#1:190,2\n153#1:197,2\n91#1:179,3\n107#1:192,3\n128#1:195,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010 \u001a\u00020\u001d\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008.\u0010/J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u0008\u0010\u0006\u001a\u00020\u0004H\u0016J\u0008\u0010\u0007\u001a\u00020\u0004H\u0016J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0008H\u0007J\u0010\u0010\u000c\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u000bH\u0007J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\rH\u0007J\u0008\u0010\u000f\u001a\u00020\u0004H\u0002J\u0008\u0010\u0010\u001a\u00020\u0004H\u0002J\u0010\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0016\u0010\u0017\u001a\u00020\u00042\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014H\u0002J\u0016\u0010\u001b\u001a\u00020\u00042\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0018H\u0002J\u0008\u0010\u001c\u001a\u00020\u0004H\u0002R\u0014\u0010 \u001a\u00020\u001d8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0014\u0010\u0012\u001a\u00020\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010!R\u001b\u0010\'\u001a\u00020\"8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008#\u0010$\u001a\u0004\u0008%\u0010&R\u0014\u0010*\u001a\u00020(8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010)R\u0018\u0010-\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010,\u00a8\u00060"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog;",
        "Landroid/app/Dialog;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "onAttachedToWindow",
        "onDetachedFromWindow",
        "Lcom/onyx/android/sdk/universal/editor/events/note/CloudRestoreCompleteEvent;",
        "event",
        "onCloudRestoreCompleteEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ImportNoteProgressEvent;",
        "onImportNoteProgressEvent",
        "Lcom/onyx/android/sdk/cloudstorage/event/CloudStorageDownloadFileEvent;",
        "onCloudStorageDownloadFileEvent",
        "d",
        "i",
        "Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;",
        "restoreContext",
        "h",
        "Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "cloudFileStatus",
        "k",
        "",
        "Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;",
        "argsList",
        "j",
        "f",
        "Landroid/content/Context;",
        "e",
        "Landroid/content/Context;",
        "context",
        "Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;",
        "Lcom/onyx/galaxy/note/databinding/DialogDriveRecoveryBinding;",
        "g",
        "Lkotlin/Lazy;",
        "c",
        "()Lcom/onyx/galaxy/note/databinding/DialogDriveRecoveryBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/settings/ui/adapter/RestoreErrorAdapter;",
        "Lcom/onyx/galaxy/note/settings/ui/adapter/RestoreErrorAdapter;",
        "errorListAdapter",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "disposable",
        "<init>",
        "(Landroid/content/Context;Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;)V",
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
        "SMAP\nCloudRestoreDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CloudRestoreDialog.kt\ncom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,172:1\n256#2,2:173\n256#2,2:175\n256#2,2:177\n256#2,2:182\n256#2,2:184\n256#2,2:186\n256#2,2:188\n256#2,2:190\n256#2,2:197\n1726#3,3:179\n1747#3,3:192\n288#3,2:195\n*S KotlinDebug\n*F\n+ 1 CloudRestoreDialog.kt\ncom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog\n*L\n84#1:173,2\n85#1:175,2\n86#1:177,2\n92#1:182,2\n93#1:184,2\n96#1:186,2\n97#1:188,2\n98#1:190,2\n153#1:197,2\n91#1:179,3\n107#1:192,3\n128#1:195,2\n*E\n"
    }
.end annotation


# instance fields
.field public final e:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lcom/onyx/galaxy/note/settings/ui/adapter/RestoreErrorAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Lio/reactivex/rxjava3/disposables/Disposable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "restoreContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/onyx/galaxy/note/R$style;->commonDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog;->f:Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;

    new-instance p1, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog$binding$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog$binding$2;-><init>(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog;->g:Lkotlin/Lazy;

    new-instance p1, Lcom/onyx/galaxy/note/settings/ui/adapter/RestoreErrorAdapter;

    invoke-direct {p1}, Lcom/onyx/galaxy/note/settings/ui/adapter/RestoreErrorAdapter;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog;->h:Lcom/onyx/galaxy/note/settings/ui/adapter/RestoreErrorAdapter;

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog;->g(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog;->e:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog;->e()V

    return-void
.end method

.method public static final e()V
    .locals 2

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/SettingsBundle;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/SettingsBundle;

    new-instance v1, Lcom/onyx/galaxy/note/settings/event/CloudRestoreEvent;

    invoke-direct {v1}, Lcom/onyx/galaxy/note/settings/event/CloudRestoreEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/settings/data/SettingsBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public static final g(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog;->i:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public final c()Lcom/onyx/galaxy/note/databinding/DialogDriveRecoveryBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog;->g:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/DialogDriveRecoveryBinding;

    return-object p0
.end method

.method public final d()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/backup/CloudRestoreAction;

    sget-object v1, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->docManagerBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog;->f:Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/backup/CloudRestoreAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/rvd;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/rvd;-><init>()V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog;->i:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final f()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog;->e:Landroid/content/Context;

    sget v1, Lcom/onyx/galaxy/note/R$string;->dialog_drive_restore_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->Companion:Lcom/onyx/android/sdk/data/config/cloudnote/Provider$Companion;

    iget-object v2, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getApplicationContext(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog;->f:Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;->getCloudProvider()Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getProviderType()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider$Companion;->getDefaultProvider()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object v3

    :cond_1
    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider$Companion;->getNameByProvider(Landroid/content/Context;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog;->c()Lcom/onyx/galaxy/note/databinding/DialogDriveRecoveryBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/DialogDriveRecoveryBinding;->tvTitle:Lcom/onyx/android/sdk/ui/MediumTextView;

    const/4 v3, 0x1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog;->c()Lcom/onyx/galaxy/note/databinding/DialogDriveRecoveryBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogDriveRecoveryBinding;->ivClose:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v1, Lcom/sunia/HTREnginev2/svd;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/svd;-><init>(Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog;->c()Lcom/onyx/galaxy/note/databinding/DialogDriveRecoveryBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogDriveRecoveryBinding;->itemErrorList:Lcom/onyx/galaxy/note/common/view/MaxHeightRecyclerView;

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog;->h:Lcom/onyx/galaxy/note/settings/ui/adapter/RestoreErrorAdapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public final h(Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;)V
    .locals 4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;->getNoteImportList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    instance-of v1, p1, Ljava/util/Collection;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->allErrorImported()Z

    move-result v1

    if-nez v1, :cond_1

    move v2, v3

    :cond_2
    :goto_0
    const/16 p1, 0x8

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog;->c()Lcom/onyx/galaxy/note/databinding/DialogDriveRecoveryBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogDriveRecoveryBinding;->tvErrorTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v2, "tvErrorTitle"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog;->c()Lcom/onyx/galaxy/note/databinding/DialogDriveRecoveryBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogDriveRecoveryBinding;->tvFinishTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v2, "tvFinishTitle"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog;->c()Lcom/onyx/galaxy/note/databinding/DialogDriveRecoveryBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogDriveRecoveryBinding;->tvErrorSubTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    if-eqz v0, :cond_4

    sget-object v2, Lcom/onyx/android/sdk/data/utils/ThrowableUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/ThrowableUtils;

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/data/utils/ThrowableUtils;->getErrorCode(Ljava/lang/Throwable;)Lcom/onyx/android/sdk/data/common/data/ErrorCode;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/data/ErrorCode;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog;->c()Lcom/onyx/galaxy/note/databinding/DialogDriveRecoveryBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogDriveRecoveryBinding;->groupError:Landroidx/constraintlayout/widget/Group;

    const-string v1, "groupError"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog;->c()Lcom/onyx/galaxy/note/databinding/DialogDriveRecoveryBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogDriveRecoveryBinding;->groupProgress:Landroidx/constraintlayout/widget/Group;

    const-string v1, "groupProgress"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog;->c()Lcom/onyx/galaxy/note/databinding/DialogDriveRecoveryBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogDriveRecoveryBinding;->groupFinished:Landroidx/constraintlayout/widget/Group;

    const-string v0, "groupFinished"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final i()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog;->c()Lcom/onyx/galaxy/note/databinding/DialogDriveRecoveryBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogDriveRecoveryBinding;->groupError:Landroidx/constraintlayout/widget/Group;

    const-string v1, "groupError"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog;->c()Lcom/onyx/galaxy/note/databinding/DialogDriveRecoveryBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogDriveRecoveryBinding;->groupProgress:Landroidx/constraintlayout/widget/Group;

    const-string v2, "groupProgress"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog;->c()Lcom/onyx/galaxy/note/databinding/DialogDriveRecoveryBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogDriveRecoveryBinding;->groupFinished:Landroidx/constraintlayout/widget/Group;

    const-string v0, "groupFinished"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final j(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->Companion:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs$Companion;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs$Companion;->getImportErrorBeanList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog;->c()Lcom/onyx/galaxy/note/databinding/DialogDriveRecoveryBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogDriveRecoveryBinding;->itemErrorListLayout:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const-string v1, "itemErrorListLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog;->h:Lcom/onyx/galaxy/note/settings/ui/adapter/RestoreErrorAdapter;

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    return-void
.end method

.method public final k(Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->getEntry()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog;->e:Landroid/content/Context;

    sget v2, Lcom/onyx/galaxy/note/R$string;->download_note_progress_hint:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->getProgress()D

    move-result-wide v1

    double-to-int p1, v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog;->c()Lcom/onyx/galaxy/note/databinding/DialogDriveRecoveryBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogDriveRecoveryBinding;->progress:Lcom/onyx/android/sdk/theme/widgets/TintProgressBar;

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog;->c()Lcom/onyx/galaxy/note/databinding/DialogDriveRecoveryBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogDriveRecoveryBinding;->tvProgress:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "format(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->Companion:Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$Companion;->getOurInstance()Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->register(Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->docManagerBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->register(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final onCloudRestoreCompleteEvent(Lcom/onyx/android/sdk/universal/editor/events/note/CloudRestoreCompleteEvent;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/CloudRestoreCompleteEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/CloudRestoreCompleteEvent;->getRestoreContext()Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/CloudRestoreCompleteEvent;->getRestoreContext()Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog;->h(Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/CloudRestoreCompleteEvent;->getRestoreContext()Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;->getNoteImportList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->anySuccessImported()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog;->i()V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/CloudRestoreCompleteEvent;->getRestoreContext()Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog;->h(Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;)V

    :goto_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/CloudRestoreCompleteEvent;->getRestoreContext()Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;->getNoteImportList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog;->j(Ljava/util/List;)V

    return-void
.end method

.method public final onCloudStorageDownloadFileEvent(Lcom/onyx/android/sdk/cloudstorage/event/CloudStorageDownloadFileEvent;)V
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/event/CloudStorageDownloadFileEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog;->f:Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/ui/data/RestoreContext;->getNoteImportList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->getCloudFileBean()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getLocalFilePath()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/event/CloudStorageDownloadFileEvent;->getCloudFileStatus()Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->getEntry()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getLocalFilePath()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    :cond_3
    check-cast v2, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    if-nez v2, :cond_4

    return-void

    :cond_4
    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/event/CloudStorageDownloadFileEvent;->getCloudFileStatus()Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->isError()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/onyx/android/sdk/data/common/exception/FileDownloadException;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/common/exception/FileDownloadException;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/event/CloudStorageDownloadFileEvent;->getCloudFileStatus()Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->getErrorResultCode()Lcom/onyx/android/sdk/data/common/data/ResultCode;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/exception/BaseException;->getErrorCode()Lcom/onyx/android/sdk/data/common/data/ErrorCode;

    move-result-object v3

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/common/data/ResultCode;->getCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/data/common/data/ErrorCode;->setCode(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/common/data/ResultCode;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/onyx/android/sdk/data/common/data/ErrorCode;->setMessage(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->setThrowable(Ljava/lang/Throwable;)V

    :cond_6
    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/event/CloudStorageDownloadFileEvent;->getCloudFileStatus()Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog;->k(Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54ffffaa

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->Companion:Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$Companion;->getOurInstance()Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->unregister(Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->docManagerBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->unregister(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog;->i:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method public final onImportNoteProgressEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ImportNoteProgressEvent;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ImportNoteProgressEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->Companion:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ImportNoteProgressEvent;->getList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs$Companion;->getImportingNoteArgs(Ljava/util/List;)Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->getImportFileUri()Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/UriKt;->getFileName(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->getNoteProgress()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog;->c()Lcom/onyx/galaxy/note/databinding/DialogDriveRecoveryBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogDriveRecoveryBinding;->progress:Lcom/onyx/android/sdk/theme/widgets/TintProgressBar;

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog;->e:Landroid/content/Context;

    sget v2, Lcom/onyx/galaxy/note/R$string;->recovery_note_progress_hint:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "format(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/dialog/CloudRestoreDialog;->c()Lcom/onyx/galaxy/note/databinding/DialogDriveRecoveryBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogDriveRecoveryBinding;->tvProgress:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
