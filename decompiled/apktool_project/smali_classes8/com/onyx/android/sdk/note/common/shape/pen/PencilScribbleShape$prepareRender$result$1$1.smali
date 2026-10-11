.class final Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape$prepareRender$result$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape$prepareRender$result$1;->invoke()Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/pen/NeoPenConfig;",
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
        "it",
        "Lcom/onyx/android/sdk/pen/NeoPenConfig;",
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
.field final synthetic $renderContext:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

.field final synthetic this$0:Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape$prepareRender$result$1$1;->this$0:Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;

    iput-object p2, p0, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape$prepareRender$result$1$1;->$renderContext:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/pen/NeoPenConfig;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape$prepareRender$result$1$1;->invoke(Lcom/onyx/android/sdk/pen/NeoPenConfig;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/onyx/android/sdk/pen/NeoPenConfig;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/pen/NeoPenConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape$prepareRender$result$1$1;->this$0:Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getStrokeWidth()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atLeast(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/pen/NeoPenConfig;->setWidth(F)V

    .line 3
    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape$prepareRender$result$1$1;->$renderContext:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape$prepareRender$result$1$1;->this$0:Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getStrokeColor()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getRenderColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/pen/NeoPenConfig;->setColor(I)V

    return-void
.end method
