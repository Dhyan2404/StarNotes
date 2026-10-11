.class public final Lcom/google/android/libraries/vision/visionkit/pipeline/zbas;
.super Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvn;


# static fields
.field private static final zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbas;


# instance fields
.field private zbd:I

.field private zbe:F

.field private zbf:J

.field private zbg:J

.field private zbh:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbas;

    invoke-direct {v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbas;-><init>()V

    sput-object v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbas;->zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbas;

    const-class v1, Lcom/google/android/libraries/vision/visionkit/pipeline/zbas;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zbD(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/google/android/libraries/vision/visionkit/pipeline/zbas;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbas;->zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbas;

    return-object v0
.end method


# virtual methods
.method public final zbb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_4

    const/4 p0, 0x2

    if-eq p1, p0, :cond_3

    const/4 p0, 0x3

    if-eq p1, p0, :cond_2

    const/4 p0, 0x4

    const/4 p2, 0x0

    if-eq p1, p0, :cond_1

    const/4 p0, 0x5

    if-eq p1, p0, :cond_0

    return-object p2

    :cond_0
    sget-object p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbas;->zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbas;

    return-object p0

    :cond_1
    new-instance p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbar;

    invoke-direct {p0, p2}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbar;-><init>(Lcom/sunia/HTREnginev2/lcp;)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbas;

    invoke-direct {p0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbas;-><init>()V

    return-object p0

    :cond_3
    const-string p0, "zbg"

    const-string p1, "zbh"

    const-string p2, "zbd"

    const-string p3, "zbe"

    const-string v0, "zbf"

    filled-new-array {p2, p3, v0, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/android/libraries/vision/visionkit/pipeline/zbas;->zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbas;

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1001\u0000\u0002\u1002\u0001\u0003\u1002\u0002\u0004\u1002\u0003"

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zbA(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
