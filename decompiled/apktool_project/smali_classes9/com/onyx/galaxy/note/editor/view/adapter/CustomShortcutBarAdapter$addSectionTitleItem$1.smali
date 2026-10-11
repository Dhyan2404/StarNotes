.class public final Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$addSectionTitleItem$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener<",
        "Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;",
        "Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$SectionTitleItemViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00005\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u0002\u0012\u0008\u0012\u00060\u0003R\u00020\u00040\u0001J&\u0010\u0005\u001a\u00020\u00062\n\u0010\u0007\u001a\u00060\u0003R\u00020\u00042\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u0002H\u0016J$\u0010\u000b\u001a\u00060\u0003R\u00020\u00042\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\tH\u0016\u00a8\u0006\u0011"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$addSectionTitleItem$1",
        "Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;",
        "Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;",
        "Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$SectionTitleItemViewHolder;",
        "Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;",
        "onBind",
        "",
        "holder",
        "position",
        "",
        "item",
        "onCreate",
        "context",
        "Landroid/content/Context;",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
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


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$addSectionTitleItem$1;->a:Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBind(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$SectionTitleItemViewHolder;

    check-cast p3, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$addSectionTitleItem$1;->onBind(Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$SectionTitleItemViewHolder;ILcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;)V

    return-void
.end method

.method public onBind(Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$SectionTitleItemViewHolder;ILcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$SectionTitleItemViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p0, "holder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$SectionTitleItemViewHolder;->getViewBinding()Lcom/onyx/galaxy/note/databinding/ItemCustomShortcutBarTitleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ItemCustomShortcutBarTitleBinding;->tvTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;->getTitleRes()Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreate(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$addSectionTitleItem$1;->onCreate(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$SectionTitleItemViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$SectionTitleItemViewHolder;
    .locals 1
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
    new-instance p3, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$SectionTitleItemViewHolder;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$addSectionTitleItem$1;->a:Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x0

    .line 4
    invoke-static {p1, p2, v0}, Lcom/onyx/galaxy/note/databinding/ItemCustomShortcutBarTitleBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ItemCustomShortcutBarTitleBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p3, p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$SectionTitleItemViewHolder;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;Lcom/onyx/galaxy/note/databinding/ItemCustomShortcutBarTitleBinding;)V

    return-object p3
.end method
