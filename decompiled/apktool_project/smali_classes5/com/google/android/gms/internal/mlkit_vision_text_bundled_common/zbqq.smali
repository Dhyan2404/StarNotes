.class public final Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbqq;
.super Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbub;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvn;


# static fields
.field private static final zbd:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbqq;


# instance fields
.field private zbA:I

.field private zbB:F

.field private zbC:Z

.field private zbD:I

.field private zbE:B

.field private zbe:I

.field private zbf:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;

.field private zbg:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpw;

.field private zbh:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpw;

.field private zbi:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpw;

.field private zbj:Ljava/lang/String;

.field private zbk:F

.field private zbl:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;

.field private zbm:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;

.field private zbn:F

.field private zbo:Ljava/lang/String;

.field private zbp:Z

.field private zbq:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;

.field private zbr:I

.field private zbs:I

.field private zbt:Z

.field private zbu:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbqi;

.field private zbv:Z

.field private zbw:I

.field private zbx:I

.field private zby:I

.field private zbz:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbrz;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbqq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbqq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbqq;->zbd:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbqq;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbqq;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zbD(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbub;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbqq;->zbE:B

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zby()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbqq;->zbf:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbqq;->zbj:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zby()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbqq;->zbl:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zby()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbqq;->zbm:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbqq;->zbo:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zby()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbqq;->zbq:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;

    return-void
.end method

.method public static synthetic zba()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbqq;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbqq;->zbd:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbqq;

    return-object v0
.end method


# virtual methods
.method public final zbb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 32

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, -0x1

    if-eqz v1, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-byte v1, v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbqq;->zbE:B

    return-object v3

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbqq;->zbd:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbqq;

    return-object v0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbqp;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbqp;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpu;)V

    return-object v0

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbqq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbqq;-><init>()V

    return-object v0

    :cond_4
    const-string v1, "zbe"

    const-string v2, "zbf"

    const-class v3, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbrs;

    const-string v4, "zbg"

    const-string v5, "zbh"

    const-string v6, "zbj"

    const-string v7, "zbk"

    const-string v8, "zbm"

    const-class v9, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbpy;

    const-string v10, "zbn"

    const-string v11, "zbo"

    const-string v12, "zbl"

    const-class v13, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbqa;

    const-string v14, "zbp"

    const-string v15, "zbq"

    const-class v16, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbrc;

    const-string v17, "zbr"

    const-string v18, "zbs"

    const-string v19, "zbt"

    const-string v20, "zbu"

    const-string v21, "zbv"

    const-string v22, "zbw"

    const-string v23, "zbx"

    const-string v24, "zbi"

    const-string v25, "zby"

    const-string v26, "zbz"

    const-string v27, "zbA"

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbabe;->zba()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuj;

    move-result-object v28

    const-string v29, "zbB"

    const-string v30, "zbC"

    const-string v31, "zbD"

    filled-new-array/range {v1 .. v31}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbqq;->zbd:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbqq;

    const-string v2, "\u0001\u0019\u0000\u0001\u0001d\u0019\u0000\u0004\u0006\u0001\u041b\u0002\u1409\u0000\u0003\u1409\u0001\u0004\u1008\u0003\u0005\u1001\u0004\u0006\u001b\u0007\u1001\u0005\u0008\u1008\u0006\t\u041b\n\u1007\u0007\u000b\u001b\u000c\u1004\u0008\r\u1004\t\u000e\u1007\n\u000f\u1409\u000b\u0010\u1007\u000c\u0011\u1004\r\u0012\u1004\u000e\u0013\u1409\u0002\u0014\u1004\u000f\u0015\u1009\u0010\u0016\u180c\u0011\u0017\u1001\u0012\u0018\u1007\u0013d\u1004\u0014"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zbA(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_5
    iget-byte v0, v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbqq;->zbE:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method
