.class final Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$penArgsChangeListener$1$onSelectedColor$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$penArgsChangeListener$1;->onSelectedColor(II)V
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
.field final synthetic $color:I

.field final synthetic $colorIndex:I

.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;II)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$penArgsChangeListener$1$onSelectedColor$1;->this$0:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;

    iput p2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$penArgsChangeListener$1$onSelectedColor$1;->$color:I

    iput p3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$penArgsChangeListener$1$onSelectedColor$1;->$colorIndex:I

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

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$penArgsChangeListener$1$onSelectedColor$1;->invoke(Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;Lcom/onyx/android/sdk/data/utils/JSONObjectOption;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;Lcom/onyx/android/sdk/data/utils/JSONObjectOption;)V
    .locals 2
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

    const-string p1, "penArgsOption"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$penArgsChangeListener$1$onSelectedColor$1$1;

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$penArgsChangeListener$1$onSelectedColor$1;->$color:I

    invoke-direct {p1, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$penArgsChangeListener$1$onSelectedColor$1$1;-><init>(I)V

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->getAndPut(Lkotlin/jvm/functions/Function1;)V

    .line 3
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$penArgsChangeListener$1$onSelectedColor$1;->this$0:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$penArgsChangeListener$1$onSelectedColor$1;->$color:I

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$penArgsChangeListener$1$onSelectedColor$1;->$colorIndex:I

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getType()I

    move-result p2

    invoke-static {p1, v0, v1, p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;->access$saveColorProperty(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;III)V

    .line 4
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$penArgsChangeListener$1$onSelectedColor$1;->this$0:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;->access$getPenViewModel$p(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;)Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;

    move-result-object p1

    iget p2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$penArgsChangeListener$1$onSelectedColor$1;->$colorIndex:I

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$penArgsChangeListener$1$onSelectedColor$1;->$color:I

    invoke-virtual {p1, p2, p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;->updateIndexAndColor(II)V

    return-void
.end method
