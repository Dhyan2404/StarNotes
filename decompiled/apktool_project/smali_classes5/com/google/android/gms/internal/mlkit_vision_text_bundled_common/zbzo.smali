.class public final Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbzo;
.super Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvn;


# static fields
.field private static final zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbzo;


# instance fields
.field private zbd:I

.field private zbe:I

.field private zbf:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbze;

.field private zbg:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbyj;

.field private zbh:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbxj;

.field private zbi:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbyu;

.field private zbj:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbyd;

.field private zbk:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbxo;

.field private zbl:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbzr;

.field private zbm:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbxr;

.field private zbn:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbyp;

.field private zbo:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbys;

.field private zbp:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbys;

.field private zbq:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbys;

.field private zbr:Z

.field private zbs:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbyg;

.field private zbt:I

.field private zbu:Z

.field private zbv:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbzk;

.field private zbw:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbxl;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbzo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbzo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbzo;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbzo;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbzo;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zbD(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbzo;->zbt:I

    return-void
.end method

.method public static synthetic zbc()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbzo;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbzo;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbzo;

    return-object v0
.end method


# virtual methods
.method public final zbb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    add-int/lit8 v0, p1, -0x1

    if-eqz v0, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    return-object v2

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbzo;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbzo;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbzn;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbzn;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwz;)V

    return-object v0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbzo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbzo;-><init>()V

    return-object v0

    :cond_3
    const-string v1, "zbd"

    const-string v2, "zbe"

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbxs;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuj;

    const-string v4, "zbf"

    const-string v5, "zbg"

    const-string v6, "zbh"

    const-string v7, "zbi"

    const-string v8, "zbo"

    const-string v9, "zbp"

    const-string v10, "zbq"

    const-string v11, "zbr"

    const-string v12, "zbj"

    const-string v13, "zbs"

    const-string v14, "zbk"

    const-string v15, "zbl"

    const-string v16, "zbt"

    const-string v17, "zbm"

    const-string v18, "zbu"

    const-string v19, "zbv"

    const-string v20, "zbn"

    const-string v21, "zbw"

    filled-new-array/range {v1 .. v21}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbzo;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbzo;

    const-string v2, "\u0001\u0013\u0000\u0001\u0001\u0013\u0013\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u1009\u0001\u0003\u1009\u0002\u0004\u1009\u0003\u0005\u1009\u0004\u0006\u1009\n\u0007\u1009\u000b\u0008\u1009\u000c\t\u1007\r\n\u1009\u0005\u000b\u1009\u000e\u000c\u1009\u0006\r\u1009\u0007\u000e\u1004\u000f\u000f\u1009\u0008\u0010\u1007\u0010\u0011\u1009\u0011\u0012\u1009\t\u0013\u1009\u0012"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zbA(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method
