.class public final Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;
.super Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPencilScribbleShape.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PencilScribbleShape.kt\ncom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,249:1\n1855#2,2:250\n1855#2,2:252\n117#3:254\n*S KotlinDebug\n*F\n+ 1 PencilScribbleShape.kt\ncom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape\n*L\n141#1:250,2\n155#1:252,2\n235#1:254\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 ?2\u00020\u0001:\u0001?B\u0007\u00a2\u0006\u0004\u0008=\u0010>J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\u0008\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0008\u0010\t\u001a\u00020\u0006H\u0016J\u0008\u0010\n\u001a\u00020\u0006H\u0016J\u0018\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0006H\u0016J\u0008\u0010\r\u001a\u00020\u0002H\u0016J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0017J\u0010\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0016J\u0008\u0010\u0013\u001a\u00020\u0012H\u0016J\u0010\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0015H\u0016J\u0008\u0010\u0018\u001a\u00020\u0002H\u0016J\u0010\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001a\u001a\u00020\u0019H\u0016J\u0008\u0010\u001d\u001a\u00020\u0012H\u0016J\u0010\u0010\u001e\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J4\u0010%\u001a\u0004\u0018\u00010$2\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010 \u001a\u00020\u001f2\u0016\u0008\u0002\u0010#\u001a\u0010\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\u0002\u0018\u00010!H\u0003J\u001c\u0010(\u001a\u0004\u0018\u00010\'2\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010&\u001a\u00020\u0006H\u0002J\u0008\u0010)\u001a\u00020\u0002H\u0002J\u001e\u0010+\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00020*H\u0002J\u0010\u0010,\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002R\"\u00103\u001a\u00020\u00128\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008-\u0010.\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R\u0018\u00106\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00084\u00105R\u0018\u0010:\u001a\u0004\u0018\u0001078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00088\u00109R\u0014\u0010<\u001a\u00020\u00128BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008;\u00100\u00a8\u0006@"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;",
        "Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;",
        "",
        "clearRender",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "renderContext",
        "",
        "prepareRender",
        "render",
        "useLowLatencyFlush",
        "readyToLowLatencyFlush",
        "reset",
        "lowLatencyFlush",
        "resetLowLatencyData",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shape",
        "cloneLowLatencyData",
        "cloneRenderData",
        "",
        "getRenderPointSize",
        "lowLatencyRender",
        "Lcom/onyx/android/sdk/geometry/data/TouchData;",
        "touchData",
        "onLowLatencyTouchData",
        "clearLowLatencyData",
        "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;",
        "embedShapeBean",
        "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;",
        "toPdfShape",
        "getUsePointCount",
        "f",
        "Landroid/graphics/Matrix;",
        "matrix",
        "Lkotlin/Function1;",
        "Lcom/onyx/android/sdk/pen/NeoPenConfig;",
        "config",
        "Lcom/onyx/android/sdk/note/common/data/render/PencilNeoPenRender;",
        "c",
        "force",
        "Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;",
        "g",
        "e",
        "Lkotlin/Function0;",
        "b",
        "a",
        "J",
        "I",
        "getType",
        "()I",
        "setType",
        "(I)V",
        "type",
        "K",
        "Lcom/onyx/android/sdk/note/common/data/render/PencilNeoPenRender;",
        "neoPenRender",
        "Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;",
        "L",
        "Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;",
        "penResults",
        "i",
        "penType",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPencilScribbleShape.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PencilScribbleShape.kt\ncom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,249:1\n1855#2,2:250\n1855#2,2:252\n117#3:254\n*S KotlinDebug\n*F\n+ 1 PencilScribbleShape.kt\ncom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape\n*L\n141#1:250,2\n155#1:252,2\n235#1:254\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final M:I = 0x3e8


# instance fields
.field public J:I

.field public K:Lcom/onyx/android/sdk/note/common/data/render/PencilNeoPenRender;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public volatile L:Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;->Companion:Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;-><init>()V

    const/16 v0, 0x2e

    iput v0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;->J:I

    return-void
.end method

