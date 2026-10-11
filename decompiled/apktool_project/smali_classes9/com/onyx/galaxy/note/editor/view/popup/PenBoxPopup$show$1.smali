.class final Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$show$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->show(Landroid/app/Activity;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
        "Landroid/graphics/Point;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "dockType",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
        "locationPoint",
        "Landroid/graphics/Point;",
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$show$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$show$1;->invoke$lambda$0(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;)V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->access$getBinding$p(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;)Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;->flyContent:Landroid/widget/FrameLayout;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 10
    check-cast p1, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    check-cast p2, Landroid/graphics/Point;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$show$1;->invoke(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Landroid/graphics/Point;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Landroid/graphics/Point;)V
    .locals 5
    .param p1    # Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Point;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "dockType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locationPoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$show$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    invoke-static {v0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->access$setCurrentDockType$p(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$show$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->access$resetShowView(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;)V

    .line 3
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$show$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->access$resetOrientation(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;)V

    .line 4
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$show$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->access$getPenBoxLocation$p(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;)Lcom/onyx/galaxy/note/editor/data/PenBoxLocationModel;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/onyx/galaxy/note/editor/data/PenBoxLocationModel;->setLocationPoint(Landroid/graphics/Point;)V

    .line 5
    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$show$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    invoke-static {p2}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->access$getPenBoxLocation$p(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;)Lcom/onyx/galaxy/note/editor/data/PenBoxLocationModel;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/onyx/galaxy/note/editor/data/PenBoxLocationModel;->setDockType(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    .line 6
    sget-object p1, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getPenBoxLocation()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p1

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$show$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    invoke-static {p2}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->access$getPenBoxLocation$p(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;)Lcom/onyx/galaxy/note/editor/data/PenBoxLocationModel;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->put(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$show$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->access$getBinding$p(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;)Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "binding"

    if-nez p1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;->flyContent:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->isVisible(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$show$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->access$isVisible$p(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$show$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->access$getBinding$p(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;)Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_1
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;->flyContent:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$show$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    new-instance v2, Lcom/onyx/galaxy/note/editor/view/popup/b;

    invoke-direct {v2, v1}, Lcom/onyx/galaxy/note/editor/view/popup/b;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {p1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9
    :cond_2
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$show$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->access$getBinding$p(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;)Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object p2, p0

    :goto_0
    iget-object p0, p2, Lcom/onyx/galaxy/note/databinding/LayoutPenBoxBinding;->listview:Lcom/onyx/galaxy/note/common/view/ResizableRecyclerView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/ResizableRecyclerView;->restoreScrollOffset()V

    return-void
.end method
