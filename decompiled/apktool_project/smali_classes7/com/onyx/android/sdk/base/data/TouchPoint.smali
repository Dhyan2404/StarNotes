.class public final Lcom/onyx/android/sdk/base/data/TouchPoint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTouchPoint.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TouchPoint.kt\ncom/onyx/android/sdk/base/data/TouchPoint\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,601:1\n13309#2,2:602\n*S KotlinDebug\n*F\n+ 1 TouchPoint.kt\ncom/onyx/android/sdk/base/data/TouchPoint\n*L\n139#1:602,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0019\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0004\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u0000 P2\u00020\u00012\u00020\u0002:\u0001PB\u0017\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0006B/\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bB\u000f\u0008\u0016\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eB\u000f\u0008\u0016\u0012\u0006\u0010\u000f\u001a\u00020\u0000\u00a2\u0006\u0002\u0010\u0010BK\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0014\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0014\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\n\u00a2\u0006\u0002\u0010\u0017J\u0010\u0010,\u001a\u00020\u00002\u0008\u0010-\u001a\u0004\u0018\u00010.J\u0008\u0010/\u001a\u00020\u0000H\u0016J#\u00100\u001a\u00020\u00002\u0016\u00101\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010.02\"\u0004\u0018\u00010.\u00a2\u0006\u0002\u00103J\u0006\u00104\u001a\u00020\u0000J\u000e\u00105\u001a\u0002062\u0006\u00107\u001a\u00020\u0000J\u0018\u00108\u001a\u0002062\u0006\u00109\u001a\u00020\u00002\u0008\u0008\u0002\u0010:\u001a\u00020;J\u0013\u0010<\u001a\u0002062\u0008\u00107\u001a\u0004\u0018\u00010=H\u0096\u0002J\u0008\u0010>\u001a\u00020\u0014H\u0016J\u0010\u0010?\u001a\u00020@2\u0008\u0010-\u001a\u0004\u0018\u00010.J\u0006\u0010A\u001a\u000206J\u0010\u0010B\u001a\u00020@2\u0008\u0010-\u001a\u0004\u0018\u00010.J\u0016\u0010C\u001a\u00020@2\u0006\u0010D\u001a\u00020\u00042\u0006\u0010E\u001a\u00020\u0004J\u0016\u0010C\u001a\u00020@2\u0006\u0010D\u001a\u00020\u00142\u0006\u0010E\u001a\u00020\u0014J\u0010\u0010F\u001a\u0004\u0018\u00010\u00002\u0006\u0010G\u001a\u00020\u0004J\u0016\u0010F\u001a\u00020\u00002\u0006\u0010H\u001a\u00020\u00042\u0006\u0010I\u001a\u00020\u0004J\u000e\u0010J\u001a\u00020@2\u0006\u0010K\u001a\u00020\u0000J\u0016\u0010J\u001a\u00020@2\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004J\u0010\u0010&\u001a\u0004\u0018\u00010\u00002\u0006\u0010\u0016\u001a\u00020\nJ\u0008\u0010L\u001a\u00020MH\u0016J\u0010\u0010N\u001a\u00020\u00002\u0008\u0010-\u001a\u0004\u0018\u00010.J\u0016\u0010O\u001a\u00020@2\u0006\u0010D\u001a\u00020\u00042\u0006\u0010E\u001a\u00020\u0004R\u001a\u0010\u0011\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0019\"\u0004\u0008\u001d\u0010\u001bR\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u001a\u0010\u0015\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u001f\"\u0004\u0008#\u0010!R\u001a\u0010\u0016\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u0019\"\u0004\u0008)\u0010\u001bR\u001a\u0010\u0005\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010\u0019\"\u0004\u0008+\u0010\u001b\u00a8\u0006Q"
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "Ljava/io/Serializable;",
        "",
        "x",
        "",
        "y",
        "(FF)V",
        "p",
        "s",
        "t",
        "",
        "(FFFFJ)V",
        "motionEvent",
        "Landroid/view/MotionEvent;",
        "(Landroid/view/MotionEvent;)V",
        "source",
        "(Lcom/onyx/android/sdk/base/data/TouchPoint;)V",
        "pressure",
        "size",
        "tiltX",
        "",
        "tiltY",
        "timestamp",
        "(FFFFIIJ)V",
        "getPressure",
        "()F",
        "setPressure",
        "(F)V",
        "getSize",
        "setSize",
        "getTiltX",
        "()I",
        "setTiltX",
        "(I)V",
        "getTiltY",
        "setTiltY",
        "getTimestamp",
        "()J",
        "setTimestamp",
        "(J)V",
        "getX",
        "setX",
        "getY",
        "setY",
        "applyMatrix",
        "matrix",
        "Landroid/graphics/Matrix;",
        "clone",
        "concatTransform",
        "matrixs",
        "",
        "([Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "copy",
        "equalXY",
        "",
        "o",
        "equalXYApproximately",
        "other",
        "threshold",
        "",
        "equals",
        "",
        "hashCode",
        "invertMatrix",
        "",
        "isEmpty",
        "mapMatrix",
        "offset",
        "dx",
        "dy",
        "scale",
        "scaleValue",
        "scaleX",
        "scaleY",
        "set",
        "point",
        "toString",
        "",
        "transform",
        "translate",
        "Companion",
        "sdk-baselite_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTouchPoint.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TouchPoint.kt\ncom/onyx/android/sdk/base/data/TouchPoint\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,601:1\n13309#2,2:602\n*S KotlinDebug\n*F\n+ 1 TouchPoint.kt\ncom/onyx/android/sdk/base/data/TouchPoint\n*L\n139#1:602,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Empty:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OBJECT_BYTE_COUNT:I = 0x20


