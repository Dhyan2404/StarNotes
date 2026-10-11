.class public final Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;
.super Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvn;


# static fields
.field private static final zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;


# instance fields
.field private zbd:I

.field private zbe:I

.field private zbf:I

.field private zbg:I

.field private zbh:I

.field private zbi:F

.field private zbj:B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zbD(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;->zbj:B

    return-void
.end method

.method public static synthetic zbg()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;

    return-object v0
.end method

.method public static zbh()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;

    return-object v0
.end method


# virtual methods
.method public final zba()F
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;->zbi:F

    return p0
.end method

.method public final zbb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

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
    iput-byte p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;->zbj:B

    return-object v0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpa;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpa;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zboq;)V

    return-object p0

    :cond_3
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;-><init>()V

    return-object p0

    :cond_4
    const-string v0, "zbd"

    const-string v1, "zbe"

    const-string v2, "zbf"

    const-string v3, "zbg"

    const-string v4, "zbh"

    const-string v5, "zbi"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;

    const-string p2, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0004\u0001\u1504\u0000\u0002\u1504\u0001\u0003\u1504\u0002\u0004\u1504\u0003\u0005\u1001\u0004"

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zbA(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_5
    iget-byte p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;->zbj:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public final zbc()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;->zbh:I

    return p0
.end method

.method public final zbd()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;->zbe:I

    return p0
.end method

.method public final zbe()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;->zbf:I

    return p0
.end method

.method public final zbf()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;->zbg:I

    return p0
.end method
