.class final Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$penArgsChangeListener$1$onSelectedColorList$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$penArgsChangeListener$1;->onSelectedColorList(Lcom/onyx/android/sdk/base/extension/IntList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;",
        "Lcom/onyx/android/sdk/data/utils/JSONObjectOption<",
        "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "penProperty",
        "Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;",
        "penArgsOption",
        "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;",
        "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
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
.field final synthetic $colorIndex:I

.field final synthetic $colorList:Lcom/onyx/android/sdk/base/extension/IntList;

.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/base/extension/IntList;ILcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$penArgsChangeListener$1$onSelectedColorList$1;->$colorList:Lcom/onyx/android/sdk/base/extension/IntList;

    iput p2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$penArgsChangeListener$1$onSelectedColorList$1;->$colorIndex:I

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$penArgsChangeListener$1$onSelectedColorList$1;->this$0:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;

    check-cast p2, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$penArgsChangeListener$1$onSelectedColorList$1;->invoke(Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;Lcom/onyx/android/sdk/data/utils/JSONObjectOption;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;Lcom/onyx/android/sdk/data/utils/JSONObjectOption;)V
    .locals 5
    .param p1    # Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/data/utils/JSONObjectOption;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;",
            "Lcom/onyx/android/sdk/data/utils/JSONObjectOption<",
            "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
            ">;)V"
        }
    .end annotation

    const-string v0, "penProperty"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "penArgsOption"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$penArgsChangeListener$1$onSelectedColorList$1;->$colorList:Lcom/onyx/android/sdk/base/extension/IntList;

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$penArgsChangeListener$1$onSelectedColorList$1;->$colorIndex:I

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 3
    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getType()I

    move-result v1

    .line 4
    new-instance v2, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$penArgsChangeListener$1$onSelectedColorList$1$1;

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$penArgsChangeListener$1$onSelectedColorList$1;->$colorList:Lcom/onyx/android/sdk/base/extension/IntList;

    iget v4, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$penArgsChangeListener$1$onSelectedColorList$1;->$colorIndex:I

    invoke-direct {v2, v3, v0, v4}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$penArgsChangeListener$1$onSelectedColorList$1$1;-><init>(Lcom/onyx/android/sdk/base/extension/IntList;II)V

    invoke-virtual {p2, v2}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->getAndPut(Lkotlin/jvm/functions/Function1;)V

    .line 5
    invoke-virtual {p1, v1}, Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;->getColorListOption(I)Lcom/onyx/android/sdk/data/utils/IntListOption;

    move-result-object p1

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$penArgsChangeListener$1$onSelectedColorList$1;->$colorList:Lcom/onyx/android/sdk/base/extension/IntList;

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/data/utils/IntListOption;->set(Lcom/onyx/android/sdk/base/extension/IntList;)V

    .line 6
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$penArgsChangeListener$1$onSelectedColorList$1;->this$0:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$penArgsChangeListener$1$onSelectedColorList$1;->$colorIndex:I

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getType()I

    move-result p2

    invoke-static {p1, v0, v1, p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;->access$saveColorProperty(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;III)V

    .line 7
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$penArgsChangeListener$1$onSelectedColorList$1;->this$0:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;->access$getPenViewModel$p(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;)Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->getColorSet()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$penArgsChangeListener$1$onSelectedColorList$1;->$colorList:Lcom/onyx/android/sdk/base/extension/IntList;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$penArgsChangeListener$1$onSelectedColorList$1;->this$0:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;->access$getPenViewModel$p(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;)Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    move-result-object p1

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$penArgsChangeListener$1$onSelectedColorList$1;->$colorIndex:I

    invoke-virtual {p1, p0, v0}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->updateIndexAndColor(II)V

    return-void
.end method
