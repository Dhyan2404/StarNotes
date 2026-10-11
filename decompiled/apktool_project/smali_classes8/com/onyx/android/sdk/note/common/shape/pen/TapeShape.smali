.class public Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;
.super Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTapeShape.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TapeShape.kt\ncom/onyx/android/sdk/note/common/shape/pen/TapeShape\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,496:1\n1#2:497\n1855#3,2:498\n1855#3,2:500\n1855#3,2:502\n*S KotlinDebug\n*F\n+ 1 TapeShape.kt\ncom/onyx/android/sdk/note/common/shape/pen/TapeShape\n*L\n339#1:498,2\n359#1:500,2\n371#1:502,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0019\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0008\u0016\u0018\u0000 c2\u00020\u0001:\u0001cB\u0007\u00a2\u0006\u0004\u0008a\u0010bJ\u001a\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0008\u001a\u00020\u0007H\u0002J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u000b\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0018\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u000cH\u0002J\u0018\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u000cH\u0002J\u0010\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u001e\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0003\u001a\u00020\u00022\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012H\u0002JQ\u0010 \u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u00152%\u0008\u0002\u0010\u001f\u001a\u001f\u0012\u0013\u0012\u00110\u001b\u00a2\u0006\u000c\u0008\u001c\u0012\u0008\u0008\u001d\u0012\u0004\u0008\u0008(\u001e\u0012\u0004\u0012\u00020\t\u0018\u00010\u001aH\u0002J\u0010\u0010!\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\"\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010#\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0012\u0010$\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010(\u001a\u00020\'2\u0006\u0010&\u001a\u00020%H\u0002J\u0018\u0010+\u001a\u00020\'2\u0006\u0010&\u001a\u00020%2\u0006\u0010*\u001a\u00020)H\u0002J\u0018\u0010.\u001a\u0004\u0018\u00010,2\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00020,0\u0012H\u0002J \u00102\u001a\u00020\u00042\u0006\u0010/\u001a\u00020\u00172\u0006\u00100\u001a\u00020\u00172\u0006\u00101\u001a\u00020\u0017H\u0002J\u0012\u00103\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\n\u00104\u001a\u0004\u0018\u00010\u000cH\u0002J\u0012\u00105\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\n\u00106\u001a\u0004\u0018\u00010\u000cH\u0002J\u0008\u00107\u001a\u00020\u000cH\u0002J\u001e\u00109\u001a\u00020\u00132\u0006\u00108\u001a\u00020\u00132\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012H\u0002J\u0012\u0010:\u001a\u00020)2\u0008\u0008\u0002\u0010*\u001a\u00020)H\u0002J\u0012\u0010/\u001a\u00020\u00042\u0008\u0008\u0002\u0010;\u001a\u00020)H\u0002J\u0018\u0010>\u001a\u00020\t2\u0006\u0010<\u001a\u00020\u00132\u0006\u0010=\u001a\u00020\u0013H\u0016J\u0010\u0010?\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010@\u001a\u00020\tH\u0016J\u0010\u0010A\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010B\u001a\u00020\'2\u0006\u0010&\u001a\u00020%H\u0016J\u0008\u0010C\u001a\u00020\u000cH\u0016J \u0010D\u001a\u00020\u00042\u0006\u0010/\u001a\u00020\u00172\u0006\u00100\u001a\u00020\u00172\u0006\u00101\u001a\u00020\u0017H\u0016J\u0008\u0010E\u001a\u00020)H\u0016J\u0010\u0010I\u001a\u00020H2\u0006\u0010G\u001a\u00020FH\u0016R\"\u0010;\u001a\u00020)8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008J\u0010K\u001a\u0004\u0008L\u0010M\"\u0004\u0008N\u0010OR\u0014\u0010Q\u001a\u00020)8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008P\u0010KR\u0014\u0010S\u001a\u00020)8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008R\u0010KR\u001b\u0010Y\u001a\u00020T8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008U\u0010V\u001a\u0004\u0008W\u0010XR\u0014\u0010\\\u001a\u00020\u00178\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008Z\u0010[R\u0014\u0010^\u001a\u00020\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008]\u0010[R\u0014\u0010`\u001a\u00020\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008_\u0010[\u00a8\u0006d"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;",
        "Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "renderContext",
        "",
        "checkIntersect",
        "B",
        "Landroid/graphics/Paint$Style;",
        "s",
        "",
        "b",
        "c",
        "Landroid/graphics/Path;",
        "A",
        "path",
        "i",
        "e",
        "d",
        "",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "points",
        "Landroid/graphics/RectF;",
        "p",
        "",
        "fixedHeight",
        "boundingRect",
        "Lkotlin/Function1;",
        "Landroid/graphics/Matrix;",
        "Lkotlin/ParameterName;",
        "name",
        "localMatrix",
        "applyMatrix",
        "f",
        "j",
        "h",
        "a",
        "k",
        "Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;",
        "eraseBean",
        "Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;",
        "D",
        "",
        "subType",
        "E",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shapeList",
        "z",
        "x",
        "y",
        "radius",
        "w",
        "q",
        "n",
        "r",
        "o",
        "l",
        "first",
        "m",
        "u",
        "type",
        "normalizedPoint",
        "screenPoint",
        "onMove",
        "render",
        "updateShapeRect",
        "lowLatencyRender",
        "split",
        "getPath",
        "hitTest",
        "getUsePointCount",
        "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;",
        "embedShapeBean",
        "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;",
        "toPdfShape",
        "J",
        "I",
        "getType",
        "()I",
        "setType",
        "(I)V",
        "K",
        "tapeStrokeStyleWidth",
        "L",
        "shadowColor",
        "Landroid/graphics/Paint;",
        "M",
        "Lkotlin/Lazy;",
        "t",
        "()Landroid/graphics/Paint;",
        "shadowPaint",
        "N",
        "F",
        "shadowDx",
        "O",
        "shadowOffset",
        "P",
        "shadowDy",
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
        "SMAP\nTapeShape.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TapeShape.kt\ncom/onyx/android/sdk/note/common/shape/pen/TapeShape\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,496:1\n1#2:497\n1855#3,2:498\n1855#3,2:500\n1855#3,2:502\n*S KotlinDebug\n*F\n+ 1 TapeShape.kt\ncom/onyx/android/sdk/note/common/shape/pen/TapeShape\n*L\n339#1:498,2\n359#1:500,2\n371#1:502,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static Q:Z


