.class public final Lcom/onyx/galaxy/note/ui/BackupProgressDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBackupProgressDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BackupProgressDialog.kt\ncom/onyx/galaxy/note/ui/BackupProgressDialog\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,101:1\n766#2:102\n857#2,2:103\n256#3,2:105\n256#3,2:107\n256#3,2:109\n256#3,2:111\n256#3,2:113\n256#3,2:115\n*S KotlinDebug\n*F\n+ 1 BackupProgressDialog.kt\ncom/onyx/galaxy/note/ui/BackupProgressDialog\n*L\n66#1:102\n66#1:103,2\n71#1:105,2\n72#1:107,2\n74#1:109,2\n75#1:111,2\n77#1:113,2\n97#1:115,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010(\u001a\u00020\'\u0012\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011\u0012\u0006\u0010\u001b\u001a\u00020\u0016\u00a2\u0006\u0004\u0008)\u0010*J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u0014\u0010\t\u001a\u00020\u00042\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006J\u000e\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nJ\u000e\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rJ\u0008\u0010\u0010\u001a\u00020\u0004H\u0002R\u001a\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0017\u0010\u001b\u001a\u00020\u00168\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001aR\u001b\u0010!\u001a\u00020\u001c8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 R\u001b\u0010&\u001a\u00020\"8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008#\u0010\u001e\u001a\u0004\u0008$\u0010%\u00a8\u0006+"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/ui/BackupProgressDialog;",
        "Landroid/app/Dialog;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "",
        "Lcom/onyx/galaxy/note/settings/data/ImportResultBean;",
        "importResultBeans",
        "updateResult",
        "Lcom/onyx/galaxy/note/settings/event/BackupProgressEvent;",
        "backupProgressEvent",
        "updateProgress",
        "Lcom/onyx/galaxy/note/settings/event/BackupProgressResultEvent;",
        "importBackupResultEvent",
        "updateProgressResult",
        "c",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "e",
        "Ljava/util/List;",
        "backupList",
        "",
        "f",
        "I",
        "getType",
        "()I",
        "type",
        "Lcom/onyx/galaxy/note/databinding/DialogBackupProcessBinding;",
        "g",
        "Lkotlin/Lazy;",
        "getBinding",
        "()Lcom/onyx/galaxy/note/databinding/DialogBackupProcessBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter;",
        "h",
        "b",
        "()Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter;",
        "errorAdapter",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;Ljava/util/List;I)V",
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
        "SMAP\nBackupProgressDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BackupProgressDialog.kt\ncom/onyx/galaxy/note/ui/BackupProgressDialog\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,101:1\n766#2:102\n857#2,2:103\n256#3,2:105\n256#3,2:107\n256#3,2:109\n256#3,2:111\n256#3,2:113\n256#3,2:115\n*S KotlinDebug\n*F\n+ 1 BackupProgressDialog.kt\ncom/onyx/galaxy/note/ui/BackupProgressDialog\n*L\n66#1:102\n66#1:103,2\n71#1:105,2\n72#1:107,2\n74#1:109,2\n75#1:111,2\n77#1:113,2\n97#1:115,2\n*E\n"
    }
.end annotation


# instance fields
.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:I

