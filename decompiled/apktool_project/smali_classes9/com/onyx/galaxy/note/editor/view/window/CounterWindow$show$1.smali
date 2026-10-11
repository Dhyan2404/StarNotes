.class final Lcom/onyx/galaxy/note/editor/view/window/CounterWindow$show$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->show(Landroid/app/Activity;Landroid/graphics/Point;Landroid/graphics/Rect;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/hjq/window/EasyWindow<",
        "*>;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u0006\u0012\u0002\u0008\u00030\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field final synthetic $location:Landroid/graphics/Point;

.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;Landroid/graphics/Point;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow$show$1;->this$0:Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow$show$1;->$location:Landroid/graphics/Point;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/hjq/window/EasyWindow;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow$show$1;->invoke(Lcom/hjq/window/EasyWindow;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/hjq/window/EasyWindow;)V
    .locals 2
    .param p1    # Lcom/hjq/window/EasyWindow;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hjq/window/EasyWindow<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "$this$setupWindow"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow$show$1;->this$0:Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->access$getCounterView$p(Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;)Lcom/onyx/galaxy/note/editor/view/CounterView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hjq/window/EasyWindow;->setContentView(Landroid/view/View;)Lcom/hjq/window/EasyWindow;

    .line 3
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow$show$1;->$location:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v0}, Lcom/hjq/window/EasyWindow;->setXOffset(I)Lcom/hjq/window/EasyWindow;

    .line 4
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow$show$1;->$location:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, p0}, Lcom/hjq/window/EasyWindow;->setYOffset(I)Lcom/hjq/window/EasyWindow;

    .line 5
    invoke-static {p1}, Lcom/onyx/galaxy/note/common/extension/EasyWindowKt;->getSafeWindowParams(Lcom/hjq/window/EasyWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    const/4 v0, -0x2

    .line 6
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 7
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->setCanPlayMoveAnimation(Z)V

    .line 10
    :cond_0
    invoke-virtual {p1, p0}, Lcom/hjq/window/EasyWindow;->setWindowParams(Landroid/view/WindowManager$LayoutParams;)Lcom/hjq/window/EasyWindow;

    return-void
.end method