# instance fields
.field private pressure:F

.field private size:F

.field private tiltX:I

.field private tiltY:I

.field private timestamp:J

.field private x:F

.field private y:F


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/base/data/TouchPoint;->Companion:Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;

    new-instance v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/16 v11, 0x7f

    const/4 v12, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FFFFIIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/base/data/TouchPoint;->Empty:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    .line 1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/16 v9, 0x7f

    const/4 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FFFFIIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 11

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/16 v9, 0x3c

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 12
    invoke-direct/range {v0 .. v10}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FFFFIIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FFFFIIJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->x:F

    .line 4
    iput p2, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->y:F

    .line 5
    iput p3, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->pressure:F

    .line 6
    iput p4, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->size:F

    .line 7
    iput p5, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->tiltX:I

    .line 8
    iput p6, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->tiltY:I

    .line 9
    iput-wide p7, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->timestamp:J

    return-void
.end method

.method public synthetic constructor <init>(FFFFIIJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p10, p9, 0x1

    const/4 v0, 0x0

    if-eqz p10, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p10, p9, 0x2

    if-eqz p10, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p10, p9, 0x4

    if-eqz p10, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p10, p9, 0x10

    const/4 v0, 0x0

    if-eqz p10, :cond_4

    move p5, v0

    :cond_4
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_5

    move p6, v0

    :cond_5
    and-int/lit8 p9, p9, 0x40

    if-eqz p9, :cond_6

    const-wide/16 p7, 0x0

    .line 10
    :cond_6
    invoke-direct/range {p0 .. p8}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FFFFIIJ)V

    return-void
.end method

