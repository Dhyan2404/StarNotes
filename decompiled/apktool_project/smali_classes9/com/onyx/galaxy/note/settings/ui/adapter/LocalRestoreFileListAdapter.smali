.class public final Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter;
.super Lcom/chad/library/adapter4/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter$VH;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter4/BaseQuickAdapter<",
        "Ljava/lang/String;",
        "Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter$VH;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0008\t\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u0002\u0012\u0008\u0012\u00060\u0003R\u00020\u00000\u0001:\u0001\u001aB\u0007\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J&\u0010\t\u001a\u00020\u00082\n\u0010\u0004\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0014J$\u0010\u000f\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u0005H\u0014J\u000e\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u0005R\u001d\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00128\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter;",
        "Lcom/chad/library/adapter4/BaseQuickAdapter;",
        "",
        "Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter$VH;",
        "holder",
        "",
        "position",
        "item",
        "",
        "onBindViewHolder",
        "Landroid/content/Context;",
        "context",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "onCreateViewHolder",
        "pos",
        "toggleSelect",
        "",
        "r",
        "Ljava/util/List;",
        "getSelectList",
        "()Ljava/util/List;",
        "selectList",
        "<init>",
        "()V",
        "VH",
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
.field public final r:Ljava/util/List;
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


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter;->r:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getSelectList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter;->r:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter$VH;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter;->onBindViewHolder(Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter$VH;ILjava/lang/String;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter$VH;ILjava/lang/String;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter$VH;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter$VH;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemDriveFileListBinding;

    move-result-object p1

    .line 4
    iget-object v0, p1, Lcom/onyx/galaxy/note/databinding/ItemDriveFileListBinding;->ivBackupSelect:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter;->r:Ljava/util/List;

    invoke-interface {p0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setSelected(Z)V

    .line 5
    iget-object p0, p1, Lcom/onyx/galaxy/note/databinding/ItemDriveFileListBinding;->tvBackupName:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p0, p1, Lcom/onyx/galaxy/note/databinding/ItemDriveFileListBinding;->tvSpace:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object p3, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getFileSize(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p0, p1, Lcom/onyx/galaxy/note/databinding/ItemDriveFileListBinding;->tvTime:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object p1, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getDATE_FORMAT_YYYYMMDD_HHMMSS_2()Ljava/text/SimpleDateFormat;

    move-result-object p1

    new-instance p3, Ljava/util/Date;

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-direct {p3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, p3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter$VH;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter$VH;
    .locals 6
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

    const-string p1, "parent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter$VH;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter$VH;-><init>(Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter;Landroid/view/ViewGroup;Lcom/onyx/galaxy/note/databinding/ItemDriveFileListBinding;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method

.method public final toggleSelect(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter;->r:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter;->r:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/onyx/galaxy/note/settings/ui/adapter/LocalRestoreFileListAdapter;->r:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method
