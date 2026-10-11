.class final Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$initObservable$2;
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
        "Ljava/lang/Float;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "kotlin.jvm.PlatformType",
        "invoke",
        "(Ljava/lang/Float;)V"
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

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$initObservable$2;->this$0:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$initObservable$2;->invoke(Ljava/lang/Float;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Float;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$initObservable$2;->this$0:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->access$changeSize(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;F)V

    .line 3
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$initObservable$2;->this$0:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->access$getPenViewModel$p(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;)Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "penViewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getPenType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->ERASER:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    if-ne v0, v1, :cond_1

    .line 4
    sget-object v0, Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;->getEraserWidth()Lcom/onyx/android/sdk/data/utils/FloatOption;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/utils/FloatOption;->put(F)V

    .line 5
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$initObservable$2;->this$0:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeEraserWidthEvent;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeEraserWidthEvent;-><init>(F)V

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->access$postGlobalEvent(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
