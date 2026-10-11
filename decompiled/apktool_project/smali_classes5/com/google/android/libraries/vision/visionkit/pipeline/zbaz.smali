.class public final Lcom/google/android/libraries/vision/visionkit/pipeline/zbaz;
.super Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvn;


# static fields
.field private static final zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbaz;


# instance fields
.field private zbd:I

.field private zbe:Ljava/lang/Object;

.field private zbf:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;

.field private zbg:B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbaz;

    invoke-direct {v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbaz;-><init>()V

    sput-object v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbaz;->zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbaz;

    const-class v1, Lcom/google/android/libraries/vision/visionkit/pipeline/zbaz;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zbD(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbaz;->zbd:I

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbaz;->zbg:B

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zby()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbaz;->zbf:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;

    return-void
.end method

.method public static synthetic a()Lcom/google/android/libraries/vision/visionkit/pipeline/zbaz;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbaz;->zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbaz;

    return-object v0
.end method


# virtual methods
.method public final zbb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_5

    const/4 p3, 0x2

    if-eq p1, p3, :cond_4

    const/4 p3, 0x3

    if-eq p1, p3, :cond_3

    const/4 p3, 0x4

    const/4 v0, 0x0

    if-eq p1, p3, :cond_2

    const/4 p3, 0x5

    if-eq p1, p3, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iput-byte p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbaz;->zbg:B

    return-object v0

    :cond_1
    sget-object p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbaz;->zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbaz;

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbay;

    invoke-direct {p0, v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbay;-><init>(Lcom/sunia/HTREnginev2/ncp;)V

    return-object p0

    :cond_3
    new-instance p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbaz;

    invoke-direct {p0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbaz;-><init>()V

    return-object p0

    :cond_4
    const-string p0, "zbf"

    const-class p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbadm;

    const-string p2, "zbe"

    const-string p3, "zbd"

    filled-new-array {p2, p3, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/android/libraries/vision/visionkit/pipeline/zbaz;->zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbaz;

    const-string p2, "\u0004\u0002\u0001\u0000\u0001\u0003\u0002\u0000\u0001\u0001\u0001:\u0000\u0003\u041b"

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zbA(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_5
    iget-byte p0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbaz;->zbg:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
