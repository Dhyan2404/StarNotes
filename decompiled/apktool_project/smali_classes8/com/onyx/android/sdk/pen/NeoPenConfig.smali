.class public final Lcom/onyx/android/sdk/pen/NeoPenConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/pen/NeoPenConfig$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008G\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 p2\u00020\u0001:\u0001pB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010j\u001a\u00020kJ\u000e\u0010\u001e\u001a\u00020\u00002\u0006\u0010l\u001a\u00020\u0004J\u000e\u0010!\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020\u0010J\u000e\u0010*\u001a\u00020\u00002\u0006\u0010m\u001a\u00020\u0004J\u000e\u0010-\u001a\u00020\u00002\u0006\u0010m\u001a\u00020\u0004J\u000e\u00100\u001a\u00020\u00002\u0006\u0010.\u001a\u00020\u0004J\u000e\u00109\u001a\u00020\u00002\u0006\u00107\u001a\u00020\u0004J\u000e\u0010B\u001a\u00020\u00002\u0006\u0010@\u001a\u00020\u0010J\u000e\u0010Q\u001a\u00020\u00002\u0006\u0010O\u001a\u00020#J\u000e\u0010T\u001a\u00020\u00002\u0006\u0010R\u001a\u00020\u0004J\u000e\u0010W\u001a\u00020\u00002\u0006\u0010U\u001a\u00020\u0010J\u000e\u0010i\u001a\u00020\u00002\u0006\u0010g\u001a\u00020\u0004J\u0006\u0010n\u001a\u00020oR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\"\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0006\"\u0004\u0008\u001e\u0010\u0008R\u001a\u0010\u001f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u0012\"\u0004\u0008!\u0010\u0014R\u001a\u0010\"\u001a\u00020#X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\u001a\u0010(\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010\u0006\"\u0004\u0008*\u0010\u0008R\u001a\u0010+\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010\u0006\"\u0004\u0008-\u0010\u0008R\u001a\u0010.\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u0010\u0006\"\u0004\u00080\u0010\u0008R\u001a\u00101\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u0010\u0006\"\u0004\u00083\u0010\u0008R\u001a\u00104\u001a\u00020#X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u0010%\"\u0004\u00086\u0010\'R\u001a\u00107\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00088\u0010\u0006\"\u0004\u00089\u0010\u0008R\u001a\u0010:\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u0010\u0006\"\u0004\u0008<\u0010\u0008R\u001a\u0010=\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008>\u0010\u0006\"\u0004\u0008?\u0010\u0008R\u001a\u0010@\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008A\u0010\u0012\"\u0004\u0008B\u0010\u0014R\u001a\u0010C\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008D\u0010\u0006\"\u0004\u0008E\u0010\u0008R\u001a\u0010F\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008G\u0010\u0006\"\u0004\u0008H\u0010\u0008R\u001a\u0010I\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008J\u0010\u0006\"\u0004\u0008K\u0010\u0008R\u001a\u0010L\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008M\u0010\u0006\"\u0004\u0008N\u0010\u0008R\u001a\u0010O\u001a\u00020#X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008P\u0010%\"\u0004\u0008Q\u0010\'R\u001a\u0010R\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008S\u0010\u0006\"\u0004\u0008T\u0010\u0008R\u001a\u0010U\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008V\u0010\u0012\"\u0004\u0008W\u0010\u0014R\u001a\u0010X\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Y\u0010\u0006\"\u0004\u0008Z\u0010\u0008R\u001a\u0010[\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\\\u0010\u0006\"\u0004\u0008]\u0010\u0008R\u001a\u0010^\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008_\u0010\u0006\"\u0004\u0008`\u0010\u0008R\u001a\u0010a\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008b\u0010\u0006\"\u0004\u0008c\u0010\u0008R\u001a\u0010d\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008e\u0010\u0006\"\u0004\u0008f\u0010\u0008R\u001a\u0010g\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008h\u0010\u0006\"\u0004\u0008i\u0010\u0008\u00a8\u0006q"
    }
    d2 = {
        "Lcom/onyx/android/sdk/pen/NeoPenConfig;",
        "Ljava/io/Serializable;",
        "()V",
        "alphaFactor",
        "",
        "getAlphaFactor",
        "()F",
        "setAlphaFactor",
        "(F)V",
        "brushAngle",
        "getBrushAngle",
        "setBrushAngle",
        "brushRatio",
        "getBrushRatio",
        "setBrushRatio",
        "brushShape",
        "",
        "getBrushShape",
        "()I",
        "setBrushShape",
        "(I)V",
        "brushShapes",
        "",
        "Landroid/graphics/Bitmap;",
        "getBrushShapes",
        "()Ljava/util/List;",
        "setBrushShapes",
        "(Ljava/util/List;)V",
        "brushSpacing",
        "getBrushSpacing",
        "setBrushSpacing",
        "color",
        "getColor",
        "setColor",
        "directionEnabled",
        "",
        "getDirectionEnabled",
        "()Z",
        "setDirectionEnabled",
        "(Z)V",
        "displayScaleX",
        "getDisplayScaleX",
        "setDisplayScaleX",
        "displayScaleY",
        "getDisplayScaleY",
        "setDisplayScaleY",
        "dpi",
        "getDpi",
        "setDpi",
        "endVelocitySensitivity",
        "getEndVelocitySensitivity",
        "setEndVelocitySensitivity",
        "fastMode",
        "getFastMode",
        "setFastMode",
        "maxTouchPressure",
        "getMaxTouchPressure",
        "setMaxTouchPressure",
        "minWidth",
        "getMinWidth",
        "setMinWidth",
        "pressureSensitivity",
        "getPressureSensitivity",
        "setPressureSensitivity",
        "rotateAngle",
        "getRotateAngle",
        "setRotateAngle",
        "scalePrecision",
        "getScalePrecision",
        "setScalePrecision",
        "smoothLevel",
        "getSmoothLevel",
        "setSmoothLevel",
        "startLengthLimit",
        "getStartLengthLimit",
        "setStartLengthLimit",
        "startPointLimit",
        "getStartPointLimit",
        "setStartPointLimit",
        "tiltEnabled",
        "getTiltEnabled",
        "setTiltEnabled",
        "tiltScale",
        "getTiltScale",
        "setTiltScale",
        "type",
        "getType",
        "setType",
        "velocityAmplifier",
        "getVelocityAmplifier",
        "setVelocityAmplifier",
        "velocityIgnoreThreshold",
        "getVelocityIgnoreThreshold",
        "setVelocityIgnoreThreshold",
        "velocityLowerBound",
        "getVelocityLowerBound",
        "setVelocityLowerBound",
        "velocitySensitivity",
        "getVelocitySensitivity",
        "setVelocitySensitivity",
        "velocityUpperBound",
        "getVelocityUpperBound",
        "setVelocityUpperBound",
        "width",
        "getWidth",
        "setWidth",
        "resetBrushRatioAndAngle",
        "",
        "spacing",
        "scale",
        "toNativeConfig",
        "Lcom/onyx/android/sdk/pennative/PenConfig;",
        "Companion",
        "sdk-pen_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/pen/NeoPenConfig$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NEOPEN_BRUSH_SHAPE_CIRCLE:I = 0x0

.field public static final NEOPEN_BRUSH_SHAPE_ELLIPSE:I = 0x1

.field public static final NEOPEN_BRUSH_SHAPE_RECTANGLE:I = 0x2

.field public static final NEOPEN_PEN_TYPE_BALLPOINT:I = 0x8

.field public static final NEOPEN_PEN_TYPE_BRUSH:I = 0x1

.field public static final NEOPEN_PEN_TYPE_BRUSH_SIGN:I = 0xa

.field public static final NEOPEN_PEN_TYPE_CHARCOAL:I = 0x4

.field public static final NEOPEN_PEN_TYPE_CHARCOAL_V2:I = 0x5

.field public static final NEOPEN_PEN_TYPE_FOUNTAIN:I = 0x2

.field public static final NEOPEN_PEN_TYPE_FOUNTAIN_V2:I = 0x6

.field public static final NEOPEN_PEN_TYPE_MARKER:I = 0x3

.field public static final NEOPEN_PEN_TYPE_PENCIL:I = 0x7

.field public static final NEOPEN_PEN_TYPE_SQUARE:I = 0x9


# instance fields
.field private alphaFactor:F

.field private brushAngle:F

.field private brushRatio:F

.field private brushShape:I

.field private brushShapes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private brushSpacing:F

.field private color:I

.field private directionEnabled:Z

.field private displayScaleX:F

.field private displayScaleY:F

.field private dpi:F

.field private endVelocitySensitivity:F

.field private fastMode:Z

.field private maxTouchPressure:F

.field private minWidth:F

.field private pressureSensitivity:F

.field private rotateAngle:I

.field private scalePrecision:F

.field private smoothLevel:F

.field private startLengthLimit:F

.field private startPointLimit:F

.field private tiltEnabled:Z

.field private tiltScale:F

.field private type:I

.field private velocityAmplifier:F

.field private velocityIgnoreThreshold:F

.field private velocityLowerBound:F

.field private velocitySensitivity:F

.field private velocityUpperBound:F

.field private width:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/pen/NeoPenConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/pen/NeoPenConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->Companion:Lcom/onyx/android/sdk/pen/NeoPenConfig$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->color:I

    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->width:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->maxTouchPressure:F

    const/high16 v1, 0x43a00000    # 320.0f

    iput v1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->dpi:F

    iput v0, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->displayScaleX:F

    iput v0, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->displayScaleY:F

    iput v0, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->scalePrecision:F

    const/high16 v1, 0x3e800000    # 0.25f

    iput v1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->brushSpacing:F

    const/high16 v1, 0x40a00000    # 5.0f

    iput v1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->brushRatio:F

    const v1, 0x3e4ccccd    # 0.2f

    iput v1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->smoothLevel:F

    iput v0, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->alphaFactor:F

    return-void
.end method


# virtual methods
.method public final getAlphaFactor()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->alphaFactor:F

    return p0
.end method

.method public final getBrushAngle()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->brushAngle:F

    return p0
.end method

.method public final getBrushRatio()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->brushRatio:F

    return p0
.end method

.method public final getBrushShape()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->brushShape:I

    return p0
.end method

.method public final getBrushShapes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->brushShapes:Ljava/util/List;

    return-object p0
.end method

.method public final getBrushSpacing()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->brushSpacing:F

    return p0
.end method

.method public final getColor()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->color:I

    return p0
.end method

.method public final getDirectionEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->directionEnabled:Z

    return p0
.end method

.method public final getDisplayScaleX()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->displayScaleX:F

    return p0
.end method

.method public final getDisplayScaleY()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->displayScaleY:F

    return p0
.end method

.method public final getDpi()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->dpi:F

    return p0
.end method

.method public final getEndVelocitySensitivity()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->endVelocitySensitivity:F

    return p0
.end method

.method public final getFastMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->fastMode:Z

    return p0
.end method

.method public final getMaxTouchPressure()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->maxTouchPressure:F

    return p0
.end method

.method public final getMinWidth()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->minWidth:F

    return p0
.end method

.method public final getPressureSensitivity()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->pressureSensitivity:F

    return p0
.end method

.method public final getRotateAngle()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->rotateAngle:I

    return p0
.end method

.method public final getScalePrecision()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->scalePrecision:F

    return p0
.end method

.method public final getSmoothLevel()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->smoothLevel:F

    return p0
.end method

.method public final getStartLengthLimit()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->startLengthLimit:F

    return p0
.end method

.method public final getStartPointLimit()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->startPointLimit:F

    return p0
.end method

.method public final getTiltEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->tiltEnabled:Z

    return p0
.end method

.method public final getTiltScale()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->tiltScale:F

    return p0
.end method

.method public final getType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->type:I

    return p0
.end method

.method public final getVelocityAmplifier()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->velocityAmplifier:F

    return p0
.end method

.method public final getVelocityIgnoreThreshold()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->velocityIgnoreThreshold:F

    return p0
.end method

.method public final getVelocityLowerBound()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->velocityLowerBound:F

    return p0
.end method

.method public final getVelocitySensitivity()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->velocitySensitivity:F

    return p0
.end method

.method public final getVelocityUpperBound()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->velocityUpperBound:F

    return p0
.end method

.method public final getWidth()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->width:F

    return p0
.end method

.method public final resetBrushRatioAndAngle()V
    .locals 1

    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->brushRatio:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->brushAngle:F

    return-void
.end method

.method public final setAlphaFactor(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->alphaFactor:F

    return-void
.end method

.method public final setBrushAngle(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->brushAngle:F

    return-void
.end method

.method public final setBrushRatio(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->brushRatio:F

    return-void
.end method

.method public final setBrushShape(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->brushShape:I

    return-void
.end method

.method public final setBrushShapes(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->brushShapes:Ljava/util/List;

    return-void
.end method

.method public final setBrushSpacing(F)Lcom/onyx/android/sdk/pen/NeoPenConfig;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput p1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->brushSpacing:F

    return-object p0
.end method

.method public final setBrushSpacing(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->brushSpacing:F

    return-void
.end method

.method public final setColor(I)Lcom/onyx/android/sdk/pen/NeoPenConfig;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput p1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->color:I

    return-object p0
.end method

.method public final setColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->color:I

    return-void
.end method

.method public final setDirectionEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->directionEnabled:Z

    return-void
.end method

.method public final setDisplayScaleX(F)Lcom/onyx/android/sdk/pen/NeoPenConfig;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput p1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->displayScaleX:F

    return-object p0
.end method

.method public final setDisplayScaleX(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->displayScaleX:F

    return-void
.end method

.method public final setDisplayScaleY(F)Lcom/onyx/android/sdk/pen/NeoPenConfig;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput p1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->displayScaleY:F

    return-object p0
.end method

.method public final setDisplayScaleY(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->displayScaleY:F

    return-void
.end method

.method public final setDpi(F)Lcom/onyx/android/sdk/pen/NeoPenConfig;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput p1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->dpi:F

    return-object p0
.end method

.method public final setDpi(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->dpi:F

    return-void
.end method

.method public final setEndVelocitySensitivity(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->endVelocitySensitivity:F

    return-void
.end method

.method public final setFastMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->fastMode:Z

    return-void
.end method

.method public final setMaxTouchPressure(F)Lcom/onyx/android/sdk/pen/NeoPenConfig;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput p1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->maxTouchPressure:F

    return-object p0
.end method

.method public final setMaxTouchPressure(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->maxTouchPressure:F

    return-void
.end method

.method public final setMinWidth(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->minWidth:F

    return-void
.end method

.method public final setPressureSensitivity(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->pressureSensitivity:F

    return-void
.end method

.method public final setRotateAngle(I)Lcom/onyx/android/sdk/pen/NeoPenConfig;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput p1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->rotateAngle:I

    return-object p0
.end method

.method public final setRotateAngle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->rotateAngle:I

    return-void
.end method

.method public final setScalePrecision(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->scalePrecision:F

    return-void
.end method

.method public final setSmoothLevel(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->smoothLevel:F

    return-void
.end method

.method public final setStartLengthLimit(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->startLengthLimit:F

    return-void
.end method

.method public final setStartPointLimit(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->startPointLimit:F

    return-void
.end method

.method public final setTiltEnabled(Z)Lcom/onyx/android/sdk/pen/NeoPenConfig;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput-boolean p1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->tiltEnabled:Z

    return-object p0
.end method

.method public final setTiltEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->tiltEnabled:Z

    return-void
.end method

.method public final setTiltScale(F)Lcom/onyx/android/sdk/pen/NeoPenConfig;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput p1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->tiltScale:F

    return-object p0
.end method

.method public final setTiltScale(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->tiltScale:F

    return-void
.end method

.method public final setType(I)Lcom/onyx/android/sdk/pen/NeoPenConfig;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput p1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->type:I

    return-object p0
.end method

.method public final setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->type:I

    return-void
.end method

.method public final setVelocityAmplifier(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->velocityAmplifier:F

    return-void
.end method

.method public final setVelocityIgnoreThreshold(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->velocityIgnoreThreshold:F

    return-void
.end method

.method public final setVelocityLowerBound(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->velocityLowerBound:F

    return-void
.end method

.method public final setVelocitySensitivity(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->velocitySensitivity:F

    return-void
.end method

.method public final setVelocityUpperBound(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->velocityUpperBound:F

    return-void
.end method

.method public final setWidth(F)Lcom/onyx/android/sdk/pen/NeoPenConfig;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput p1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->width:F

    return-object p0
.end method

.method public final setWidth(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->width:F

    return-void
.end method

.method public final toNativeConfig()Lcom/onyx/android/sdk/pennative/PenConfig;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/pennative/PenConfig;

    invoke-direct {v0}, Lcom/onyx/android/sdk/pennative/PenConfig;-><init>()V

    iget v1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->type:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/pennative/PenConfig;->setType(I)V

    iget-boolean v1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->fastMode:Z

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/pennative/PenConfig;->setFastMode(Z)V

    iget v1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->color:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/pennative/PenConfig;->setColor(I)V

    iget v1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->width:F

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/pennative/PenConfig;->setWidth(F)V

    iget v1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->minWidth:F

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/pennative/PenConfig;->setMinWidth(F)V

    iget v1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->rotateAngle:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/pennative/PenConfig;->setRotateAngle(I)V

    iget-boolean v1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->tiltEnabled:Z

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/pennative/PenConfig;->setTiltEnabled(Z)V

    iget v1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->tiltScale:F

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/pennative/PenConfig;->setTiltScale(F)V

    iget-boolean v1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->directionEnabled:Z

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/pennative/PenConfig;->setDirectionEnabled(Z)V

    iget v1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->maxTouchPressure:F

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/pennative/PenConfig;->setMaxTouchPressure(F)V

    iget v1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->dpi:F

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/pennative/PenConfig;->setDpi(F)V

    iget v1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->displayScaleX:F

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/pennative/PenConfig;->setDisplayScaleX(F)V

    iget v1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->displayScaleY:F

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/pennative/PenConfig;->setDisplayScaleY(F)V

    iget v1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->scalePrecision:F

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/pennative/PenConfig;->setScalePrecision(F)V

    iget v1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->brushSpacing:F

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/pennative/PenConfig;->setBrushSpacing(F)V

    iget v1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->brushShape:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/pennative/PenConfig;->setBrushShape(I)V

    iget v1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->brushRatio:F

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/pennative/PenConfig;->setBrushRatio(F)V

    iget v1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->brushAngle:F

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/pennative/PenConfig;->setBrushAngle(F)V

    iget v1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->pressureSensitivity:F

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/pennative/PenConfig;->setPressureSensitivity(F)V

    iget v1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->velocitySensitivity:F

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/pennative/PenConfig;->setVelocitySensitivity(F)V

    iget v1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->velocityAmplifier:F

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/pennative/PenConfig;->setVelocityAmplifier(F)V

    iget v1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->velocityIgnoreThreshold:F

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/pennative/PenConfig;->setVelocityIgnoreThreshold(F)V

    iget v1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->velocityLowerBound:F

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/pennative/PenConfig;->setVelocityLowerBound(F)V

    iget v1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->velocityUpperBound:F

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/pennative/PenConfig;->setVelocityUpperBound(F)V

    iget v1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->smoothLevel:F

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/pennative/PenConfig;->setSmoothLevel(F)V

    iget v1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->startPointLimit:F

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/pennative/PenConfig;->setStartPointLimit(F)V

    iget v1, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->startLengthLimit:F

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/pennative/PenConfig;->setStartLengthLimit(F)V

    iget p0, p0, Lcom/onyx/android/sdk/pen/NeoPenConfig;->endVelocitySensitivity:F

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/pennative/PenConfig;->setEndVelocitySensitivity(F)V

    return-object v0
.end method