.method public static final synthetic access$createPenRender(Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Landroid/graphics/Matrix;Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/note/common/data/render/PencilNeoPenRender;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;->c(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Landroid/graphics/Matrix;Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/note/common/data/render/PencilNeoPenRender;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$drawCharcoal(Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;->f(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V

    return-void
.end method

.method public static synthetic d(Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Landroid/graphics/Matrix;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/onyx/android/sdk/note/common/data/render/PencilNeoPenRender;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getRenderMatrix(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Landroid/graphics/Matrix;

    move-result-object p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;->c(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Landroid/graphics/Matrix;Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/note/common/data/render/PencilNeoPenRender;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;ZILjava/lang/Object;)Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;->g(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Z)Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;->applyStrokeStyle(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final b(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;->a(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    throw p0
.end method

.method public final c(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Landroid/graphics/Matrix;Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/note/common/data/render/PencilNeoPenRender;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
            "Landroid/graphics/Matrix;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/pen/NeoPenConfig;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/onyx/android/sdk/note/common/data/render/PencilNeoPenRender;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/pen/NeoPencilPen;->Companion:Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion;->defaultPenConfig()Lcom/onyx/android/sdk/pen/NeoPenConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;->i()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/pen/NeoPenConfig;->setType(I)V

    sget-object v2, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    sget-object v3, Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;

    invoke-virtual {v3, p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;->getRenderStrokeWidth(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1}, Lcom/onyx/android/sdk/pen/NeoPenConfig;->getMinWidth()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atLeast(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/pen/NeoPenConfig;->setWidth(F)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getStrokeColor()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getRenderColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/pen/NeoPenConfig;->setColor(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeCreateArgs()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->getPressureSensitivity()F

    move-result p1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/pen/NeoPenConfig;->setPressureSensitivity(F)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeCreateArgs()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->getAlphaFactor()F

    move-result p1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/pen/NeoPenConfig;->setAlphaFactor(F)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeCreateArgs()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->getDpi()F

    move-result p1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/pen/NeoPenConfig;->setDpi(F)V

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getScaleX(Landroid/graphics/Matrix;)F

    move-result p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeCreateArgs()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->getDisplayScale()F

    move-result v2

    div-float/2addr p1, v2

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/pen/NeoPenConfig;->setDisplayScaleX(F)V

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getScaleY(Landroid/graphics/Matrix;)F

    move-result p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeCreateArgs()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->getDisplayScale()F

    move-result p2

    div-float/2addr p1, p2

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/pen/NeoPenConfig;->setDisplayScaleY(F)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeCreateArgs()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->getTiltConfig()Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/pen/NeoPenConfig;->setTiltEnabled(Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;->getTiltScale()F

    move-result p0

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/pen/NeoPenConfig;->setTiltScale(F)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion;->create(Lcom/onyx/android/sdk/pen/NeoPenConfig;)Lcom/onyx/android/sdk/pen/NeoPencilPen;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    new-instance p1, Lcom/onyx/android/sdk/note/common/data/render/PencilNeoPenRender;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/note/common/data/render/PencilNeoPenRender;-><init>(Lcom/onyx/android/sdk/pen/NeoPencilPen;)V

    return-object p1
.end method

.method public clearLowLatencyData()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;->e()V

    return-void
.end method

.method public clearRender()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;->Companion:Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults$Companion;

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;->L:Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults$Companion;->clearCache(Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;->L:Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;

    return-void
.end method

.method public cloneLowLatencyData(Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation

    const-string v0, "shape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;->e()V

    iget-object v0, p1, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;->K:Lcom/onyx/android/sdk/note/common/data/render/PencilNeoPenRender;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;->getNeoPen()Lcom/onyx/android/sdk/pen/NeoPen;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    instance-of v2, v0, Lcom/onyx/android/sdk/pen/NeoPencilPen;

    if-eqz v2, :cond_3

    check-cast v0, Lcom/onyx/android/sdk/pen/NeoPencilPen;

    goto :goto_2

    :cond_3
    move-object v0, v1

    :goto_2
    if-nez v0, :cond_4

    return-void

    :cond_4
    sget-object v2, Lcom/onyx/android/sdk/pen/NeoPencilPen;->Companion:Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/pen/NeoPencilPen;->getMaskGenerator()Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BrushMaskGenerator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BrushMaskGenerator;->getConfig()Lcom/onyx/android/sdk/pen/NeoPenConfig;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion;->create(Lcom/onyx/android/sdk/pen/NeoPenConfig;)Lcom/onyx/android/sdk/pen/NeoPencilPen;

    move-result-object v0

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v2, Lcom/onyx/android/sdk/note/common/data/render/PencilNeoPenRender;

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/note/common/data/render/PencilNeoPenRender;-><init>(Lcom/onyx/android/sdk/pen/NeoPencilPen;)V

    iput-object v2, p0, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;->K:Lcom/onyx/android/sdk/note/common/data/render/PencilNeoPenRender;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;->getPenResults()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_7

    iget-object p1, p1, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;->K:Lcom/onyx/android/sdk/note/common/data/render/PencilNeoPenRender;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;->getPenResults()Ljava/util/ArrayList;

    move-result-object v1

    :cond_6
    invoke-static {p0, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    :cond_7
    return-void
.end method

.method public cloneRenderData(Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;->L:Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;->getResults()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;->getPrecision()Lcom/onyx/android/sdk/pen/PenPrecision;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;->getResults()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;-><init>(Lcom/onyx/android/sdk/pen/PenPrecision;Ljava/util/List;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;->L:Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;

    :cond_3
    :goto_1
    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;->K:Lcom/onyx/android/sdk/note/common/data/render/PencilNeoPenRender;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;->destroyPen()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;->K:Lcom/onyx/android/sdk/note/common/data/render/PencilNeoPenRender;

    return-void
.end method

.method public final f(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V
    .locals 7

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->isFillRenderType()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;->drawPath(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;->L:Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;->prepareRender(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z

    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;->getRenderStrokeWidth(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)F

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getStrokeWidth()F

    move-result v1

    div-float/2addr v0, v1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getRenderMatrix(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;->L:Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;->getResults()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/Pair;

    invoke-virtual {v4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/onyx/android/sdk/pen/PenBrushResult;

    if-eqz v5, :cond_3

    check-cast v4, Lcom/onyx/android/sdk/pen/PenBrushResult;

    goto :goto_1

    :cond_3
    move-object v4, v3

    :goto_1
    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/pen/PenBrushResult;->setEnabledClipRect(Z)V

    invoke-virtual {v4, v1}, Lcom/onyx/android/sdk/pen/PenBrushResult;->setMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v4, v0}, Lcom/onyx/android/sdk/pen/PenBrushResult;->setPointSizeScale(F)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getStrokeWidth()F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getStrokeWidth()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/pen/PenBrushResult;->setWidthDeltaScale(F)V

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/onyx/android/sdk/pen/PenResult;->Companion:Lcom/onyx/android/sdk/pen/PenResult$Companion;

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;->L:Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;->getResults()Ljava/util/List;

    move-result-object v3

    :cond_6
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {v0, v3, p0, p1}, Lcom/onyx/android/sdk/pen/PenResult$Companion;->render(Ljava/util/List;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final g(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Z)Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;
    .locals 7

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;->K:Lcom/onyx/android/sdk/note/common/data/render/PencilNeoPenRender;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;->e()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;->a(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;->d(Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Landroid/graphics/Matrix;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/onyx/android/sdk/note/common/data/render/PencilNeoPenRender;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;->K:Lcom/onyx/android/sdk/note/common/data/render/PencilNeoPenRender;

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;->K:Lcom/onyx/android/sdk/note/common/data/render/PencilNeoPenRender;

    return-object p0
.end method

.method public getRenderPointSize()I
    .locals 5

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;->L:Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;->getResults()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/onyx/android/sdk/pen/PenBrushResult;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/onyx/android/sdk/pen/PenBrushResult;

    goto :goto_1

    :cond_0
    move-object v3, v1

    :goto_1
    sget-object v4, Lcom/onyx/android/sdk/pen/PenBrushResult;->Companion:Lcom/onyx/android/sdk/pen/PenBrushResult$Companion;

    invoke-virtual {v4, v3}, Lcom/onyx/android/sdk/pen/PenBrushResult$Companion;->getPointsCount(Lcom/onyx/android/sdk/pen/PenBrushResult;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;->L:Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;->getResults()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Pair;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/pen/PenResult;

    goto :goto_2

    :cond_2
    move-object p0, v1

    :goto_2
    instance-of v0, p0, Lcom/onyx/android/sdk/pen/PenBrushResult;

    if-eqz v0, :cond_3

    move-object v1, p0

    check-cast v1, Lcom/onyx/android/sdk/pen/PenBrushResult;

    :cond_3
    sget-object p0, Lcom/onyx/android/sdk/pen/PenBrushResult;->Companion:Lcom/onyx/android/sdk/pen/PenBrushResult$Companion;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/pen/PenBrushResult$Companion;->getPointsCount(Lcom/onyx/android/sdk/pen/PenBrushResult;)I

    move-result p0

    add-int/2addr v2, p0

    return v2
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;->J:I

    return p0
.end method

.method public getUsePointCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;->getRenderPointSize()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final i()I
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeCreateArgs()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->getPenAttrs()Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;->getTexture()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x5

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    :goto_0
    return p0
.end method

.method public lowLatencyFlush(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Z)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "renderContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;->K:Lcom/onyx/android/sdk/note/common/data/render/PencilNeoPenRender;

    invoke-virtual {p0, p1, v0, p2}, Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;->lowLatencyFlush(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;Z)Z

    move-result p0

    return p0
.end method

.method public lowLatencyRender(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "renderContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;->h(Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;ZILjava/lang/Object;)Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;

    move-result-object p0

    if-nez p0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;->render(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    const/4 p0, 0x1

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

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/TouchData;->isTouchDown()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;->g(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Z)Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;->onTouchData(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    return-void
.end method

.method public declared-synchronized prepareRender(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    const-string v0, "renderContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->isFillRenderType()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    sget-object v0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->Companion:Lcom/onyx/android/sdk/pen/NeoPenConfig$Companion;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/pen/NeoPenConfig$Companion;->getPenPrecision(F)Lcom/onyx/android/sdk/pen/PenPrecision;

    move-result-object v0

    sget-object v2, Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;->Companion:Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults$Companion;

    iget-object v3, p0, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;->L:Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;

    invoke-virtual {v2, v3, v0}, Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults$Companion;->isValid(Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;Lcom/onyx/android/sdk/pen/PenPrecision;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    :try_start_2
    sget-object v1, Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;

    new-instance v3, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape$prepareRender$result$1;

    invoke-direct {v3, p0, p1}, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape$prepareRender$result$1;-><init>(Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V

    invoke-virtual {v1, p0, v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;->preparePenResults(Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;Lkotlin/jvm/functions/Function0;)Ljava/util/List;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_2

    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :cond_2
    :try_start_3
    sget-object v1, Lcom/onyx/android/sdk/pen/PenResult;->Companion:Lcom/onyx/android/sdk/pen/PenResult$Companion;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/pen/PenResult$Companion;->clearCache(Ljava/util/List;)V

    new-instance v1, Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;

    invoke-direct {v1, v0, p1}, Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;-><init>(Lcom/onyx/android/sdk/pen/PenPrecision;Ljava/util/List;)V

    iput-object v1, p0, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;->L:Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;

    iget-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;->L:Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;

    invoke-virtual {v2, p1, v0}, Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults$Companion;->isValid(Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;Lcom/onyx/android/sdk/pen/PenPrecision;)Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public readyToLowLatencyFlush()Z
    .locals 2

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;->K:Lcom/onyx/android/sdk/note/common/data/render/PencilNeoPenRender;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/PencilNeoPenRender;->getBrushPointCount()I

    move-result p0

    const/16 v1, 0x3e8

    if-lt p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public render(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "renderContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->isIntersectClipRect(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    new-instance v0, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape$render$1;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape$render$1;-><init>(Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;->b(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lkotlin/jvm/functions/Function0;)V

    const/4 p0, 0x1

    return p0
.end method

.method public resetLowLatencyData()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;->K:Lcom/onyx/android/sdk/note/common/data/render/PencilNeoPenRender;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/PencilNeoPenRender;->reset()V

    :cond_0
    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;->J:I

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

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->createImagePdfShape(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object p0

    return-object p0
.end method

.method public useLowLatencyFlush()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
