.class final Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow$window$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;-><init>(Lcom/onyx/galaxy/note/editor/ui/CounterBundle;Landroid/app/Activity;Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/hjq/window/EasyWindow<",
        "*>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0006\u0012\u0002\u0008\u00030\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/hjq/window/EasyWindow;",
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow$window$2;->this$0:Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/hjq/window/EasyWindow;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hjq/window/EasyWindow<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow$window$2;->this$0:Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;->access$getActivity$p(Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow$window$2;->this$0:Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;

    invoke-static {v1}, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;->access$getBinding(Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;)Lcom/onyx/galaxy/note/databinding/LayoutCounterTipsViewBinding;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    const-string v2, "getRoot(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow$window$2;->this$0:Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;->access$getWindowDuration$p(Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow;)I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/onyx/galaxy/note/common/extension/EasyWindowKt;->createIndicatorWindow(Landroid/app/Activity;Landroid/view/View;I)Lcom/hjq/window/EasyWindow;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/CountTipsWindow$window$2;->invoke()Lcom/hjq/window/EasyWindow;

    move-result-object p0

    return-object p0
.end method
