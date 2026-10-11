.class public final Lcom/onyx/android/sdk/note/common/utils/PenUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\r\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u0002R\u0014\u0010\u0012\u001a\u00020\u00048\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0017\u001a\u00020\u00138\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0015R\u001b\u0010\u001c\u001a\u00020\u00188BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u0010\u0010\u001b\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/utils/PenUtils;",
        "",
        "",
        "penType",
        "",
        "getMaxStrokeWidth",
        "getMinStrokeWidth",
        "getDefaultStrokeWidth",
        "getMaxStrokeNib",
        "getMinStrokeNib",
        "getMaxStrokePressure",
        "getMinStrokePressure",
        "getMinSmoothLevel",
        "getMaxSmoothLevel",
        "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
        "defaultPenArgs",
        "a",
        "F",
        "PHYSICS_SIZE_TO_SCREEN_RATIO",
        "",
        "b",
        "Ljava/lang/String;",
        "PEN_CONFIG_RAW_NAME_SUFFIX",
        "DEFAULT_PEN_CONFIG_RAW_NAME",
        "Lcom/onyx/android/sdk/note/common/pen/data/PenDefaultConfig;",
        "c",
        "Lkotlin/Lazy;",
        "()Lcom/onyx/android/sdk/note/common/pen/data/PenDefaultConfig;",
        "defaultPenConfig",
        "<init>",
        "()V",
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
.field public static final DEFAULT_PEN_CONFIG_RAW_NAME:Ljava/lang/String; = "default_pen_config"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/onyx/android/sdk/note/common/utils/PenUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:F = 1.5f

.field public static final b:Ljava/lang/String; = "_pen_config"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/note/common/utils/PenUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/utils/PenUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/note/common/utils/PenUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/PenUtils;

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/PenUtils$defaultPenConfig$2;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/PenUtils$defaultPenConfig$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/note/common/utils/PenUtils;->c:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/onyx/android/sdk/note/common/pen/data/PenDefaultConfig;
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/note/common/utils/PenUtils;->c:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/note/common/pen/data/PenDefaultConfig;

    return-object p0
.end method

.method public final defaultPenArgs(I)Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v8, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    sget-object v0, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->shortUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/utils/PenUtils;->getDefaultStrokeWidth(I)F

    move-result v3

    const/high16 v4, -0x1000000

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, v8

    move v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;-><init>(Ljava/lang/String;IFILcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 p0, 0x5

    if-eq p1, p0, :cond_3

    const/16 p0, 0xf

    if-eq p1, p0, :cond_2

    const/16 p0, 0x16

    if-eq p1, p0, :cond_1

    const/16 p0, 0x27

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x7

    invoke-virtual {v8, p0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->setSubShapeType(I)V

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;-><init>(I)V

    invoke-virtual {v8, p0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->setAttrs(Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    invoke-virtual {v8, p0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->setRoundCorner(Z)V

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p1, Lcom/onyx/android/sdk/note/R$dimen;->shape_percent_80:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result p0

    invoke-virtual {v8, p0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->setNib(F)V

    sget-object p0, Lcom/onyx/android/sdk/device/DeviceFactory;->INSTANCE:Lcom/onyx/android/sdk/device/DeviceFactory;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/device/DeviceFactory;->getCurrentDevice()Lcom/onyx/android/sdk/device/CommonBaseDevice;

    move-result-object p0

    const/high16 p1, 0x3ec00000    # 0.375f

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/device/CommonBaseDevice;->getDefaultPressureSensitivity(F)F

    move-result p0

    invoke-virtual {v8, p0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->setPressureSensitivity(F)V

    :goto_0
    return-object v8
.end method

.method public final getDefaultStrokeWidth(I)F
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/PenUtils;->a()Lcom/onyx/android/sdk/note/common/pen/data/PenDefaultConfig;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/pen/data/PenDefaultConfig;->getDefaultStrokeWidth(I)F

    move-result p0

    return p0
.end method

.method public final getMaxSmoothLevel(I)F
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/PenUtils;->a()Lcom/onyx/android/sdk/note/common/pen/data/PenDefaultConfig;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/pen/data/PenDefaultConfig;->getMaxSmoothLevel(I)F

    move-result p0

    return p0
.end method

.method public final getMaxStrokeNib(I)F
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/PenUtils;->a()Lcom/onyx/android/sdk/note/common/pen/data/PenDefaultConfig;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/pen/data/PenDefaultConfig;->getMaxStrokeNib(I)F

    move-result p0

    return p0
.end method

.method public final getMaxStrokePressure(I)F
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/PenUtils;->a()Lcom/onyx/android/sdk/note/common/pen/data/PenDefaultConfig;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/pen/data/PenDefaultConfig;->getMaxStrokePressure(I)F

    move-result p0

    return p0
.end method

.method public final getMaxStrokeWidth(I)F
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/PenUtils;->a()Lcom/onyx/android/sdk/note/common/pen/data/PenDefaultConfig;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/pen/data/PenDefaultConfig;->getMaxStrokeWidth(I)F

    move-result p0

    return p0
.end method

.method public final getMinSmoothLevel(I)F
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/PenUtils;->a()Lcom/onyx/android/sdk/note/common/pen/data/PenDefaultConfig;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/pen/data/PenDefaultConfig;->getMinSmoothLevel(I)F

    move-result p0

    return p0
.end method

.method public final getMinStrokeNib(I)F
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/PenUtils;->a()Lcom/onyx/android/sdk/note/common/pen/data/PenDefaultConfig;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/pen/data/PenDefaultConfig;->getMinStrokeNib(I)F

    move-result p0

    return p0
.end method

.method public final getMinStrokePressure(I)F
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/PenUtils;->a()Lcom/onyx/android/sdk/note/common/pen/data/PenDefaultConfig;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/pen/data/PenDefaultConfig;->getMinStrokePressure(I)F

    move-result p0

    return p0
.end method

.method public final getMinStrokeWidth(I)F
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/utils/PenUtils;->a()Lcom/onyx/android/sdk/note/common/pen/data/PenDefaultConfig;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/pen/data/PenDefaultConfig;->getMinStrokeWidth(I)F

    move-result p0

    return p0
.end method
