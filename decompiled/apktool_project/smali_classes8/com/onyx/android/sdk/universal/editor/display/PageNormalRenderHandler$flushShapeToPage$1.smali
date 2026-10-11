.class final Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$flushShapeToPage$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->r(Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "invoke",
        "(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Ljava/lang/Boolean;"
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
.field final synthetic $shapeFlushInfo:Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$flushShapeToPage$1;->$shapeFlushInfo:Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Ljava/lang/Boolean;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$flushShapeToPage$1;->$shapeFlushInfo:Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;->getShapeReference()Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/FlushShapeReference;->getShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRender;->lowLatencyRender(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$flushShapeToPage$1;->invoke(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
