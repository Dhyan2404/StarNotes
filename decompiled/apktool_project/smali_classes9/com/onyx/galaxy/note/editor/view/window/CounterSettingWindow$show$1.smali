.class final Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow$show$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->show(Landroid/graphics/Rect;ZLandroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow$show$1;->this$0:Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/hjq/window/EasyWindow;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow$show$1;->invoke(Lcom/hjq/window/EasyWindow;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/hjq/window/EasyWindow;)V
    .locals 1
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
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow$show$1;->this$0:Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->access$getBinding(Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;)Lcom/onyx/galaxy/note/databinding/PopupCounterSettingBinding;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/hjq/window/EasyWindow;->setContentView(Landroid/view/View;)Lcom/hjq/window/EasyWindow;

    const p0, 0x800033

    .line 3
    invoke-virtual {p1, p0}, Lcom/hjq/window/EasyWindow;->setGravity(I)Lcom/hjq/window/EasyWindow;

    return-void
.end method
