.class public final Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter;
.super Lcom/chad/library/adapter4/BaseDifferAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter$ColorHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter4/BaseDifferAdapter<",
        "Ljava/lang/Integer;",
        "Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter$ColorHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001%B\u0011\u0012\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0018\u00a2\u0006\u0004\u0008$\u0010\u001eJ\u001a\u0010\u0007\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00050\u0004J%\u0010\u000b\u001a\u00020\u00052\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00082\u0008\u0010\n\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ)\u0010\u0010\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u00022\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J \u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0002H\u0014R$\u0010\u001f\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u0016\u0010\n\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R$\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#\u00a8\u0006&"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter;",
        "Lcom/chad/library/adapter4/BaseDifferAdapter;",
        "",
        "Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter$ColorHolder;",
        "Lkotlin/Function1;",
        "",
        "callback",
        "setColorChangeCallback",
        "",
        "list",
        "selectColor",
        "setColorData",
        "(Ljava/util/List;Ljava/lang/Integer;)V",
        "holder",
        "position",
        "item",
        "onBindViewHolder",
        "(Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter$ColorHolder;ILjava/lang/Integer;)V",
        "Landroid/content/Context;",
        "context",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "onCreateViewHolder",
        "Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;",
        "t",
        "Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;",
        "getTemplateViewModel",
        "()Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;",
        "setTemplateViewModel",
        "(Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;)V",
        "templateViewModel",
        "u",
        "I",
        "v",
        "Lkotlin/jvm/functions/Function1;",
        "<init>",
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


# instance fields
.field public t:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public u:I

.field public v:Lkotlin/jvm/functions/Function1;
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


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/TemplateDiffCallback;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/view/adapter/TemplateDiffCallback;-><init>()V

    invoke-direct {p0, v0}, Lcom/chad/library/adapter4/BaseDifferAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter;->t:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    const/4 p1, -0x1

    iput p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter;->u:I

    return-void
.end method

.method public static synthetic n(Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter;Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter$ColorHolder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter;->o(Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter;Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter$ColorHolder;Landroid/view/View;)V

    return-void
.end method

.method public static final o(Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter;Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter$ColorHolder;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter$ColorHolder;->getColorView()Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->getColor()I

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter;->u:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter;->v:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter;->u:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public final getTemplateViewModel()Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter;->t:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    return-object p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter$ColorHolder;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter;->onBindViewHolder(Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter$ColorHolder;ILjava/lang/Integer;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter$ColorHolder;ILjava/lang/Integer;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter$ColorHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 2
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 3
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter$ColorHolder;->getColorView()Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->setColor(I)V

    .line 4
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter$ColorHolder;->getColorView()Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;

    move-result-object p3

    iget v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter;->u:I

    if-ne v0, p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p3, p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;->setSelect(Z)V

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter$ColorHolder;->getColorView()Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;

    move-result-object p2

    new-instance p3, Lcom/sunia/HTREnginev2/uan;

    invoke-direct {p3, p0, p1}, Lcom/sunia/HTREnginev2/uan;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter;Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter$ColorHolder;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter$ColorHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter$ColorHolder;
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
    sget p1, Lcom/onyx/galaxy/note/R$layout;->item_template_color:I

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 4
    new-instance p1, Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter$ColorHolder;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter$ColorHolder;-><init>(Landroid/view/View;)V

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

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter;->v:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setColorData(Ljava/util/List;Ljava/lang/Integer;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    iput p2, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter;->u:I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter4/BaseDifferAdapter;->submitList(Ljava/util/List;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final setTemplateViewModel(Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter;->t:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    return-void
.end method
