.class final Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape$prepareRender$result$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;->prepareRender(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;",
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

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape$prepareRender$result$1;->this$0:Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;

    iput-object p2, p0, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape$prepareRender$result$1;->$renderContext:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape$prepareRender$result$1;->this$0:Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape$prepareRender$result$1;->$renderContext:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    new-instance v3, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape$prepareRender$result$1$1;

    iget-object v4, p0, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape$prepareRender$result$1;->this$0:Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape$prepareRender$result$1;->$renderContext:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-direct {v3, v4, p0}, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape$prepareRender$result$1$1;-><init>(Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V

    invoke-static {v0, v1, v2, v3}, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;->access$createPenRender(Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Landroid/graphics/Matrix;Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/note/common/data/render/PencilNeoPenRender;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape$prepareRender$result$1;->invoke()Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;

    move-result-object p0

    return-object p0
.end method
