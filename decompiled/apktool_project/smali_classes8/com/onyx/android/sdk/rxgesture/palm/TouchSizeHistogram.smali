.class public final Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTouchSizeHistogram.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TouchSizeHistogram.kt\ncom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,229:1\n288#2,2:230\n2730#2,7:232\n2730#2,7:239\n1855#2,2:246\n1855#2,2:248\n2730#2,7:250\n215#3,2:257\n*S KotlinDebug\n*F\n+ 1 TouchSizeHistogram.kt\ncom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram\n*L\n64#1:230,2\n169#1:232,7\n170#1:239,7\n175#1:246,2\n184#1:248,2\n191#1:250,7\n192#1:257,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0010\u0008\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 12\u00020\u0001:\u00011B\u0007\u00a2\u0006\u0004\u0008/\u00100J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\n\u001a\u00020\u0006J\u0006\u0010\u000b\u001a\u00020\u0006J\u0018\u0010\u000e\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u0010\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000cH\u0002J\u0010\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0008\u0010\u0015\u001a\u00020\u000cH\u0002R \u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00170\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001d\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR \u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00170\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u0019R\"\u0010%\u001a\u00020\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010 \u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u0016\u0010&\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u001cR\u0016\u0010\'\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010 R\u0016\u0010)\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010\u001cR\u0016\u0010,\u001a\u00020*8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010+R\u0016\u0010.\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008-\u0010 \u00a8\u00062"
    }
    d2 = {
        "Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;",
        "",
        "Landroid/view/MotionEvent;",
        "event",
        "",
        "isForceDetect",
        "",
        "collectSize",
        "Lcom/onyx/android/sdk/rxgesture/palm/PalmType;",
        "getTouchSizeType",
        "logAfterUpOrCancel",
        "reset",
        "",
        "size",
        "h",
        "j",
        "f",
        "e",
        "",
        "msg",
        "k",
        "d",
        "",
        "",
        "a",
        "Ljava/util/Map;",
        "sizeMap",
        "b",
        "I",
        "totalCollectEventCount",
        "c",
        "palmCountMap",
        "F",
        "getPalmSize",
        "()F",
        "setPalmSize",
        "(F)V",
        "palmSize",
        "modeCount",
        "modeSize",
        "g",
        "eventCollectionCount",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        "lastCollectPoint",
        "i",
        "savedPalmSize",
        "<init>",
        "()V",
        "Companion",
        "sdk-rxgesture_release"
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
        "SMAP\nTouchSizeHistogram.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TouchSizeHistogram.kt\ncom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,229:1\n288#2,2:230\n2730#2,7:232\n2730#2,7:239\n1855#2,2:246\n1855#2,2:248\n2730#2,7:250\n215#3,2:257\n*S KotlinDebug\n*F\n+ 1 TouchSizeHistogram.kt\ncom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram\n*L\n64#1:230,2\n169#1:232,7\n170#1:239,7\n175#1:246,2\n184#1:248,2\n191#1:250,7\n192#1:257,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_PALM_SIZE:Ljava/lang/String; = "key_palm_size"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MIN_PALM_SIMILAR_RATIO:F = 0.8f

.field public static final PALM_COLLECT_EVENT_COUNT:I = 0x5

.field public static final PALM_COLLECT_EVENT_FORCE_COUNT:I = 0x3

.field public static j:Z

.field public static k:Z


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:I

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:F

.field public e:I

.field public f:F

.field public g:I

.field public h:Landroid/graphics/PointF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->Companion:Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram$Companion;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->k:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->c:Ljava/util/Map;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->d:F

    new-instance v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->h:Landroid/graphics/PointF;

    invoke-static {}, Lcom/blankj/utilcode/util/SPUtils;->getInstance()Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v1

    const-string v2, "key_palm_size"

    invoke-virtual {v1, v2, v0}, Lcom/blankj/utilcode/util/SPUtils;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->i:F

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->i(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDEBUG_LOG$cp()Z
    .locals 1

    sget-boolean v0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->j:Z

    return v0
.end method

.method public static final synthetic access$isEnabledPalmDetect$cp()Z
    .locals 1

    sget-boolean v0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->k:Z

    return v0
.end method

.method public static final synthetic access$setDEBUG_LOG$cp(Z)V
    .locals 0

    sput-boolean p0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->j:Z

    return-void
.end method

.method public static final synthetic access$setEnabledPalmDetect$cp(Z)V
    .locals 0

    sput-boolean p0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->k:Z

    return-void
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->l(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->g(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic collectSize$default(Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;Landroid/view/MotionEvent;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->collectSize(Landroid/view/MotionEvent;Z)V

    return-void
.end method

.method public static final g(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public static final i(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public static final l(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method


# virtual methods
.method public final collectSize(Landroid/view/MotionEvent;Z)V
    .locals 6
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_1

    iget v2, p0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->i:F

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    cmpg-float v2, v2, v3

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    const-string p1, "Palm features have been collected before!!!"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->k(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MotionEventKt;->isDownAction(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->g:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->g:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "collectSize start eventCollectionCount\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->k(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSize()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "no size value, do not collect size, x= "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", y = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", size = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSize()F

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->k(Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v3

    invoke-virtual {p0, v3, p2}, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->h(FZ)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v3

    move v4, v0

    :goto_2
    if-ge v4, v3, :cond_4

    invoke-virtual {p1, v2, v4}, Landroid/view/MotionEvent;->getHistoricalSize(II)F

    move-result v5

    invoke-virtual {p0, v5, p2}, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->h(FZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->h:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public final d()F
    .locals 2

    iget p0, p0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->d:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    cmpg-float v1, p0, v0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    return v0

    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/device/DeviceFactory;->INSTANCE:Lcom/onyx/android/sdk/device/DeviceFactory;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/device/DeviceFactory;->getCurrentDevice()Lcom/onyx/android/sdk/device/CommonBaseDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/device/CommonBaseDevice;->getBigPalmSizeFactor()F

    move-result v0

    mul-float/2addr p0, v0

    return p0
.end method

.method public final e(Landroid/view/MotionEvent;)Lcom/onyx/android/sdk/rxgesture/palm/PalmType;
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->d()F

    move-result v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/rxgesture/palm/PalmType;->BIG_PALM_SIZE:Lcom/onyx/android/sdk/rxgesture/palm/PalmType;

    return-object p0

    :cond_0
    iget v4, p0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->d:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/rxgesture/palm/PalmType;->PALM_SIZE:Lcom/onyx/android/sdk/rxgesture/palm/PalmType;

    return-object p0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v3

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_4

    invoke-virtual {p1, v2, v4}, Landroid/view/MotionEvent;->getHistoricalSize(II)F

    move-result v5

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->d()F

    move-result v6

    cmpl-float v6, v5, v6

    if-lez v6, :cond_2

    sget-object p0, Lcom/onyx/android/sdk/rxgesture/palm/PalmType;->BIG_PALM_SIZE:Lcom/onyx/android/sdk/rxgesture/palm/PalmType;

    return-object p0

    :cond_2
    iget v6, p0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->d:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    sget-object p0, Lcom/onyx/android/sdk/rxgesture/palm/PalmType;->PALM_SIZE:Lcom/onyx/android/sdk/rxgesture/palm/PalmType;

    return-object p0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    sget-object p0, Lcom/onyx/android/sdk/rxgesture/palm/PalmType;->NORMAL_SIZE:Lcom/onyx/android/sdk/rxgesture/palm/PalmType;

    return-object p0
.end method

.method public final f(F)V
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram$increasePalmSizeCount$count$1;->INSTANCE:Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram$increasePalmSizeCount$count$1;

    new-instance v3, Lcom/sunia/HTREnginev2/okn;

    invoke-direct {v3, v2}, Lcom/sunia/HTREnginev2/okn;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "computeIfAbsent(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->c:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final getPalmSize()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->d:F

    return p0
.end method

.method public final getTouchSizeType(Landroid/view/MotionEvent;)Lcom/onyx/android/sdk/rxgesture/palm/PalmType;
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->i:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpg-float v1, v0, v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    iput v0, p0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->d:F

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->e(Landroid/view/MotionEvent;)Lcom/onyx/android/sdk/rxgesture/palm/PalmType;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->e(Landroid/view/MotionEvent;)Lcom/onyx/android/sdk/rxgesture/palm/PalmType;

    move-result-object p0

    return-object p0
.end method

.method public final h(FZ)V
    .locals 7

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v5, v4

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_1

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    if-eqz v4, :cond_0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    check-cast v1, Ljava/lang/Float;

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->a:Ljava/util/Map;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    sget-object v5, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram$increaseSizeCount$count$1;->INSTANCE:Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram$increaseSizeCount$count$1;

    new-instance v6, Lcom/sunia/HTREnginev2/pkn;

    invoke-direct {v6, v5}, Lcom/sunia/HTREnginev2/pkn;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    const-string v4, "computeIfAbsent(...)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    add-int/2addr v0, v2

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_3

    :cond_4
    move v1, p1

    :goto_3
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->a:Ljava/util/Map;

    invoke-interface {v5, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->b:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->b:I

    iget v1, p0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->f:F

    iget v4, p0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->e:I

    if-le v0, v4, :cond_5

    iput v0, p0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->e:I

    iput p1, p0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->f:F

    :cond_5
    iget p1, p0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->f:F

    cmpg-float v0, v1, p1

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    move v2, v3

    :goto_4
    const-string v0, ", modeCount = "

    if-nez v2, :cond_7

    sget-object v1, Lcom/onyx/android/sdk/device/DeviceFactory;->INSTANCE:Lcom/onyx/android/sdk/device/DeviceFactory;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/device/DeviceFactory;->getCurrentDevice()Lcom/onyx/android/sdk/device/CommonBaseDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/device/CommonBaseDevice;->getPalmSizeFactor()F

    move-result v1

    mul-float/2addr p1, v1

    iput p1, p0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->d:F

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "palmSize changed = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->d:F

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", modeSize = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->f:F

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->e:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->k(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->j(Z)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {}, Lcom/blankj/utilcode/util/SPUtils;->getInstance()Lcom/blankj/utilcode/util/SPUtils;

    move-result-object p1

    const-string v1, "key_palm_size"

    iget v2, p0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->d:F

    invoke-virtual {p1, v1, v2}, Lcom/blankj/utilcode/util/SPUtils;->put(Ljava/lang/String;F)V

    iget p1, p0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->d:F

    iput p1, p0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->i:F

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TouchSizeHistogram modeSie:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->f:F

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " palmSize:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->d:F

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " modeCount:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->e:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/LogUtils;->file(Ljava/lang/Object;)V

    if-eqz p2, :cond_8

    const-string p1, "success!"

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    iput v3, p0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->g:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "enabledDetectByModeCount, first mode, modeSize = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->f:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->e:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", palmSize = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->d:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", totalCollectEventCount = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->b:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->k(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public final j(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    :goto_0
    iget p0, p0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->g:I

    if-lt p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final k(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->j:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final logAfterUpOrCancel()V
    .locals 16

    move-object/from16 v0, p0

    sget-boolean v1, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->j:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->a:Ljava/util/Map;

    iget-object v2, v0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->c:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--- start log size map, map.size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ---"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->k(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    if-eqz v4, :cond_f

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    add-int/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0

    :cond_2
    :goto_1
    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_f

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    const/4 v7, 0x0

    goto :goto_3

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v8

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    sget-object v10, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram$logAfterUpOrCancel$totalSizeValue$1$1;->INSTANCE:Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram$logAfterUpOrCancel$totalSizeValue$1$1;

    new-instance v11, Lcom/sunia/HTREnginev2/qkn;

    invoke-direct {v11, v10}, Lcom/sunia/HTREnginev2/qkn;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v1, v9, v11}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v9

    const-string v10, "computeIfAbsent(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    goto :goto_2

    :cond_4
    :goto_3
    check-cast v7, Ljava/lang/Float;

    const/4 v5, 0x0

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    goto :goto_4

    :cond_5
    move v7, v5

    :goto_4
    int-to-float v8, v4

    div-float/2addr v7, v8

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v11, v5

    const/4 v12, 0x0

    :cond_6
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->floatValue()F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    if-eqz v14, :cond_7

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    goto :goto_6

    :cond_7
    const/4 v14, 0x0

    :goto_6
    if-le v14, v12, :cond_6

    move v11, v13

    move v12, v14

    goto :goto_5

    :cond_8
    sget-object v9, Lcom/onyx/android/sdk/device/DeviceFactory;->INSTANCE:Lcom/onyx/android/sdk/device/DeviceFactory;

    invoke-virtual {v9}, Lcom/onyx/android/sdk/device/DeviceFactory;->getCurrentDevice()Lcom/onyx/android/sdk/device/CommonBaseDevice;

    move-result-object v9

    invoke-virtual {v9}, Lcom/onyx/android/sdk/device/CommonBaseDevice;->getPalmSizeFactor()F

    move-result v9

    mul-float/2addr v9, v11

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const-string v13, ", count = "

    if-eqz v12, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    if-eqz v14, :cond_9

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    goto :goto_8

    :cond_9
    const/4 v14, 0x0

    :goto_8
    int-to-float v15, v14

    sget-object v6, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    const-string v10, "FLOAT_ONE"

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    mul-float/2addr v15, v6

    div-float/2addr v15, v8

    add-float/2addr v5, v15

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "size = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", probability = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ", accProbability = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->k(Ljava/lang/String;)V

    goto :goto_7

    :cond_a
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_b

    const/4 v6, 0x0

    goto :goto_a

    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    add-int/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_9

    :cond_c
    :goto_a
    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_d

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_b

    :cond_d
    const/4 v10, 0x0

    :goto_b
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "palmDetail, size = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->k(Ljava/lang/String;)V

    goto :goto_c

    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "map.size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", newPalmSize = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", this.palmSize = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->d:F

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", averageSize = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", modeProbabilitySize = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", totalEventCount = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", palmDetectTotal = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->k(Ljava/lang/String;)V

    const-string v1, "--- finish log size map---"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->k(Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method public final reset()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->f:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->e:I

    iput v0, p0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->g:I

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->i:F

    iput v0, p0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->d:F

    return-void
.end method

.method public final setPalmSize(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->d:F

    return-void
.end method
