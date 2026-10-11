.class public final Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter;
.super Lcom/chad/library/adapter4/BaseDifferAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter$ColorHolder;,
        Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter4/BaseDifferAdapter<",
        "Ljava/lang/Integer;",
        "Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter$ColorHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0018\u0000 #2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0002$#B\u0007\u00a2\u0006\u0004\u0008!\u0010\"J\u001a\u0010\u0007\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00050\u0004J&\u0010\r\u001a\u00020\u00052\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u000bJ)\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00022\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J \u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0002H\u0014R$\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\"\u0010\n\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 \u00a8\u0006%"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter;",
        "Lcom/chad/library/adapter4/BaseDifferAdapter;",
        "",
        "Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter$ColorHolder;",
        "Lkotlin/Function1;",
        "",
        "callback",
        "setColorChangeCallback",
        "",
        "list",
        "selectedPosition",
        "Ljava/lang/Runnable;",
        "commitCallback",
        "setColorData",
        "holder",
        "position",
        "item",
        "onBindViewHolder",
        "(Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter$ColorHolder;ILjava/lang/Integer;)V",
        "Landroid/content/Context;",
        "context",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "onCreateViewHolder",
        "t",
        "Lkotlin/jvm/functions/Function1;",
        "u",
        "I",
        "getSelectedPosition",
        "()I",
        "setSelectedPosition",
        "(I)V",
        "<init>",
        "()V",
        "Companion",
        "ColorHolder",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DATA_SELECT_COLOR:I = 0x7fffffff


# instance fields
.field public t:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public u:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter;->Companion:Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/TemplateDiffCallback;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/view/adapter/TemplateDiffCallback;-><init>()V

    invoke-direct {p0, v0}, Lcom/chad/library/adapter4/BaseDifferAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter;->u:I

    return-void
.end method

.method public static synthetic n(Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter;ILcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter$ColorHolder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter;->o(Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter;ILcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter$ColorHolder;Landroid/view/View;)V

    return-void
.end method

.method public static final o(Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter;ILcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter$ColorHolder;Landroid/view/View;)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$holder"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter;->u:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter;->t:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter$ColorHolder;->getColorView()Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->getColor()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static synthetic setColorData$default(Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter;Ljava/util/List;ILjava/lang/Runnable;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, -0x1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter;->setColorData(Ljava/util/List;ILjava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final getSelectedPosition()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter;->u:I

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter$ColorHolder;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter;->onBindViewHolder(Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter$ColorHolder;ILjava/lang/Integer;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter$ColorHolder;ILjava/lang/Integer;)V
    .locals 3
    .param p1    # Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter$ColorHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    .line 2
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    const v0, 0x7fffffff

    .line 3
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter$ColorHolder;->getColorView()Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;

    move-result-object v0

    sget v1, Lcom/onyx/galaxy/note/R$drawable;->icon_page_margin_color_select:I

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->setFillDrawableRes(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter$ColorHolder;->getColorView()Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->setFillDrawableRes(I)V

    .line 6
    :goto_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter$ColorHolder;->getColorView()Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->setColor(I)V

    .line 7
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter$ColorHolder;->getColorView()Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;

    move-result-object p3

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter;->u:I

    if-ne v0, p2, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {p3, v2}, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->setSelect(Z)V

    .line 8
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter$ColorHolder;->getColorView()Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;

    move-result-object p3

    new-instance v0, Lcom/sunia/HTREnginev2/xsk;

    invoke-direct {v0, p0, p2, p1}, Lcom/sunia/HTREnginev2/xsk;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter;ILcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter$ColorHolder;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter$ColorHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter$ColorHolder;
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

    .line 3
    sget p1, Lcom/onyx/galaxy/note/R$layout;->item_page_margin_color:I

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 4
    new-instance p1, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter$ColorHolder;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter$ColorHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public final setColorChangeCallback(Lkotlin/jvm/functions/Function1;)V
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
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter;->t:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setColorData(Ljava/util/List;ILjava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commitCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput p2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter;->u:I

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    const p2, 0x7fffffff

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, p3}, Lcom/chad/library/adapter4/BaseDifferAdapter;->submitList(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setSelectedPosition(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginColorAdapter;->u:I

    return-void
.end method