.field public final g:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backupList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/onyx/galaxy/note/R$style;->commonDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/onyx/galaxy/note/ui/BackupProgressDialog;->e:Ljava/util/List;

    iput p3, p0, Lcom/onyx/galaxy/note/ui/BackupProgressDialog;->f:I

    new-instance p2, Lcom/onyx/galaxy/note/ui/BackupProgressDialog$binding$2;

    invoke-direct {p2, p1}, Lcom/onyx/galaxy/note/ui/BackupProgressDialog$binding$2;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/ui/BackupProgressDialog;->g:Lkotlin/Lazy;

    sget-object p1, Lcom/onyx/galaxy/note/ui/BackupProgressDialog$errorAdapter$2;->INSTANCE:Lcom/onyx/galaxy/note/ui/BackupProgressDialog$errorAdapter$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/ui/BackupProgressDialog;->h:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/ui/BackupProgressDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/ui/BackupProgressDialog;->d(Lcom/onyx/galaxy/note/ui/BackupProgressDialog;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getBackupList$p(Lcom/onyx/galaxy/note/ui/BackupProgressDialog;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/BackupProgressDialog;->e:Ljava/util/List;

    return-object p0
.end method

.method public static final d(Lcom/onyx/galaxy/note/ui/BackupProgressDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public final b()Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/BackupProgressDialog;->h:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter;

    return-object p0
.end method

.method public final c()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/BackupProgressDialog;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogBackupProcessBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogBackupProcessBinding;->tvTitle:Landroid/widget/TextView;

    iget v1, p0, Lcom/onyx/galaxy/note/ui/BackupProgressDialog;->f:I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/onyx/galaxy/note/R$string;->backup_local:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/onyx/galaxy/note/R$string;->backup_cloud:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/BackupProgressDialog;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogBackupProcessBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogBackupProcessBinding;->rlImportErrorList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/BackupProgressDialog;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogBackupProcessBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogBackupProcessBinding;->rlImportErrorList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/BackupProgressDialog;->b()Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/BackupProgressDialog;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogBackupProcessBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogBackupProcessBinding;->ivClose:Landroid/widget/ImageView;

    new-instance v1, Lcom/sunia/HTREnginev2/cm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/cm;-><init>(Lcom/onyx/galaxy/note/ui/BackupProgressDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/BackupProgressDialog;->b()Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/ui/BackupProgressDialog$initView$2;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/ui/BackupProgressDialog$initView$2;-><init>(Lcom/onyx/galaxy/note/ui/BackupProgressDialog;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter;->setRetryCallback(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final getBinding()Lcom/onyx/galaxy/note/databinding/DialogBackupProcessBinding;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/BackupProgressDialog;->g:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/DialogBackupProcessBinding;

    return-object p0
.end method

.method public final getType()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/ui/BackupProgressDialog;->f:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54ffffa0

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public final updateProgress(Lcom/onyx/galaxy/note/settings/event/BackupProgressEvent;)V
    .locals 6
    .param p1    # Lcom/onyx/galaxy/note/settings/event/BackupProgressEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "backupProgressEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/event/BackupProgressEvent;->getNote()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/ui/BackupProgressDialog;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/BackupProgressDialog;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogBackupProcessBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/DialogBackupProcessBinding;->tvBackupName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/BackupProgressDialog;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogBackupProcessBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/DialogBackupProcessBinding;->tvCurrentProgressName:Landroid/widget/TextView;

    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/onyx/galaxy/note/R$string;->backing_up_progress_name:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/BackupProgressDialog;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogBackupProcessBinding;

    move-result-object v5

    iget-object v5, v5, Lcom/onyx/galaxy/note/databinding/DialogBackupProcessBinding;->progressImportBackup:Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x25

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/BackupProgressDialog;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogBackupProcessBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/DialogBackupProcessBinding;->tvCurrentProgress:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lcom/onyx/galaxy/note/R$string;->backing_up_progress:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/BackupProgressDialog;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final updateProgressResult(Lcom/onyx/galaxy/note/settings/event/BackupProgressResultEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/settings/event/BackupProgressResultEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "importBackupResultEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/event/BackupProgressResultEvent;->getImportResult()Lcom/onyx/galaxy/note/settings/data/ImportResultBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/ImportResultBean;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/BackupProgressDialog;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogBackupProcessBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogBackupProcessBinding;->llErrorDetailInfoContainer:Landroid/widget/LinearLayout;

    const-string v1, "llErrorDetailInfoContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/BackupProgressDialog;->b()Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/event/BackupProgressResultEvent;->getImportResult()Lcom/onyx/galaxy/note/settings/data/ImportResultBean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter;->updateError(Lcom/onyx/galaxy/note/settings/data/ImportResultBean;)V

    return-void
.end method

.method public final updateResult(Ljava/util/List;)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/settings/data/ImportResultBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "importResultBeans"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/galaxy/note/settings/data/ImportResultBean;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/settings/data/ImportResultBean;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const-string v0, "llResultErrorContainer"

    const/4 v1, 0x0

    const-string v2, "llResultCompleteContainer"

    const/16 v3, 0x8

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/BackupProgressDialog;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogBackupProcessBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/DialogBackupProcessBinding;->llResultCompleteContainer:Landroid/widget/LinearLayout;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/BackupProgressDialog;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogBackupProcessBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/DialogBackupProcessBinding;->llResultErrorContainer:Landroid/widget/LinearLayout;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/BackupProgressDialog;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogBackupProcessBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/DialogBackupProcessBinding;->llResultCompleteContainer:Landroid/widget/LinearLayout;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/BackupProgressDialog;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogBackupProcessBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/DialogBackupProcessBinding;->llResultErrorContainer:Landroid/widget/LinearLayout;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/BackupProgressDialog;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogBackupProcessBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogBackupProcessBinding;->progressContainer:Landroid/widget/LinearLayout;

    const-string p1, "progressContainer"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
