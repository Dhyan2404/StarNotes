.class final Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration$paint$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration;-><init>(IIZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/graphics/Paint;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Landroid/graphics/Paint;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration$paint$2;->this$0:Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/graphics/Paint;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration$paint$2;->this$0:Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration;

    .line 3
    invoke-static {p0}, Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration;->access$getDividerColor$p(Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration$paint$2;->invoke()Landroid/graphics/Paint;

    move-result-object p0

    return-object p0
.end method
