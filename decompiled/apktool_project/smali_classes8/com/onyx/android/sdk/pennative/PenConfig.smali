.class public Lcom/onyx/android/sdk/pennative/PenConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/pennative/PenConfig$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008H\u0008\u0016\u0018\u0000 `2\u00020\u0001:\u0001`B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008R\u001a\u0010\u0015\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u000f\"\u0004\u0008\u0017\u0010\u0011R\u001a\u0010\u0018\u001a\u00020\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u0006\"\u0004\u0008 \u0010\u0008R\u001a\u0010!\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u0006\"\u0004\u0008#\u0010\u0008R\u001a\u0010$\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\u0006\"\u0004\u0008&\u0010\u0008R\u001a\u0010\'\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u0006\"\u0004\u0008)\u0010\u0008R\u001a\u0010*\u001a\u00020\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010\u001b\"\u0004\u0008,\u0010\u001dR\u001a\u0010-\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010\u0006\"\u0004\u0008/\u0010\u0008R\u001a\u00100\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u0010\u0006\"\u0004\u00082\u0010\u0008R\u001a\u00103\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00084\u0010\u0006\"\u0004\u00085\u0010\u0008R\u001a\u00106\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u0010\u000f\"\u0004\u00088\u0010\u0011R\u001a\u00109\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008:\u0010\u0006\"\u0004\u0008;\u0010\u0008R\u001a\u0010<\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008=\u0010\u0006\"\u0004\u0008>\u0010\u0008R\u001a\u0010?\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008@\u0010\u0006\"\u0004\u0008A\u0010\u0008R\u001a\u0010B\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008C\u0010\u0006\"\u0004\u0008D\u0010\u0008R\u001a\u0010E\u001a\u00020\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008F\u0010\u001b\"\u0004\u0008G\u0010\u001dR\u001a\u0010H\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008I\u0010\u0006\"\u0004\u0008J\u0010\u0008R\u001a\u0010K\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008L\u0010\u000f\"\u0004\u0008M\u0010\u0011R\u001a\u0010N\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008O\u0010\u0006\"\u0004\u0008P\u0010\u0008R\u001a\u0010Q\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008R\u0010\u0006\"\u0004\u0008S\u0010\u0008R\u001a\u0010T\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008U\u0010\u0006\"\u0004\u0008V\u0010\u0008R\u001a\u0010W\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008X\u0010\u0006\"\u0004\u0008Y\u0010\u0008R\u001a\u0010Z\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008[\u0010\u0006\"\u0004\u0008\\\u0010\u0008R\u001a\u0010]\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008^\u0010\u0006\"\u0004\u0008_\u0010\u0008\u00a8\u0006a"
    }
    d2 = {
        "Lcom/onyx/android/sdk/pennative/PenConfig;",
        "Ljava/io/Serializable;",
        "()V",
        "brushAngle",
        "",
        "getBrushAngle",
        "()F",
        "setBrushAngle",
        "(F)V",
        "brushRatio",
        "getBrushRatio",
        "setBrushRatio",
        "brushShape",
        "",
        "getBrushShape",
        "()I",
        "setBrushShape",
        "(I)V",
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
        "Companion",
        "sdk-pennative_release"
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
.field public static final Companion:Lcom/onyx/android/sdk/pennative/PenConfig$Companion;
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
.field private brushAngle:F

.field private brushRatio:F

.field private brushShape:I

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

    new-instance v0, Lcom/onyx/android/sdk/pennative/PenConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/pennative/PenConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/pennative/PenConfig;->Companion:Lcom/onyx/android/sdk/pennative/PenConfig$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->color:I

    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->width:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->maxTouchPressure:F

    const/high16 v1, 0x43a00000    # 320.0f

    iput v1, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->dpi:F

    iput v0, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->displayScaleX:F

    iput v0, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->displayScaleY:F

    iput v0, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->scalePrecision:F

    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->brushSpacing:F

    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->brushRatio:F

    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->smoothLevel:F

    return-void
.end method


# virtual methods
.method public final getBrushAngle()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->brushAngle:F

    return p0
.end method

.method public final getBrushRatio()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->brushRatio:F

    return p0
.end method

.method public final getBrushShape()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->brushShape:I

    return p0
.end method

.method public final getBrushSpacing()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->brushSpacing:F

    return p0
.end method

.method public final getColor()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->color:I

    return p0
.end method

.method public final getDirectionEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->directionEnabled:Z

    return p0
.end method

.method public final getDisplayScaleX()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->displayScaleX:F

    return p0
.end method

.method public final getDisplayScaleY()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->displayScaleY:F

    return p0
.end method

.method public final getDpi()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->dpi:F

    return p0
.end method

.method public final getEndVelocitySensitivity()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->endVelocitySensitivity:F

    return p0
.end method

.method public final getFastMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->fastMode:Z

    return p0
.end method

.method public final getMaxTouchPressure()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->maxTouchPressure:F

    return p0
.end method

.method public final getMinWidth()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->minWidth:F

    return p0
.end method

.method public final getPressureSensitivity()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->pressureSensitivity:F

    return p0
.end method

.method public final getRotateAngle()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->rotateAngle:I

    return p0
.end method

.method public final getScalePrecision()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->scalePrecision:F

    return p0
.end method

.method public final getSmoothLevel()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->smoothLevel:F

    return p0
.end method

.method public final getStartLengthLimit()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->startLengthLimit:F

    return p0
.end method

.method public final getStartPointLimit()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->startPointLimit:F

    return p0
.end method

.method public final getTiltEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->tiltEnabled:Z

    return p0
.end method

.method public final getTiltScale()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->tiltScale:F

    return p0
.end method

.method public final getType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->type:I

    return p0
.end method

.method public final getVelocityAmplifier()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->velocityAmplifier:F

    return p0
.end method

.method public final getVelocityIgnoreThreshold()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->velocityIgnoreThreshold:F

    return p0
.end method

.method public final getVelocityLowerBound()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->velocityLowerBound:F

    return p0
.end method

.method public final getVelocitySensitivity()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->velocitySensitivity:F

    return p0
.end method

.method public final getVelocityUpperBound()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->velocityUpperBound:F

    return p0
.end method

.method public final getWidth()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->width:F

    return p0
.end method

.method public final setBrushAngle(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->brushAngle:F

    return-void
.end method

.method public final setBrushRatio(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->brushRatio:F

    return-void
.end method

.method public final setBrushShape(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->brushShape:I

    return-void
.end method

.method public final setBrushSpacing(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->brushSpacing:F

    return-void
.end method

.method public final setColor(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->color:I

    return-void
.end method

.method public final setDirectionEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->directionEnabled:Z

    return-void
.end method

.method public final setDisplayScaleX(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->displayScaleX:F

    return-void
.end method

.method public final setDisplayScaleY(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->displayScaleY:F

    return-void
.end method

.method public final setDpi(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->dpi:F

    return-void
.end method

.method public final setEndVelocitySensitivity(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->endVelocitySensitivity:F

    return-void
.end method

.method public final setFastMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->fastMode:Z

    return-void
.end method

.method public final setMaxTouchPressure(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->maxTouchPressure:F

    return-void
.end method

.method public final setMinWidth(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->minWidth:F

    return-void
.end method

.method public final setPressureSensitivity(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->pressureSensitivity:F

    return-void
.end method

.method public final setRotateAngle(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->rotateAngle:I

    return-void
.end method

.method public final setScalePrecision(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->scalePrecision:F

    return-void
.end method

.method public final setSmoothLevel(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->smoothLevel:F

    return-void
.end method

.method public final setStartLengthLimit(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->startLengthLimit:F

    return-void
.end method

.method public final setStartPointLimit(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->startPointLimit:F

    return-void
.end method

.method public final setTiltEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->tiltEnabled:Z

    return-void
.end method

.method public final setTiltScale(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->tiltScale:F

    return-void
.end method

.method public final setType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->type:I

    return-void
.end method

.method public final setVelocityAmplifier(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->velocityAmplifier:F

    return-void
.end method

.method public final setVelocityIgnoreThreshold(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->velocityIgnoreThreshold:F

    return-void
.end method

.method public final setVelocityLowerBound(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->velocityLowerBound:F

    return-void
.end method

.method public final setVelocitySensitivity(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->velocitySensitivity:F

    return-void
.end method

.method public final setVelocityUpperBound(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->velocityUpperBound:F

    return-void
.end method

.method public final setWidth(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/pennative/PenConfig;->width:F

    return-void
.end method
