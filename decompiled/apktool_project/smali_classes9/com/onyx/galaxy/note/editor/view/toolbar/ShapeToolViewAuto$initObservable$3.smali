.class final Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$initObservable$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
        "kotlin.jvm.PlatformType",
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$initObservable$3;->this$0:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$initObservable$3;->invoke(Ljava/util/List;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$initObservable$3;->this$0:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->access$getBinding$p(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;)Lcom/onyx/galaxy/note/databinding/LayoutShapeToolAutoBinding;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutShapeToolAutoBinding;->llShapeToolContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer;->addAllChildView(Ljava/util/List;)V

    .line 3
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$initObservable$3;->this$0:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->access$getRotation$p(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$initObservable$3;->this$0:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->access$getBinding$p(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;)Lcom/onyx/galaxy/note/databinding/LayoutShapeToolAutoBinding;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/LayoutShapeToolAutoBinding;->llShapeToolContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolContainer;

    const-string v1, "llShapeToolContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$initObservable$3;->this$0:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;

    invoke-static {v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->access$getRotation$p(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->rotationAllChildView(Landroid/view/ViewGroup;F)V

    .line 5
    :cond_2
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$initObservable$3;->this$0:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->access$checkRecordTool(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;Ljava/util/List;)V

    return-void
.end method
