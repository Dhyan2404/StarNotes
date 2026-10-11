.class public final Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter;
.super Lcom/chad/library/adapter4/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter$ErrorHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter4/BaseQuickAdapter<",
        "Lcom/onyx/galaxy/note/settings/data/ImportResultBean;",
        "Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter$ErrorHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImportErrorAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImportErrorAdapter.kt\ncom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,104:1\n256#2,2:105\n256#2,2:107\n256#2,2:109\n256#2,2:111\n256#2,2:113\n256#2,2:115\n256#2,2:117\n*S KotlinDebug\n*F\n+ 1 ImportErrorAdapter.kt\ncom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter\n*L\n72#1:105,2\n77#1:107,2\n79#1:109,2\n80#1:111,2\n81#1:113,2\n85#1:115,2\n86#1:117,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001&B\u0007\u00a2\u0006\u0004\u0008$\u0010%J\u001a\u0010\u0007\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00050\u0004J\u0016\u0010\u000b\u001a\u00020\n2\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0008H\u0014J\u0010\u0010\r\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u0002H\u0007J\"\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\n2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0002H\u0014J \u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\nH\u0014J\u0010\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u000c\u001a\u00020\u0002H\u0002R$\u0010\u001e\u001a\u0012\u0012\u0004\u0012\u00020\u00020\u001aj\u0008\u0012\u0004\u0012\u00020\u0002`\u001b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR$\u0010!\u001a\u0012\u0012\u0004\u0012\u00020\u001f0\u001aj\u0008\u0012\u0004\u0012\u00020\u001f`\u001b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010\u001dR$\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter;",
        "Lcom/chad/library/adapter4/BaseQuickAdapter;",
        "Lcom/onyx/galaxy/note/settings/data/ImportResultBean;",
        "Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter$ErrorHolder;",
        "Lkotlin/Function1;",
        "",
        "callback",
        "setRetryCallback",
        "",
        "items",
        "",
        "getItemCount",
        "importResultBean",
        "updateError",
        "holder",
        "position",
        "item",
        "onBindViewHolder",
        "Landroid/content/Context;",
        "context",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "onCreateViewHolder",
        "",
        "m",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "r",
        "Ljava/util/ArrayList;",
        "errorList",
        "",
        "s",
        "retryList",
        "t",
        "Lkotlin/jvm/functions/Function1;",
        "<init>",
        "()V",
        "ErrorHolder",
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
        "SMAP\nImportErrorAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImportErrorAdapter.kt\ncom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,104:1\n256#2,2:105\n256#2,2:107\n256#2,2:109\n256#2,2:111\n256#2,2:113\n256#2,2:115\n256#2,2:117\n*S KotlinDebug\n*F\n+ 1 ImportErrorAdapter.kt\ncom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter\n*L\n72#1:105,2\n77#1:107,2\n79#1:109,2\n80#1:111,2\n81#1:113,2\n85#1:115,2\n86#1:117,2\n*E\n"
    }
.end annotation


# instance fields
.field public final r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/onyx/galaxy/note/settings/data/ImportResultBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public t:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/galaxy/note/settings/data/ImportResultBean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter;->r:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter;->s:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter$ErrorHolder;Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter;Lcom/onyx/galaxy/note/settings/data/ImportResultBean;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter;->n(Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter$ErrorHolder;Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter;Lcom/onyx/galaxy/note/settings/data/ImportResultBean;Landroid/view/View;)V

    return-void
.end method

