.class public final Lcom/onyx/galaxy/note/category/view/adapter/PathPopupAdapter;
.super Lcom/chad/library/adapter4/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/category/view/adapter/PathPopupAdapter$VH;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter4/BaseQuickAdapter<",
        "Lcom/onyx/galaxy/note/category/data/PathEntry;",
        "Lcom/onyx/galaxy/note/category/view/adapter/PathPopupAdapter$VH;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u0002\u0012\u0008\u0012\u00060\u0003R\u00020\u00000\u0001:\u0001\u001dB!\u0012\u0006\u0010\u0014\u001a\u00020\u0005\u0012\u0006\u0010\u0016\u001a\u00020\u0005\u0012\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0017\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ&\u0010\t\u001a\u00020\u00082\n\u0010\u0004\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0014J$\u0010\u000f\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u0005H\u0014J\u0010\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0005H\u0002R\u0014\u0010\u0014\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0016\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0013R\u0016\u0010\u001a\u001a\u0004\u0018\u00010\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/view/adapter/PathPopupAdapter;",
        "Lcom/chad/library/adapter4/BaseQuickAdapter;",
        "Lcom/onyx/galaxy/note/category/data/PathEntry;",
        "Lcom/onyx/galaxy/note/category/view/adapter/PathPopupAdapter$VH;",
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
        "level",
        "l",
        "r",
        "I",
        "iconRes",
        "s",
        "iconBottomRes",
        "",
        "t",
        "Ljava/lang/String;",
        "currId",
        "<init>",
        "(IILjava/lang/String;)V",
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
.field public final r:I

.field public final s:I

.field public final t:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 2
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/PathPopupAdapter;->r:I

    iput p2, p0, Lcom/onyx/galaxy/note/category/view/adapter/PathPopupAdapter;->s:I

    iput-object p3, p0, Lcom/onyx/galaxy/note/category/view/adapter/PathPopupAdapter;->t:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final l(I)I
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/device/R$dimen;->dp_12:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    mul-int/2addr p1, p0

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/galaxy/note/category/view/adapter/PathPopupAdapter$VH;

    check-cast p3, Lcom/onyx/galaxy/note/category/data/PathEntry;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/PathPopupAdapter;->onBindViewHolder(Lcom/onyx/galaxy/note/category/view/adapter/PathPopupAdapter$VH;ILcom/onyx/galaxy/note/category/data/PathEntry;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/onyx/galaxy/note/category/view/adapter/PathPopupAdapter$VH;ILcom/onyx/galaxy/note/category/data/PathEntry;)V
    .locals 4
    .param p1    # Lcom/onyx/galaxy/note/category/view/adapter/PathPopupAdapter$VH;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/category/data/PathEntry;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lcom/onyx/galaxy/note/category/data/PathEntry;->getId()Ljava/lang/String;

    move-result-object p2

    .line 3
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/PathPopupAdapter;->t:Ljava/lang/String;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget v0, Lcom/onyx/android/sdk/skin/R$color;->theme_bg_primary_color_01:I

    .line 5
    invoke-static {v0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v0

    goto :goto_0

    .line 6
    :cond_0
    sget v0, Lcom/onyx/galaxy/note/R$color;->transparent:I

    invoke-static {v0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v0

    .line 7
    :goto_0
    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/replicator/R$integer;->tree_folder_icon_alpha:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v1

    .line 8
    invoke-virtual {p3}, Lcom/onyx/galaxy/note/category/data/PathEntry;->getColor()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    invoke-static {v2, v1}, Lcom/blankj/utilcode/util/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    .line 10
    :goto_1
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    const-string v2, "valueOf(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/PathPopupAdapter$VH;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemPopupPathTitleBinding;

    move-result-object p1

    .line 12
    iget v2, p0, Lcom/onyx/galaxy/note/category/view/adapter/PathPopupAdapter;->r:I

    invoke-static {v2}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 13
    iget-object v3, p1, Lcom/onyx/galaxy/note/databinding/ItemPopupPathTitleBinding;->ivIcon:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14
    iget-object v2, p1, Lcom/onyx/galaxy/note/databinding/ItemPopupPathTitleBinding;->ivIconBottom:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    iget v3, p0, Lcom/onyx/galaxy/note/category/view/adapter/PathPopupAdapter;->s:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;->setImageResource(I)V

    .line 15
    iget-object v2, p1, Lcom/onyx/galaxy/note/databinding/ItemPopupPathTitleBinding;->ivIconBottom:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 16
    iget-object v1, p1, Lcom/onyx/galaxy/note/databinding/ItemPopupPathTitleBinding;->tvTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p3}, Lcom/onyx/galaxy/note/category/data/PathEntry;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v1, p1, Lcom/onyx/galaxy/note/databinding/ItemPopupPathTitleBinding;->tvTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/view/adapter/PathPopupAdapter;->t:Ljava/lang/String;

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {v1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 18
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/databinding/ItemPopupPathTitleBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 19
    iget-object p2, p1, Lcom/onyx/galaxy/note/databinding/ItemPopupPathTitleBinding;->clsContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 20
    invoke-virtual {p3}, Lcom/onyx/galaxy/note/category/data/PathEntry;->getLevel()I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/onyx/galaxy/note/category/view/adapter/PathPopupAdapter;->l(I)I

    move-result p0

    .line 21
    iget-object p3, p1, Lcom/onyx/galaxy/note/databinding/ItemPopupPathTitleBinding;->clsContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p3}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    .line 22
    iget-object v0, p1, Lcom/onyx/galaxy/note/databinding/ItemPopupPathTitleBinding;->clsContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    .line 23
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/ItemPopupPathTitleBinding;->clsContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    .line 24
    invoke-virtual {p2, p0, p3, v0, p1}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/PathPopupAdapter;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/category/view/adapter/PathPopupAdapter$VH;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/category/view/adapter/PathPopupAdapter$VH;
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

    const-string p1, "parent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p3, 0x0

    .line 3
    invoke-static {p1, p2, p3}, Lcom/onyx/galaxy/note/databinding/ItemPopupPathTitleBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ItemPopupPathTitleBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance p2, Lcom/onyx/galaxy/note/category/view/adapter/PathPopupAdapter$VH;

    invoke-direct {p2, p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/PathPopupAdapter$VH;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/PathPopupAdapter;Lcom/onyx/galaxy/note/databinding/ItemPopupPathTitleBinding;)V

    return-object p2
.end method
