.class public final Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr$Companion;,
        Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0002\u0008\u000f\n\u0002\u0010\t\n\u0002\u0008\u000b\u0018\u0000 02\u00020\u0001:\u00010B\u0007\u00a2\u0006\u0004\u0008.\u0010/J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0004R\"\u0010\r\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\"\u0010\u0015\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\"\u0010\u001d\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\"\u0010!\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u0018\u001a\u0004\u0008\u001f\u0010\u001a\"\u0004\u0008 \u0010\u001cR\"\u0010%\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u0010\u0018\u001a\u0004\u0008#\u0010\u001a\"\u0004\u0008$\u0010\u001cR\"\u0010-\u001a\u00020&8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\'\u0010(\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,\u00a8\u00061"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;",
        "",
        "",
        "isDotType",
        "",
        "getLaserShapeName",
        "Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeType;",
        "a",
        "Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeType;",
        "getType",
        "()Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeType;",
        "setType",
        "(Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeType;)V",
        "type",
        "",
        "b",
        "I",
        "getColor",
        "()I",
        "setColor",
        "(I)V",
        "color",
        "",
        "c",
        "F",
        "getStrokeWidth",
        "()F",
        "setStrokeWidth",
        "(F)V",
        "strokeWidth",
        "d",
        "getRadius",
        "setRadius",
        "radius",
        "e",
        "getShadowRadius",
        "setShadowRadius",
        "shadowRadius",
        "",
        "f",
        "J",
        "getDuration",
        "()J",
        "setDuration",
        "(J)V",
        "duration",
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
.field public static final Companion:Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LASER_SHAPE_DOT_NAME:Ljava/lang/String; = " point_laser_pen"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LASER_SHAPE_LINE_NAME:Ljava/lang/String; = " line_laser_pen"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MAX_DURATION_SECOND:J = 0xfL

.field public static final MAX_PROGRESS:F = 100.0f

.field public static final MAX_VALUE:I = 0x14

.field public static final MID_DURATION_SECOND:J = 0x5L

.field public static final MID_PROGRESS:F = 50.0f

.field public static final MIN_DURATION_SECOND:J = 0x2L

.field public static final MIN_PROGRESS:F = 0.0f

.field public static final MIN_VALUE:I = 0x5


# instance fields
.field public a:Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:I

.field public c:F

.field public d:F

.field public e:F

.field public f:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;->Companion:Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeType;->LINE:Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeType;

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;->a:Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeType;

    const/high16 v0, -0x10000

    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;->b:I

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;->c:F

    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;->d:F

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;->e:F

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;->f:J

    return-void
.end method


# virtual methods
.method public final getColor()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;->b:I

    return p0
.end method

.method public final getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;->f:J

    return-wide v0
.end method

.method public final getLaserShapeName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;->a:Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeType;

    sget-object v0, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string p0, " point_laser_pen"

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    const-string p0, " line_laser_pen"

    :goto_0
    return-object p0
.end method

.method public final getRadius()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;->d:F

    return p0
.end method

.method public final getShadowRadius()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;->e:F

    return p0
.end method

.method public final getStrokeWidth()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;->c:F

    return p0
.end method

.method public final getType()Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;->a:Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeType;

    return-object p0
.end method

.method public final isDotType()Z
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeType;->DOT:Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeType;

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;->a:Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeType;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setColor(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;->b:I

    return-void
.end method

.method public final setDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;->f:J

    return-void
.end method

.method public final setRadius(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;->d:F

    return-void
.end method

.method public final setShadowRadius(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;->e:F

    return-void
.end method

.method public final setStrokeWidth(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;->c:F

    return-void
.end method

.method public final setType(Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeType;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;->a:Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeType;

    return-void
.end method
