.class public final Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaee;
.super Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvn;


# static fields
.field private static final zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaee;


# instance fields
.field private zbd:I

.field private zbe:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;

.field private zbf:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaed;

.field private zbg:F

.field private zbh:I

.field private zbi:Z

.field private zbj:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaee;

    invoke-direct {v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaee;-><init>()V

    sput-object v2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaee;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaee;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaee;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zbD(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;)V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbadz;->zbe()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbadz;

    move-result-object v0

    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbww;->zbk:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbww;

    const-class v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaee;

    const/4 v3, 0x0

    const v4, 0x1ea8e13

    move-object v1, v2

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zbr(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbui;ILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbww;Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbud;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zby()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaee;->zbe:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;

    return-void
.end method

.method public static synthetic zbc()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaee;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaee;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaee;

    return-object v0
.end method


# virtual methods
.method public final zbb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

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
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaee;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaee;

    return-object p0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaea;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaea;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbadn;)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaee;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaee;-><init>()V

    return-object p0

    :cond_3
    const-string v0, "zbd"

    const-string v1, "zbe"

    const-class v2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaed;

    const-string v3, "zbi"

    const-string v4, "zbf"

    const-string v5, "zbg"

    const-string v6, "zbj"

    const-string v7, "zbh"

    sget-object v8, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaeb;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuj;

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaee;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaee;

    const-string p2, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001\u001b\u0002\u1007\u0003\u0003\u1009\u0000\u0004\u1001\u0001\u0005\u1007\u0004\u0006\u180c\u0002"

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zbA(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
