.class public final Lcom/onyx/android/sdk/hwr/utils/HWRStrokeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/hwr/utils/HWRStrokeUtils$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHWRStrokeUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRStrokeUtils.kt\ncom/onyx/android/sdk/hwr/utils/HWRStrokeUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,157:1\n1855#2,2:158\n*S KotlinDebug\n*F\n+ 1 HWRStrokeUtils.kt\ncom/onyx/android/sdk/hwr/utils/HWRStrokeUtils\n*L\n73#1:158,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0013\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008:\u0010;J\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J(\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000b\u001a\u00020\nJ\u0016\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u000f2\u0006\u0010\u000e\u001a\u00020\rJ$\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u000f*\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u000f2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011J\u0012\u0010\u0013\u001a\u00020\u0014*\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0011J\u000e\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u0015J=\u0010\u001d\u001a\u00020\u00142\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00182\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00182\u0012\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00150\u001b\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0016\u0010#\u001a\u00020\u00152\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020!J\u0016\u0010(\u001a\u00020\'2\u0006\u0010%\u001a\u00020$2\u0006\u0010&\u001a\u00020$J\u0016\u0010*\u001a\u00020)2\u0006\u0010%\u001a\u00020$2\u0006\u0010&\u001a\u00020$J\u0010\u0010,\u001a\u00020)2\u0006\u0010+\u001a\u00020)H\u0002R\u001c\u0010/\u001a\n -*\u0004\u0018\u00010\u00150\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008,\u0010.R\u0014\u00100\u001a\u00020\n8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u00080\u00101R\u0014\u00102\u001a\u00020\n8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u00082\u00101R\u0014\u00103\u001a\u00020\n8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u00083\u00101R\u0014\u00104\u001a\u00020)8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u00084\u00105R\u0014\u00106\u001a\u00020)8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u00086\u00105R\u0014\u00107\u001a\u00020\n8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u00087\u00101R\u0014\u00108\u001a\u00020)8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u00088\u00105R\u0014\u00109\u001a\u00020)8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u00089\u00105\u00a8\u0006<"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/utils/HWRStrokeUtils;",
        "",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "point",
        "Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;",
        "eventType",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;",
        "hwrPointerEvent",
        "",
        "timestamp",
        "",
        "pointerId",
        "pointerEvent",
        "Lcom/onyx/android/sdk/base/data/TouchPointList;",
        "pointList",
        "",
        "inputPointerEvents",
        "Landroid/graphics/Matrix;",
        "matrix",
        "applyMatrix",
        "",
        "",
        "contentType",
        "getLimitPointCount",
        "",
        "shapeIds",
        "itemIds",
        "",
        "itemIdMap",
        "fillItemIdMap",
        "([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)V",
        "Landroid/content/Context;",
        "context",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;",
        "exceptionType",
        "handleHWRException",
        "Landroid/graphics/RectF;",
        "gestureRect",
        "targetRect",
        "",
        "isIntersectByAreaThreshold",
        "",
        "getRectIntersectArea",
        "widthOrHeight",
        "a",
        "kotlin.jvm.PlatformType",
        "Ljava/lang/String;",
        "TAG",
        "MAX_HWR_RAW_SHAPE_POINT_COUNT",
        "I",
        "MAX_HWR_GESTURE_POINT_COUNT",
        "MAX_HWR_DIAGRAM_POINT_COUNT",
        "ERASE_GESTURE_SHAPE_POINT_FILTER_AREA",
        "F",
        "PEN_UP_GESTURE_RECOGNIZE_FILTER_TIME_MS",
        "HWR_ERASE_INTERSECT_STEP_POINT_COUNT",
        "HWR_MIN_SIZE",
        "HWR_MIN_SCALE",
        "<init>",
        "()V",
        "sdk-hwr_release"
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
        "SMAP\nHWRStrokeUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRStrokeUtils.kt\ncom/onyx/android/sdk/hwr/utils/HWRStrokeUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,157:1\n1855#2,2:158\n*S KotlinDebug\n*F\n+ 1 HWRStrokeUtils.kt\ncom/onyx/android/sdk/hwr/utils/HWRStrokeUtils\n*L\n73#1:158,2\n*E\n"
    }
.end annotation


# static fields
.field public static final ERASE_GESTURE_SHAPE_POINT_FILTER_AREA:F = 0.5f

.field public static final HWR_ERASE_INTERSECT_STEP_POINT_COUNT:I = 0x19

.field public static final HWR_MIN_SCALE:F = 3.0f

.field public static final HWR_MIN_SIZE:F = 50.0f

.field public static final INSTANCE:Lcom/onyx/android/sdk/hwr/utils/HWRStrokeUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MAX_HWR_DIAGRAM_POINT_COUNT:I = 0xbb8

.field public static final MAX_HWR_GESTURE_POINT_COUNT:I = 0x3e8

.field public static final MAX_HWR_RAW_SHAPE_POINT_COUNT:I = 0xbb8

.field public static final PEN_UP_GESTURE_RECOGNIZE_FILTER_TIME_MS:F = 1000.0f

