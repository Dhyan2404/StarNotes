.class public final Lcom/onyx/galaxy/note/category/view/adapter/template/CoverAdapter$TemplateHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/category/view/adapter/template/CoverAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TemplateHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u00a2\u0006\u0004\u0008\u001c\u0010\u001dR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\"\u0010\u0011\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\"\u0010\u0019\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/view/adapter/template/CoverAdapter$TemplateHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Landroid/widget/TextView;",
        "H",
        "Landroid/widget/TextView;",
        "getTitle",
        "()Landroid/widget/TextView;",
        "setTitle",
        "(Landroid/widget/TextView;)V",
        "title",
        "Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;",
        "I",
        "Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;",
        "getTemplateThumbnailView",
        "()Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;",
        "setTemplateThumbnailView",
        "(Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;)V",
        "templateThumbnailView",
        "Landroid/widget/ImageView;",
        "J",
        "Landroid/widget/ImageView;",
        "getIvSelected",
        "()Landroid/widget/ImageView;",
        "setIvSelected",
        "(Landroid/widget/ImageView;)V",
        "ivSelected",
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
.field public H:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public I:Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public J:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    sget v0, Lcom/onyx/galaxy/note/R$id;->tv_template_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/CoverAdapter$TemplateHolder;->H:Landroid/widget/TextView;

    sget v0, Lcom/onyx/galaxy/note/R$id;->template_thumbnail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/CoverAdapter$TemplateHolder;->I:Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;

    sget v0, Lcom/onyx/galaxy/note/R$id;->iv_template_selected:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/CoverAdapter$TemplateHolder;->J:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final getIvSelected()Landroid/widget/ImageView;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/CoverAdapter$TemplateHolder;->J:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getTemplateThumbnailView()Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/CoverAdapter$TemplateHolder;->I:Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;

    return-object p0
.end method

.method public final getTitle()Landroid/widget/TextView;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/CoverAdapter$TemplateHolder;->H:Landroid/widget/TextView;

    return-object p0
.end method

.method public final setIvSelected(Landroid/widget/ImageView;)V
    .locals 1
    .param p1    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/CoverAdapter$TemplateHolder;->J:Landroid/widget/ImageView;

    return-void
.end method

.method public final setTemplateThumbnailView(Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/CoverAdapter$TemplateHolder;->I:Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;

    return-void
.end method

.method public final setTitle(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/CoverAdapter$TemplateHolder;->H:Landroid/widget/TextView;

    return-void
.end method