# instance fields
.field public J:I

.field public final K:I

.field public final L:I

.field public final M:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final N:F

.field public final O:F

.field public final P:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->Companion:Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape$Companion;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->Q:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;-><init>()V

    const/16 v0, 0x27

    iput v0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->J:I

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/note/R$dimen;->tape_stroke_style_width:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v1

    iput v1, p0, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->K:I

    sget v1, Lcom/onyx/android/sdk/note/R$color;->tape_shadow_color:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->L:I

    sget-object v1, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape$shadowPaint$2;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape$shadowPaint$2;

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->M:Lkotlin/Lazy;

    sget v1, Lcom/onyx/android/sdk/note/R$dimen;->tape_shadow_width:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->O:F

    sget v1, Lcom/onyx/android/sdk/note/R$dimen;->tape_shadow_width:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->P:F

    return-void
.end method

.method public static synthetic C(Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;ZILjava/lang/Object;)Z
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->B(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Z)Z

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: renderInternal"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic access$isAllTapeClose$cp()Z
    .locals 1

    sget-boolean v0, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->Q:Z

    return v0
.end method

.method public static final synthetic access$setAllTapeClose$cp(Z)V
    .locals 0

    sput-boolean p0, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->Q:Z

    return-void
.end method

.method public static synthetic g(Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Landroid/graphics/Path;FLandroid/graphics/RectF;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 6

    if-nez p7, :cond_2

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const/high16 p3, -0x40800000    # -1.0f

    :cond_0
    move v3, p3

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_1

    const/4 p5, 0x0

    :cond_1
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->f(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Landroid/graphics/Path;FLandroid/graphics/RectF;Lkotlin/jvm/functions/Function1;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: drawPathWithShader"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic v(Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;IILjava/lang/Object;)I
    .locals 0

    if-nez p3, :cond_1

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-static {p0, p1, p3, p2}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->getTapeSubShapeType$default(Lcom/onyx/android/sdk/note/common/shape/Shape;IILjava/lang/Object;)I

    move-result p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->u(I)I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getSplitSubType"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic y(Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;IILjava/lang/Object;)Z
    .locals 0

    if-nez p3, :cond_1

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-static {p0, p1, p3, p2}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->getTapeSubShapeType$default(Lcom/onyx/android/sdk/note/common/shape/Shape;IILjava/lang/Object;)I

    move-result p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->x(I)Z

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: isFreeSubType"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final A(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Landroid/graphics/Path;
    .locals 10

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getRenderPoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getRenderMeasure()Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getStrokeWidthDisplayScale()F

    move-result p1

    div-float/2addr v2, p1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->m(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/util/List;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->mapMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->mapMatrix(Landroid/graphics/Matrix;)V

    :cond_1
    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr v2, p0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v4

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v5

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/onyx/android/sdk/base/utils/MathUtils;->calculateRadian(FFFF)F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/onyx/android/sdk/base/utils/MathUtils;->radianToAngle(F)F

    move-result v4

    invoke-virtual {p0, v3, v2}, Lcom/onyx/android/sdk/base/utils/MathUtils;->calculatePerpendicularX(FF)F

    move-result v5

    invoke-virtual {p0, v3, v2}, Lcom/onyx/android/sdk/base/utils/MathUtils;->calculatePerpendicularY(FF)F

    move-result p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v3

    invoke-virtual {v3, v5, p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->offset(FF)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v6

    invoke-virtual {v6, v5, p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->offset(FF)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v7

    neg-float v5, v5

    neg-float p0, p0

    invoke-virtual {v7, v5, p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->offset(FF)V

    new-instance p0, Landroid/graphics/RectF;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v5

    sub-float/2addr v5, v2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v8

    sub-float/2addr v8, v2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v9

    add-float/2addr v9, v2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    add-float/2addr v1, v2

    invoke-direct {p0, v5, v8, v9, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v5

    sub-float/2addr v5, v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v8

    sub-float/2addr v8, v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v9

    add-float/2addr v9, v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p1

    add-float/2addr p1, v2

    invoke-direct {v1, v5, v8, v9, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result p1

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v2

    invoke-virtual {v0, p1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 p1, 0x42b40000    # 90.0f

    sub-float p1, v4, p1

    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {v0, p0, p1, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    invoke-virtual {v6}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result p0

    invoke-virtual {v6}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p1

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 p0, 0x43870000    # 270.0f

    sub-float/2addr v4, p0

    invoke-virtual {v0, v1, v4, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    invoke-virtual {v7}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result p0

    invoke-virtual {v7}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p1

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    return-object v0
.end method

.method public final B(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Z)Z
    .locals 4

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->isIntersectClipRect(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object p2, Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;

    invoke-virtual {p2, p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;->applyStrokeStyle(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object p2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->s()Landroid/graphics/Paint$Style;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->b(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p0, 0x1

    return p0
.end method

.method public final D(Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;)Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;
    .locals 1

    invoke-super {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;->split(Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;)Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;->isShapeErased()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;->getSplitShapes()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->ensureList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->z(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;->setSplitShapes(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;

    :cond_0
    return-object p1
.end method

.method public final E(Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;I)Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;
    .locals 5

    const/4 v0, 0x7

    if-ne p2, v0, :cond_1

    sget-object p2, Lcom/onyx/android/sdk/note/common/utils/GraphicalShapeSplitter;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/GraphicalShapeSplitter;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->getType()I

    move-result v0

    invoke-virtual {p2, p0, p1, v0}, Lcom/onyx/android/sdk/note/common/utils/GraphicalShapeSplitter;->split(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;I)Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;->getSplitShapes()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_3

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->getStrokeWidth()F

    move-result v2

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getAverageScale(Landroid/graphics/Matrix;)F

    move-result v1

    mul-float/2addr v2, v1

    invoke-interface {v0, v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->setStrokeWidth(F)V

    :cond_0
    new-instance v1, Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPointList;->first()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPointList;->last()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v3

    filled-new-array {v2, v3}, [Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/base/data/TouchPointList;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->setPoints(Lcom/onyx/android/sdk/base/data/TouchPointList;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getPointsBoundingRect()Landroid/graphics/RectF;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/RectKt;->shorterSize(Landroid/graphics/RectF;)F

    move-result p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getStrokeWidth()F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    new-instance p2, Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;

    invoke-direct {p2}, Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/base/data/TouchPoint;->Companion:Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->getPath()Landroid/graphics/Path;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;->parseTouchPointsFromPath$default(Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;Landroid/graphics/Path;IILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;

    new-instance v2, Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/base/data/TouchPointList;-><init>(Ljava/util/List;)V

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->getType()I

    move-result v2

    invoke-virtual {v1, v0, p0, v2}, Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;->cloneNewShapesAndRestMatrix(Ljava/util/List;Lcom/onyx/android/sdk/note/common/shape/Shape;I)Ljava/util/List;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/note/common/shape/Shape;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-interface {v1, v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->setStrokeWidth(F)V

    goto :goto_1

    :cond_2
    invoke-virtual {p2, p0}, Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;->setSplitShapes(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method public final a(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V
    .locals 7

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->k(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Landroid/graphics/Path;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v0, v4, v5, v2}, Lcom/onyx/android/sdk/base/extension/PathKt;->computeBounds$default(Landroid/graphics/Path;ZILjava/lang/Object;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    neg-float v5, v5

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v6

    neg-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->inset(FF)V

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    move-result v2

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    iget v5, p0, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->K:I

    int-to-float v5, v5

    sget-object v6, Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;

    invoke-virtual {v6, p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;->getDisplayScale(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)F

    move-result p0

    mul-float/2addr v5, p0

    sub-float/2addr v1, v5

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance p0, Landroid/graphics/PorterDuffXfermode;

    sget-object p1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, p0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v3, v0, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public final b(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->isTapeStrokeStyle(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->j(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v2, v1}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->getTapeSubShapeType$default(Lcom/onyx/android/sdk/note/common/shape/Shape;IILjava/lang/Object;)I

    move-result v0

    if-eq v0, v2, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->d(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->c(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->d(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V

    :goto_0
    return-void
.end method

.method public final c(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V
    .locals 8

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getRenderPoints()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->m(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/util/List;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v3

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v3

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getRenderMatrix(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    sget-object v3, Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;

    invoke-virtual {v3, p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;->getDisplayScale(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)F

    move-result v3

    div-float v5, v2, v3

    filled-new-array {v1, v0}, [Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->p(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object v6

    new-instance v7, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape$drawLinePathWithRotate$1;

    invoke-direct {v7, v1, v0, p1, v6}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape$drawLinePathWithRotate$1;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Landroid/graphics/RectF;)V

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->f(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Landroid/graphics/Path;FLandroid/graphics/RectF;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final d(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V
    .locals 8

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->k(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Landroid/graphics/Path;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getRenderPoints()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->p(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x14

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->g(Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Landroid/graphics/Path;FLandroid/graphics/RectF;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public final e(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Landroid/graphics/Path;)V
    .locals 5

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->t()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->t()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->L:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->t()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->O:F

    iget v2, p0, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->N:F

    iget v3, p0, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->P:F

    iget v4, p0, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->L:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getCanvas()Landroid/graphics/Canvas;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->t()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final f(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Landroid/graphics/Path;FLandroid/graphics/RectF;Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
            "Landroid/graphics/Path;",
            "F",
            "Landroid/graphics/RectF;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/graphics/Matrix;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getShapeShaderManager()Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-static {p0}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->getTapeShapeFillStyle(Lcom/onyx/android/sdk/note/common/shape/Shape;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;

    invoke-virtual {v5, p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;->getDisplayScale(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)F

    move-result v6

    invoke-virtual {v2, v3, p3, v4, v6}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;->getTapeFillShader(IFLjava/lang/String;F)Lcom/onyx/android/sdk/note/common/data/shape/BitmapShaderReference;

    move-result-object p3

    invoke-virtual {p3}, Lcom/onyx/android/sdk/note/common/data/shape/BitmapShaderReference;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Shader;->getLocalMatrix(Landroid/graphics/Matrix;)Z

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->copy(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v5, p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;->getDisplayScale(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)F

    move-result v3

    invoke-virtual {v5, p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;->getDisplayScale(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {p0, v3, v4, v5}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->getTapeSubShapeType$default(Lcom/onyx/android/sdk/note/common/shape/Shape;IILjava/lang/Object;)I

    move-result v3

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getRenderPoints()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/onyx/android/sdk/geometry/extension/TouchPointKt;->toPointF(Lcom/onyx/android/sdk/base/data/TouchPoint;)Landroid/graphics/PointF;

    move-result-object v5

    :cond_0
    if-eqz v5, :cond_2

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getRenderMatrix(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->mapSelfPoint(Landroid/graphics/Matrix;Landroid/graphics/PointF;)V

    iget v3, v5, Landroid/graphics/PointF;->x:F

    iget v4, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p4}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getRenderMatrix(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixRotateAngel(Landroid/graphics/Matrix;)F

    move-result v3

    neg-float v3, v3

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerY()F

    move-result p4

    invoke-virtual {v2, v3, v4, p4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    if-eqz p5, :cond_3

    invoke-interface {p5, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {p3}, Lcom/onyx/android/sdk/note/common/data/shape/BitmapShaderReference;->getShader()Landroid/graphics/Shader;

    move-result-object p4

    invoke-virtual {p4, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/note/common/data/shape/BitmapShaderReference;->getShader()Landroid/graphics/Shader;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->i(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Landroid/graphics/Path;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_5
    return-void
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v0}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->getTapeSubShapeType$default(Lcom/onyx/android/sdk/note/common/shape/Shape;IILjava/lang/Object;)I

    move-result v0

    if-eq v0, v2, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->l()Landroid/graphics/Path;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->n()Landroid/graphics/Path;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->o()Landroid/graphics/Path;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    if-eqz p0, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_2
    if-nez v0, :cond_3

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    :cond_3
    return-object v0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->J:I

    return p0
.end method

.method public getUsePointCount()I
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->size()I

    move-result p0

    return p0
.end method

.method public final h(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->k(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Landroid/graphics/Path;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v2, p0, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->K:I

    int-to-float v2, v2

    sget-object v3, Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;

    invoke-virtual {v3, p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;->getDisplayScale(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)F

    move-result p0

    mul-float/2addr v2, p0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public hitTest(FFF)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v0}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->getTapeSubShapeType$default(Lcom/onyx/android/sdk/note/common/shape/Shape;IILjava/lang/Object;)I

    move-result v0

    if-eq v0, v2, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    invoke-super {p0, p1, p2, p3}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->hitTest(FFF)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->w(FFF)Z

    move-result p0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeHitTests;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeHitTests;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getPointsBoundingRect()Landroid/graphics/RectF;

    move-result-object v2

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/onyx/android/sdk/note/common/utils/ShapeHitTests;->hitTestRect(Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/RectF;FFF)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final i(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Landroid/graphics/Path;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v0}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->getTapeSubShapeType$default(Lcom/onyx/android/sdk/note/common/shape/Shape;IILjava/lang/Object;)I

    move-result v0

    if-eq v0, v2, :cond_1

    const/4 p2, 0x7

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->A(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Landroid/graphics/Path;

    move-result-object p2

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->getTransformingMatrix(Lcom/onyx/android/sdk/note/common/shape/Shape;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->e(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Landroid/graphics/Path;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->e(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Landroid/graphics/Path;)V

    :goto_0
    return-void
.end method

.method public final j(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v0}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->getTapeSubShapeType$default(Lcom/onyx/android/sdk/note/common/shape/Shape;IILjava/lang/Object;)I

    move-result v0

    if-eq v0, v2, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->a(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->a(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->h(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V

    :goto_0
    return-void
.end method

.method public final k(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Landroid/graphics/Path;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v0}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->getTapeSubShapeType$default(Lcom/onyx/android/sdk/note/common/shape/Shape;IILjava/lang/Object;)I

    move-result v0

    if-eq v0, v2, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;->generateFreeDrawPath(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Landroid/graphics/Path;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->q(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Landroid/graphics/Path;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->r(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Landroid/graphics/Path;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final l()Landroid/graphics/Path;
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils;->renderShape(Landroid/graphics/Matrix;Lcom/onyx/android/sdk/base/data/TouchPointList;)Landroid/graphics/Path;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Landroid/graphics/Path;

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    :cond_0
    return-object p0
.end method

.method public lowLatencyRender(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "renderContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->updateShapeRect()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->B(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Z)Z

    const/4 p0, 0x1

    return p0
.end method

.method public final m(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/util/List;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;)",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;"
        }
    .end annotation

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getCurrentPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p2

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape$getLastPoint$1;

    invoke-direct {v0, p1, p0}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape$getLastPoint$1;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;)V

    invoke-static {p2, v0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->transform(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public final n()Landroid/graphics/Path;
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->m(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/util/List;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p0

    invoke-virtual {v1, v0, p0}, Landroid/graphics/Path;->lineTo(FF)V

    return-object v1
.end method

.method public final o()Landroid/graphics/Path;
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->m(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/util/List;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p0

    invoke-direct {v1, v2, v0, v3, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance p0, Landroid/graphics/Path;

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p0, v1, v0}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    return-object p0
.end method

.method public onMove(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "normalizedPoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "screenPoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->y(Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;->onMove(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    return-void

    :cond_0
    new-instance p2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {p2, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setCurrentPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    return-void
.end method

.method public final p(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Ljava/util/List;)Landroid/graphics/RectF;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;)",
            "Landroid/graphics/RectF;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/data/TouchPointList;->Companion:Lcom/onyx/android/sdk/base/data/TouchPointList$Companion;

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/base/data/TouchPointList$Companion;->getBoundingRect(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object p2

    iget v0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->O:F

    invoke-static {p2, v0}, Lcom/onyx/android/sdk/base/extension/RectKt;->expand(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->P:F

    add-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-object p2
.end method

.method public final q(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Landroid/graphics/Path;
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->n()Landroid/graphics/Path;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getRenderMatrix(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_0
    return-object v0
.end method

.method public final r(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Landroid/graphics/Path;
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->o()Landroid/graphics/Path;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getRenderMatrix(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_0
    return-object v0
.end method

.method public render(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z
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

    invoke-static {p0, p1, v2, v0, v1}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->C(Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;ZILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final s()Landroid/graphics/Paint$Style;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v0}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->getTapeSubShapeType$default(Lcom/onyx/android/sdk/note/common/shape/Shape;IILjava/lang/Object;)I

    move-result p0

    if-eq p0, v2, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    sget-object p0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    goto :goto_0

    :cond_0
    sget-object p0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    goto :goto_0

    :cond_1
    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    :goto_0
    return-object p0
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->J:I

    return-void
.end method

.method public split(Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;)Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "eraseBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->getTapeSubShapeType$default(Lcom/onyx/android/sdk/note/common/shape/Shape;IILjava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->x(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->D(Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;)Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->E(Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;I)Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;->getSplitShapes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->u(I)I

    move-result v3

    invoke-static {p0}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->getTapeShapeFillStyle(Lcom/onyx/android/sdk/note/common/shape/Shape;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->setTapeSubShapeType(Lcom/onyx/android/sdk/note/common/shape/Shape;ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method public final t()Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->M:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Paint;

    return-object p0
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

.method public final u(I)I
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    sget-object p1, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape$getSplitSubType$2;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape$getSplitSubType$2;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElse(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public updateShapeRect()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getPointsBoundingRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setOriginRect(Landroid/graphics/RectF;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setBoundingRect(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v1, p0, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->O:F

    const/high16 v2, 0x40a00000    # 5.0f

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/RectKt;->expand(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->N:F

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget p0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->P:F

    mul-float/2addr p0, v2

    add-float/2addr v1, p0

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public final w(FFF)Z
    .locals 11

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getRenderPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v3, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0, v3, v0}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->m(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/util/List;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    iput-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->applyMatrix(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    iput-object v3, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->applyMatrix(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    iput-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMinScale(Landroid/graphics/Matrix;)F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    sget-object v3, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;

    iget-object v4, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v4

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v5

    iget-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v6

    iget-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v7

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getStrokeWidth()F

    move-result p0

    mul-float/2addr p0, v0

    const/4 v0, 0x2

    int-to-float v0, v0

    div-float/2addr p0, v0

    add-float v10, p3, p0

    move v8, p1

    move v9, p2

    invoke-virtual/range {v3 .. v10}, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;->hitTestLine(FFFFFFF)Z

    move-result p0

    return p0
.end method

.method public final x(I)Z
    .locals 1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final z(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/shape/Shape;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;"
        }
    .end annotation

    move-object p0, p1

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Collection;)I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gt p0, v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->first()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPointList;->last()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPointList;->first()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v3

    if-nez v3, :cond_3

    return-object v1

    :cond_3
    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPointList;->last()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v4

    if-nez v4, :cond_4

    return-object v1

    :cond_4
    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->equalXY(Lcom/onyx/android/sdk/base/data/TouchPoint;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v0

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->addAll(Lcom/onyx/android/sdk/base/data/TouchPointList;)V

    move-object v1, p1

    goto :goto_0

    :cond_5
    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->equalXY(Lcom/onyx/android/sdk/base/data/TouchPoint;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v0

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->addAll(Lcom/onyx/android/sdk/base/data/TouchPointList;)V

    move-object v1, p0

    :cond_6
    :goto_0
    return-object v1
.end method
