.class final Lcom/onyx/android/sdk/ui/ItemMarginDecoration$getItemOffsets$5;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/ui/ItemMarginDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/jvm/functions/Function4<",
        "-",
        "Landroid/graphics/Rect;",
        "-",
        "Landroid/view/View;",
        "-",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "-",
        "Landroidx/recyclerview/widget/RecyclerView$State;",
        "+",
        "Lkotlin/Unit;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012d\u0010\u0002\u001a`\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0007\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\t\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u000b\u0012\u0013\u0012\u00110\u000c\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\r\u0012\u0004\u0012\u00020\u00010\u0003j\u0002`\u000eH\n\u00a2\u0006\u0002\u0008\u000f"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lkotlin/Function4;",
        "Landroid/graphics/Rect;",
        "Lkotlin/ParameterName;",
        "name",
        "margins",
        "Landroid/view/View;",
        "view",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "parent",
        "Landroidx/recyclerview/widget/RecyclerView$State;",
        "state",
        "Lcom/onyx/android/sdk/ui/MarginSetter;",
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
.field final synthetic $margins:Landroid/graphics/Rect;

.field final synthetic $parent:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic $state:Landroidx/recyclerview/widget/RecyclerView$State;

.field final synthetic $view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/ItemMarginDecoration$getItemOffsets$5;->$margins:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/onyx/android/sdk/ui/ItemMarginDecoration$getItemOffsets$5;->$view:Landroid/view/View;

    iput-object p3, p0, Lcom/onyx/android/sdk/ui/ItemMarginDecoration$getItemOffsets$5;->$parent:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p4, p0, Lcom/onyx/android/sdk/ui/ItemMarginDecoration$getItemOffsets$5;->$state:Landroidx/recyclerview/widget/RecyclerView$State;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/jvm/functions/Function4;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/ItemMarginDecoration$getItemOffsets$5;->invoke(Lkotlin/jvm/functions/Function4;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lkotlin/jvm/functions/Function4;)V
    .locals 3
    .param p1    # Lkotlin/jvm/functions/Function4;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Landroid/graphics/Rect;",
            "-",
            "Landroid/view/View;",
            "-",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "-",
            "Landroidx/recyclerview/widget/RecyclerView$State;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/ui/ItemMarginDecoration$getItemOffsets$5;->$margins:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/onyx/android/sdk/ui/ItemMarginDecoration$getItemOffsets$5;->$view:Landroid/view/View;

    iget-object v2, p0, Lcom/onyx/android/sdk/ui/ItemMarginDecoration$getItemOffsets$5;->$parent:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/ItemMarginDecoration$getItemOffsets$5;->$state:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-interface {p1, v0, v1, v2, p0}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
