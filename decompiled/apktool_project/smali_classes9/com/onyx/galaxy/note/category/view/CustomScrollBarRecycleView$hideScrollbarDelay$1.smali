.class final Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView$hideScrollbarDelay$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Long;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView$hideScrollbarDelay$1;->this$0:Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView$hideScrollbarDelay$1;->invoke(J)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(J)V
    .locals 6

    .line 2
    iget-object p1, p0, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView$hideScrollbarDelay$1;->this$0:Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;->access$isScrollBarEnable$p(Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView$hideScrollbarDelay$1;->this$0:Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;->access$getBinding$p(Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;)Lcom/onyx/galaxy/note/databinding/CustomScrollBarRecycleViewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/CustomScrollBarRecycleViewBinding;->scrollBar:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView$hideScrollbarDelay$1;->this$0:Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;->access$getShowOrHideAnimator$p(Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView$hideScrollbarDelay$1;->this$0:Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;->access$getBinding$p(Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;)Lcom/onyx/galaxy/note/databinding/CustomScrollBarRecycleViewBinding;

    move-result-object p2

    iget-object v0, p2, Lcom/onyx/galaxy/note/databinding/CustomScrollBarRecycleViewBinding;->scrollBar:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string p2, "scrollBar"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const-wide/16 v3, 0x12c

    new-instance v5, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView$hideScrollbarDelay$1$1;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView$hideScrollbarDelay$1;->this$0:Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;

    invoke-direct {v5, p0}, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView$hideScrollbarDelay$1$1;-><init>(Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;)V

    invoke-static/range {v0 .. v5}, Lcom/onyx/galaxy/note/common/extension/ViewExtKt;->startAlphaAnimation(Landroid/view/View;FFJLkotlin/jvm/functions/Function0;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;->access$setShowOrHideAnimator$p(Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;Landroid/animation/ObjectAnimator;)V

    :cond_2
    :goto_0
    return-void
.end method
