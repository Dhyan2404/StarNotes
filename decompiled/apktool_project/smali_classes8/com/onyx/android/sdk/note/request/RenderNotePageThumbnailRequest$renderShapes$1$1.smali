.class final Lcom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest$renderShapes$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest;->m(Ljava/util/List;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "invoke",
        "(Lcom/onyx/android/sdk/note/common/shape/Shape;)Ljava/lang/Boolean;"
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

.field final synthetic $targetShapeId:Ljava/lang/String;

.field final synthetic this$0:Lcom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest$renderShapes$1$1;->$renderContext:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iput-object p2, p0, Lcom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest$renderShapes$1$1;->this$0:Lcom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest;

    iput-object p3, p0, Lcom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest$renderShapes$1$1;->$targetShapeId:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onyx/android/sdk/note/common/shape/Shape;)Ljava/lang/Boolean;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "$this$runCatching"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest$renderShapes$1$1;->$renderContext:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-interface {p1, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeRender;->render(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z

    .line 3
    iget-object p1, p0, Lcom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest$renderShapes$1$1;->this$0:Lcom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest;->getArgs()Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->getRenderedShapeIds()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest$renderShapes$1$1;->$targetShapeId:Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest$renderShapes$1$1;->invoke(Lcom/onyx/android/sdk/note/common/shape/Shape;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