.method public constructor <init>(FFFFJ)V
    .locals 11

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v9, 0x30

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-wide/from16 v7, p5

    .line 13
    invoke-direct/range {v0 .. v10}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FFFFIIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/MotionEvent;)V
    .locals 12
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "motionEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v4

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSize()F

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    const/16 v10, 0x30

    const/4 v11, 0x0

    move-object v1, p0

    .line 19
    invoke-direct/range {v1 .. v11}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FFFFIIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 20
    sget-object v0, Lcom/onyx/android/sdk/base/data/TouchPoint;->Companion:Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;

    const/16 v1, 0x19

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    const/16 v2, 0x8

    .line 21
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p1

    .line 22
    invoke-virtual {v0, v1, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;->computeAndroidTiltXY(FF)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 23
    iput v0, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->tiltX:I

    .line 24
    iput p1, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->tiltY:I

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 12
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/16 v10, 0x7f

    const/4 v11, 0x0

    move-object v1, p0

    .line 25
    invoke-direct/range {v1 .. v11}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FFFFIIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 26
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->set(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    return-void
.end method

.method public static final synthetic access$getEmpty$cp()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/base/data/TouchPoint;->Empty:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object v0
.end method

.method public static synthetic equalXYApproximately$default(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->equalXYApproximately(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final applyMatrix(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 4
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/base/lite/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/lite/utils/MathUtils;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/lite/utils/MathUtils;->isEmptyMatrix(Landroid/graphics/Matrix;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->x:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->y:F

    const/4 v3, 0x1

    aput v1, v0, v3

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget p1, v0, v2

    iput p1, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->x:F

    aget p1, v0, v3

    iput p1, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->y:F

    return-object p0
.end method

.method public clone()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type com.onyx.android.sdk.base.data.TouchPoint"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->clone()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    return-object p0
.end method

.method public final varargs concatTransform([Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 4
    .param p1    # [Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "matrixs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    if-nez v3, :cond_0

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    :cond_0
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->transform(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    return-object p0
.end method

.method public final copy()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    return-object v0
.end method

.method public final equalXY(Lcom/onyx/android/sdk/base/data/TouchPoint;)Z
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "o"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->x:F

    iget v1, p1, Lcom/onyx/android/sdk/base/data/TouchPoint;->x:F

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    iget p0, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->y:F

    iget p1, p1, Lcom/onyx/android/sdk/base/data/TouchPoint;->y:F

    cmpg-float p0, p0, p1

    if-nez p0, :cond_1

    move p0, v1

    goto :goto_1

    :cond_1
    move p0, v2

    :goto_1
    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method

.method public final equalXYApproximately(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;)Z
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "threshold"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/data/TouchPoint;->Companion:Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;->distance(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)D

    move-result-wide p0

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    float-to-double v0, p2

    cmpg-double p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const-class v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget v2, p1, Lcom/onyx/android/sdk/base/data/TouchPoint;->x:F

    iget v3, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->x:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p1, Lcom/onyx/android/sdk/base/data/TouchPoint;->y:F

    iget v3, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->y:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p1, Lcom/onyx/android/sdk/base/data/TouchPoint;->pressure:F

    iget v3, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->pressure:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p1, Lcom/onyx/android/sdk/base/data/TouchPoint;->size:F

    iget v3, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->size:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->timestamp:J

    iget-wide p0, p1, Lcom/onyx/android/sdk/base/data/TouchPoint;->timestamp:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final getPressure()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->pressure:F

    return p0
.end method

.method public final getSize()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->size:F

    return p0
.end method

.method public final getTiltX()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->tiltX:I

    return p0
.end method

.method public final getTiltY()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->tiltY:I

    return p0
.end method

.method public final getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->timestamp:J

    return-wide v0
.end method

.method public final getX()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->x:F

    return p0
.end method

.method public final getY()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->y:F

    return p0
.end method

.method public hashCode()I
    .locals 6

    iget v0, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->x:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->y:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->pressure:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->size:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget-wide v4, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->timestamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final invertMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/base/lite/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/lite/utils/MathUtils;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/lite/utils/MathUtils;->isEmptyMatrix(Landroid/graphics/Matrix;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->applyMatrix(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-void
.end method

.method public final isEmpty()Z
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/base/data/TouchPoint;->Empty:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final mapMatrix(Landroid/graphics/Matrix;)V
    .locals 4
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->x:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->y:F

    const/4 v3, 0x1

    aput v1, v0, v3

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget p1, v0, v2

    iput p1, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->x:F

    aget p1, v0, v3

    iput p1, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->y:F

    return-void
.end method

.method public final offset(FF)V
    .locals 1

    .line 2
    iget v0, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->x:F

    .line 3
    iget p1, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->y:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->y:F

    return-void
.end method

.method public final offset(II)V
    .locals 0

    int-to-float p1, p1

    int-to-float p2, p2

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->offset(FF)V

    return-void
.end method

.method public final scale(F)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget v0, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->x:F

    .line 2
    iget v0, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->y:F

    return-object p0
.end method

.method public final scale(FF)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    iget v0, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->x:F

    .line 4
    iget p1, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->y:F

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->y:F

    return-object p0
.end method

.method public final set(FF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->x:F

    .line 2
    iput p2, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->y:F

    return-void
.end method

.method public final set(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "point"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget v0, p1, Lcom/onyx/android/sdk/base/data/TouchPoint;->x:F

    iput v0, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->x:F

    .line 4
    iget v0, p1, Lcom/onyx/android/sdk/base/data/TouchPoint;->y:F

    iput v0, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->y:F

    .line 5
    iget v0, p1, Lcom/onyx/android/sdk/base/data/TouchPoint;->pressure:F

    iput v0, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->pressure:F

    .line 6
    iget v0, p1, Lcom/onyx/android/sdk/base/data/TouchPoint;->size:F

    iput v0, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->size:F

    .line 7
    iget v0, p1, Lcom/onyx/android/sdk/base/data/TouchPoint;->tiltX:I

    iput v0, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->tiltX:I

    .line 8
    iget v0, p1, Lcom/onyx/android/sdk/base/data/TouchPoint;->tiltY:I

    iput v0, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->tiltY:I

    .line 9
    iget-wide v0, p1, Lcom/onyx/android/sdk/base/data/TouchPoint;->timestamp:J

    iput-wide v0, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->timestamp:J

    return-void
.end method

.method public final setPressure(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->pressure:F

    return-void
.end method

.method public final setSize(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->size:F

    return-void
.end method

.method public final setTiltX(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->tiltX:I

    return-void
.end method

.method public final setTiltY(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->tiltY:I

    return-void
.end method

.method public final setTimestamp(J)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    iput-wide p1, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->timestamp:J

    return-object p0
.end method

.method public final setTimestamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->timestamp:J

    return-void
.end method

.method public final setX(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->x:F

    return-void
.end method

.method public final setY(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->y:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "x:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " y:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " pressure:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->pressure:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->size:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final transform(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->applyMatrix(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public final translate(FF)V
    .locals 1

    iget v0, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->x:F

    iget p1, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->y:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->y:F

    return-void
.end method
