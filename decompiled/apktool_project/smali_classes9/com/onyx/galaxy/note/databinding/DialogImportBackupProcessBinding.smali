.class public abstract Lcom/onyx/galaxy/note/databinding/DialogImportBackupProcessBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public final flCenterContainer:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivClose:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final llErrorDetailInfoContainer:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final llResultCompleteContainer:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final llResultContainer:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final llResultErrorContainer:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final progressContainer:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final progressImportBackup:Landroid/widget/ProgressBar;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final rlImportErrorList:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvBackupName:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvCurrentProgress:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvCurrentProgressName:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvTitle:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p4

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogImportBackupProcessBinding;->flCenterContainer:Landroid/widget/FrameLayout;

    move-object v1, p5

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogImportBackupProcessBinding;->ivClose:Landroid/widget/ImageView;

    move-object v1, p6

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogImportBackupProcessBinding;->llErrorDetailInfoContainer:Landroid/widget/LinearLayout;

    move-object v1, p7

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogImportBackupProcessBinding;->llResultCompleteContainer:Landroid/widget/LinearLayout;

    move-object v1, p8

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogImportBackupProcessBinding;->llResultContainer:Landroid/widget/LinearLayout;

    move-object v1, p9

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogImportBackupProcessBinding;->llResultErrorContainer:Landroid/widget/LinearLayout;

    move-object v1, p10

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogImportBackupProcessBinding;->progressContainer:Landroid/widget/LinearLayout;

    move-object v1, p11

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogImportBackupProcessBinding;->progressImportBackup:Landroid/widget/ProgressBar;

    move-object v1, p12

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogImportBackupProcessBinding;->rlImportErrorList:Landroidx/recyclerview/widget/RecyclerView;

    move-object v1, p13

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogImportBackupProcessBinding;->tvBackupName:Landroid/widget/TextView;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogImportBackupProcessBinding;->tvCurrentProgress:Landroid/widget/TextView;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogImportBackupProcessBinding;->tvCurrentProgressName:Landroid/widget/TextView;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogImportBackupProcessBinding;->tvTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/onyx/galaxy/note/databinding/DialogImportBackupProcessBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/databinding/DialogImportBackupProcessBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/DialogImportBackupProcessBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/DialogImportBackupProcessBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    sget v0, Lcom/onyx/galaxy/note/R$layout;->dialog_import_backup_process:I

    invoke-static {p1, p0, v0}, Landroidx/databinding/ViewDataBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/DialogImportBackupProcessBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/onyx/galaxy/note/databinding/DialogImportBackupProcessBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/databinding/DialogImportBackupProcessBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/DialogImportBackupProcessBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/DialogImportBackupProcessBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/databinding/DialogImportBackupProcessBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/onyx/galaxy/note/databinding/DialogImportBackupProcessBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/onyx/galaxy/note/databinding/DialogImportBackupProcessBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    sget v0, Lcom/onyx/galaxy/note/R$layout;->dialog_import_backup_process:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/DialogImportBackupProcessBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/DialogImportBackupProcessBinding;
    .locals 3
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    sget v0, Lcom/onyx/galaxy/note/R$layout;->dialog_import_backup_process:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/DialogImportBackupProcessBinding;

    return-object p0
.end method
