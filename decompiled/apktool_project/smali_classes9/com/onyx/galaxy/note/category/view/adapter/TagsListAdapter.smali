.class public final Lcom/onyx/galaxy/note/category/view/adapter/TagsListAdapter;
.super Lcom/chad/library/adapter4/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/category/view/adapter/TagsListAdapter$VH;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter4/BaseQuickAdapter<",
        "Ljava/lang/String;",
        "Lcom/onyx/galaxy/note/category/view/adapter/TagsListAdapter$VH;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u0002\u0012\u0008\u0012\u00060\u0003R\u00020\u00000\u0001:\u0001\u0011B\u0005\u00a2\u0006\u0002\u0010\u0004J&\u0010\u0005\u001a\u00020\u00062\n\u0010\u0007\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u0002H\u0014J$\u0010\u000b\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\tH\u0014\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/view/adapter/TagsListAdapter;",
        "Lcom/chad/library/adapter4/BaseQuickAdapter;",
        "",
        "Lcom/onyx/galaxy/note/category/view/adapter/TagsListAdapter$VH;",
        "()V",
        "onBindViewHolder",
        "",
        "holder",
        "position",
        "",
        "item",
        "onCreateViewHolder",
        "context",
        "Landroid/content/Context;",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "VH",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
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
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/galaxy/note/category/view/adapter/TagsListAdapter$VH;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/TagsListAdapter;->onBindViewHolder(Lcom/onyx/galaxy/note/category/view/adapter/TagsListAdapter$VH;ILjava/lang/String;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/onyx/galaxy/note/category/view/adapter/TagsListAdapter$VH;ILjava/lang/String;)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/category/view/adapter/TagsListAdapter$VH;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p0, "holder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p0, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->getTagRootNote()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object p0

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/base/data/TreeNode;->findNode(Ljava/lang/String;)Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object p0

    .line 3
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/TagsListAdapter$VH;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemTagsListBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/ItemTagsListBinding;->tv:Landroid/widget/TextView;

    const-string p2, "tv"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 4
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->getStyle()Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;->getColor()I

    move-result p2

    .line 7
    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->getContent()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    sget p0, Lcom/onyx/android/sdk/skin/R$color;->theme_text_color_02:I

    invoke-static {p0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    sget-object p0, Lcom/onyx/galaxy/note/utils/TagColorUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/TagColorUtils;

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/utils/TagColorUtils;->generateTagDrawable(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/TagsListAdapter;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/category/view/adapter/TagsListAdapter$VH;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/category/view/adapter/TagsListAdapter$VH;
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
    new-instance p1, Lcom/onyx/galaxy/note/category/view/adapter/TagsListAdapter$VH;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/onyx/galaxy/note/category/view/adapter/TagsListAdapter$VH;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/TagsListAdapter;Landroid/view/ViewGroup;Lcom/onyx/galaxy/note/databinding/ItemTagsListBinding;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method
