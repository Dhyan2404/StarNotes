.class public final Lcom/google/android/libraries/vision/visionkit/pipeline/zbbt;
.super Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvn;


# static fields
.field private static final zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbbt;


# instance fields
.field private zbd:I

.field private zbe:I

.field private zbf:F

.field private zbg:I

.field private zbh:F

.field private zbi:I

.field private zbj:Z

.field private zbk:F

.field private zbl:Z

.field private zbm:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbt;

    invoke-direct {v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbt;-><init>()V

    sput-object v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbt;->zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbbt;

    const-class v1, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbt;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zbD(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbt;->zbe:I

    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbt;->zbf:F

    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbt;->zbg:I

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbt;->zbh:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbt;->zbi:I

    iput-boolean v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbt;->zbj:Z

    const v1, 0x3f59999a    # 0.85f

    iput v1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbt;->zbk:F

    iput-boolean v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbt;->zbl:Z

    return-void
.end method

.method public static synthetic a()Lcom/google/android/libraries/vision/visionkit/pipeline/zbbt;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbt;->zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbbt;

    return-object v0
.end method


# virtual methods
.method public final zbb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

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
    sget-object p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbt;->zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbbt;

    return-object p0

    :cond_1
    new-instance p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbr;

    invoke-direct {p0, p2}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbr;-><init>(Lcom/sunia/HTREnginev2/ycp;)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbt;

    invoke-direct {p0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbt;-><init>()V

    return-object p0

    :cond_3
    const-string v0, "zbd"

    const-string v1, "zbe"

    const-string v2, "zbf"

    const-string v3, "zbg"

    const-string v4, "zbh"

    const-string v5, "zbi"

    sget-object v6, Lcom/sunia/HTREnginev2/zcp;->a:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuj;

    const-string v7, "zbj"

    const-string v8, "zbk"

    const-string v9, "zbl"

    const-string v10, "zbm"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbt;->zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbbt;

    const-string p2, "\u0004\t\u0000\u0001\u0001\u0011\t\u0000\u0000\u0000\u0001\u1004\u0000\u0005\u1001\u0001\u0006\u1004\u0002\u0007\u1001\u0003\u000c\u180c\u0004\u000e\u1007\u0005\u000f\u1001\u0006\u0010\u1007\u0007\u0011\u1001\u0008"

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zbA(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
