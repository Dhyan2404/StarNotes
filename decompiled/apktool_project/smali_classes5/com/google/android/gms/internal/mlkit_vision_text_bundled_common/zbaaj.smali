.class public final Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaaj;
.super Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvn;


# static fields
.field private static final zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaaj;


# instance fields
.field private zbd:I

.field private zbe:Ljava/lang/Object;

.field private zbf:B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaaj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaaj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaaj;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaaj;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaaj;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zbD(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaaj;->zbd:I

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaaj;->zbf:B

    return-void
.end method

.method public static synthetic zbg()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaaj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaaj;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaaj;

    return-object v0
.end method

.method public static zbh()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaaj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaaj;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaaj;

    return-object v0
.end method


# virtual methods
.method public final zbH()Z
    .locals 1

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaaj;->zbd:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

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
    iput-byte p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaaj;->zbf:B

    return-object v0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaaj;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaaj;

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaae;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaae;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaad;)V

    return-object p0

    :cond_3
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaaj;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaaj;-><init>()V

    return-object p0

    :cond_4
    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;

    const-class p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbow;

    const-string p2, "zbe"

    const-string p3, "zbd"

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaai;

    filled-new-array {p2, p3, v0, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaaj;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaaj;

    const-string p2, "\u0001\u0003\u0001\u0000\u0001\u0003\u0003\u0000\u0000\u0003\u0001\u043c\u0000\u0002\u043c\u0000\u0003\u043c\u0000"

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zbA(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_5
    iget-byte p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaaj;->zbf:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public final zbc()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbow;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaaj;->zbd:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaaj;->zbe:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbow;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbow;->zbc()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbow;

    move-result-object p0

    return-object p0
.end method

.method public final zbe()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaaj;->zbd:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaaj;->zbe:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;->zbh()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpb;

    move-result-object p0

    return-object p0
.end method

.method public final zbf()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaai;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaaj;->zbd:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaaj;->zbe:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaai;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaai;->zbf()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaai;

    move-result-object p0

    return-object p0
.end method

.method public final zbi()Z
    .locals 1

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaaj;->zbd:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
