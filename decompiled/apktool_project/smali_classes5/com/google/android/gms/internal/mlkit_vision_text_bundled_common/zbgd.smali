.class public final Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbgd;
.super Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvn;


# static fields
.field private static final zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbgd;


# instance fields
.field private zbd:I

.field private zbe:I

.field private zbf:Ljava/lang/Object;

.field private zbg:I

.field private zbh:Ljava/lang/String;

.field private zbi:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;

.field private zbj:J

.field private zbk:Ljava/lang/String;

.field private zbl:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbgd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbgd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbgd;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbgd;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbgd;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zbD(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbgd;->zbe:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbgd;->zbh:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zby()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbgd;->zbi:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbgd;->zbk:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zba()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbgd;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbgd;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbgd;

    return-object v0
.end method


# virtual methods
.method public final zbb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

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
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbgd;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbgd;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbga;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbga;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbfy;)V

    return-object v0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbgd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbgd;-><init>()V

    return-object v0

    :cond_3
    const-string v1, "zbf"

    const-string v2, "zbe"

    const-string v3, "zbd"

    const-string v4, "zbg"

    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbge;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuj;

    const-string v6, "zbh"

    const-string v7, "zbi"

    const-class v8, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbgc;

    const-string v9, "zbk"

    const-class v10, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbci;

    const-class v11, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaj;

    const-class v12, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbcc;

    const-class v13, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbaq;

    const-class v14, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbcp;

    const-string v15, "zbj"

    const-string v16, "zbl"

    sget-object v17, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbfz;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuj;

    filled-new-array/range {v1 .. v17}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbgd;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbgd;

    const-string v2, "\u0001\u000b\u0001\u0001\u0001\u000b\u000b\u0000\u0001\u0000\u0001\u180c\u0000\u0002\u1008\u0001\u0003\u001b\u0004\u1008\u0003\u0005<\u0000\u0006<\u0000\u0007<\u0000\u0008<\u0000\t<\u0000\n\u1002\u0002\u000b\u180c\u0004"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zbA(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method