.field public static final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/hwr/utils/HWRStrokeUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/utils/HWRStrokeUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/hwr/utils/HWRStrokeUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/HWRStrokeUtils;

    const-class v0, Lcom/onyx/android/sdk/hwr/utils/HWRStrokeUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/hwr/utils/HWRStrokeUtils;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic pointerEvent$default(Lcom/onyx/android/sdk/hwr/utils/HWRStrokeUtils;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;JIILjava/lang/Object;)Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    const/4 p5, -0x1

    :cond_0
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/onyx/android/sdk/hwr/utils/HWRStrokeUtils;->pointerEvent(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;JI)Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(F)F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public final applyMatrix(Ljava/util/List;Landroid/graphics/Matrix;)Ljava/util/List;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;",
            ">;",
            "Landroid/graphics/Matrix;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p2, :cond_1

    return-object p1

    .line 1
    :cond_1
    move-object p0, p1

    check-cast p0, Ljava/lang/Iterable;

    .line 2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    .line 3
    sget-object v1, Lcom/onyx/android/sdk/hwr/utils/HWRStrokeUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/HWRStrokeUtils;

    invoke-virtual {v1, v0, p2}, Lcom/onyx/android/sdk/hwr/utils/HWRStrokeUtils;->applyMatrix(Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public final applyMatrix(Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;Landroid/graphics/Matrix;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "matrix"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x2

    new-array p0, p0, [F

    .line 4
    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->getX()F

    move-result v0

    const/4 v1, 0x0

    aput v0, p0, v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->getY()F

    move-result v0

    const/4 v2, 0x1

    aput v0, p0, v2

    .line 5
    invoke-virtual {p2, p0}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget p2, p0, v1

    .line 6
    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->setX(F)V

    aget p0, p0, v2

    .line 7
    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->setY(F)V

    return-void
.end method

.method public final fillItemIdMap([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p1    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p0, "shapeIds"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "itemIds"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "itemIdMap"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p0, p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-eqz p0, :cond_1

    return-void

    :cond_1
    array-length p0, p1

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    return-void

    :cond_3
    array-length p0, p2

    array-length v0, p1

    if-eq p0, v0, :cond_4

    return-void

    :cond_4
    invoke-interface {p3}, Ljava/util/Map;->clear()V

    array-length p0, p1

    :goto_2
    if-ge v1, p0, :cond_5

    aget-object v0, p1, v1

    aget-object v2, p2, v1

    invoke-interface {p3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public final getLimitPointCount(Ljava/lang/String;)I
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "contentType"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "Diagram"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xbb8

    return p0

    :cond_0
    const-string p0, "Gesture"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    const/16 p0, 0x3e8

    return p0
.end method

.method public final getRectIntersectArea(Landroid/graphics/RectF;Landroid/graphics/RectF;)F
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gestureRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetRect"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/utils/HWRStrokeUtils;->a(F)F

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/utils/HWRStrokeUtils;->a(F)F

    move-result v0

    mul-float/2addr p1, v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/utils/HWRStrokeUtils;->a(F)F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/hwr/utils/HWRStrokeUtils;->a(F)F

    move-result p0

    mul-float/2addr v0, p0

    div-float p0, p1, v0

    :goto_0
    return p0
.end method

.method public final handleHWRException(Landroid/content/Context;Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;)Ljava/lang/String;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "exceptionType"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/hwr/R$string;->unknown_error:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/hwr/utils/HWRStrokeUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    sget p1, Lcom/onyx/android/sdk/hwr/R$string;->data_error:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0

    :cond_1
    sget p1, Lcom/onyx/android/sdk/hwr/R$string;->convert_fail:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0

    :cond_2
    sget-object p2, Lcom/onyx/android/sdk/base/utils/NetworkUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/NetworkUtils;

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/base/utils/NetworkUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    sget p1, Lcom/onyx/android/sdk/hwr/R$string;->open_wifi_recognize:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0

    :cond_3
    sget p1, Lcom/onyx/android/sdk/hwr/R$string;->recong_init_failed:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final hwrPointerEvent(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;)Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;
    .locals 9
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "point"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "eventType"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getPressure()F

    move-result v6

    sget-object v7, Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerType;->PEN:Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerType;

    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v8}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;-><init>(Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;FFJFLcom/onyx/android/sdk/hwr/data/constant/HWRPointerType;I)V

    return-object p0
.end method

.method public final inputPointerEvents(Lcom/onyx/android/sdk/base/data/TouchPointList;)Ljava/util/List;
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPointList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TouchPointList;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "pointList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/base/data/TouchPointList;->get(I)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    sget-object v3, Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;->DOWN:Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;

    invoke-virtual {p0, v2, v3}, Lcom/onyx/android/sdk/hwr/utils/HWRStrokeUtils;->hwrPointerEvent(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;)Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/base/data/TouchPointList;->get(I)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v3

    sget-object v4, Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;->MOVE:Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;

    invoke-virtual {p0, v3, v4}, Lcom/onyx/android/sdk/hwr/utils/HWRStrokeUtils;->hwrPointerEvent(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;)Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->get(I)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;->UP:Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/hwr/utils/HWRStrokeUtils;->hwrPointerEvent(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;)Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public final isIntersectByAreaThreshold(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 3
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gestureRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetRect"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/hwr/utils/HWRStrokeUtils;->getRectIntersectArea(Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result p0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "intersectArea = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    const-class v2, Lcom/onyx/android/sdk/hwr/utils/HWRStrokeUtils;

    invoke-virtual {p1, v2, p2, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    const/high16 p1, 0x3f000000    # 0.5f

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final pointerEvent(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;JI)Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;
    .locals 9
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "point"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "eventType"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getPressure()F

    move-result v6

    sget-object v7, Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerType;->PEN:Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerType;

    move-object v0, p0

    move-object v1, p2

    move-wide v4, p3

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;-><init>(Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;FFJFLcom/onyx/android/sdk/hwr/data/constant/HWRPointerType;I)V

    return-object p0
.end method
