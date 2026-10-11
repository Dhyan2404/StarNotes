.class public final Lcom/onyx/android/sdk/universal/editor/view/RectExcerptCreationRenderer$lowLatencyRender$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/universal/editor/display/RenderManager$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/view/RectExcerptCreationRenderer;->lowLatencyRender(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/onyx/android/sdk/universal/editor/view/RectExcerptCreationRenderer$lowLatencyRender$1",
        "Lcom/onyx/android/sdk/universal/editor/display/RenderManager$Renderer;",
        "onDraw",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/view/RectExcerptCreationRenderer;

.field public final synthetic f:Lcom/onyx/android/sdk/base/data/TouchPoint;

.field public final synthetic g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/TouchData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/view/RectExcerptCreationRenderer;Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/view/RectExcerptCreationRenderer;",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/TouchData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/view/RectExcerptCreationRenderer$lowLatencyRender$1;->e:Lcom/onyx/android/sdk/universal/editor/view/RectExcerptCreationRenderer;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/view/RectExcerptCreationRenderer$lowLatencyRender$1;->f:Lcom/onyx/android/sdk/base/data/TouchPoint;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/view/RectExcerptCreationRenderer$lowLatencyRender$1;->g:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/view/RectExcerptCreationRenderer$lowLatencyRender$1;->e:Lcom/onyx/android/sdk/universal/editor/view/RectExcerptCreationRenderer;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/view/RectExcerptCreationRenderer$lowLatencyRender$1;->f:Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/view/RectExcerptCreationRenderer$lowLatencyRender$1;->g:Ljava/util/List;

    invoke-static {v0, v1, p1, p0}, Lcom/onyx/android/sdk/universal/editor/view/RectExcerptCreationRenderer;->access$drawSelectingRect(Lcom/onyx/android/sdk/universal/editor/view/RectExcerptCreationRenderer;Lcom/onyx/android/sdk/base/data/TouchPoint;Landroid/graphics/Canvas;Ljava/util/List;)V

    return-void
.end method
