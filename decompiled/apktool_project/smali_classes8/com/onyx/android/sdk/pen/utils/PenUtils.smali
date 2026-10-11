.class public final Lcom/onyx/android/sdk/pen/utils/PenUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0014\n\u0002\u0008\u0002\n\u0002\u0010\u0013\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0014\n\u0002\u0010\u0008\n\u0002\u0008 \u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008b\u0010cJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006J,\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\u0012\u001a\u00020\u0011J+\u0010\u0018\u001a\u0012\u0012\u0004\u0012\u00020\u000f0\u0016j\u0008\u0012\u0004\u0012\u00020\u000f`\u00172\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u001c\u0010\u001d\u001a\u00020\u001c2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\u001b\u001a\u00020\u001aJ\u001c\u0010 \u001a\u0004\u0018\u00010\u001f2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u000f2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001aJ\u0018\u0010!\u001a\u00020\u001f2\u0006\u0010\u001e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001aJ\u001e\u0010!\u001a\u00020\u001f2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001aJ\u000e\u0010#\u001a\u00020\u001a2\u0006\u0010\"\u001a\u00020\u001aJ\u000e\u0010%\u001a\u00020\u001a2\u0006\u0010$\u001a\u00020\u001aJ\u001e\u0010)\u001a\u0004\u0018\u00010&*\u0004\u0018\u00010&2\u0006\u0010\'\u001a\u00020\u001a2\u0006\u0010(\u001a\u00020\u001aJ\u000c\u0010*\u001a\u00020\u001a*\u0004\u0018\u00010&J\u000c\u0010+\u001a\u00020\u001a*\u0004\u0018\u00010&J\u000c\u0010,\u001a\u00020\u001c*\u0004\u0018\u00010&J\n\u0010-\u001a\u00020\u001a*\u00020\u001cJ\n\u0010.\u001a\u00020\u001a*\u00020\u001cR\u0014\u00100\u001a\u00020/8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u00080\u00101R\u0014\u00102\u001a\u00020\u001a8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u00082\u00103R\u0014\u00105\u001a\u00020\u001a8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u00084\u00103R\u0018\u00108\u001a\u0004\u0018\u00010\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00086\u00107R\u0014\u00109\u001a\u00020\u001a8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u00089\u00103R\u0014\u0010:\u001a\u00020\u001a8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008:\u00103R\u0014\u0010;\u001a\u00020\u001a8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008;\u00103R\u0014\u0010<\u001a\u00020\u001a8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008<\u00103R\u0014\u0010=\u001a\u00020\u001a8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008=\u00103R\u0014\u0010>\u001a\u00020\u001a8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008>\u00103R\u0014\u0010?\u001a\u00020\u001a8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008?\u00103R\u0014\u0010@\u001a\u00020\u001a8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008@\u00103R\u0014\u0010A\u001a\u00020\u001a8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008A\u00103R\u0014\u0010C\u001a\u00020\u001a8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008B\u00103R\u0014\u0010E\u001a\u00020D8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008E\u0010FR\u0014\u0010G\u001a\u00020\u001a8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008G\u00103R\u0017\u0010K\u001a\u00020\u001a8\u0006\u00a2\u0006\u000c\n\u0004\u0008H\u00103\u001a\u0004\u0008I\u0010JR\u0014\u0010L\u001a\u00020\u001a8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008L\u00103R\u0014\u0010M\u001a\u00020\u001a8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008M\u00103R\u0014\u0010N\u001a\u00020\u001a8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008N\u00103R\u0014\u0010O\u001a\u00020\u001a8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008O\u00103R\u0014\u0010P\u001a\u00020\u001a8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008P\u00103R\u0014\u0010Q\u001a\u00020\u001a8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008Q\u00103R\u0014\u0010R\u001a\u00020\u001a8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008R\u00103R\u0014\u0010S\u001a\u00020\u001a8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008S\u00103R\u0014\u0010T\u001a\u00020\u001a8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008T\u00103R\u0014\u0010U\u001a\u00020\u001a8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008U\u00103R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008V\u0010WR\u0011\u0010Y\u001a\u00020\u001a8F\u00a2\u0006\u0006\u001a\u0004\u0008X\u0010JR\u0011\u0010[\u001a\u00020\u001a8F\u00a2\u0006\u0006\u001a\u0004\u0008Z\u0010JR\u0011\u0010]\u001a\u00020\u001a8F\u00a2\u0006\u0006\u001a\u0004\u0008\\\u0010JR\u0011\u0010_\u001a\u00020\u001a8F\u00a2\u0006\u0006\u001a\u0004\u0008^\u0010JR\u0011\u0010a\u001a\u00020\u001a8F\u00a2\u0006\u0006\u001a\u0004\u0008`\u0010J\u00a8\u0006d"
    }
    d2 = {
        "Lcom/onyx/android/sdk/pen/utils/PenUtils;",
        "",
        "Lcom/onyx/android/sdk/bean/DefaultPenParams;",
        "defaultPenParams",
        "",
        "initDefaultPenParams",
        "Landroid/graphics/Rect;",
        "drawRect",
        "Landroid/graphics/Bitmap;",
        "ensurePenBitmapCreated",
        "Landroid/graphics/Canvas;",
        "canvas",
        "Landroid/graphics/Paint;",
        "paint",
        "",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "points",
        "",
        "erase",
        "drawStrokeByPointSize",
        "",
        "Lcom/onyx/android/sdk/pen/NeoRenderPoint;",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "toTouchPoints",
        "([Lcom/onyx/android/sdk/pen/NeoRenderPoint;)Ljava/util/ArrayList;",
        "",
        "maxTouchPressure",
        "",
        "getPointArray",
        "point",
        "",
        "getPointDoubleArrayNullable",
        "getPointDoubleArray",
        "percentValue",
        "toNormalizedPressureSensitivity",
        "normalizedValue",
        "toPercentPressureSensitivity",
        "Landroid/graphics/Matrix;",
        "scaleX",
        "scaleY",
        "scaleTranslate",
        "getTransX",
        "getTransY",
        "getMatrixValue",
        "getMatrixTransX",
        "getMatrixTransY",
        "",
        "DEFAULT_PARAMS_CONFIG_RAW_NAME",
        "Ljava/lang/String;",
        "FLOAT_ONE",
        "F",
        "a",
        "ERASE_EXTRA_STROKE_WIDTH",
        "b",
        "Landroid/graphics/Bitmap;",
        "penBitmap",
        "DEFAULT_MIN_WIDTH",
        "DEFAULT_TILT_SCALE",
        "DEFAULT_BRUSH_SPACING",
        "MAX_PRESSURE",
        "MIN_PRESSURE",
        "FINGER_DEFAULT_PRESSURE",
        "FINGER_DOWN_UP_PRESSURE",
        "MIN_PRESSURE_SENSITIVITY",
        "MAX_PRESSURE_SENSITIVITY",
        "c",
        "RANGE_PRESSURE_SENSITIVITY",
        "",
        "PRESSURE_SENSITIVITY_LEVEL",
        "I",
        "DEFAULT_PRESSURE_SENSITIVITY",
        "d",
        "getLOW_QUALITY_WIDTH",
        "()F",
        "LOW_QUALITY_WIDTH",
        "DEFAULT_ALPHA_FACTOR",
        "MIN_ALPHA_FACTOR",
        "MAX_ALPHA_FACTOR",
        "DEFAULT_DPI",
        "MIN_PRECISION",
        "MAX_PRECISION",
        "MIN_TEXTURE_STEP",
        "MIDDLE_PRECISION",
        "DEFAULT_SMOOTH_LEVEL",
        "DEFAULT_PENCIL_SMOOTH_LEVEL",
        "e",
        "Lcom/onyx/android/sdk/bean/DefaultPenParams;",
        "getDEFAULT_VELOCITY_SENSITIVITY",
        "DEFAULT_VELOCITY_SENSITIVITY",
        "getDEFAULT_VELOCITY_AMPLIFIER",
        "DEFAULT_VELOCITY_AMPLIFIER",
        "getDEFAULT_VELOCITY_IGNORE_THRESHOLD",
        "DEFAULT_VELOCITY_IGNORE_THRESHOLD",
        "getDEFAULT_VELOCITY_LOWER_BOUND",
        "DEFAULT_VELOCITY_LOWER_BOUND",
        "getDEFAULT_VELOCITY_UPPER_BOUND",
        "DEFAULT_VELOCITY_UPPER_BOUND",
        "<init>",
        "()V",
        "sdk-pen_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final DEFAULT_ALPHA_FACTOR:F = 1.0f

.field public static final DEFAULT_BRUSH_SPACING:F = 0.25f

.field public static final DEFAULT_DPI:F = 320.0f

.field public static final DEFAULT_MIN_WIDTH:F = 0.05f

.field public static final DEFAULT_PARAMS_CONFIG_RAW_NAME:Ljava/lang/String; = "pen_default_params_config"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEFAULT_PENCIL_SMOOTH_LEVEL:F = 0.2f

.field public static final DEFAULT_PRESSURE_SENSITIVITY:F = 0.375f

.field public static final DEFAULT_SMOOTH_LEVEL:F = 0.2f

.field public static final DEFAULT_TILT_SCALE:F = 3.0f

.field public static final FINGER_DEFAULT_PRESSURE:F = 0.7f

.field public static final FINGER_DOWN_UP_PRESSURE:F = 0.105000004f

.field public static final FLOAT_ONE:F = 1.0f

.field public static final INSTANCE:Lcom/onyx/android/sdk/pen/utils/PenUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MAX_ALPHA_FACTOR:F = 2.0f

.field public static final MAX_PRECISION:F = 8.0f

.field public static final MAX_PRESSURE:F = 1.0f

.field public static final MAX_PRESSURE_SENSITIVITY:F = 0.6f

.field public static final MIDDLE_PRECISION:F = 4.0f

.field public static final MIN_ALPHA_FACTOR:F = 0.05f

.field public static final MIN_PRECISION:F = 1.0f

.field public static final MIN_PRESSURE:F = 0.001f

.field public static final MIN_PRESSURE_SENSITIVITY:F = 0.15f

.field public static final MIN_TEXTURE_STEP:F = 2.0f

.field public static final PRESSURE_SENSITIVITY_LEVEL:I = 0xa

.field public static final a:F

.field public static b:Landroid/graphics/Bitmap; = null
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public static final c:F = 0.45000002f

.field public static final d:F

.field public static e:Lcom/onyx/android/sdk/bean/DefaultPenParams;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/pen/utils/PenUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/pen/utils/PenUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/pen/utils/PenUtils;->INSTANCE:Lcom/onyx/android/sdk/pen/utils/PenUtils;

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/onyx/android/sdk/pen/utils/PenUtils;->a:F

    sget-object v0, Lcom/onyx/android/sdk/base/utils/DimenUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DimenUtils;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/DimenUtils;->dp2PxFloat(F)F

    move-result v0

    sput v0, Lcom/onyx/android/sdk/pen/utils/PenUtils;->d:F

    new-instance v0, Lcom/onyx/android/sdk/bean/DefaultPenParams;

    invoke-direct {v0}, Lcom/onyx/android/sdk/bean/DefaultPenParams;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/pen/utils/PenUtils;->e:Lcom/onyx/android/sdk/bean/DefaultPenParams;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getPointDoubleArray$default(Lcom/onyx/android/sdk/pen/utils/PenUtils;Lcom/onyx/android/sdk/base/data/TouchPoint;FILjava/lang/Object;)[D
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/pen/utils/PenUtils;->getPointDoubleArray(Lcom/onyx/android/sdk/base/data/TouchPoint;F)[D

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getPointDoubleArray$default(Lcom/onyx/android/sdk/pen/utils/PenUtils;Ljava/util/List;FILjava/lang/Object;)[D
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/pen/utils/PenUtils;->getPointDoubleArray(Ljava/util/List;F)[D

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getPointDoubleArrayNullable$default(Lcom/onyx/android/sdk/pen/utils/PenUtils;Lcom/onyx/android/sdk/base/data/TouchPoint;FILjava/lang/Object;)[D
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/pen/utils/PenUtils;->getPointDoubleArrayNullable(Lcom/onyx/android/sdk/base/data/TouchPoint;F)[D

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final drawStrokeByPointSize(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;Z)V
    .locals 7
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;Z)V"
        }
    .end annotation

    const-string p0, "canvas"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "paint"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "points"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroid/graphics/Paint;

    invoke-direct {p0, p2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    sget-object p2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object p2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 p2, v0, -0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    add-int/lit8 v6, v0, 0x1

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getSize()F

    move-result v1

    if-eqz p4, :cond_0

    sget v2, Lcom/onyx/android/sdk/pen/utils/PenUtils;->a:F

    add-float/2addr v1, v2

    :cond_0
    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v2

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v3

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v4

    move-object v0, p1

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v0, v6

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final ensurePenBitmapCreated(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "drawRect"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/pen/utils/PenUtils;->b:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/pen/utils/PenUtils;->b:Landroid/graphics/Bitmap;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eq p0, v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    sput-object p0, Lcom/onyx/android/sdk/pen/utils/PenUtils;->b:Landroid/graphics/Bitmap;

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/pen/utils/PenUtils;->b:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/pen/utils/PenUtils;->b:Landroid/graphics/Bitmap;

    const-string p1, "null cannot be cast to non-null type android.graphics.Bitmap"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getDEFAULT_VELOCITY_AMPLIFIER()F
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/pen/utils/PenUtils;->e:Lcom/onyx/android/sdk/bean/DefaultPenParams;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/bean/DefaultPenParams;->getDefaultVelocityAmplifier()F

    move-result p0

    return p0
.end method

.method public final getDEFAULT_VELOCITY_IGNORE_THRESHOLD()F
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/pen/utils/PenUtils;->e:Lcom/onyx/android/sdk/bean/DefaultPenParams;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/bean/DefaultPenParams;->getDefaultVelocityIgnoreThreshold()F

    move-result p0

    return p0
.end method

.method public final getDEFAULT_VELOCITY_LOWER_BOUND()F
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/pen/utils/PenUtils;->e:Lcom/onyx/android/sdk/bean/DefaultPenParams;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/bean/DefaultPenParams;->getDefaultVelocityLowerBound()F

    move-result p0

    return p0
.end method

.method public final getDEFAULT_VELOCITY_SENSITIVITY()F
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/pen/utils/PenUtils;->e:Lcom/onyx/android/sdk/bean/DefaultPenParams;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/bean/DefaultPenParams;->getDefaultVelocitySensitivity()F

    move-result p0

    return p0
.end method

.method public final getDEFAULT_VELOCITY_UPPER_BOUND()F
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/pen/utils/PenUtils;->e:Lcom/onyx/android/sdk/bean/DefaultPenParams;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/bean/DefaultPenParams;->getDefaultVelocityUpperBound()F

    move-result p0

    return p0
.end method

.method public final getLOW_QUALITY_WIDTH()F
    .locals 0

    sget p0, Lcom/onyx/android/sdk/pen/utils/PenUtils;->d:F

    return p0
.end method

.method public final getMatrixTransX([F)F
    .locals 0
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x2

    aget p0, p1, p0

    return p0
.end method

.method public final getMatrixTransY([F)F
    .locals 0
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x5

    aget p0, p1, p0

    return p0
.end method

.method public final getMatrixValue(Landroid/graphics/Matrix;)[F
    .locals 0
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/16 p0, 0x9

    new-array p0, p0, [F

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->getValues([F)V

    :cond_0
    return-object p0
.end method

.method public final getPointArray(Ljava/util/List;F)[F
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;F)[F"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "points"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    mul-int/lit8 p0, p0, 0x5

    new-array p0, p0, [F

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    mul-int/lit8 v2, v1, 0x5

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v3

    aput v3, p0, v2

    add-int/lit8 v3, v2, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v4

    aput v4, p0, v3

    add-int/lit8 v3, v2, 0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getPressure()F

    move-result v4

    div-float/2addr v4, p2

    aput v4, p0, v3

    add-int/lit8 v3, v2, 0x3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getSize()F

    move-result v4

    aput v4, p0, v3

    add-int/lit8 v2, v2, 0x4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getTimestamp()J

    move-result-wide v3

    long-to-float v3, v3

    aput v3, p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final getPointDoubleArray(Lcom/onyx/android/sdk/base/data/TouchPoint;F)[D
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "point"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x7

    new-array p0, p0, [D

    .line 1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    float-to-double v0, v0

    const/4 v2, 0x0

    aput-wide v0, p0, v2

    .line 2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v0

    float-to-double v0, v0

    const/4 v2, 0x1

    aput-wide v0, p0, v2

    .line 3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getPressure()F

    move-result v0

    div-float/2addr v0, p2

    float-to-double v0, v0

    const/4 p2, 0x2

    aput-wide v0, p0, p2

    .line 4
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getSize()F

    move-result p2

    float-to-double v0, p2

    const/4 p2, 0x3

    aput-wide v0, p0, p2

    .line 5
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getTiltX()I

    move-result p2

    int-to-double v0, p2

    const/4 p2, 0x4

    aput-wide v0, p0, p2

    .line 6
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getTiltY()I

    move-result p2

    int-to-double v0, p2

    const/4 p2, 0x5

    aput-wide v0, p0, p2

    .line 7
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getTimestamp()J

    move-result-wide p1

    long-to-double p1, p1

    const/4 v0, 0x6

    aput-wide p1, p0, v0

    return-object p0
.end method

.method public final getPointDoubleArray(Ljava/util/List;F)[D
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;F)[D"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "points"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    mul-int/lit8 p0, p0, 0x7

    new-array p0, p0, [D

    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    mul-int/lit8 v2, v1, 0x7

    .line 10
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v3

    float-to-double v3, v3

    aput-wide v3, p0, v2

    add-int/lit8 v3, v2, 0x1

    .line 11
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v4

    float-to-double v4, v4

    aput-wide v4, p0, v3

    add-int/lit8 v3, v2, 0x2

    .line 12
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getPressure()F

    move-result v4

    div-float/2addr v4, p2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    float-to-double v4, v4

    aput-wide v4, p0, v3

    add-int/lit8 v3, v2, 0x3

    .line 13
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getSize()F

    move-result v4

    float-to-double v4, v4

    aput-wide v4, p0, v3

    add-int/lit8 v3, v2, 0x4

    .line 14
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getTiltX()I

    move-result v4

    int-to-double v4, v4

    aput-wide v4, p0, v3

    add-int/lit8 v3, v2, 0x5

    .line 15
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getTiltY()I

    move-result v4

    int-to-double v4, v4

    aput-wide v4, p0, v3

    add-int/lit8 v2, v2, 0x6

    .line 16
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getTimestamp()J

    move-result-wide v3

    long-to-double v3, v3

    aput-wide v3, p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final getPointDoubleArrayNullable(Lcom/onyx/android/sdk/base/data/TouchPoint;F)[D
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/pen/utils/PenUtils;->getPointDoubleArray(Lcom/onyx/android/sdk/base/data/TouchPoint;F)[D

    move-result-object p0

    return-object p0
.end method

.method public final getTransX(Landroid/graphics/Matrix;)F
    .locals 0
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pen/utils/PenUtils;->getMatrixValue(Landroid/graphics/Matrix;)[F

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pen/utils/PenUtils;->getMatrixTransX([F)F

    move-result p0

    return p0
.end method

.method public final getTransY(Landroid/graphics/Matrix;)F
    .locals 0
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pen/utils/PenUtils;->getMatrixValue(Landroid/graphics/Matrix;)[F

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pen/utils/PenUtils;->getMatrixTransY([F)F

    move-result p0

    return p0
.end method

.method public final initDefaultPenParams(Lcom/onyx/android/sdk/bean/DefaultPenParams;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/bean/DefaultPenParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "defaultPenParams"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/onyx/android/sdk/pen/utils/PenUtils;->e:Lcom/onyx/android/sdk/bean/DefaultPenParams;

    return-void
.end method

.method public final scaleTranslate(Landroid/graphics/Matrix;FF)Landroid/graphics/Matrix;
    .locals 3
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pen/utils/PenUtils;->getMatrixValue(Landroid/graphics/Matrix;)[F

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/pen/utils/PenUtils;->getMatrixTransX([F)F

    move-result v1

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/pen/utils/PenUtils;->getMatrixTransY([F)F

    move-result p0

    neg-float v0, v1

    neg-float v2, p0

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    mul-float/2addr v1, p2

    mul-float/2addr p0, p3

    invoke-virtual {p1, v1, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-object p1
.end method

.method public final toNormalizedPressureSensitivity(F)F
    .locals 0

    const p0, 0x3ee66667    # 0.45000002f

    mul-float/2addr p1, p0

    const p0, 0x3e19999a    # 0.15f

    add-float/2addr p1, p0

    const p0, 0x3f19999a    # 0.6f

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public final toPercentPressureSensitivity(F)F
    .locals 0

    const p0, 0x3e19999a    # 0.15f

    sub-float/2addr p1, p0

    const/4 p0, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const p1, 0x3ee66667    # 0.45000002f

    div-float/2addr p0, p1

    return p0
.end method

.method public final toTouchPoints([Lcom/onyx/android/sdk/pen/NeoRenderPoint;)Ljava/util/ArrayList;
    .locals 16
    .param p1    # [Lcom/onyx/android/sdk/pen/NeoRenderPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/onyx/android/sdk/pen/NeoRenderPoint;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "points"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    new-instance v15, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/pen/NeoRenderPoint;->getX()F

    move-result v6

    invoke-virtual {v4}, Lcom/onyx/android/sdk/pen/NeoRenderPoint;->getY()F

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v4}, Lcom/onyx/android/sdk/pen/NeoRenderPoint;->getSize()F

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/16 v14, 0x60

    const/4 v4, 0x0

    move-object v5, v15

    move-object v0, v15

    move-object v15, v4

    invoke-direct/range {v5 .. v15}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FFFFIIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p1

    goto :goto_0

    :cond_0
    return-object v1
.end method
