.class public final Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;
.super Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvn;


# static fields
.field private static final zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;


# instance fields
.field private zbd:I

.field private zbe:I

.field private zbf:Ljava/lang/Object;

.field private zbg:Lcom/google/android/libraries/vision/visionkit/pipeline/zbdo;

.field private zbh:Z

.field private zbi:Lcom/google/android/libraries/vision/visionkit/pipeline/zbg;

.field private zbj:Lcom/google/android/libraries/vision/visionkit/pipeline/zbfc;

.field private zbk:Lcom/google/android/libraries/vision/visionkit/pipeline/zbd;

.field private zbl:I

.field private zbm:B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;

    invoke-direct {v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;-><init>()V

    sput-object v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;->zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;

    const-class v1, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zbD(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;->zbe:I

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;->zbm:B

    return-void
.end method

.method public static synthetic a()Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;->zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;

    return-object v0
.end method

.method public static synthetic b(Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;Lcom/google/android/libraries/vision/visionkit/pipeline/zbfc;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;->zbj:Lcom/google/android/libraries/vision/visionkit/pipeline/zbfc;

    iget p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;->zbd:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;->zbd:I

    return-void
.end method

.method public static synthetic c(Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;Lcom/google/android/libraries/vision/visionkit/pipeline/zbdo;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;->zbg:Lcom/google/android/libraries/vision/visionkit/pipeline/zbdo;

    iget p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;->zbd:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;->zbd:I

    return-void
.end method

.method public static zbc()Lcom/google/android/libraries/vision/visionkit/pipeline/zbbz;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;->zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zbq()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtz;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbz;

    return-object v0
.end method


# virtual methods
.method public final zba()I
    .locals 0

    iget p0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;->zbl:I

    return p0
.end method

.method public final zbb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

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
    iput-byte p1, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;->zbm:B

    return-object v0

    :cond_1
    sget-object p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;->zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbz;

    invoke-direct {p0, v0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbbz;-><init>(Lcom/sunia/HTREnginev2/bdp;)V

    return-object p0

    :cond_3
    new-instance p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;

    invoke-direct {p0}, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;-><init>()V

    return-object p0

    :cond_4
    const-string v0, "zbf"

    const-string v1, "zbe"

    const-string v2, "zbd"

    const-string v3, "zbg"

    const-string v4, "zbh"

    const-string v5, "zbj"

    const-string v6, "zbi"

    const-string v7, "zbk"

    const-string v8, "zbl"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;->zbb:Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;

    const-string p2, "\u0001\u0008\u0001\u0001\u0001\u0008\u0008\u0000\u0000\u0001\u0001\u1409\u0000\u0002\u1007\u0001\u0003\u1009\u0003\u0004\u1009\u0002\u0005:\u0000\u0006:\u0000\u0007\u1009\u0004\u0008\u1004\u0005"

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zbA(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_5
    iget-byte p0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;->zbm:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public final zbg()Z
    .locals 2

    iget v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;->zbe:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;->zbf:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zbh()Z
    .locals 2

    iget v0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;->zbe:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;->zbf:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zbi()Z
    .locals 0

    iget p0, p0, Lcom/google/android/libraries/vision/visionkit/pipeline/zbca;->zbd:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