.method public static final n(Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter$ErrorHolder;Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter;Lcom/onyx/galaxy/note/settings/data/ImportResultBean;Landroid/view/View;)V
    .locals 1

    const-string p3, "$holder"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "this$0"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter$ErrorHolder;->getTvRetry()Landroid/widget/TextView;

    move-result-object p3

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter$ErrorHolder;->getProgress()Landroid/widget/ProgressBar;

    move-result-object p0

    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p1, Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter;->s:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/settings/data/ImportResultBean;->getBackupName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p1, Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter;->t:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount(Ljava/util/List;)I
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/settings/data/ImportResultBean;",
            ">;)I"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter;->r:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final m(Lcom/onyx/galaxy/note/settings/data/ImportResultBean;)Z
    .locals 3

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter;->r:Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/onyx/galaxy/note/settings/data/ImportResultBean;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/settings/data/ImportResultBean;->getBackupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/data/ImportResultBean;->getBackupName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/onyx/galaxy/note/settings/data/ImportResultBean;

    if-eqz v0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter$ErrorHolder;

    check-cast p3, Lcom/onyx/galaxy/note/settings/data/ImportResultBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter;->onBindViewHolder(Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter$ErrorHolder;ILcom/onyx/galaxy/note/settings/data/ImportResultBean;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter$ErrorHolder;ILcom/onyx/galaxy/note/settings/data/ImportResultBean;)V
    .locals 4
    .param p1    # Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter$ErrorHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/settings/data/ImportResultBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_4

    .line 2
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter$ErrorHolder;->getErrorName()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p3}, Lcom/onyx/galaxy/note/settings/data/ImportResultBean;->getBackupName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p3}, Lcom/onyx/galaxy/note/settings/data/ImportResultBean;->getErrorType()Lcom/onyx/galaxy/note/settings/data/BackupErrorType;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 4
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter$ErrorHolder;->getErrorCodeDes()Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/settings/data/BackupErrorType;->getErrorDescription()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter$ErrorHolder;->getErrorCode()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/settings/data/BackupErrorType;->getCanRetry()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 6
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter$ErrorHolder;->getErrorCode()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/settings/data/BackupErrorType;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p2}, Lcom/onyx/galaxy/note/settings/data/BackupErrorType;->getCanRetry()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 9
    iget-object p2, p0, Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter;->s:Ljava/util/ArrayList;

    invoke-virtual {p3}, Lcom/onyx/galaxy/note/settings/data/ImportResultBean;->getBackupName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter$ErrorHolder;->getProgress()Landroid/widget/ProgressBar;

    move-result-object p2

    .line 11
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 12
    :cond_1
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter$ErrorHolder;->getProgress()Landroid/widget/ProgressBar;

    move-result-object p2

    .line 13
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 14
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter$ErrorHolder;->getTvCompleted()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p3}, Lcom/onyx/galaxy/note/settings/data/ImportResultBean;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v3

    .line 15
    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 16
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter$ErrorHolder;->getTvRetry()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p3}, Lcom/onyx/galaxy/note/settings/data/ImportResultBean;->isSuccess()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    .line 17
    :goto_2
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 18
    :goto_3
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter$ErrorHolder;->getTvRetry()Landroid/widget/TextView;

    move-result-object p2

    new-instance v0, Lcom/sunia/HTREnginev2/qii;

    invoke-direct {v0, p1, p0, p3}, Lcom/sunia/HTREnginev2/qii;-><init>(Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter$ErrorHolder;Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter;Lcom/onyx/galaxy/note/settings/data/ImportResultBean;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter$ErrorHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter$ErrorHolder;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "parent"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p1, Lcom/onyx/galaxy/note/R$layout;->item_import_error_holder:I

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 3
    new-instance p1, Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter$ErrorHolder;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter$ErrorHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public final setRetryCallback(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/galaxy/note/settings/data/ImportResultBean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter;->t:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final updateError(Lcom/onyx/galaxy/note/settings/data/ImportResultBean;)V
    .locals 4
    .param p1    # Lcom/onyx/galaxy/note/settings/data/ImportResultBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    const-string v0, "importResultBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter;->m(Lcom/onyx/galaxy/note/settings/data/ImportResultBean;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/data/ImportResultBean;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter;->r:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter;->r:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/galaxy/note/settings/data/ImportResultBean;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/settings/data/ImportResultBean;->getBackupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/data/ImportResultBean;->getBackupName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/onyx/galaxy/note/settings/data/ImportResultBean;

    if-eqz v1, :cond_4

    invoke-virtual {v1, p1}, Lcom/onyx/galaxy/note/settings/data/ImportResultBean;->copy(Lcom/onyx/galaxy/note/settings/data/ImportResultBean;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter;->s:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/data/ImportResultBean;->getBackupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/adapter/ImportErrorAdapter;->s:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/data/ImportResultBean;->getBackupName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_4
    :goto_1
    return-void
.end method
