.class final Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup$initShapeAttrOption$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;->A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;",
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup$initShapeAttrOption$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup$initShapeAttrOption$1;->invoke(Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup$initShapeAttrOption$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->getPenProperty()Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup$initShapeAttrOption$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;

    invoke-static {v1}, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;->access$getShapeToolType$p(Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;)Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->getShapeType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;->getPenArgsOption(I)Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getWidth()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;->setStrokeWidth(F)V

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup$initShapeAttrOption$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->getPenProperty()Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup$initShapeAttrOption$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;->access$getShapeToolType$p(Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;)Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->getShapeType()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;->getPenArgsOption(I)Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getColor()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;->setColor(I)V

    :goto_1
    return-void
.end method
