.class public Lcom/onyx/android/sdk/note/common/shape/pen/BallpointShape;
.super Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/note/common/shape/pen/BallpointShape$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0016\u0018\u0000 \'2\u00020\u0001:\u0001\'B\u0007\u00a2\u0006\u0004\u0008%\u0010&J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\u0008\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\t\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0008\u0010\r\u001a\u00020\u0002H\u0016J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0016J\u0010\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0011H\u0016R\"\u0010\u001c\u001a\u00020\u00158\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\"\u0010$\u001a\u00020\u001d8\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#\u00a8\u0006("
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/pen/BallpointShape;",
        "Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;",
        "",
        "clearRender",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "renderContext",
        "",
        "prepareRender",
        "render",
        "lowLatencyRender",
        "Lcom/onyx/android/sdk/geometry/data/TouchData;",
        "touchData",
        "onLowLatencyTouchData",
        "clearLowLatencyData",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shape",
        "cloneRenderData",
        "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;",
        "embedShapeBean",
        "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;",
        "toPdfShape",
        "",
        "J",
        "I",
        "getType",
        "()I",
        "setType",
        "(I)V",
        "type",
        "Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;",
        "K",
        "Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;",
        "getShapeRender",
        "()Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;",
        "setShapeRender",
        "(Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;)V",
        "shapeRender",
        "<init>",
        "()V",
        "Companion",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/note/common/shape/pen/BallpointShape$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public J:I

.field public K:Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/note/common/shape/pen/BallpointShape$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/pen/BallpointShape$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/note/common/shape/pen/BallpointShape;->Companion:Lcom/onyx/android/sdk/note/common/shape/pen/BallpointShape$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/BallpointShape;->J:I

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/render/BallpointPenShapeRender;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/note/common/data/render/BallpointPenShapeRender;-><init>(Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/BallpointShape;->K:Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;

    return-void
.end method


# virtual methods
.method public clearLowLatencyData()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/BallpointShape;->getShapeRender()Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;->destroyPenRender()V

    return-void
.end method

.method public clearRender()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/BallpointShape;->getShapeRender()Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;->clearRender()V

    return-void
.end method

.method public cloneRenderData(Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/BallpointShape;->getShapeRender()Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;->cloneRenderData(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    return-void
.end method

.method public getShapeRender()Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/BallpointShape;->K:Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/BallpointShape;->J:I

    return p0
.end method

.method public lowLatencyRender(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "renderContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/BallpointShape;->getShapeRender()Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;->lowLatencyRender(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z

    move-result p0

    return p0
.end method

.method public onLowLatencyTouchData(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/geometry/data/TouchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "renderContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "touchData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/BallpointShape;->getShapeRender()Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/shape/ShapeRender;->onLowLatencyTouchData(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    return-void
.end method

.method public declared-synchronized prepareRender(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    const-string v0, "renderContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/BallpointShape;->getShapeRender()Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRender;->prepareRender(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public render(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "renderContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/BallpointShape;->getShapeRender()Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRender;->render(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z

    move-result p0

    return p0
.end method

.method public setShapeRender(Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/pen/BallpointShape;->K:Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/shape/pen/BallpointShape;->J:I

    return-void
.end method

.method public toPdfShape(Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "embedShapeBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/pen/BallpointShape;->Companion:Lcom/onyx/android/sdk/note/common/shape/pen/BallpointShape$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/BallpointShape;->getShapeRender()Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/note/common/shape/pen/BallpointShape$Companion;->toPdfShape(Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object p0

    return-object p0
.end method
