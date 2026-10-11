.class public final Lcom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter;
.super Lcom/chad/library/adapter4/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter$ItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter4/BaseQuickAdapter<",
        "Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceDownloadBean;",
        "Lcom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter$ItemViewHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShareResourceAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShareResourceAdapter.kt\ncom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,85:1\n350#2,7:86\n*S KotlinDebug\n*F\n+ 1 ShareResourceAdapter.kt\ncom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter\n*L\n75#1:86,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u0002\u0012\u0008\u0012\u00060\u0003R\u00020\u00000\u0001:\u0001\u0018B\u0007\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J&\u0010\t\u001a\u00020\u00082\n\u0010\u0004\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0014J4\u0010\t\u001a\u00020\u00082\n\u0010\u0004\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00022\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0014J$\u0010\u0012\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0005H\u0014J\u000e\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u0013\u001a\u00020\u0002J\u001c\u0010\u0015\u001a\u00020\u00082\n\u0010\u0004\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0002H\u0002\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter;",
        "Lcom/chad/library/adapter4/BaseQuickAdapter;",
        "Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceDownloadBean;",
        "Lcom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter$ItemViewHolder;",
        "holder",
        "",
        "position",
        "item",
        "",
        "onBindViewHolder",
        "",
        "",
        "payloads",
        "Landroid/content/Context;",
        "context",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "onCreateViewHolder",
        "bean",
        "updateDownloadProgress",
        "l",
        "<init>",
        "()V",
        "ItemViewHolder",
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
        "SMAP\nShareResourceAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShareResourceAdapter.kt\ncom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,85:1\n350#2,7:86\n*S KotlinDebug\n*F\n+ 1 ShareResourceAdapter.kt\ncom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter\n*L\n75#1:86,7\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final l(Lcom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter$ItemViewHolder;Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceDownloadBean;)V
    .locals 4

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceDownloadBean;->getProgressInfo()Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter$ItemViewHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemShareResourceBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ItemShareResourceBinding;->tvProgress:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object p2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$string;->download_failed:I

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter$ItemViewHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemShareResourceBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ItemShareResourceBinding;->tvProgress:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget p1, Lcom/onyx/galaxy/note/R$color;->error_200:I

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/theme/widgets/TintTextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->isComplete()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter$ItemViewHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemShareResourceBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ItemShareResourceBinding;->tvProgress:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object p2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$string;->pending_import:I

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter$ItemViewHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemShareResourceBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ItemShareResourceBinding;->tvProgress:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget p1, Lcom/onyx/galaxy/note/R$color;->theme_primary_color:I

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/theme/widgets/TintTextView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->getProgress()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double p2, v0, v2

    if-gtz p2, :cond_2

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter$ItemViewHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemShareResourceBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ItemShareResourceBinding;->tvProgress:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object p2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$string;->pending_download:I

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter$ItemViewHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemShareResourceBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ItemShareResourceBinding;->tvProgress:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget p1, Lcom/onyx/galaxy/note/R$color;->theme_primary_color:I

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/theme/widgets/TintTextView;->setTextColor(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter$ItemViewHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemShareResourceBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/ItemShareResourceBinding;->tvProgress:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->getProgress()D

    move-result-wide v1

    double-to-int p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x25

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter$ItemViewHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemShareResourceBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ItemShareResourceBinding;->tvProgress:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p2, Lcom/onyx/galaxy/note/R$color;->theme_primary_color:I

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/theme/widgets/TintTextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter$ItemViewHolder;

    check-cast p3, Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceDownloadBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter;->onBindViewHolder(Lcom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter$ItemViewHolder;ILcom/onyx/galaxy/note/datarepository/bean/ShareResourceDownloadBean;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter$ItemViewHolder;

    check-cast p3, Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceDownloadBean;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter;->onBindViewHolder(Lcom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter$ItemViewHolder;ILcom/onyx/galaxy/note/datarepository/bean/ShareResourceDownloadBean;Ljava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter$ItemViewHolder;ILcom/onyx/galaxy/note/datarepository/bean/ShareResourceDownloadBean;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter$ItemViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceDownloadBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p3}, Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceDownloadBean;->getAttachmentBean()Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;

    move-result-object p2

    .line 4
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter$ItemViewHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemShareResourceBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ItemShareResourceBinding;->tvTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p0, p1, p3}, Lcom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter;->l(Lcom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter$ItemViewHolder;Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceDownloadBean;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter$ItemViewHolder;ILcom/onyx/galaxy/note/datarepository/bean/ShareResourceDownloadBean;Ljava/util/List;)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter$ItemViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceDownloadBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter$ItemViewHolder;",
            "I",
            "Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceDownloadBean;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "payloads"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {p4}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 7
    :cond_0
    instance-of p3, p2, Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceDownloadBean;

    if-eqz p3, :cond_1

    .line 8
    check-cast p2, Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceDownloadBean;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter;->l(Lcom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter$ItemViewHolder;Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceDownloadBean;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter$ItemViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter$ItemViewHolder;
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

    const-string p3, "context"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "parent"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/onyx/galaxy/note/databinding/ItemShareResourceBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ItemShareResourceBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p2, Lcom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter$ItemViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter$ItemViewHolder;-><init>(Lcom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter;Lcom/onyx/galaxy/note/databinding/ItemShareResourceBinding;)V

    return-object p2
.end method

.method public final updateDownloadProgress(Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceDownloadBean;)V
    .locals 4
    .param p1    # Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceDownloadBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceDownloadBean;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceDownloadBean;->getAttachmentBean()Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceDownloadBean;->getAttachmentBean()Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    if-gez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceDownloadBean;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceDownloadBean;->getProgressInfo()Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceDownloadBean;->setProgressInfo(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V

    :cond_3
    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    return-void
.end method
