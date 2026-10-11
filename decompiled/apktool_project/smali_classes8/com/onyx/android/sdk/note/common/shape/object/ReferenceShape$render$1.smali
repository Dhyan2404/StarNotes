.class final Lcom/onyx/android/sdk/note/common/shape/object/ReferenceShape$render$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/note/common/shape/object/ReferenceShape;->render(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "()Ljava/lang/Boolean;"
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

.field final synthetic this$0:Lcom/onyx/android/sdk/note/common/shape/object/ReferenceShape;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/note/common/shape/object/ReferenceShape;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/object/ReferenceShape$render$1;->this$0:Lcom/onyx/android/sdk/note/common/shape/object/ReferenceShape;

    iput-object p2, p0, Lcom/onyx/android/sdk/note/common/shape/object/ReferenceShape$render$1;->$renderContext:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/shape/object/ReferenceShape$render$1;->this$0:Lcom/onyx/android/sdk/note/common/shape/object/ReferenceShape;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/shape/object/ReferenceShape;->getTargetShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    iget-object v2, p0, Lcom/onyx/android/sdk/note/common/shape/object/ReferenceShape$render$1;->this$0:Lcom/onyx/android/sdk/note/common/shape/object/ReferenceShape;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->isTransparent(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->setTransparent(Lcom/onyx/android/sdk/note/common/shape/Shape;Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/shape/object/ReferenceShape$render$1;->this$0:Lcom/onyx/android/sdk/note/common/shape/object/ReferenceShape;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/shape/object/ReferenceShape;->getTargetShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/object/ReferenceShape$render$1;->$renderContext:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-interface {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeRender;->render(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/object/ReferenceShape$render$1;->invoke()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
