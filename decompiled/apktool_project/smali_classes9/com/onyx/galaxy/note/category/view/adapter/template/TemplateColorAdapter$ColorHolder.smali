.class public final Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter$ColorHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ColorHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\rR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter$ColorHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;",
        "H",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;",
        "getColorView",
        "()Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;",
        "setColorView",
        "(Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;)V",
        "colorView",
        "Landroid/view/View;",
        "itemView",
        "<init>",
        "(Landroid/view/View;)V",
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
.field public H:Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    sget v0, Lcom/onyx/galaxy/note/R$id;->color_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter$ColorHolder;->H:Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;

    return-void
.end method


# virtual methods
.method public final getColorView()Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter$ColorHolder;->H:Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;

    return-object p0
.end method

.method public final setColorView(Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/TemplateColorAdapter$ColorHolder;->H:Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;

    return-void
.end method
