.class final Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$showWriteGroupPopup$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->Y(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "shapeToolType",
        "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
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
.field final synthetic $view:Landroid/view/View;

.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$showWriteGroupPopup$1;->$view:Landroid/view/View;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$showWriteGroupPopup$1;->this$0:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 5
    check-cast p1, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$showWriteGroupPopup$1;->invoke(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/editor/data/ShapeToolType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shapeToolType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$showWriteGroupPopup$1;->$view:Landroid/view/View;

    instance-of v1, v0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconGroupView;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconGroupView;

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;->setShapeTool(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$showWriteGroupPopup$1;->this$0:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->access$getPenViewModel$p(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;)Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "penViewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getPenType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$showWriteGroupPopup$1;->this$0:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->access$reportItemClickEvent(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V

    return-void
.end method
