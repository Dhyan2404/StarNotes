.class final Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final zba:[I

.field private static final zbb:Lsun/misc/Unsafe;


# instance fields
.field private final zbc:[I

.field private final zbd:[Ljava/lang/Object;

.field private final zbe:I

.field private final zbf:I

.field private final zbg:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;

.field private final zbh:Z

.field private final zbi:[I

.field private final zbj:I

.field private final zbk:I

.field private final zbl:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwl;

.field private final zbm:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtq;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zba:[I

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbg()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbb:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;Z[IIILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvs;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuy;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwl;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtq;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbd:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbe:I

    iput p4, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbf:I

    const/4 p1, 0x0

    if-eqz p13, :cond_0

    instance-of p2, p5, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbub;

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbh:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbi:[I

    iput p8, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbj:I

    iput p9, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbk:I

    iput-object p12, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbl:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwl;

    iput-object p13, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbm:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtq;

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbg:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;

    return-void
.end method

.method private static zbA(Ljava/lang/Object;)V
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbL(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Mutating immutable message: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zbB(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 5

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbI(Ljava/lang/Object;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbs(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbb:Lsun/misc/Unsafe;

    int-to-long v2, v0

    invoke-virtual {v1, p2, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbv(I)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;

    move-result-object p2

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbI(Ljava/lang/Object;I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbL(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1, p1, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;->zbe()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v4, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;->zbg(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbD(Ljava/lang/Object;I)V

    return-void

    :cond_2
    invoke-virtual {v1, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbL(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;->zbe()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p2, p3, p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;->zbg(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2, v3, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p0, p3

    :cond_3
    invoke-interface {p2, p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;->zbg(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc:[I

    new-instance p1, Ljava/lang/IllegalStateException;

    aget p0, p0, p3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Source subfield "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is present but null: "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final zbC(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc:[I

    aget v0, v0, p3

    invoke-direct {p0, p2, v0, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbs(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbb:Lsun/misc/Unsafe;

    int-to-long v3, v1

    invoke-virtual {v2, p2, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbv(I)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;

    move-result-object p2

    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbL(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2, p1, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;->zbe()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p2, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;->zbg(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbE(Ljava/lang/Object;II)V

    return-void

    :cond_2
    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbL(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;->zbe()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p2, p3, p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;->zbg(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v3, v4, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p0, p3

    :cond_3
    invoke-interface {p2, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;->zbg(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc:[I

    new-instance p1, Ljava/lang/IllegalStateException;

    aget p0, p0, p3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Source subfield "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is present but null: "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final zbD(Ljava/lang/Object;I)V
    .locals 4

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbp(I)I

    move-result p0

    const p2, 0xfffff

    and-int/2addr p2, p0

    int-to-long v0, p2

    const-wide/32 v2, 0xfffff

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    return-void

    :cond_0
    ushr-int/lit8 p0, p0, 0x14

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbc(Ljava/lang/Object;J)I

    move-result p2

    const/4 v2, 0x1

    shl-int p0, v2, p0

    or-int/2addr p0, p2

    invoke-static {p1, v0, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbq(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zbE(Ljava/lang/Object;II)V
    .locals 2

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbp(I)I

    move-result p0

    const p3, 0xfffff

    and-int/2addr p0, p3

    int-to-long v0, p0

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbq(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zbF(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbb:Lsun/misc/Unsafe;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbs(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbD(Ljava/lang/Object;I)V

    return-void
.end method

.method private final zbG(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbb:Lsun/misc/Unsafe;

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbs(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbE(Ljava/lang/Object;II)V

    return-void
.end method

.method private final zbH(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbI(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbI(Ljava/lang/Object;I)Z

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final zbI(Ljava/lang/Object;I)Z
    .locals 7

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbp(I)I

    move-result v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xfffff

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_14

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbs(I)I

    move-result p0

    and-int p2, p0, v1

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbr(I)I

    move-result p0

    int-to-long v0, p2

    const-wide/16 v2, 0x0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    return v6

    :cond_0
    return v5

    :pswitch_1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbd(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    return v6

    :cond_1
    return v5

    :pswitch_2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbc(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_2

    return v6

    :cond_2
    return v5

    :pswitch_3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbd(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    return v6

    :cond_3
    return v5

    :pswitch_4
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbc(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_4

    return v6

    :cond_4
    return v5

    :pswitch_5
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbc(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_5

    return v6

    :cond_5
    return v5

    :pswitch_6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbc(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_6

    return v6

    :cond_6
    return v5

    :pswitch_7
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v6

    :cond_7
    return v5

    :pswitch_8
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_8

    return v6

    :cond_8
    return v5

    :pswitch_9
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_a

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_9

    return v6

    :cond_9
    return v5

    :cond_a
    instance-of p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;

    if-eqz p1, :cond_c

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    return v6

    :cond_b
    return v5

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_a
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbw(Ljava/lang/Object;J)Z

    move-result p0

    return p0

    :pswitch_b
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbc(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_d

    return v6

    :cond_d
    return v5

    :pswitch_c
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbd(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_e

    return v6

    :cond_e
    return v5

    :pswitch_d
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbc(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_f

    return v6

    :cond_f
    return v5

    :pswitch_e
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbd(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_10

    return v6

    :cond_10
    return v5

    :pswitch_f
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbd(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_11

    return v6

    :cond_11
    return v5

    :pswitch_10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbb(Ljava/lang/Object;J)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    if-eqz p0, :cond_12

    return v6

    :cond_12
    return v5

    :pswitch_11
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zba(Ljava/lang/Object;J)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_13

    return v6

    :cond_13
    return v5

    :cond_14
    ushr-int/lit8 p0, v0, 0x14

    shl-int p0, v6, p0

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbc(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_15

    return v6

    :cond_15
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zbJ(Ljava/lang/Object;IIII)Z
    .locals 1

    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbI(Ljava/lang/Object;I)Z

    move-result p0

    return p0

    :cond_0
    and-int p0, p4, p5

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static zbK(Ljava/lang/Object;ILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;)Z
    .locals 2

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;->zbk(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static zbL(Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zbG()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private final zbM(Ljava/lang/Object;II)Z
    .locals 2

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbp(I)I

    move-result p0

    const p3, 0xfffff

    and-int/2addr p0, p3

    int-to-long v0, p0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbc(Ljava/lang/Object;J)I

    move-result p0

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static zbN(Ljava/lang/Object;J)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final zbO([BIILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbww;Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbww;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbww;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "unsupported field type."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbn([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result p0

    iget-wide p1, p5, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbb:J

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtg;->zbc(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbc:Ljava/lang/Object;

    goto/16 :goto_2

    :pswitch_2
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbk([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result p0

    iget p1, p5, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtg;->zbb(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbc:Ljava/lang/Object;

    goto/16 :goto_2

    :pswitch_3
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zba([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result p0

    goto/16 :goto_2

    :pswitch_4
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvu;->zba()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvu;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvu;->zbb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;

    move-result-object p3

    invoke-static {p3, p0, p1, p2, p5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbe(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;[BIILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result p0

    goto/16 :goto_2

    :pswitch_5
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbi([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result p0

    goto/16 :goto_2

    :pswitch_6
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbn([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result p0

    iget-wide p1, p5, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbb:J

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbc:Ljava/lang/Object;

    goto :goto_2

    :pswitch_7
    add-int/lit8 p2, p1, 0x4

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbc([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbc:Ljava/lang/Object;

    goto :goto_1

    :pswitch_8
    add-int/lit8 p2, p1, 0x8

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbr([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbc:Ljava/lang/Object;

    goto :goto_1

    :pswitch_9
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbk([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result p0

    iget p1, p5, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbc:Ljava/lang/Object;

    goto :goto_2

    :pswitch_a
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbn([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result p0

    iget-wide p1, p5, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbb:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbc:Ljava/lang/Object;

    goto :goto_2

    :pswitch_b
    add-int/lit8 p2, p1, 0x4

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbc([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbc:Ljava/lang/Object;

    goto :goto_1

    :pswitch_c
    add-int/lit8 p2, p1, 0x8

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbr([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbc:Ljava/lang/Object;

    :goto_1
    move p0, p2

    :goto_2
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static final zbP(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;->zbH(ILjava/lang/String;)V

    return-void

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;->zbd(ILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;)V

    return-void
.end method

.method public static zbd(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;
    .locals 2

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zbc:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbc()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbf()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zbc:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;

    :cond_0
    return-object v0
.end method

.method public static zbl(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvj;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvs;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuy;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwl;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtq;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvh;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;
    .locals 34

    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvw;

    if-eqz v1, :cond_37

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvw;->zbd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v5, 0xd800

    if-lt v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_1

    move v4, v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x1

    :cond_1
    add-int/lit8 v4, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_3

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_1
    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_2

    and-int/lit16 v4, v4, 0x1fff

    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    add-int/lit8 v9, v9, 0xd

    move v4, v10

    goto :goto_1

    :cond_2
    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    move v4, v10

    :cond_3
    if-nez v7, :cond_4

    sget-object v7, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zba:[I

    move v9, v3

    move v11, v9

    move v12, v11

    move v13, v12

    move v14, v13

    move/from16 v17, v14

    move-object/from16 v16, v7

    move/from16 v7, v17

    goto/16 :goto_a

    :cond_4
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_6

    and-int/lit16 v4, v4, 0x1fff

    const/16 v9, 0xd

    :goto_2
    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_5

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v10

    goto :goto_2

    :cond_5
    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    move v7, v10

    :cond_6
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_8

    and-int/lit16 v7, v7, 0x1fff

    const/16 v10, 0xd

    :goto_3
    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_7

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v11

    goto :goto_3

    :cond_7
    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    move v9, v11

    :cond_8
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_a

    and-int/lit16 v9, v9, 0x1fff

    const/16 v11, 0xd

    :goto_4
    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_9

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    add-int/lit8 v11, v11, 0xd

    move v10, v12

    goto :goto_4

    :cond_9
    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    move v10, v12

    :cond_a
    add-int/lit8 v11, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_c

    and-int/lit16 v10, v10, 0x1fff

    const/16 v12, 0xd

    :goto_5
    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_b

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_5

    :cond_b
    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    move v11, v13

    :cond_c
    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_e

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_6
    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_d

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_6

    :cond_d
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v12, v14

    :cond_e
    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_10

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_7
    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_f

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_7

    :cond_f
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_10
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_12

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_8
    add-int/lit8 v16, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_11

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_8

    :cond_11
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_12
    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_14

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_9
    add-int/lit8 v17, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v5, :cond_13

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_9

    :cond_13
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_14
    add-int v16, v14, v12

    add-int v13, v16, v13

    add-int v16, v4, v4

    add-int v16, v16, v7

    new-array v7, v13, [I

    move v13, v9

    move/from16 v17, v14

    move/from16 v9, v16

    move-object/from16 v16, v7

    move v14, v10

    move v7, v4

    move v4, v15

    :goto_a
    sget-object v10, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbb:Lsun/misc/Unsafe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvw;->zbe()[Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvw;->zba()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    add-int v18, v17, v12

    add-int v12, v11, v11

    mul-int/lit8 v11, v11, 0x3

    new-array v11, v11, [I

    new-array v12, v12, [Ljava/lang/Object;

    move/from16 v21, v17

    move/from16 v22, v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_b
    if-ge v4, v2, :cond_36

    add-int/lit8 v23, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_16

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v8, v23

    const/16 v23, 0xd

    :goto_c
    add-int/lit8 v24, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_15

    and-int/lit16 v8, v8, 0x1fff

    shl-int v8, v8, v23

    or-int/2addr v4, v8

    add-int/lit8 v23, v23, 0xd

    move/from16 v8, v24

    goto :goto_c

    :cond_15
    shl-int v8, v8, v23

    or-int/2addr v4, v8

    move/from16 v8, v24

    goto :goto_d

    :cond_16
    move/from16 v8, v23

    :goto_d
    add-int/lit8 v23, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_18

    and-int/lit16 v8, v8, 0x1fff

    move/from16 v6, v23

    const/16 v23, 0xd

    :goto_e
    add-int/lit8 v25, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_17

    and-int/lit16 v6, v6, 0x1fff

    shl-int v6, v6, v23

    or-int/2addr v8, v6

    add-int/lit8 v23, v23, 0xd

    move/from16 v6, v25

    goto :goto_e

    :cond_17
    shl-int v6, v6, v23

    or-int/2addr v8, v6

    move/from16 v6, v25

    goto :goto_f

    :cond_18
    move/from16 v6, v23

    :goto_f
    and-int/lit16 v5, v8, 0x400

    if-eqz v5, :cond_19

    add-int/lit8 v5, v19, 0x1

    aput v20, v16, v19

    move/from16 v19, v5

    :cond_19
    and-int/lit16 v5, v8, 0xff

    move/from16 v25, v2

    and-int/lit16 v2, v8, 0x800

    move/from16 v26, v14

    const/16 v14, 0x33

    if-lt v5, v14, :cond_23

    add-int/lit8 v14, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move/from16 v27, v14

    const v14, 0xd800

    if-lt v6, v14, :cond_1b

    and-int/lit16 v6, v6, 0x1fff

    move/from16 v14, v27

    const/16 v27, 0xd

    :goto_10
    add-int/lit8 v31, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    move/from16 v32, v13

    const v13, 0xd800

    if-lt v14, v13, :cond_1a

    and-int/lit16 v13, v14, 0x1fff

    shl-int v13, v13, v27

    or-int/2addr v6, v13

    add-int/lit8 v27, v27, 0xd

    move/from16 v14, v31

    move/from16 v13, v32

    goto :goto_10

    :cond_1a
    shl-int v13, v14, v27

    or-int/2addr v6, v13

    move/from16 v14, v31

    goto :goto_11

    :cond_1b
    move/from16 v32, v13

    move/from16 v14, v27

    :goto_11
    add-int/lit8 v13, v5, -0x33

    move/from16 v27, v14

    const/16 v14, 0x9

    if-eq v13, v14, :cond_1f

    const/16 v14, 0x11

    if-ne v13, v14, :cond_1c

    goto :goto_13

    :cond_1c
    const/16 v14, 0xc

    if-ne v13, v14, :cond_20

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvw;->zbc()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_1e

    if-eqz v2, :cond_1d

    goto :goto_12

    :cond_1d
    const/4 v2, 0x0

    goto :goto_15

    :cond_1e
    :goto_12
    add-int/lit8 v13, v9, 0x1

    div-int/lit8 v24, v20, 0x3

    add-int v24, v24, v24

    add-int/lit8 v24, v24, 0x1

    aget-object v9, v15, v9

    aput-object v9, v12, v24

    goto :goto_14

    :cond_1f
    :goto_13
    const/4 v14, 0x1

    add-int/lit8 v13, v9, 0x1

    div-int/lit8 v24, v20, 0x3

    add-int v24, v24, v24

    add-int/lit8 v28, v24, 0x1

    aget-object v9, v15, v9

    aput-object v9, v12, v28

    :goto_14
    move v9, v13

    :cond_20
    :goto_15
    add-int/2addr v6, v6

    aget-object v13, v15, v6

    instance-of v14, v13, Ljava/lang/reflect/Field;

    if-eqz v14, :cond_21

    check-cast v13, Ljava/lang/reflect/Field;

    goto :goto_16

    :cond_21
    check-cast v13, Ljava/lang/String;

    invoke-static {v3, v13}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbz(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    aput-object v13, v15, v6

    :goto_16
    invoke-virtual {v10, v13}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v13, v13

    add-int/lit8 v6, v6, 0x1

    aget-object v14, v15, v6

    move/from16 v28, v2

    instance-of v2, v14, Ljava/lang/reflect/Field;

    if-eqz v2, :cond_22

    check-cast v14, Ljava/lang/reflect/Field;

    goto :goto_17

    :cond_22
    check-cast v14, Ljava/lang/String;

    invoke-static {v3, v14}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbz(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    aput-object v14, v15, v6

    :goto_17
    move v2, v13

    invoke-virtual {v10, v14}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v6, v13

    move-object v14, v1

    move v13, v9

    move/from16 v29, v27

    const v1, 0xd800

    move v9, v6

    const/4 v6, 0x0

    move/from16 v33, v28

    move-object/from16 v28, v0

    move v0, v2

    move/from16 v2, v33

    goto/16 :goto_23

    :cond_23
    move/from16 v32, v13

    add-int/lit8 v13, v9, 0x1

    aget-object v9, v15, v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v3, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbz(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    const/16 v14, 0x9

    if-eq v5, v14, :cond_2d

    const/16 v14, 0x11

    if-ne v5, v14, :cond_24

    goto/16 :goto_1c

    :cond_24
    const/16 v14, 0x1b

    if-eq v5, v14, :cond_2c

    const/16 v14, 0x31

    if-ne v5, v14, :cond_25

    add-int/lit8 v14, v13, 0x1

    move-object/from16 v28, v0

    const/4 v0, 0x1

    goto/16 :goto_1a

    :cond_25
    const/16 v14, 0xc

    if-eq v5, v14, :cond_29

    const/16 v14, 0x1e

    if-eq v5, v14, :cond_29

    const/16 v14, 0x2c

    if-ne v5, v14, :cond_26

    goto :goto_18

    :cond_26
    const/16 v14, 0x32

    if-ne v5, v14, :cond_28

    add-int/lit8 v14, v13, 0x1

    add-int/lit8 v28, v21, 0x1

    aput v20, v16, v21

    div-int/lit8 v21, v20, 0x3

    aget-object v13, v15, v13

    add-int v21, v21, v21

    aput-object v13, v12, v21

    if-eqz v2, :cond_27

    add-int/lit8 v21, v21, 0x1

    add-int/lit8 v13, v14, 0x1

    aget-object v14, v15, v14

    aput-object v14, v12, v21

    move-object v14, v1

    move/from16 v21, v28

    move-object/from16 v28, v0

    goto :goto_1e

    :cond_27
    move v13, v14

    move/from16 v21, v28

    const/4 v2, 0x0

    move-object/from16 v28, v0

    goto :goto_1d

    :cond_28
    move-object/from16 v28, v0

    const/4 v0, 0x1

    goto :goto_1d

    :cond_29
    :goto_18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvw;->zbc()I

    move-result v14

    move-object/from16 v28, v0

    const/4 v0, 0x1

    if-eq v14, v0, :cond_2b

    if-eqz v2, :cond_2a

    goto :goto_19

    :cond_2a
    move-object v14, v1

    const/4 v2, 0x0

    goto :goto_1e

    :cond_2b
    :goto_19
    add-int/lit8 v14, v13, 0x1

    div-int/lit8 v24, v20, 0x3

    add-int v24, v24, v24

    add-int/lit8 v24, v24, 0x1

    aget-object v13, v15, v13

    aput-object v13, v12, v24

    goto :goto_1b

    :cond_2c
    move-object/from16 v28, v0

    const/4 v0, 0x1

    add-int/lit8 v14, v13, 0x1

    :goto_1a
    div-int/lit8 v24, v20, 0x3

    add-int v24, v24, v24

    add-int/lit8 v24, v24, 0x1

    aget-object v13, v15, v13

    aput-object v13, v12, v24

    :goto_1b
    move v13, v14

    goto :goto_1d

    :cond_2d
    :goto_1c
    move-object/from16 v28, v0

    const/4 v0, 0x1

    div-int/lit8 v14, v20, 0x3

    add-int/2addr v14, v14

    add-int/2addr v14, v0

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v24

    aput-object v24, v12, v14

    :goto_1d
    move-object v14, v1

    :goto_1e
    invoke-virtual {v10, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v0, v0

    and-int/lit16 v1, v8, 0x1000

    const v9, 0xfffff

    if-eqz v1, :cond_31

    const/16 v1, 0x11

    if-gt v5, v1, :cond_31

    add-int/lit8 v1, v6, 0x1

    invoke-virtual {v14, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const v9, 0xd800

    if-lt v6, v9, :cond_2f

    and-int/lit16 v6, v6, 0x1fff

    const/16 v23, 0xd

    :goto_1f
    add-int/lit8 v29, v1, 0x1

    invoke-virtual {v14, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v9, :cond_2e

    and-int/lit16 v1, v1, 0x1fff

    shl-int v1, v1, v23

    or-int/2addr v6, v1

    add-int/lit8 v23, v23, 0xd

    move/from16 v1, v29

    goto :goto_1f

    :cond_2e
    shl-int v1, v1, v23

    or-int/2addr v6, v1

    goto :goto_20

    :cond_2f
    move/from16 v29, v1

    :goto_20
    add-int v1, v7, v7

    div-int/lit8 v23, v6, 0x20

    add-int v1, v1, v23

    aget-object v9, v15, v1

    move/from16 v30, v2

    instance-of v2, v9, Ljava/lang/reflect/Field;

    if-eqz v2, :cond_30

    check-cast v9, Ljava/lang/reflect/Field;

    goto :goto_21

    :cond_30
    check-cast v9, Ljava/lang/String;

    invoke-static {v3, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbz(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    aput-object v9, v15, v1

    :goto_21
    invoke-virtual {v10, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    long-to-int v1, v1

    rem-int/lit8 v6, v6, 0x20

    move v9, v1

    const v1, 0xd800

    goto :goto_22

    :cond_31
    move/from16 v30, v2

    const v1, 0xd800

    move/from16 v29, v6

    const/4 v6, 0x0

    :goto_22
    const/16 v2, 0x12

    if-lt v5, v2, :cond_32

    const/16 v2, 0x31

    if-gt v5, v2, :cond_32

    add-int/lit8 v2, v22, 0x1

    aput v0, v16, v22

    move/from16 v22, v2

    :cond_32
    move/from16 v2, v30

    :goto_23
    add-int/lit8 v23, v20, 0x1

    aput v4, v11, v20

    add-int/lit8 v4, v23, 0x1

    and-int/lit16 v1, v8, 0x200

    if-eqz v1, :cond_33

    const/high16 v1, 0x20000000

    goto :goto_24

    :cond_33
    const/4 v1, 0x0

    :goto_24
    and-int/lit16 v8, v8, 0x100

    if-eqz v8, :cond_34

    const/high16 v8, 0x10000000

    goto :goto_25

    :cond_34
    const/4 v8, 0x0

    :goto_25
    if-eqz v2, :cond_35

    const/high16 v2, -0x80000000

    goto :goto_26

    :cond_35
    const/4 v2, 0x0

    :goto_26
    shl-int/lit8 v5, v5, 0x14

    or-int/2addr v1, v8

    or-int/2addr v1, v2

    or-int/2addr v1, v5

    or-int/2addr v0, v1

    aput v0, v11, v23

    add-int/lit8 v0, v4, 0x1

    shl-int/lit8 v1, v6, 0x14

    or-int/2addr v1, v9

    aput v1, v11, v4

    move/from16 v20, v0

    move v9, v13

    move-object v1, v14

    move/from16 v2, v25

    move/from16 v14, v26

    move-object/from16 v0, v28

    move/from16 v4, v29

    move/from16 v13, v32

    const v5, 0xd800

    goto/16 :goto_b

    :cond_36
    move-object/from16 v28, v0

    move/from16 v32, v13

    move/from16 v26, v14

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvw;->zba()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;

    move-result-object v14

    const/4 v15, 0x0

    move-object v9, v0

    move-object v10, v11

    move-object v11, v12

    move/from16 v12, v32

    move/from16 v13, v26

    move-object/from16 v19, p2

    move-object/from16 v20, p3

    move-object/from16 v21, p4

    move-object/from16 v22, p5

    move-object/from16 v23, p6

    invoke-direct/range {v9 .. v23}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;Z[IIILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvs;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuy;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwl;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtq;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvh;)V

    return-object v0

    :cond_37
    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwi;

    const/4 v0, 0x0

    throw v0
.end method

.method private static zbm(Ljava/lang/Object;J)D
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private static zbn(Ljava/lang/Object;J)F
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private static zbo(Ljava/lang/Object;J)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private final zbp(I)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc:[I

    add-int/lit8 p1, p1, 0x2

    aget p0, p0, p1

    return p0
.end method

.method private final zbq(II)I
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    const/4 v1, -0x1

    add-int/2addr v0, v1

    :goto_0
    if-gt p2, v0, :cond_2

    add-int v2, v0, p2

    ushr-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v2, 0x3

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc:[I

    aget v4, v4, v3

    if-ne p1, v4, :cond_0

    return v3

    :cond_0
    if-ge p1, v4, :cond_1

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static zbr(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private final zbs(I)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc:[I

    add-int/lit8 p1, p1, 0x1

    aget p0, p0, p1

    return p0
.end method

.method private static zbt(Ljava/lang/Object;J)J
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private final zbu(I)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuj;
    .locals 0

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbd:[Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    aget-object p0, p0, p1

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuj;

    return-object p0
.end method

.method private final zbv(I)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbd:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    aget-object v1, v0, p1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v1, p1, 0x1

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvu;->zba()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvu;

    move-result-object v2

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvu;->zbb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbd:[Ljava/lang/Object;

    aput-object v0, p0, p1

    return-object v0
.end method

.method private final zbw(I)Ljava/lang/Object;
    .locals 0

    div-int/lit8 p1, p1, 0x3

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbd:[Ljava/lang/Object;

    add-int/2addr p1, p1

    aget-object p0, p0, p1

    return-object p0
.end method

.method private final zbx(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbv(I)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbs(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbI(Ljava/lang/Object;I)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;->zbe()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    int-to-long v1, v1

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbb:Lsun/misc/Unsafe;

    invoke-virtual {p0, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbL(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;->zbe()Ljava/lang/Object;

    move-result-object p1

    if-eqz p0, :cond_2

    invoke-interface {v0, p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;->zbg(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p1
.end method

.method private final zby(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 3

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbv(I)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;->zbe()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbb:Lsun/misc/Unsafe;

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbs(I)I

    move-result p0

    const p3, 0xfffff

    and-int/2addr p0, p3

    int-to-long v1, p0

    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbL(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;->zbe()Ljava/lang/Object;

    move-result-object p1

    if-eqz p0, :cond_2

    invoke-interface {v0, p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;->zbg(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p1
.end method

.method private static zbz(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final zba(Ljava/lang/Object;)I
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    sget-object v8, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbb:Lsun/misc/Unsafe;

    const/4 v9, 0x0

    const v10, 0xfffff

    move v1, v9

    move v11, v1

    move v12, v11

    move v0, v10

    :goto_0
    iget-object v2, v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc:[I

    array-length v2, v2

    if-ge v11, v2, :cond_1c

    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbs(I)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbr(I)I

    move-result v3

    iget-object v4, v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc:[I

    add-int/lit8 v5, v11, 0x2

    aget v13, v4, v11

    aget v4, v4, v5

    and-int v5, v4, v10

    const/16 v14, 0x11

    const/4 v15, 0x1

    if-gt v3, v14, :cond_2

    if-eq v5, v0, :cond_1

    if-ne v5, v10, :cond_0

    move v0, v9

    goto :goto_1

    :cond_0
    int-to-long v0, v5

    invoke-virtual {v8, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    :goto_1
    move v1, v0

    move v0, v5

    :cond_1
    ushr-int/lit8 v4, v4, 0x14

    shl-int v4, v15, v4

    move v14, v0

    move/from16 v16, v1

    move v5, v4

    goto :goto_2

    :cond_2
    move v14, v0

    move/from16 v16, v1

    move v5, v9

    :goto_2
    and-int v0, v2, v10

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtv;->zbJ:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtv;->zba()I

    move-result v1

    if-lt v3, v1, :cond_3

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtv;->zbW:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtv;->zba()I

    :cond_3
    int-to-long v1, v0

    const/16 v17, 0x3f

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1a

    :pswitch_0
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;

    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbv(I)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;

    move-result-object v1

    invoke-static {v13, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbz(ILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;)I

    move-result v0

    goto/16 :goto_14

    :pswitch_1
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbt(Ljava/lang/Object;J)J

    move-result-wide v1

    add-long v3, v1, v1

    shr-long v1, v1, v17

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v0

    xor-long/2addr v1, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbE(J)I

    move-result v1

    goto/16 :goto_17

    :pswitch_2
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbo(Ljava/lang/Object;J)I

    move-result v1

    add-int v2, v1, v1

    shr-int/lit8 v1, v1, 0x1f

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v0

    xor-int/2addr v1, v2

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v1

    goto/16 :goto_17

    :pswitch_3
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v0

    goto/16 :goto_19

    :pswitch_4
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v0

    goto/16 :goto_18

    :pswitch_5
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbo(Ljava/lang/Object;J)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbE(J)I

    move-result v1

    goto/16 :goto_17

    :pswitch_6
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbo(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v0

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v1

    goto/16 :goto_17

    :pswitch_7
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;->zbd()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v2

    goto/16 :goto_15

    :pswitch_8
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbv(I)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;

    move-result-object v1

    invoke-static {v13, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbh(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;)I

    move-result v0

    goto/16 :goto_14

    :pswitch_9
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;

    if-eqz v2, :cond_4

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;->zbd()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v2

    goto/16 :goto_15

    :cond_4
    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v0

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbC(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_17

    :pswitch_a
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v0

    goto/16 :goto_16

    :pswitch_b
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v0

    goto/16 :goto_18

    :pswitch_c
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v0

    goto/16 :goto_19

    :pswitch_d
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbo(Ljava/lang/Object;J)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbE(J)I

    move-result v1

    goto/16 :goto_17

    :pswitch_e
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbt(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbE(J)I

    move-result v1

    goto/16 :goto_17

    :pswitch_f
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbt(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbE(J)I

    move-result v1

    goto/16 :goto_17

    :pswitch_10
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v0

    goto/16 :goto_18

    :pswitch_11
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v0

    goto/16 :goto_19

    :pswitch_12
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbw(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvg;

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvf;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_12

    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvg;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v9

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v13, v4, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvf;->zba(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_3

    :pswitch_13
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbv(I)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;

    move-result-object v1

    sget v2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zba:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_6

    move v4, v9

    goto :goto_5

    :cond_6
    move v3, v9

    move v4, v3

    :goto_4
    if-ge v3, v2, :cond_7

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;

    invoke-static {v13, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbz(ILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    add-int/2addr v12, v4

    goto/16 :goto_1a

    :pswitch_14
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbj(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v2

    goto/16 :goto_6

    :pswitch_15
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbi(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v2

    goto/16 :goto_6

    :pswitch_16
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbe(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v2

    goto/16 :goto_6

    :pswitch_17
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbc(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v2

    goto/16 :goto_6

    :pswitch_18
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zba(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v2

    goto/16 :goto_6

    :pswitch_19
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbk(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v2

    goto/16 :goto_6

    :pswitch_1a
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zba:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v2

    goto/16 :goto_6

    :pswitch_1b
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbc(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v2

    goto/16 :goto_6

    :pswitch_1c
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbe(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v2

    goto/16 :goto_6

    :pswitch_1d
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbf(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v2

    goto :goto_6

    :pswitch_1e
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbl(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v2

    goto :goto_6

    :pswitch_1f
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbg(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v2

    goto :goto_6

    :pswitch_20
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbc(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v2

    goto :goto_6

    :pswitch_21
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbe(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v2

    :goto_6
    add-int/2addr v1, v2

    add-int/2addr v1, v0

    :cond_8
    :goto_7
    add-int/2addr v12, v1

    goto/16 :goto_1a

    :pswitch_22
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zba:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_9

    :goto_8
    move v0, v9

    goto/16 :goto_14

    :cond_9
    shl-int/lit8 v2, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbj(Ljava/util/List;)I

    move-result v0

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v2

    :goto_9
    mul-int/2addr v1, v2

    goto/16 :goto_17

    :pswitch_23
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zba:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_8

    :cond_a
    shl-int/lit8 v2, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbi(Ljava/util/List;)I

    move-result v0

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v2

    goto :goto_9

    :pswitch_24
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v13, v0, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbd(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_14

    :pswitch_25
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v13, v0, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbb(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_14

    :pswitch_26
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zba:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_8

    :cond_b
    shl-int/lit8 v2, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zba(Ljava/util/List;)I

    move-result v0

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v2

    goto :goto_9

    :pswitch_27
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zba:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    goto :goto_8

    :cond_c
    shl-int/lit8 v2, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbk(Ljava/util/List;)I

    move-result v0

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v2

    goto :goto_9

    :pswitch_28
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zba:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_d

    move v1, v9

    goto/16 :goto_7

    :cond_d
    shl-int/lit8 v2, v13, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v2

    mul-int/2addr v1, v2

    move v2, v9

    :goto_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;->zbd()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :pswitch_29
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbv(I)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;

    move-result-object v1

    sget v2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zba:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_e

    move v3, v9

    goto :goto_d

    :cond_e
    shl-int/lit8 v3, v13, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v3

    mul-int/2addr v3, v2

    move v4, v9

    :goto_b
    if-ge v4, v2, :cond_10

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v13, v5, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuw;

    if-eqz v13, :cond_f

    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuw;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuw;->zba()I

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v13

    add-int/2addr v13, v5

    add-int/2addr v3, v13

    goto :goto_c

    :cond_f
    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;

    invoke-static {v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbB(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;)I

    move-result v5

    add-int/2addr v3, v5

    :goto_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_10
    :goto_d
    add-int/2addr v12, v3

    goto/16 :goto_1a

    :pswitch_2a
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zba:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_12

    :cond_11
    shl-int/lit8 v2, v13, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v2

    mul-int/2addr v2, v1

    instance-of v3, v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbux;

    if-eqz v3, :cond_13

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbux;

    move v3, v9

    :goto_e
    if-ge v3, v1, :cond_19

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbux;->zba()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;

    if-eqz v5, :cond_12

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;->zbd()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v5

    add-int/2addr v5, v4

    add-int/2addr v2, v5

    goto :goto_f

    :cond_12
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbC(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    :goto_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_13
    move v3, v9

    :goto_10
    if-ge v3, v1, :cond_19

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;

    if-eqz v5, :cond_14

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;->zbd()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v5

    add-int/2addr v5, v4

    add-int/2addr v2, v5

    goto :goto_11

    :cond_14
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbC(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    :goto_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :pswitch_2b
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zba:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_8

    :cond_15
    shl-int/lit8 v1, v13, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v1

    add-int/2addr v1, v15

    mul-int/2addr v0, v1

    goto/16 :goto_14

    :pswitch_2c
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v13, v0, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbb(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_14

    :pswitch_2d
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v13, v0, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbd(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_14

    :pswitch_2e
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zba:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_16

    goto/16 :goto_8

    :cond_16
    shl-int/lit8 v2, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbf(Ljava/util/List;)I

    move-result v0

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v2

    goto/16 :goto_9

    :pswitch_2f
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zba:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_8

    :cond_17
    shl-int/lit8 v2, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbl(Ljava/util/List;)I

    move-result v0

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v2

    goto/16 :goto_9

    :pswitch_30
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zba:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_18

    :goto_12
    move v2, v9

    goto :goto_13

    :cond_18
    shl-int/lit8 v1, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbg(Ljava/util/List;)I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v1

    mul-int/2addr v0, v1

    add-int/2addr v2, v0

    :cond_19
    :goto_13
    add-int/2addr v12, v2

    goto/16 :goto_1a

    :pswitch_31
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v13, v0, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbb(ILjava/util/List;Z)I

    move-result v0

    goto :goto_14

    :pswitch_32
    invoke-virtual {v8, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v13, v0, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbd(ILjava/util/List;Z)I

    move-result v0

    :goto_14
    add-int/2addr v12, v0

    goto/16 :goto_1a

    :pswitch_33
    move-object/from16 v0, p0

    move-wide v3, v1

    move-object/from16 v1, p1

    move v2, v11

    move-wide v9, v3

    move v3, v14

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;

    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbv(I)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;

    move-result-object v1

    invoke-static {v13, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbz(ILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;)I

    move-result v0

    goto :goto_14

    :pswitch_34
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    add-long v3, v1, v1

    shr-long v1, v1, v17

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v0

    xor-long/2addr v1, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbE(J)I

    move-result v1

    goto/16 :goto_17

    :pswitch_35
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    add-int v2, v1, v1

    shr-int/lit8 v1, v1, 0x1f

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v0

    xor-int/2addr v1, v2

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v1

    goto/16 :goto_17

    :pswitch_36
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v0

    goto/16 :goto_19

    :pswitch_37
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v0

    goto/16 :goto_18

    :pswitch_38
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbE(J)I

    move-result v1

    goto/16 :goto_17

    :pswitch_39
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v0

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v1

    goto/16 :goto_17

    :pswitch_3a
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;->zbd()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v2

    :goto_15
    add-int/2addr v2, v1

    add-int/2addr v0, v2

    goto/16 :goto_14

    :pswitch_3b
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbv(I)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;

    move-result-object v1

    invoke-static {v13, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbh(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;)I

    move-result v0

    goto/16 :goto_14

    :pswitch_3c
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;

    if-eqz v2, :cond_1a

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;->zbd()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v2

    goto :goto_15

    :cond_1a
    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v0

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbC(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_17

    :pswitch_3d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v0

    :goto_16
    add-int/2addr v0, v15

    goto/16 :goto_14

    :pswitch_3e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v0

    goto/16 :goto_18

    :pswitch_3f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v0

    goto/16 :goto_19

    :pswitch_40
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbE(J)I

    move-result v1

    goto :goto_17

    :pswitch_41
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbE(J)I

    move-result v1

    goto :goto_17

    :pswitch_42
    move-wide v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbE(J)I

    move-result v1

    :goto_17
    add-int/2addr v0, v1

    goto/16 :goto_14

    :pswitch_43
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v0

    :goto_18
    add-int/lit8 v0, v0, 0x4

    goto/16 :goto_14

    :pswitch_44
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;->zbD(I)I

    move-result v0

    :goto_19
    add-int/lit8 v0, v0, 0x8

    goto/16 :goto_14

    :cond_1b
    :goto_1a
    add-int/lit8 v11, v11, 0x3

    move v0, v14

    move/from16 v1, v16

    const/4 v9, 0x0

    const v10, 0xfffff

    goto/16 :goto_0

    :cond_1c
    move-object v0, v7

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zbc:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zba()I

    move-result v0

    add-int/2addr v12, v0

    iget-boolean v0, v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbh:Z

    if-eqz v0, :cond_1f

    move-object v0, v7

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbub;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbub;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;

    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->zbc()I

    move-result v1

    const/4 v9, 0x0

    const/16 v18, 0x0

    :goto_1b
    if-ge v9, v1, :cond_1d

    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->zbg(I)Ljava/util/Map$Entry;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwb;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwb;->zba()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbb(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;Ljava/lang/Object;)I

    move-result v2

    add-int v18, v18, v2

    add-int/lit8 v9, v9, 0x1

    goto :goto_1b

    :cond_1d
    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->zbd()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbb(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtt;Ljava/lang/Object;)I

    move-result v1

    add-int v18, v18, v1

    goto :goto_1c

    :cond_1e
    add-int v12, v12, v18

    :cond_1f
    return v12

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zbb(Ljava/lang/Object;)I
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbs(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc:[I

    const v4, 0xfffff

    and-int/2addr v4, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbr(I)I

    move-result v2

    aget v3, v3, v0

    int-to-long v4, v4

    const/16 v6, 0x25

    const/16 v7, 0x20

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_3

    :pswitch_1
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbt(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuo;->zbb:[B

    goto/16 :goto_2

    :pswitch_2
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbo(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_3

    :pswitch_3
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbt(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuo;->zbb:[B

    goto/16 :goto_2

    :pswitch_4
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbo(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_3

    :pswitch_5
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbo(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_3

    :pswitch_6
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbo(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_3

    :pswitch_7
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_3

    :pswitch_8
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_3

    :pswitch_9
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_3

    :pswitch_a
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbN(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuo;->zba(Z)I

    move-result v2

    goto/16 :goto_3

    :pswitch_b
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbo(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_3

    :pswitch_c
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbt(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuo;->zbb:[B

    goto/16 :goto_2

    :pswitch_d
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbo(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_3

    :pswitch_e
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbt(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuo;->zbb:[B

    goto/16 :goto_2

    :pswitch_f
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbt(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuo;->zbb:[B

    goto/16 :goto_2

    :pswitch_10
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbn(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto/16 :goto_3

    :pswitch_11
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbm(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuo;->zbb:[B

    goto/16 :goto_2

    :pswitch_12
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_3

    :pswitch_13
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_3

    :pswitch_14
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    goto :goto_1

    :pswitch_15
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbd(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuo;->zbb:[B

    goto/16 :goto_2

    :pswitch_16
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbc(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_3

    :pswitch_17
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbd(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuo;->zbb:[B

    goto/16 :goto_2

    :pswitch_18
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbc(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_3

    :pswitch_19
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbc(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_3

    :pswitch_1a
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbc(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_3

    :pswitch_1b
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_3

    :pswitch_1c
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    :cond_0
    :goto_1
    add-int/2addr v1, v6

    goto :goto_4

    :pswitch_1d
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :pswitch_1e
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbw(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuo;->zba(Z)I

    move-result v2

    goto :goto_3

    :pswitch_1f
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbc(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_3

    :pswitch_20
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbd(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuo;->zbb:[B

    goto :goto_2

    :pswitch_21
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbc(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_3

    :pswitch_22
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbd(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuo;->zbb:[B

    goto :goto_2

    :pswitch_23
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbd(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuo;->zbb:[B

    goto :goto_2

    :pswitch_24
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbb(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto :goto_3

    :pswitch_25
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zba(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuo;->zbb:[B

    :goto_2
    ushr-long v4, v2, v7

    xor-long/2addr v2, v4

    long-to-int v2, v2

    :goto_3
    add-int/2addr v1, v2

    :cond_1
    :goto_4
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_2
    mul-int/lit8 v1, v1, 0x35

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zbc:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbh:Z

    if-eqz p0, :cond_3

    mul-int/lit8 v1, v1, 0x35

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbub;

    iget-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbub;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;->hashCode()I

    move-result p0

    add-int/2addr v1, p0

    :cond_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zbc(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I
    .locals 40
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v15, p2

    move/from16 v14, p4

    move/from16 v13, p5

    move-object/from16 v12, p6

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbA(Ljava/lang/Object;)V

    sget-object v11, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbb:Lsun/misc/Unsafe;

    move/from16 v1, p3

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0xfffff

    :goto_0
    const-string v8, "Failed to parse the message."

    const/16 v17, 0x0

    const/4 v9, 0x3

    if-ge v1, v14, :cond_77

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v15, v1

    if-gez v1, :cond_0

    invoke-static {v1, v15, v4, v12}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbl(I[BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v1

    iget v4, v12, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    goto :goto_1

    :cond_0
    move/from16 v39, v4

    move v4, v1

    move/from16 v1, v39

    :goto_1
    ushr-int/lit8 v10, v4, 0x3

    if-le v10, v2, :cond_2

    div-int/2addr v3, v9

    iget v2, v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbe:I

    if-lt v10, v2, :cond_1

    iget v2, v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbf:I

    if-gt v10, v2, :cond_1

    invoke-direct {v0, v10, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbq(II)I

    move-result v2

    goto :goto_2

    :cond_1
    const/4 v2, -0x1

    :goto_2
    const/4 v3, 0x0

    goto :goto_3

    :cond_2
    iget v2, v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbe:I

    if-lt v10, v2, :cond_3

    iget v2, v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbf:I

    if-gt v10, v2, :cond_3

    const/4 v3, 0x0

    invoke-direct {v0, v10, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbq(II)I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    const/4 v2, -0x1

    :goto_3
    const/4 v9, -0x1

    if-ne v2, v9, :cond_4

    move/from16 v29, v3

    move v0, v4

    move/from16 v16, v5

    move/from16 v27, v6

    move-object v5, v7

    move-object/from16 v38, v8

    move/from16 v18, v9

    move-object/from16 v37, v11

    move-object v9, v12

    move v7, v13

    const/16 v19, 0x3

    move v3, v1

    move v12, v10

    goto/16 :goto_4c

    :cond_4
    and-int/lit8 v3, v4, 0x7

    iget-object v9, v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc:[I

    add-int/lit8 v21, v2, 0x1

    move/from16 v22, v4

    aget v4, v9, v21

    move-object/from16 v21, v8

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbr(I)I

    move-result v8

    const v16, 0xfffff

    and-int v13, v4, v16

    int-to-long v13, v13

    move/from16 v23, v10

    const/high16 v24, 0x20000000

    const-wide/16 v25, 0x0

    const/16 v10, 0x11

    if-gt v8, v10, :cond_12

    add-int/lit8 v10, v2, 0x2

    aget v9, v9, v10

    ushr-int/lit8 v10, v9, 0x14

    const/16 v27, 0x1

    shl-int v10, v27, v10

    const v0, 0xfffff

    and-int/2addr v9, v0

    move/from16 v16, v1

    if-eq v9, v6, :cond_7

    if-eq v6, v0, :cond_5

    int-to-long v0, v6

    invoke-virtual {v11, v7, v0, v1, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const v0, 0xfffff

    :cond_5
    if-ne v9, v0, :cond_6

    const/4 v5, 0x0

    goto :goto_4

    :cond_6
    int-to-long v5, v9

    invoke-virtual {v11, v7, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    move v5, v1

    :goto_4
    move/from16 v27, v9

    goto :goto_5

    :cond_7
    move/from16 v27, v6

    :goto_5
    packed-switch v8, :pswitch_data_0

    move-object/from16 v8, p0

    move/from16 v19, v0

    move v9, v2

    move/from16 v6, v16

    move/from16 v0, v22

    const/4 v2, 0x3

    const/16 v16, 0x0

    if-ne v3, v2, :cond_11

    or-int/2addr v5, v10

    invoke-direct {v8, v7, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbx(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    shl-int/lit8 v2, v23, 0x3

    or-int/lit8 v13, v2, 0x4

    invoke-direct {v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbv(I)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;

    move-result-object v2

    move-object v3, v8

    move/from16 v4, v19

    move-object v8, v1

    move v14, v9

    const/16 v18, -0x1

    move-object v9, v2

    move/from16 v2, v23

    move-object/from16 v10, p2

    move/from16 p3, v5

    move-object v5, v11

    move v11, v6

    move-object v6, v12

    move/from16 v12, p4

    move/from16 v6, p4

    move v2, v14

    move-object/from16 v14, p6

    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbo(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;[BIIILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v8

    invoke-direct {v3, v7, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbF(Ljava/lang/Object;ILjava/lang/Object;)V

    move/from16 v13, p5

    move-object/from16 v12, p6

    move v4, v0

    move-object v0, v3

    move-object v11, v5

    move v14, v6

    move v1, v8

    move/from16 v6, v27

    move/from16 v5, p3

    move v3, v2

    move/from16 v2, v23

    goto/16 :goto_0

    :pswitch_0
    if-nez v3, :cond_8

    or-int v8, v5, v10

    move/from16 v1, v16

    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbn([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v9

    iget-wide v3, v12, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbb:J

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtg;->zbc(J)J

    move-result-wide v5

    move-object v1, v11

    move v10, v2

    move-object/from16 v2, p1

    move/from16 v0, v22

    const/16 v16, 0x0

    move-wide v3, v13

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move/from16 v14, p4

    move/from16 v13, p5

    move v4, v0

    move v5, v8

    move v1, v9

    move v3, v10

    goto :goto_6

    :cond_8
    move/from16 v1, v16

    move/from16 v0, v22

    const/16 v16, 0x0

    move-object/from16 v3, p0

    move/from16 v6, p4

    move v9, v1

    move v8, v5

    move-object v5, v11

    move-object v1, v12

    move/from16 v12, v23

    const v4, 0xfffff

    const/4 v10, 0x3

    const/16 v18, -0x1

    goto/16 :goto_10

    :pswitch_1
    move v9, v2

    move/from16 v1, v16

    move/from16 v0, v22

    const/16 v16, 0x0

    if-nez v3, :cond_9

    or-int/2addr v5, v10

    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbk([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v1

    iget v2, v12, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtg;->zbb(I)I

    move-result v2

    invoke-virtual {v11, v7, v13, v14, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move/from16 v14, p4

    move/from16 v13, p5

    move v4, v0

    move v3, v9

    :goto_6
    move/from16 v2, v23

    move/from16 v6, v27

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_9
    move-object/from16 v3, p0

    move/from16 v6, p4

    move v8, v5

    move v2, v9

    move-object v5, v11

    const v4, 0xfffff

    goto :goto_8

    :pswitch_2
    move v9, v2

    move/from16 v1, v16

    move/from16 v0, v22

    const/16 v16, 0x0

    if-nez v3, :cond_c

    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbk([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v1

    iget v2, v12, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    const v19, 0xfffff

    move-object/from16 v8, p0

    invoke-direct {v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbu(I)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuj;

    move-result-object v3

    const/high16 v6, -0x80000000

    and-int/2addr v4, v6

    if-eqz v4, :cond_b

    if-eqz v3, :cond_b

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuj;->zba(I)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_7

    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbd(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;

    move-result-object v3

    int-to-long v13, v2

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbj(ILjava/lang/Object;)V

    goto/16 :goto_d

    :cond_b
    :goto_7
    or-int/2addr v5, v10

    invoke-virtual {v11, v7, v13, v14, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_d

    :cond_c
    const v19, 0xfffff

    move-object/from16 v3, p0

    move/from16 v6, p4

    move v8, v5

    move v2, v9

    move-object v5, v11

    move/from16 v4, v19

    :goto_8
    const/4 v10, 0x3

    const/16 v18, -0x1

    move v9, v1

    goto/16 :goto_9

    :pswitch_3
    move-object/from16 v8, p0

    move/from16 v19, v0

    move v9, v2

    move/from16 v1, v16

    move/from16 v0, v22

    const/4 v2, 0x2

    const/16 v16, 0x0

    if-ne v3, v2, :cond_d

    or-int/2addr v5, v10

    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zba([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v1

    iget-object v2, v12, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbc:Ljava/lang/Object;

    invoke-virtual {v11, v7, v13, v14, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_d

    :pswitch_4
    move-object/from16 v8, p0

    move/from16 v19, v0

    move v9, v2

    move/from16 v1, v16

    move/from16 v0, v22

    const/4 v2, 0x2

    const/16 v16, 0x0

    if-ne v3, v2, :cond_d

    or-int/2addr v10, v5

    invoke-direct {v8, v7, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbx(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v13

    invoke-direct {v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbv(I)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;

    move-result-object v2

    move v6, v1

    move-object v1, v13

    move-object/from16 v3, p2

    move v4, v6

    move/from16 v5, p4

    move-object/from16 v6, p6

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbp(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;[BIILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v1

    invoke-direct {v8, v7, v9, v13}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbF(Ljava/lang/Object;ILjava/lang/Object;)V

    move/from16 v14, p4

    move/from16 v13, p5

    move v4, v0

    move-object v0, v8

    move v3, v9

    move v5, v10

    goto/16 :goto_e

    :cond_d
    move/from16 v6, p4

    move-object v3, v8

    move v2, v9

    move/from16 v4, v19

    const/4 v10, 0x3

    const/16 v18, -0x1

    move v9, v1

    move v8, v5

    move-object v5, v11

    :goto_9
    move-object v1, v12

    move/from16 v12, v23

    goto/16 :goto_10

    :pswitch_5
    move-object/from16 v8, p0

    move/from16 v19, v0

    move v9, v2

    move/from16 v6, v16

    move/from16 v0, v22

    const/4 v1, 0x2

    const/16 v16, 0x0

    if-ne v3, v1, :cond_10

    or-int/2addr v5, v10

    and-int v1, v4, v24

    if-eqz v1, :cond_e

    invoke-static {v15, v6, v12}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbi([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v1

    goto :goto_a

    :cond_e
    invoke-static {v15, v6, v12}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbh([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v1

    :goto_a
    iget-object v2, v12, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbc:Ljava/lang/Object;

    invoke-virtual {v11, v7, v13, v14, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_d

    :pswitch_6
    move-object/from16 v8, p0

    move/from16 v19, v0

    move v9, v2

    move/from16 v6, v16

    move/from16 v0, v22

    const/16 v16, 0x0

    if-nez v3, :cond_10

    or-int/2addr v5, v10

    invoke-static {v15, v6, v12}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbn([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v1

    iget-wide v2, v12, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbb:J

    cmp-long v2, v2, v25

    if-eqz v2, :cond_f

    const/4 v3, 0x1

    goto :goto_b

    :cond_f
    move/from16 v3, v16

    :goto_b
    invoke-static {v7, v13, v14, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbm(Ljava/lang/Object;JZ)V

    goto/16 :goto_d

    :pswitch_7
    move-object/from16 v8, p0

    move/from16 v19, v0

    move v9, v2

    move/from16 v6, v16

    move/from16 v0, v22

    const/4 v1, 0x5

    const/16 v16, 0x0

    if-ne v3, v1, :cond_10

    add-int/lit8 v1, v6, 0x4

    or-int/2addr v5, v10

    invoke-static {v15, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbc([BI)I

    move-result v2

    invoke-virtual {v11, v7, v13, v14, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_d

    :pswitch_8
    move-object/from16 v8, p0

    move/from16 v19, v0

    move v9, v2

    move/from16 v6, v16

    move/from16 v0, v22

    const/4 v1, 0x1

    const/16 v16, 0x0

    if-ne v3, v1, :cond_10

    add-int/lit8 v17, v6, 0x8

    or-int/2addr v10, v5

    invoke-static {v15, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbr([BI)J

    move-result-wide v5

    move-object v1, v11

    move-object/from16 v2, p1

    move-wide v3, v13

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto :goto_c

    :pswitch_9
    move-object/from16 v8, p0

    move/from16 v19, v0

    move v9, v2

    move/from16 v6, v16

    move/from16 v0, v22

    const/16 v16, 0x0

    if-nez v3, :cond_10

    or-int/2addr v5, v10

    invoke-static {v15, v6, v12}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbk([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v1

    iget v2, v12, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    invoke-virtual {v11, v7, v13, v14, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_d

    :pswitch_a
    move-object/from16 v8, p0

    move/from16 v19, v0

    move v9, v2

    move/from16 v6, v16

    move/from16 v0, v22

    const/16 v16, 0x0

    if-nez v3, :cond_10

    or-int/2addr v10, v5

    invoke-static {v15, v6, v12}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbn([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v17

    iget-wide v5, v12, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbb:J

    move-object v1, v11

    move-object/from16 v2, p1

    move-wide v3, v13

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_c
    move/from16 v14, p4

    move/from16 v13, p5

    move v4, v0

    move-object v0, v8

    move v3, v9

    move v5, v10

    move/from16 v1, v17

    goto :goto_e

    :pswitch_b
    move-object/from16 v8, p0

    move/from16 v19, v0

    move v9, v2

    move/from16 v6, v16

    move/from16 v0, v22

    const/4 v1, 0x5

    const/16 v16, 0x0

    if-ne v3, v1, :cond_10

    add-int/lit8 v1, v6, 0x4

    or-int/2addr v5, v10

    invoke-static {v15, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbc([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-static {v7, v13, v14, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbp(Ljava/lang/Object;JF)V

    goto :goto_d

    :pswitch_c
    move-object/from16 v8, p0

    move/from16 v19, v0

    move v9, v2

    move/from16 v6, v16

    move/from16 v0, v22

    const/4 v1, 0x1

    const/16 v16, 0x0

    if-ne v3, v1, :cond_10

    add-int/lit8 v1, v6, 0x8

    or-int/2addr v5, v10

    invoke-static {v15, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbr([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-static {v7, v13, v14, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbo(Ljava/lang/Object;JD)V

    :goto_d
    move/from16 v14, p4

    move/from16 v13, p5

    move v4, v0

    move-object v0, v8

    move v3, v9

    :goto_e
    move/from16 v2, v23

    move/from16 v6, v27

    goto/16 :goto_0

    :cond_10
    move-object v3, v8

    move v2, v9

    move-object v1, v12

    move/from16 v4, v19

    move/from16 v12, v23

    const/4 v10, 0x3

    :goto_f
    const/16 v18, -0x1

    move v8, v5

    move v9, v6

    move-object v5, v11

    move/from16 v6, p4

    goto :goto_10

    :cond_11
    move v10, v2

    move-object v3, v8

    move v2, v9

    move-object v1, v12

    move/from16 v4, v19

    move/from16 v12, v23

    goto :goto_f

    :goto_10
    move/from16 v29, v2

    move-object/from16 v37, v5

    move-object v5, v7

    move/from16 v16, v8

    move v3, v9

    move/from16 v19, v10

    move-object/from16 v38, v21

    move/from16 v7, p5

    move-object v9, v1

    goto/16 :goto_4c

    :cond_12
    move/from16 v19, v1

    move/from16 v16, v5

    move/from16 v27, v6

    move-object v5, v11

    move-object v1, v12

    move/from16 v12, v23

    const/16 v18, -0x1

    move/from16 v6, p4

    move-object v11, v0

    move/from16 v0, v22

    const/16 v10, 0x1b

    const/16 v22, 0xa

    if-ne v8, v10, :cond_16

    const/4 v10, 0x2

    if-ne v3, v10, :cond_15

    invoke-virtual {v5, v7, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;

    invoke-interface {v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;->zbc()Z

    move-result v4

    if-nez v4, :cond_14

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_13

    goto :goto_11

    :cond_13
    add-int v22, v4, v4

    :goto_11
    move/from16 v4, v22

    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;->zbd(I)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;

    move-result-object v3

    invoke-virtual {v5, v7, v13, v14, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_14
    move-object v13, v3

    invoke-direct {v11, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbv(I)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;

    move-result-object v8

    move v9, v0

    move-object/from16 v10, p2

    move-object v3, v11

    move/from16 v11, v19

    move v4, v12

    move/from16 v12, p4

    move-object/from16 v14, p6

    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbf(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;I[BIILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v8

    move/from16 v13, p5

    move-object v12, v1

    move-object v11, v5

    move v14, v6

    move v1, v8

    move/from16 v5, v16

    move/from16 v6, v27

    move/from16 v39, v4

    move v4, v0

    move-object v0, v3

    move v3, v2

    move/from16 v2, v39

    goto/16 :goto_0

    :cond_15
    move-object v3, v11

    move-object v11, v1

    move-object/from16 v37, v5

    move v7, v6

    move/from16 v22, v10

    move/from16 v35, v12

    move/from16 v10, v19

    move-object/from16 v6, v21

    move v12, v2

    goto/16 :goto_40

    :cond_16
    move/from16 v39, v12

    move-object v12, v11

    move/from16 v11, v39

    const-string v10, "Protocol message had invalid UTF-8."

    move/from16 v29, v2

    const-string v2, ""

    move-object/from16 v30, v5

    const-string v5, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    move-object/from16 v31, v9

    const/16 v9, 0x31

    if-gt v8, v9, :cond_5b

    move-object/from16 v23, v10

    int-to-long v9, v4

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbb:Lsun/misc/Unsafe;

    invoke-virtual {v4, v7, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v32, v2

    move-object/from16 v2, v24

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;

    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;->zbc()Z

    move-result v24

    if-nez v24, :cond_18

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v24

    if-nez v24, :cond_17

    goto :goto_12

    :cond_17
    add-int v22, v24, v24

    :goto_12
    move-wide/from16 v33, v9

    move/from16 v9, v22

    invoke-interface {v2, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;->zbd(I)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;

    move-result-object v2

    invoke-virtual {v4, v7, v13, v14, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_13

    :cond_18
    move-wide/from16 v33, v9

    :goto_13
    move-object v13, v2

    const-string v2, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    packed-switch v8, :pswitch_data_1

    move v9, v6

    move/from16 v35, v11

    move/from16 v10, v19

    move-object/from16 v7, v21

    move/from16 v12, v29

    move-object/from16 v8, v30

    move-object v11, v1

    const/4 v1, 0x3

    if-ne v3, v1, :cond_58

    and-int/lit8 v1, v0, -0x8

    or-int/lit8 v14, v1, 0x4

    move-object/from16 v6, p0

    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbv(I)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;

    move-result-object v20

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    move v3, v10

    move/from16 v4, p4

    move v5, v14

    move-object/from16 v21, v7

    move-object v7, v6

    move-object/from16 v6, p6

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbd(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;[BIIILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v1

    iget-object v2, v11, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbc:Ljava/lang/Object;

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_36

    :pswitch_d
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1b

    sget v2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zba:I

    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbva;

    move/from16 v14, v19

    invoke-static {v15, v14, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbk([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v2

    iget v3, v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    add-int/2addr v3, v2

    :goto_14
    if-ge v2, v3, :cond_19

    invoke-static {v15, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbn([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v2

    iget-wide v8, v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbb:J

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtg;->zbc(J)J

    move-result-wide v8

    invoke-virtual {v13, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbva;->zbg(J)V

    goto :goto_14

    :cond_19
    if-ne v2, v3, :cond_1a

    goto/16 :goto_18

    :cond_1a
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    move/from16 v14, v19

    if-nez v3, :cond_28

    sget v2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zba:I

    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbva;

    invoke-static {v15, v14, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbn([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v2

    iget-wide v3, v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbb:J

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtg;->zbc(J)J

    move-result-wide v3

    invoke-virtual {v13, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbva;->zbg(J)V

    :goto_15
    if-ge v2, v6, :cond_1f

    invoke-static {v15, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbk([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v3

    iget v4, v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    if-ne v0, v4, :cond_1f

    invoke-static {v15, v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbn([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v2

    iget-wide v3, v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbb:J

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtg;->zbc(J)J

    move-result-wide v3

    invoke-virtual {v13, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbva;->zbg(J)V

    goto :goto_15

    :pswitch_e
    move/from16 v14, v19

    const/4 v2, 0x2

    if-ne v3, v2, :cond_1e

    sget v2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zba:I

    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;

    invoke-static {v15, v14, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbk([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v2

    iget v3, v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    add-int/2addr v3, v2

    :goto_16
    if-ge v2, v3, :cond_1c

    invoke-static {v15, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbk([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v2

    iget v4, v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtg;->zbb(I)I

    move-result v4

    invoke-virtual {v13, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;->zbg(I)V

    goto :goto_16

    :cond_1c
    if-ne v2, v3, :cond_1d

    goto :goto_18

    :cond_1d
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    if-nez v3, :cond_28

    sget v2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zba:I

    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;

    invoke-static {v15, v14, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbk([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v2

    iget v3, v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtg;->zbb(I)I

    move-result v3

    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;->zbg(I)V

    :goto_17
    if-ge v2, v6, :cond_1f

    invoke-static {v15, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbk([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v3

    iget v4, v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    if-ne v0, v4, :cond_1f

    invoke-static {v15, v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbk([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v2

    iget v3, v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtg;->zbb(I)I

    move-result v3

    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;->zbg(I)V

    goto :goto_17

    :cond_1f
    :goto_18
    move v9, v6

    move/from16 v35, v11

    move-object v7, v12

    move v10, v14

    move/from16 v12, v29

    move-object/from16 v8, v30

    move-object v11, v1

    move v1, v2

    goto/16 :goto_39

    :pswitch_f
    move/from16 v14, v19

    const/4 v2, 0x2

    if-ne v3, v2, :cond_20

    invoke-static {v15, v14, v13, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbg([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v2

    move-object v10, v1

    move v8, v6

    move/from16 v9, v29

    const/16 v19, 0x3

    goto :goto_19

    :cond_20
    if-nez v3, :cond_28

    move-object v10, v1

    move v1, v0

    move/from16 v9, v29

    const/16 v19, 0x3

    move-object/from16 v2, p2

    move v3, v14

    move/from16 v4, p4

    move-object/from16 v8, v30

    move-object v5, v13

    move v8, v6

    move-object/from16 v6, p6

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbm(I[BIILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v2

    :goto_19
    invoke-direct {v12, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbu(I)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuj;

    move-result-object v1

    iget-object v3, v12, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbl:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwl;

    sget v4, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zba:I

    if-eqz v1, :cond_26

    instance-of v4, v13, Ljava/util/RandomAccess;

    if-eqz v4, :cond_24

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v20, v2

    move-object/from16 v2, v17

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1a
    if-ge v5, v4, :cond_23

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    move/from16 v29, v9

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v1, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuj;->zba(I)Z

    move-result v22

    if-eqz v22, :cond_22

    if-eq v5, v6, :cond_21

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v13, v6, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_21
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    :cond_22
    invoke-static {v7, v11, v9, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbn(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwl;)Ljava/lang/Object;

    move-result-object v2

    :goto_1b
    add-int/lit8 v5, v5, 0x1

    move/from16 v9, v29

    goto :goto_1a

    :cond_23
    move/from16 v29, v9

    if-eq v6, v4, :cond_27

    invoke-interface {v13, v6, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_1d

    :cond_24
    move/from16 v20, v2

    move/from16 v29, v9

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object/from16 v4, v17

    :cond_25
    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v1, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuj;->zba(I)Z

    move-result v6

    if-nez v6, :cond_25

    invoke-static {v7, v11, v5, v4, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbn(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwl;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1c

    :cond_26
    move/from16 v20, v2

    move/from16 v29, v9

    :cond_27
    :goto_1d
    move v9, v8

    move/from16 v35, v11

    move-object v7, v12

    move/from16 v1, v20

    :goto_1e
    move/from16 v12, v29

    move-object/from16 v8, v30

    move-object v11, v10

    move v10, v14

    goto/16 :goto_39

    :cond_28
    move v9, v6

    move/from16 v35, v11

    move-object v7, v12

    move v10, v14

    move/from16 v12, v29

    move-object/from16 v8, v30

    move-object v11, v1

    goto/16 :goto_38

    :pswitch_10
    move-object v10, v1

    move v8, v6

    move/from16 v14, v19

    const/4 v1, 0x2

    const/16 v19, 0x3

    if-ne v3, v1, :cond_30

    invoke-static {v15, v14, v10}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbk([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v1

    iget v3, v10, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    if-ltz v3, :cond_2f

    array-length v4, v15

    sub-int/2addr v4, v1

    if-gt v3, v4, :cond_2e

    if-nez v3, :cond_29

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_29
    invoke-static {v15, v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;->zbj([BII)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;

    move-result-object v4

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1f
    add-int/2addr v1, v3

    :goto_20
    if-ge v1, v8, :cond_2d

    invoke-static {v15, v1, v10}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbk([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v3

    iget v4, v10, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    if-ne v0, v4, :cond_2d

    invoke-static {v15, v3, v10}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbk([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v1

    iget v3, v10, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    if-ltz v3, :cond_2c

    array-length v4, v15

    sub-int/2addr v4, v1

    if-gt v3, v4, :cond_2b

    if-nez v3, :cond_2a

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_2a
    invoke-static {v15, v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;->zbj([BII)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;

    move-result-object v4

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_2b
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    move v9, v8

    move/from16 v35, v11

    move-object v7, v12

    goto :goto_1e

    :cond_2e
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    move v9, v8

    move/from16 v35, v11

    move-object v7, v12

    move/from16 v12, v29

    move-object/from16 v8, v30

    move-object v11, v10

    move v10, v14

    goto/16 :goto_38

    :pswitch_11
    move-object v10, v1

    move v8, v6

    move/from16 v14, v19

    const/4 v1, 0x2

    const/16 v19, 0x3

    if-ne v3, v1, :cond_31

    move/from16 v2, v29

    invoke-direct {v12, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbv(I)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;

    move-result-object v3

    move v6, v8

    move-object/from16 v5, v21

    move-object/from16 v4, v30

    move-object v8, v3

    move/from16 v3, v19

    move v9, v0

    move v7, v1

    move-object v1, v10

    move-object/from16 v10, p2

    move/from16 v35, v11

    move v11, v14

    move/from16 v12, p4

    move/from16 v36, v14

    move-object/from16 v14, p6

    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbf(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;I[BIILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v8

    move-object/from16 v7, p0

    move-object v11, v1

    move v12, v2

    move v9, v6

    move v1, v8

    move/from16 v10, v36

    move-object v8, v4

    goto/16 :goto_39

    :cond_31
    move/from16 v35, v11

    move-object/from16 v7, p0

    move v9, v8

    move-object v11, v10

    move v10, v14

    move/from16 v12, v29

    move-object/from16 v8, v30

    goto/16 :goto_38

    :pswitch_12
    move/from16 v35, v11

    move/from16 v36, v19

    move-object/from16 v5, v21

    move/from16 v12, v29

    move-object/from16 v4, v30

    const/4 v7, 0x2

    const/4 v11, 0x3

    if-ne v3, v7, :cond_3e

    const-wide/32 v8, 0x20000000

    and-long v8, v33, v8

    cmp-long v3, v8, v25

    if-nez v3, :cond_36

    move/from16 v10, v36

    invoke-static {v15, v10, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbk([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v3

    iget v8, v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    if-ltz v8, :cond_35

    if-nez v8, :cond_32

    move-object/from16 v9, v32

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_32
    move-object/from16 v9, v32

    new-instance v14, Ljava/lang/String;

    sget-object v11, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuo;->zba:Ljava/nio/charset/Charset;

    invoke-direct {v14, v15, v3, v8, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_21
    add-int/2addr v3, v8

    :goto_22
    if-ge v3, v6, :cond_3b

    invoke-static {v15, v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbk([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v8

    iget v11, v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    if-ne v0, v11, :cond_3b

    invoke-static {v15, v8, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbk([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v3

    iget v8, v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    if-ltz v8, :cond_34

    if-nez v8, :cond_33

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_33
    new-instance v11, Ljava/lang/String;

    sget-object v14, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuo;->zba:Ljava/nio/charset/Charset;

    invoke-direct {v11, v15, v3, v8, v14}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_34
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    move-object/from16 v9, v32

    move/from16 v10, v36

    invoke-static {v15, v10, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbk([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v3

    iget v8, v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    if-ltz v8, :cond_3d

    if-nez v8, :cond_37

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_37
    add-int v11, v3, v8

    invoke-static {v15, v3, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwv;->zbd([BII)Z

    move-result v14

    if-eqz v14, :cond_3c

    new-instance v14, Ljava/lang/String;

    sget-object v7, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuo;->zba:Ljava/nio/charset/Charset;

    invoke-direct {v14, v15, v3, v8, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v11

    :goto_23
    if-ge v3, v6, :cond_3b

    invoke-static {v15, v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbk([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v7

    iget v8, v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    if-ne v0, v8, :cond_3b

    invoke-static {v15, v7, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbk([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v3

    iget v7, v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    if-ltz v7, :cond_3a

    if-nez v7, :cond_38

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_38
    add-int v8, v3, v7

    invoke-static {v15, v3, v8}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwv;->zbd([BII)Z

    move-result v11

    if-eqz v11, :cond_39

    new-instance v11, Ljava/lang/String;

    sget-object v14, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuo;->zba:Ljava/nio/charset/Charset;

    invoke-direct {v11, v15, v3, v7, v14}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v8

    goto :goto_23

    :cond_39
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;

    move-object/from16 v2, v23

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    move-object/from16 v7, p0

    move-object v11, v1

    move v1, v3

    move-object v8, v4

    move-object/from16 v21, v5

    move v9, v6

    goto/16 :goto_39

    :cond_3c
    move-object/from16 v2, v23

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3e
    move/from16 v10, v36

    move-object/from16 v7, p0

    move-object v11, v1

    move-object v8, v4

    move-object/from16 v21, v5

    move v9, v6

    goto/16 :goto_38

    :pswitch_13
    move/from16 v35, v11

    move/from16 v10, v19

    move-object/from16 v7, v21

    move/from16 v12, v29

    move-object/from16 v4, v30

    const/4 v2, 0x2

    if-ne v3, v2, :cond_42

    sget v2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zba:I

    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbss;

    invoke-static {v15, v10, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbk([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v2

    iget v3, v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    add-int/2addr v3, v2

    :goto_24
    if-ge v2, v3, :cond_40

    invoke-static {v15, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbn([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v2

    iget-wide v8, v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbb:J

    cmp-long v8, v8, v25

    if-eqz v8, :cond_3f

    const/4 v8, 0x1

    goto :goto_25

    :cond_3f
    const/4 v8, 0x0

    :goto_25
    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbss;->zbe(Z)V

    goto :goto_24

    :cond_40
    if-ne v2, v3, :cond_41

    goto/16 :goto_2c

    :cond_41
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    if-nez v3, :cond_4e

    sget v2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zba:I

    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbss;

    invoke-static {v15, v10, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbn([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v2

    iget-wide v8, v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbb:J

    cmp-long v3, v8, v25

    if-eqz v3, :cond_43

    const/4 v3, 0x1

    goto :goto_26

    :cond_43
    const/4 v3, 0x0

    :goto_26
    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbss;->zbe(Z)V

    :goto_27
    if-ge v2, v6, :cond_4b

    invoke-static {v15, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbk([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v3

    iget v5, v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    if-ne v0, v5, :cond_4b

    invoke-static {v15, v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbn([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v2

    iget-wide v8, v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbb:J

    cmp-long v3, v8, v25

    if-eqz v3, :cond_44

    const/4 v3, 0x1

    goto :goto_28

    :cond_44
    const/4 v3, 0x0

    :goto_28
    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbss;->zbe(Z)V

    goto :goto_27

    :pswitch_14
    move/from16 v35, v11

    move/from16 v10, v19

    move-object/from16 v7, v21

    move/from16 v12, v29

    move-object/from16 v4, v30

    const/4 v2, 0x2

    if-ne v3, v2, :cond_47

    sget v2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zba:I

    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;

    invoke-static {v15, v10, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbk([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v2

    iget v3, v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    add-int/2addr v3, v2

    :goto_29
    if-ge v2, v3, :cond_45

    invoke-static {v15, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbc([BI)I

    move-result v8

    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;->zbg(I)V

    add-int/lit8 v2, v2, 0x4

    goto :goto_29

    :cond_45
    if-ne v2, v3, :cond_46

    goto/16 :goto_2e

    :cond_46
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_47
    const/4 v2, 0x5

    if-ne v3, v2, :cond_4e

    add-int/lit8 v2, v10, 0x4

    sget v3, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zba:I

    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;

    invoke-static {v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbc([BI)I

    move-result v3

    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;->zbg(I)V

    :goto_2a
    if-ge v2, v6, :cond_4b

    invoke-static {v15, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbk([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v3

    iget v5, v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    if-ne v0, v5, :cond_4b

    invoke-static {v15, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbc([BI)I

    move-result v2

    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbug;->zbg(I)V

    add-int/lit8 v2, v3, 0x4

    goto :goto_2a

    :pswitch_15
    move/from16 v35, v11

    move/from16 v10, v19

    move-object/from16 v7, v21

    move/from16 v12, v29

    move-object/from16 v4, v30

    const/4 v2, 0x2

    if-ne v3, v2, :cond_4a

    sget v2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zba:I

    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbva;

    invoke-static {v15, v10, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbk([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v2

    iget v3, v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    add-int/2addr v3, v2

    :goto_2b
    if-ge v2, v3, :cond_48

    invoke-static {v15, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbr([BI)J

    move-result-wide v8

    invoke-virtual {v13, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbva;->zbg(J)V

    add-int/lit8 v2, v2, 0x8

    goto :goto_2b

    :cond_48
    if-ne v2, v3, :cond_49

    :goto_2c
    goto :goto_2e

    :cond_49
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4a
    const/4 v2, 0x1

    if-ne v3, v2, :cond_4e

    add-int/lit8 v2, v10, 0x8

    sget v3, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zba:I

    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbva;

    invoke-static {v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbr([BI)J

    move-result-wide v8

    invoke-virtual {v13, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbva;->zbg(J)V

    :goto_2d
    if-ge v2, v6, :cond_4b

    invoke-static {v15, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbk([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v3

    iget v5, v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    if-ne v0, v5, :cond_4b

    invoke-static {v15, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbr([BI)J

    move-result-wide v8

    invoke-virtual {v13, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbva;->zbg(J)V

    add-int/lit8 v2, v3, 0x8

    goto :goto_2d

    :pswitch_16
    move/from16 v35, v11

    move/from16 v10, v19

    move-object/from16 v7, v21

    move/from16 v12, v29

    move-object/from16 v4, v30

    const/4 v2, 0x2

    if-ne v3, v2, :cond_4d

    invoke-static {v15, v10, v13, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbg([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v2

    :cond_4b
    :goto_2e
    move-object v11, v1

    move v1, v2

    move-object v8, v4

    move v9, v6

    :cond_4c
    :goto_2f
    move-object/from16 v21, v7

    move-object/from16 v7, p0

    goto/16 :goto_39

    :cond_4d
    if-nez v3, :cond_4e

    move-object v11, v1

    move v1, v0

    move-object/from16 v2, p2

    move v3, v10

    move-object v8, v4

    move/from16 v4, p4

    move-object v5, v13

    move v9, v6

    move-object/from16 v6, p6

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbm(I[BIILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v1

    goto :goto_2f

    :cond_4e
    move-object v11, v1

    move-object v8, v4

    move v9, v6

    goto/16 :goto_37

    :pswitch_17
    move v9, v6

    move/from16 v35, v11

    move/from16 v10, v19

    move-object/from16 v7, v21

    move/from16 v12, v29

    move-object/from16 v8, v30

    move-object v11, v1

    const/4 v1, 0x2

    if-ne v3, v1, :cond_51

    sget v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zba:I

    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbva;

    invoke-static {v15, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbk([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v1

    iget v2, v11, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    add-int/2addr v2, v1

    :goto_30
    if-ge v1, v2, :cond_4f

    invoke-static {v15, v1, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbn([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v1

    iget-wide v3, v11, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbb:J

    invoke-virtual {v13, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbva;->zbg(J)V

    goto :goto_30

    :cond_4f
    if-ne v1, v2, :cond_50

    goto :goto_2f

    :cond_50
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_51
    if-nez v3, :cond_58

    sget v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zba:I

    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbva;

    invoke-static {v15, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbn([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v1

    iget-wide v2, v11, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbb:J

    invoke-virtual {v13, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbva;->zbg(J)V

    :goto_31
    if-ge v1, v9, :cond_4c

    invoke-static {v15, v1, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbk([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v2

    iget v3, v11, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    if-ne v0, v3, :cond_4c

    invoke-static {v15, v2, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbn([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v1

    iget-wide v2, v11, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbb:J

    invoke-virtual {v13, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbva;->zbg(J)V

    goto :goto_31

    :pswitch_18
    move v9, v6

    move/from16 v35, v11

    move/from16 v10, v19

    move-object/from16 v7, v21

    move/from16 v12, v29

    move-object/from16 v8, v30

    move-object v11, v1

    const/4 v1, 0x2

    if-ne v3, v1, :cond_54

    sget v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zba:I

    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtw;

    invoke-static {v15, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbk([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v1

    iget v2, v11, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    add-int/2addr v2, v1

    :goto_32
    if-ge v1, v2, :cond_52

    invoke-static {v15, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbc([BI)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtw;->zbg(F)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_32

    :cond_52
    if-ne v1, v2, :cond_53

    goto/16 :goto_2f

    :cond_53
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_54
    const/4 v1, 0x5

    if-ne v3, v1, :cond_58

    add-int/lit8 v1, v10, 0x4

    sget v2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zba:I

    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtw;

    invoke-static {v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbc([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtw;->zbg(F)V

    :goto_33
    if-ge v1, v9, :cond_4c

    invoke-static {v15, v1, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbk([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v2

    iget v3, v11, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    if-ne v0, v3, :cond_4c

    invoke-static {v15, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbc([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtw;->zbg(F)V

    add-int/lit8 v1, v2, 0x4

    goto :goto_33

    :pswitch_19
    move v9, v6

    move/from16 v35, v11

    move/from16 v10, v19

    move-object/from16 v7, v21

    move/from16 v12, v29

    move-object/from16 v8, v30

    move-object v11, v1

    const/4 v1, 0x2

    if-ne v3, v1, :cond_57

    sget v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zba:I

    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtm;

    invoke-static {v15, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbk([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v1

    iget v2, v11, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    add-int/2addr v2, v1

    :goto_34
    if-ge v1, v2, :cond_55

    invoke-static {v15, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbr([BI)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    invoke-virtual {v13, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtm;->zbf(D)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_34

    :cond_55
    if-ne v1, v2, :cond_56

    goto/16 :goto_2f

    :cond_56
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_57
    const/4 v1, 0x1

    if-ne v3, v1, :cond_58

    add-int/lit8 v1, v10, 0x8

    sget v2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zba:I

    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtm;

    invoke-static {v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbr([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-virtual {v13, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtm;->zbf(D)V

    :goto_35
    if-ge v1, v9, :cond_4c

    invoke-static {v15, v1, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbk([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v2

    iget v3, v11, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    if-ne v0, v3, :cond_4c

    invoke-static {v15, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbr([BI)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    invoke-virtual {v13, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtm;->zbf(D)V

    add-int/lit8 v1, v2, 0x8

    goto :goto_35

    :goto_36
    if-ge v1, v9, :cond_59

    invoke-static {v15, v1, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbk([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v3

    iget v2, v11, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    if-ne v0, v2, :cond_59

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    move/from16 v4, p4

    move v5, v14

    move-object/from16 v6, p6

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbd(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;[BIIILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v1

    iget-object v2, v11, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbc:Ljava/lang/Object;

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_36

    :cond_58
    :goto_37
    move-object/from16 v21, v7

    move-object/from16 v7, p0

    :goto_38
    move v1, v10

    :cond_59
    :goto_39
    if-eq v1, v10, :cond_5a

    move/from16 v13, p5

    move v4, v0

    move-object v0, v7

    move v14, v9

    move v3, v12

    move/from16 v5, v16

    move/from16 v6, v27

    move/from16 v2, v35

    move-object/from16 v7, p1

    move-object v12, v11

    move-object v11, v8

    goto/16 :goto_0

    :cond_5a
    move-object/from16 v5, p1

    move/from16 v7, p5

    move v3, v1

    move-object/from16 v37, v8

    :goto_3a
    move-object v9, v11

    move/from16 v29, v12

    move-object/from16 v38, v21

    goto/16 :goto_41

    :cond_5b
    move-object v9, v2

    move-object v2, v10

    move/from16 v35, v11

    move-object v7, v12

    move/from16 v10, v19

    move/from16 v12, v29

    move-object v11, v1

    const/16 v1, 0x32

    if-ne v8, v1, :cond_67

    const/4 v1, 0x2

    if-ne v3, v1, :cond_66

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbb:Lsun/misc/Unsafe;

    invoke-direct {v7, v12}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbw(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v8, p1

    move v9, v1

    invoke-virtual {v2, v8, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvg;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvg;->zbe()Z

    move-result v4

    if-nez v4, :cond_5c

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvg;->zba()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvg;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvg;->zbb()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvg;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvh;->zba(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v8, v13, v14, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v1, v4

    :cond_5c
    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvf;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvf;->zbc()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbve;

    move-result-object v13

    move-object v14, v1

    check-cast v14, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvg;

    invoke-static {v15, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbk([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v1

    iget v2, v11, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    if-ltz v2, :cond_65

    sub-int v3, v6, v1

    if-gt v2, v3, :cond_65

    add-int v5, v1, v2

    iget-object v2, v13, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbve;->zbb:Ljava/lang/Object;

    iget-object v3, v13, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbve;->zbd:Ljava/lang/Object;

    move-object v4, v2

    :goto_3b
    if-ge v1, v5, :cond_62

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v15, v1

    if-gez v1, :cond_5d

    invoke-static {v1, v15, v2, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbl(I[BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v1

    iget v2, v11, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    move/from16 v39, v2

    move v2, v1

    move/from16 v1, v39

    :cond_5d
    ushr-int/lit8 v9, v1, 0x3

    move-object/from16 v20, v3

    and-int/lit8 v3, v1, 0x7

    move-object/from16 v22, v4

    const/4 v4, 0x1

    if-eq v9, v4, :cond_60

    const/4 v4, 0x2

    if-eq v9, v4, :cond_5e

    move v9, v5

    move v7, v6

    move-object/from16 v3, v20

    move-object/from16 v8, v22

    move-object/from16 v37, v30

    move/from16 v22, v4

    goto/16 :goto_3d

    :cond_5e
    iget-object v9, v13, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbve;->zbc:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbww;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbww;->zba()I

    move-result v9

    if-ne v3, v9, :cond_5f

    iget-object v9, v13, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbve;->zbc:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbww;

    iget-object v1, v13, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbve;->zbd:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    move-object/from16 v3, v30

    move-object/from16 v1, p2

    move-object/from16 v37, v3

    move/from16 v3, p4

    move-object/from16 v8, v22

    move/from16 v22, v4

    move-object v4, v9

    move v9, v5

    move-object/from16 v5, v20

    move v7, v6

    move-object/from16 v6, p6

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbO([BIILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbww;Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v1

    iget-object v3, v11, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbc:Ljava/lang/Object;

    goto :goto_3e

    :cond_5f
    move v9, v5

    move v7, v6

    move-object/from16 v8, v22

    move-object/from16 v37, v30

    move/from16 v22, v4

    goto :goto_3c

    :cond_60
    move v9, v5

    move v7, v6

    move-object/from16 v8, v22

    move-object/from16 v37, v30

    const/16 v22, 0x2

    iget-object v4, v13, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbve;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbww;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbww;->zba()I

    move-result v4

    if-ne v3, v4, :cond_61

    iget-object v4, v13, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbve;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbww;

    const/4 v5, 0x0

    move-object/from16 v1, p2

    move-object/from16 v8, v20

    move/from16 v3, p4

    move-object/from16 v6, p6

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbO([BIILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbww;Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v1

    iget-object v4, v11, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbc:Ljava/lang/Object;

    move v6, v7

    move-object v3, v8

    goto :goto_3f

    :cond_61
    :goto_3c
    move-object/from16 v3, v20

    :goto_3d
    invoke-static {v1, v15, v2, v7, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbq(I[BIILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v1

    :goto_3e
    move v6, v7

    move-object v4, v8

    :goto_3f
    move v5, v9

    move/from16 v9, v22

    move-object/from16 v30, v37

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    goto/16 :goto_3b

    :cond_62
    move-object v8, v4

    move v7, v6

    move/from16 v22, v9

    move-object/from16 v37, v30

    move v9, v5

    if-ne v1, v9, :cond_64

    invoke-interface {v14, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v9, v10, :cond_63

    move/from16 v13, p5

    move v4, v0

    move v14, v7

    move v1, v9

    move v3, v12

    move/from16 v5, v16

    move/from16 v6, v27

    move/from16 v2, v35

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object v12, v11

    goto/16 :goto_4e

    :cond_63
    move-object/from16 v5, p1

    move/from16 v7, p5

    move v3, v9

    goto/16 :goto_3a

    :cond_64
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;

    move-object/from16 v6, v21

    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_65
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_66
    move/from16 v22, v1

    move v7, v6

    move-object/from16 v6, v21

    move-object/from16 v37, v30

    :goto_40
    move-object/from16 v5, p1

    move/from16 v7, p5

    move-object/from16 v38, v6

    move v3, v10

    move-object v9, v11

    move/from16 v29, v12

    :goto_41
    move/from16 v12, v35

    const/16 v19, 0x3

    goto/16 :goto_4c

    :cond_67
    move-object/from16 v5, p1

    move v7, v6

    move-object/from16 v6, v21

    move-object/from16 v37, v30

    const/4 v1, 0x2

    add-int/lit8 v20, v12, 0x2

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbb:Lsun/misc/Unsafe;

    aget v20, v31, v20

    const v7, 0xfffff

    and-int v6, v20, v7

    move/from16 v36, v10

    int-to-long v10, v6

    packed-switch v8, :pswitch_data_2

    move-object/from16 v9, p6

    move/from16 v29, v12

    move-object/from16 v38, v21

    move/from16 v12, v35

    move/from16 v7, v36

    const/16 v19, 0x3

    goto/16 :goto_4a

    :pswitch_1a
    const/4 v6, 0x3

    if-ne v3, v6, :cond_68

    and-int/lit8 v1, v0, -0x8

    or-int/lit8 v13, v1, 0x4

    move-object/from16 v4, p0

    move/from16 v2, p4

    move/from16 v1, v35

    invoke-direct {v4, v5, v1, v12}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zby(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v4, v12}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbv(I)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;

    move-result-object v9

    move-object v8, v3

    move/from16 v14, v36

    move-object/from16 v10, p2

    move/from16 v19, v6

    move-object/from16 v6, p6

    move v11, v14

    move v7, v12

    move/from16 v12, p4

    move v2, v14

    move-object/from16 v14, p6

    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbo(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;[BIIILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v8

    invoke-direct {v4, v5, v1, v7, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbG(Ljava/lang/Object;IILjava/lang/Object;)V

    move v12, v1

    move-object v9, v6

    move/from16 v29, v7

    move v1, v8

    goto/16 :goto_44

    :cond_68
    move-object/from16 v4, p0

    move/from16 v19, v6

    move-object/from16 v9, p6

    move/from16 v29, v12

    move-object/from16 v38, v21

    move/from16 v12, v35

    move/from16 v7, v36

    goto/16 :goto_4a

    :pswitch_1b
    move-object/from16 v4, p0

    move-object/from16 v6, p6

    move v7, v12

    move/from16 v12, v35

    move/from16 v2, v36

    const/16 v19, 0x3

    if-nez v3, :cond_6b

    invoke-static {v15, v2, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbn([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v3

    iget-wide v8, v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbb:J

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtg;->zbc(J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v5, v13, v14, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v1, v5, v10, v11, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_43

    :pswitch_1c
    move-object/from16 v4, p0

    move-object/from16 v6, p6

    move v7, v12

    move/from16 v12, v35

    move/from16 v2, v36

    const/16 v19, 0x3

    if-nez v3, :cond_6b

    invoke-static {v15, v2, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbk([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v3

    iget v8, v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    invoke-static {v8}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtg;->zbb(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v5, v13, v14, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v1, v5, v10, v11, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_43

    :pswitch_1d
    move-object/from16 v4, p0

    move-object/from16 v6, p6

    move v7, v12

    move/from16 v12, v35

    move/from16 v2, v36

    const/16 v19, 0x3

    if-nez v3, :cond_6b

    invoke-static {v15, v2, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbk([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v3

    iget v8, v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    invoke-direct {v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbu(I)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuj;

    move-result-object v9

    if-eqz v9, :cond_6a

    invoke-interface {v9, v8}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuj;->zba(I)Z

    move-result v9

    if-eqz v9, :cond_69

    goto :goto_42

    :cond_69
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbd(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;

    move-result-object v1

    int-to-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v0, v8}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbj(ILjava/lang/Object;)V

    goto :goto_43

    :cond_6a
    :goto_42
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v5, v13, v14, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v1, v5, v10, v11, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_43

    :pswitch_1e
    move-object/from16 v4, p0

    move-object/from16 v6, p6

    move v7, v12

    move/from16 v12, v35

    move/from16 v2, v36

    const/4 v8, 0x2

    const/16 v19, 0x3

    if-ne v3, v8, :cond_6b

    invoke-static {v15, v2, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zba([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v3

    iget-object v9, v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbc:Ljava/lang/Object;

    invoke-virtual {v1, v5, v13, v14, v9}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v1, v5, v10, v11, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_43
    move v1, v3

    move-object v9, v6

    move/from16 v29, v7

    :goto_44
    move-object/from16 v38, v21

    move v7, v2

    goto/16 :goto_4b

    :cond_6b
    move-object v9, v6

    move/from16 v29, v7

    move-object/from16 v38, v21

    goto :goto_45

    :pswitch_1f
    move-object/from16 v4, p0

    move-object/from16 v6, p6

    move v7, v12

    move/from16 v12, v35

    move/from16 v2, v36

    const/4 v8, 0x2

    const/16 v19, 0x3

    if-ne v3, v8, :cond_6c

    invoke-direct {v4, v5, v12, v7}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zby(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbv(I)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;

    move-result-object v3

    move-object v1, v9

    move/from16 v10, p4

    move v11, v2

    move-object v2, v3

    move-object/from16 v3, p2

    move-object v13, v4

    move v4, v11

    move-object v14, v5

    move/from16 v5, p4

    move-object/from16 v38, v21

    move-object/from16 v6, p6

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbp(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;[BIILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v1

    invoke-direct {v13, v14, v12, v7, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbG(Ljava/lang/Object;IILjava/lang/Object;)V

    move-object/from16 v9, p6

    move/from16 v29, v7

    move v7, v11

    move-object v5, v14

    goto/16 :goto_4b

    :cond_6c
    move/from16 v10, p4

    move-object v13, v4

    move-object/from16 v38, v21

    move-object/from16 v9, p6

    move/from16 v29, v7

    :goto_45
    move v7, v2

    goto/16 :goto_4a

    :pswitch_20
    move-object/from16 v6, p0

    move/from16 v29, v12

    move-object/from16 v38, v21

    move/from16 v12, v35

    move/from16 v7, v36

    const/4 v8, 0x2

    const/16 v19, 0x3

    if-ne v3, v8, :cond_70

    move-object/from16 v3, p6

    invoke-static {v15, v7, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbk([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v8

    iget v6, v3, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    if-nez v6, :cond_6d

    invoke-virtual {v1, v5, v13, v14, v9}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_47

    :cond_6d
    and-int v4, v4, v24

    add-int v9, v8, v6

    if-eqz v4, :cond_6f

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwv;->zbd([BII)Z

    move-result v4

    if-eqz v4, :cond_6e

    goto :goto_46

    :cond_6e
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6f
    :goto_46
    new-instance v2, Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuo;->zba:Ljava/nio/charset/Charset;

    invoke-direct {v2, v15, v8, v6, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v1, v5, v13, v14, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move v8, v9

    :goto_47
    invoke-virtual {v1, v5, v10, v11, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move-object v9, v3

    move v1, v8

    goto/16 :goto_4b

    :cond_70
    move-object/from16 v9, p6

    goto/16 :goto_4a

    :pswitch_21
    move-object/from16 v9, p6

    move/from16 v29, v12

    move-object/from16 v38, v21

    move/from16 v12, v35

    move/from16 v7, v36

    const/16 v19, 0x3

    if-nez v3, :cond_72

    invoke-static {v15, v7, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbn([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v2

    iget-wide v3, v9, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbb:J

    cmp-long v3, v3, v25

    if-eqz v3, :cond_71

    const/16 v28, 0x1

    goto :goto_48

    :cond_71
    const/16 v28, 0x0

    :goto_48
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v5, v13, v14, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v1, v5, v10, v11, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_49

    :pswitch_22
    move-object/from16 v9, p6

    move/from16 v29, v12

    move-object/from16 v38, v21

    move/from16 v12, v35

    move/from16 v7, v36

    const/4 v2, 0x5

    const/16 v19, 0x3

    if-ne v3, v2, :cond_72

    add-int/lit8 v2, v7, 0x4

    invoke-static {v15, v7}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbc([BI)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v5, v13, v14, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v1, v5, v10, v11, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_49

    :pswitch_23
    move-object/from16 v9, p6

    move/from16 v29, v12

    move-object/from16 v38, v21

    move/from16 v12, v35

    move/from16 v7, v36

    const/4 v2, 0x1

    const/16 v19, 0x3

    if-ne v3, v2, :cond_72

    add-int/lit8 v2, v7, 0x8

    invoke-static {v15, v7}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbr([BI)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v5, v13, v14, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v1, v5, v10, v11, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_49

    :pswitch_24
    move-object/from16 v9, p6

    move/from16 v29, v12

    move-object/from16 v38, v21

    move/from16 v12, v35

    move/from16 v7, v36

    const/16 v19, 0x3

    if-nez v3, :cond_72

    invoke-static {v15, v7, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbk([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v2

    iget v3, v9, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zba:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v5, v13, v14, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v1, v5, v10, v11, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_49

    :pswitch_25
    move-object/from16 v9, p6

    move/from16 v29, v12

    move-object/from16 v38, v21

    move/from16 v12, v35

    move/from16 v7, v36

    const/16 v19, 0x3

    if-nez v3, :cond_72

    invoke-static {v15, v7, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbn([BILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v2

    iget-wide v3, v9, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbb:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v5, v13, v14, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v1, v5, v10, v11, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_49

    :pswitch_26
    move-object/from16 v9, p6

    move/from16 v29, v12

    move-object/from16 v38, v21

    move/from16 v12, v35

    move/from16 v7, v36

    const/4 v2, 0x5

    const/16 v19, 0x3

    if-ne v3, v2, :cond_72

    add-int/lit8 v2, v7, 0x4

    invoke-static {v15, v7}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbc([BI)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v5, v13, v14, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v1, v5, v10, v11, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_49

    :pswitch_27
    move-object/from16 v9, p6

    move/from16 v29, v12

    move-object/from16 v38, v21

    move/from16 v12, v35

    move/from16 v7, v36

    const/4 v2, 0x1

    const/16 v19, 0x3

    if-ne v3, v2, :cond_72

    add-int/lit8 v2, v7, 0x8

    invoke-static {v15, v7}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbr([BI)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v5, v13, v14, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v1, v5, v10, v11, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_49
    move v1, v2

    goto :goto_4b

    :cond_72
    :goto_4a
    move v1, v7

    :goto_4b
    if-eq v1, v7, :cond_73

    move/from16 v14, p4

    move/from16 v13, p5

    move v4, v0

    move-object v7, v5

    move v2, v12

    move/from16 v5, v16

    move/from16 v6, v27

    move/from16 v3, v29

    move-object/from16 v11, v37

    move-object/from16 v0, p0

    move-object v12, v9

    goto/16 :goto_0

    :cond_73
    move/from16 v7, p5

    move v3, v1

    :goto_4c
    if-ne v0, v7, :cond_74

    if-eqz v7, :cond_74

    move-object/from16 v8, p0

    move v4, v0

    move v1, v3

    move-object v9, v5

    move/from16 v5, v16

    move/from16 v6, v27

    goto/16 :goto_4f

    :cond_74
    move-object/from16 v6, p0

    iget-boolean v1, v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbh:Z

    if-eqz v1, :cond_76

    iget-object v1, v9, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;->zbd:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;

    sget v2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;->zbb:I

    sget v2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvu;->zba:I

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;

    if-eq v1, v2, :cond_76

    iget-object v2, v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbg:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;

    iget-object v14, v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbl:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwl;

    sget v4, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zba:I

    invoke-virtual {v1, v2, v12}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtp;->zbc(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;I)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbud;

    move-result-object v13

    if-nez v13, :cond_75

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbd(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;

    move-result-object v8

    move v1, v0

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object v11, v5

    move-object v5, v8

    move-object v10, v6

    move-object/from16 v6, p6

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbj(I[BIILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v1

    move-object v8, v10

    move-object v9, v11

    move/from16 v17, v12

    goto :goto_4d

    :cond_75
    move-object v11, v5

    move-object v10, v6

    move-object v1, v11

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbub;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbub;->zbg()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;

    move v8, v0

    move-object/from16 v9, p2

    move v10, v3

    move/from16 v11, p4

    move/from16 v17, v12

    move-object v12, v1

    move-object/from16 v15, p6

    invoke-static/range {v8 .. v15}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbb(I[BIILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbub;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbud;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwl;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v1

    move-object v9, v5

    move-object v8, v6

    goto :goto_4d

    :cond_76
    move/from16 v17, v12

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbd(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;

    move-result-object v8

    move v1, v0

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object v9, v5

    move-object v5, v8

    move-object v8, v6

    move-object/from16 v6, p6

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsr;->zbj(I[BIILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    move-result v1

    :goto_4d
    move-object/from16 v15, p2

    move/from16 v14, p4

    move-object/from16 v12, p6

    move v4, v0

    move v13, v7

    move-object v0, v8

    move-object v7, v9

    move/from16 v5, v16

    move/from16 v2, v17

    move/from16 v6, v27

    move/from16 v3, v29

    :goto_4e
    move-object/from16 v11, v37

    goto/16 :goto_0

    :cond_77
    move/from16 v16, v5

    move/from16 v27, v6

    move-object/from16 v38, v8

    move/from16 v19, v9

    move-object/from16 v37, v11

    move-object v8, v0

    move-object v9, v7

    move v7, v13

    :goto_4f
    const v0, 0xfffff

    if-eq v6, v0, :cond_78

    int-to-long v2, v6

    move-object/from16 v0, v37

    invoke-virtual {v0, v9, v2, v3, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_78
    iget v0, v8, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbj:I

    move-object/from16 v2, v17

    :goto_50
    iget v3, v8, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbk:I

    if-ge v0, v3, :cond_7c

    iget-object v3, v8, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbi:[I

    iget-object v5, v8, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbl:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwl;

    iget-object v6, v8, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc:[I

    aget v3, v3, v0

    aget v6, v6, v3

    invoke-direct {v8, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbs(I)I

    move-result v10

    const v11, 0xfffff

    and-int/2addr v10, v11

    int-to-long v12, v10

    invoke-static {v9, v12, v13}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_7b

    invoke-direct {v8, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbu(I)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuj;

    move-result-object v12

    if-eqz v12, :cond_7b

    check-cast v10, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvg;

    invoke-direct {v8, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbw(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvf;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvf;->zbc()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbve;

    move-result-object v3

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_79
    :goto_51
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v12, v14}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuj;->zba(I)Z

    move-result v14

    if-nez v14, :cond_79

    if-nez v2, :cond_7a

    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwl;->zba(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :cond_7a
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    invoke-static {v3, v14, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvf;->zbb(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbve;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v14

    sget-object v15, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;

    new-array v15, v14, [B

    new-instance v11, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbth;

    move-object/from16 v17, v5

    const/4 v5, 0x0

    invoke-direct {v11, v15, v5, v14}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbth;-><init>([BII)V

    :try_start_0
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-static {v11, v3, v14, v13}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvf;->zbe(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbve;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v11, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsy;->zba(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtk;[B)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;

    move-result-object v11

    shl-int/lit8 v13, v6, 0x3

    move-object v14, v2

    check-cast v14, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;

    const/4 v15, 0x2

    or-int/2addr v13, v15

    invoke-virtual {v14, v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbj(ILjava/lang/Object;)V

    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    move-object/from16 v5, v17

    const v11, 0xfffff

    goto :goto_51

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_7b
    const/4 v5, 0x0

    const/4 v15, 0x2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_50

    :cond_7c
    if-eqz v2, :cond_7d

    move-object v0, v9

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;

    iput-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zbc:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;

    :cond_7d
    if-nez v7, :cond_7f

    move/from16 v0, p4

    if-ne v1, v0, :cond_7e

    goto :goto_52

    :cond_7e
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;

    move-object/from16 v2, v38

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7f
    move/from16 v0, p4

    move-object/from16 v2, v38

    if-gt v1, v0, :cond_80

    if-ne v4, v7, :cond_80

    :goto_52
    return v1

    :cond_80
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuq;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x33
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_24
        :pswitch_1d
        :pswitch_22
        :pswitch_23
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch
.end method

.method public final zbe()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbg:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvm;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zbt()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;

    move-result-object p0

    return-object p0
.end method

.method public final zbf(Ljava/lang/Object;)V
    .locals 7

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbL(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zbE(I)V

    iput v1, v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsj;->zba:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zbC()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc:[I

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_5

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbs(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbr(I)I

    move-result v2

    int-to-long v3, v3

    const/16 v5, 0x9

    if-eq v2, v5, :cond_3

    const/16 v5, 0x3c

    if-eq v2, v5, :cond_2

    const/16 v5, 0x44

    if-eq v2, v5, :cond_2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbb:Lsun/misc/Unsafe;

    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    move-object v6, v5

    check-cast v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvg;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvg;->zbc()V

    invoke-virtual {v2, p1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;

    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;->zbb()V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc:[I

    aget v2, v2, v1

    invoke-direct {p0, p1, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbv(I)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbb:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;->zbf(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    :pswitch_2
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbI(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbv(I)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbb:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;->zbf(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbl:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwl;->zbb(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbh:Z

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbm:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtq;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtq;->zba(Ljava/lang/Object;)V

    :cond_6
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zbg(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbA(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbs(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v2, v1

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbr(I)I

    move-result v1

    aget v3, v3, v0

    int-to-long v4, v2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbC(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_1
    invoke-direct {p0, p2, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbs(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbE(Ljava/lang/Object;II)V

    goto/16 :goto_2

    :pswitch_2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbC(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_3
    invoke-direct {p0, p2, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbs(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbE(Ljava/lang/Object;II)V

    goto/16 :goto_2

    :pswitch_4
    sget v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zba:I

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvh;->zba(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbs(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_5
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v3, :cond_1

    if-lez v6, :cond_1

    invoke-interface {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;->zbc()Z

    move-result v7

    if-nez v7, :cond_0

    add-int/2addr v6, v3

    invoke-interface {v1, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;->zbd(I)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbun;

    move-result-object v1

    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-gtz v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    invoke-static {p1, v4, v5, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbs(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_6
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbB(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_7
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbr(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbD(Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_8
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbq(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbD(Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_9
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbr(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbD(Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_a
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbq(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbD(Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_b
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbq(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbD(Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_c
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbq(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbD(Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_d
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbs(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbD(Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_e
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbB(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_f
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbs(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbD(Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_10
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbw(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbm(Ljava/lang/Object;JZ)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbD(Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_11
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbq(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbD(Ljava/lang/Object;I)V

    goto :goto_2

    :pswitch_12
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbr(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbD(Ljava/lang/Object;I)V

    goto :goto_2

    :pswitch_13
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbq(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbD(Ljava/lang/Object;I)V

    goto :goto_2

    :pswitch_14
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbr(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbD(Ljava/lang/Object;I)V

    goto :goto_2

    :pswitch_15
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbr(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbD(Ljava/lang/Object;I)V

    goto :goto_2

    :pswitch_16
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbb(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbp(Ljava/lang/Object;JF)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbD(Ljava/lang/Object;I)V

    goto :goto_2

    :pswitch_17
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zba(Ljava/lang/Object;J)D

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbo(Ljava/lang/Object;JD)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbD(Ljava/lang/Object;I)V

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbl:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwl;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbp(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwl;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbh:Z

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbm:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtq;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbo(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtq;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zbh(Ljava/lang/Object;[BIILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbsq;)I

    return-void
.end method

.method public final zbi(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    iget-boolean v0, v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbh:Z

    if-eqz v0, :cond_0

    move-object v0, v7

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbub;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbub;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;

    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zba:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwh;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbg()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    move-object v10, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v10, 0x0

    :goto_0
    iget-object v11, v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc:[I

    sget-object v12, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbb:Lsun/misc/Unsafe;

    const v0, 0xfffff

    const/4 v2, 0x0

    const/4 v15, 0x0

    :goto_1
    array-length v3, v11

    if-ge v15, v3, :cond_8

    invoke-direct {v6, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbs(I)I

    move-result v3

    iget-object v4, v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc:[I

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbr(I)I

    move-result v5

    aget v9, v4, v15

    const/16 v14, 0x11

    if-gt v5, v14, :cond_3

    add-int/lit8 v14, v15, 0x2

    aget v4, v4, v14

    const v14, 0xfffff

    and-int v13, v4, v14

    if-eq v13, v0, :cond_2

    if-ne v13, v14, :cond_1

    move-object v14, v1

    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    move-object v14, v1

    int-to-long v0, v13

    invoke-virtual {v12, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    move v2, v0

    :goto_2
    move v0, v13

    goto :goto_3

    :cond_2
    move-object v14, v1

    :goto_3
    ushr-int/lit8 v1, v4, 0x14

    const/4 v4, 0x1

    shl-int v1, v4, v1

    move v13, v0

    move/from16 v20, v1

    move/from16 v19, v2

    goto :goto_4

    :cond_3
    move-object v14, v1

    move v13, v0

    move/from16 v19, v2

    const/16 v20, 0x0

    :goto_4
    if-eqz v14, :cond_5

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuc;

    const v0, 0x1ea8e13

    if-lt v9, v0, :cond_5

    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbm:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtq;

    invoke-virtual {v0, v8, v14}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtq;->zbb(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;Ljava/util/Map$Entry;)V

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/util/Map$Entry;

    goto :goto_4

    :cond_4
    const/4 v14, 0x0

    goto :goto_4

    :cond_5
    const v17, 0xfffff

    and-int v0, v3, v17

    int-to-long v3, v0

    packed-switch v5, :pswitch_data_0

    :cond_6
    :goto_5
    move-object/from16 v16, v10

    move-object/from16 v18, v11

    const/16 v21, 0x0

    goto/16 :goto_b

    :pswitch_0
    invoke-direct {v6, v7, v9, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbv(I)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;

    move-result-object v1

    invoke-interface {v8, v9, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;->zbq(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;)V

    goto :goto_5

    :pswitch_1
    invoke-direct {v6, v7, v9, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbt(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v9, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;->zbE(IJ)V

    goto :goto_5

    :pswitch_2
    invoke-direct {v6, v7, v9, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbo(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v9, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;->zbC(II)V

    goto :goto_5

    :pswitch_3
    invoke-direct {v6, v7, v9, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbt(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v9, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;->zbA(IJ)V

    goto :goto_5

    :pswitch_4
    invoke-direct {v6, v7, v9, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbo(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v9, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;->zby(II)V

    goto :goto_5

    :pswitch_5
    invoke-direct {v6, v7, v9, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbo(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v9, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;->zbi(II)V

    goto :goto_5

    :pswitch_6
    invoke-direct {v6, v7, v9, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbo(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v9, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;->zbJ(II)V

    goto :goto_5

    :pswitch_7
    invoke-direct {v6, v7, v9, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;

    invoke-interface {v8, v9, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;->zbd(ILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;)V

    goto :goto_5

    :pswitch_8
    invoke-direct {v6, v7, v9, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbv(I)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;

    move-result-object v1

    invoke-interface {v8, v9, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;->zbw(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;)V

    goto/16 :goto_5

    :pswitch_9
    invoke-direct {v6, v7, v9, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v9, v0, v8}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbP(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;)V

    goto/16 :goto_5

    :pswitch_a
    invoke-direct {v6, v7, v9, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbN(Ljava/lang/Object;J)Z

    move-result v0

    invoke-interface {v8, v9, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;->zbb(IZ)V

    goto/16 :goto_5

    :pswitch_b
    invoke-direct {v6, v7, v9, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbo(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v9, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;->zbk(II)V

    goto/16 :goto_5

    :pswitch_c
    invoke-direct {v6, v7, v9, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbt(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v9, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;->zbm(IJ)V

    goto/16 :goto_5

    :pswitch_d
    invoke-direct {v6, v7, v9, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbo(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v9, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;->zbr(II)V

    goto/16 :goto_5

    :pswitch_e
    invoke-direct {v6, v7, v9, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbt(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v9, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;->zbL(IJ)V

    goto/16 :goto_5

    :pswitch_f
    invoke-direct {v6, v7, v9, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbt(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v9, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;->zbt(IJ)V

    goto/16 :goto_5

    :pswitch_10
    invoke-direct {v6, v7, v9, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbn(Ljava/lang/Object;J)F

    move-result v0

    invoke-interface {v8, v9, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;->zbo(IF)V

    goto/16 :goto_5

    :pswitch_11
    invoke-direct {v6, v7, v9, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbm(Ljava/lang/Object;J)D

    move-result-wide v0

    invoke-interface {v8, v9, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;->zbf(ID)V

    goto/16 :goto_5

    :pswitch_12
    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-direct {v6, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbw(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvf;->zbc()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbve;

    move-result-object v1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvg;

    invoke-interface {v8, v9, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;->zbv(ILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbve;Ljava/util/Map;)V

    goto/16 :goto_5

    :pswitch_13
    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {v6, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbv(I)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;

    move-result-object v2

    sget v3, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zba:I

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x0

    :goto_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v8

    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;

    invoke-virtual {v5, v0, v4, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zbq(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :pswitch_14
    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x1

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbB(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;Z)V

    goto/16 :goto_5

    :pswitch_15
    const/4 v2, 0x1

    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbA(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;Z)V

    goto/16 :goto_5

    :pswitch_16
    const/4 v2, 0x1

    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbz(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;Z)V

    goto/16 :goto_5

    :pswitch_17
    const/4 v2, 0x1

    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zby(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;Z)V

    goto/16 :goto_5

    :pswitch_18
    const/4 v2, 0x1

    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbs(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;Z)V

    goto/16 :goto_5

    :pswitch_19
    const/4 v2, 0x1

    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbC(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;Z)V

    goto/16 :goto_5

    :pswitch_1a
    const/4 v2, 0x1

    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbq(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;Z)V

    goto/16 :goto_5

    :pswitch_1b
    const/4 v2, 0x1

    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbt(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;Z)V

    goto/16 :goto_5

    :pswitch_1c
    const/4 v2, 0x1

    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbu(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;Z)V

    goto/16 :goto_5

    :pswitch_1d
    const/4 v2, 0x1

    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbw(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;Z)V

    goto/16 :goto_5

    :pswitch_1e
    const/4 v2, 0x1

    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbD(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;Z)V

    goto/16 :goto_5

    :pswitch_1f
    const/4 v2, 0x1

    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbx(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;Z)V

    goto/16 :goto_5

    :pswitch_20
    const/4 v2, 0x1

    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbv(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;Z)V

    goto/16 :goto_5

    :pswitch_21
    const/4 v2, 0x1

    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbr(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;Z)V

    goto/16 :goto_5

    :pswitch_22
    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbB(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;Z)V

    goto :goto_7

    :pswitch_23
    const/4 v2, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbA(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;Z)V

    goto :goto_7

    :pswitch_24
    const/4 v2, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbz(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;Z)V

    goto :goto_7

    :pswitch_25
    const/4 v2, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zby(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;Z)V

    goto :goto_7

    :pswitch_26
    const/4 v2, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbs(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;Z)V

    goto :goto_7

    :pswitch_27
    const/4 v2, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbC(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;Z)V

    :goto_7
    move/from16 v21, v2

    goto/16 :goto_a

    :pswitch_28
    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    sget v2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zba:I

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {v8, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;->zbe(ILjava/util/List;)V

    goto/16 :goto_5

    :pswitch_29
    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {v6, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbv(I)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;

    move-result-object v2

    sget v3, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zba:I

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x0

    :goto_8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v8

    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;

    invoke-virtual {v5, v0, v4, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtl;->zbw(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :pswitch_2a
    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    sget v2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zba:I

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {v8, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;->zbI(ILjava/util/List;)V

    goto/16 :goto_5

    :pswitch_2b
    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v5, 0x0

    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbq(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;Z)V

    goto :goto_9

    :pswitch_2c
    const/4 v5, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbt(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;Z)V

    goto :goto_9

    :pswitch_2d
    const/4 v5, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbu(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;Z)V

    goto :goto_9

    :pswitch_2e
    const/4 v5, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbw(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;Z)V

    goto :goto_9

    :pswitch_2f
    const/4 v5, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbD(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;Z)V

    goto :goto_9

    :pswitch_30
    const/4 v5, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbx(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;Z)V

    goto :goto_9

    :pswitch_31
    const/4 v5, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbv(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;Z)V

    goto :goto_9

    :pswitch_32
    const/4 v5, 0x0

    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc:[I

    aget v0, v0, v15

    invoke-virtual {v12, v7, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbr(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;Z)V

    :goto_9
    move/from16 v21, v5

    :goto_a
    move-object/from16 v16, v10

    move-object/from16 v18, v11

    goto/16 :goto_b

    :pswitch_33
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move-object/from16 v16, v10

    move-object/from16 v18, v11

    move-wide v10, v3

    move v3, v13

    move/from16 v4, v19

    move/from16 v21, v5

    move/from16 v5, v20

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbv(I)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;

    move-result-object v1

    invoke-interface {v8, v9, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;->zbq(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;)V

    goto/16 :goto_b

    :pswitch_34
    move-object/from16 v16, v10

    move-object/from16 v18, v11

    const/16 v21, 0x0

    move-wide v10, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    move/from16 v5, v20

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v9, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;->zbE(IJ)V

    goto/16 :goto_b

    :pswitch_35
    move-object/from16 v16, v10

    move-object/from16 v18, v11

    const/16 v21, 0x0

    move-wide v10, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    move/from16 v5, v20

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v9, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;->zbC(II)V

    goto/16 :goto_b

    :pswitch_36
    move-object/from16 v16, v10

    move-object/from16 v18, v11

    const/16 v21, 0x0

    move-wide v10, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    move/from16 v5, v20

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v9, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;->zbA(IJ)V

    goto/16 :goto_b

    :pswitch_37
    move-object/from16 v16, v10

    move-object/from16 v18, v11

    const/16 v21, 0x0

    move-wide v10, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    move/from16 v5, v20

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v9, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;->zby(II)V

    goto/16 :goto_b

    :pswitch_38
    move-object/from16 v16, v10

    move-object/from16 v18, v11

    const/16 v21, 0x0

    move-wide v10, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    move/from16 v5, v20

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v9, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;->zbi(II)V

    goto/16 :goto_b

    :pswitch_39
    move-object/from16 v16, v10

    move-object/from16 v18, v11

    const/16 v21, 0x0

    move-wide v10, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    move/from16 v5, v20

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v9, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;->zbJ(II)V

    goto/16 :goto_b

    :pswitch_3a
    move-object/from16 v16, v10

    move-object/from16 v18, v11

    const/16 v21, 0x0

    move-wide v10, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    move/from16 v5, v20

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;

    invoke-interface {v8, v9, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;->zbd(ILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtc;)V

    goto/16 :goto_b

    :pswitch_3b
    move-object/from16 v16, v10

    move-object/from16 v18, v11

    const/16 v21, 0x0

    move-wide v10, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    move/from16 v5, v20

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbv(I)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;

    move-result-object v1

    invoke-interface {v8, v9, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;->zbw(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;)V

    goto/16 :goto_b

    :pswitch_3c
    move-object/from16 v16, v10

    move-object/from16 v18, v11

    const/16 v21, 0x0

    move-wide v10, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    move/from16 v5, v20

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v9, v0, v8}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbP(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;)V

    goto/16 :goto_b

    :pswitch_3d
    move-object/from16 v16, v10

    move-object/from16 v18, v11

    const/16 v21, 0x0

    move-wide v10, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    move/from16 v5, v20

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v7, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbw(Ljava/lang/Object;J)Z

    move-result v0

    invoke-interface {v8, v9, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;->zbb(IZ)V

    goto/16 :goto_b

    :pswitch_3e
    move-object/from16 v16, v10

    move-object/from16 v18, v11

    const/16 v21, 0x0

    move-wide v10, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    move/from16 v5, v20

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v9, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;->zbk(II)V

    goto/16 :goto_b

    :pswitch_3f
    move-object/from16 v16, v10

    move-object/from16 v18, v11

    const/16 v21, 0x0

    move-wide v10, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    move/from16 v5, v20

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v9, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;->zbm(IJ)V

    goto/16 :goto_b

    :pswitch_40
    move-object/from16 v16, v10

    move-object/from16 v18, v11

    const/16 v21, 0x0

    move-wide v10, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    move/from16 v5, v20

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v9, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;->zbr(II)V

    goto/16 :goto_b

    :pswitch_41
    move-object/from16 v16, v10

    move-object/from16 v18, v11

    const/16 v21, 0x0

    move-wide v10, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    move/from16 v5, v20

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v9, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;->zbL(IJ)V

    goto/16 :goto_b

    :pswitch_42
    move-object/from16 v16, v10

    move-object/from16 v18, v11

    const/16 v21, 0x0

    move-wide v10, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    move/from16 v5, v20

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v12, v7, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v9, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;->zbt(IJ)V

    goto :goto_b

    :pswitch_43
    move-object/from16 v16, v10

    move-object/from16 v18, v11

    const/16 v21, 0x0

    move-wide v10, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    move/from16 v5, v20

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v7, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbb(Ljava/lang/Object;J)F

    move-result v0

    invoke-interface {v8, v9, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;->zbo(IF)V

    goto :goto_b

    :pswitch_44
    move-object/from16 v16, v10

    move-object/from16 v18, v11

    const/16 v21, 0x0

    move-wide v10, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    move/from16 v5, v20

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v7, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zba(Ljava/lang/Object;J)D

    move-result-wide v0

    invoke-interface {v8, v9, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;->zbf(ID)V

    :cond_7
    :goto_b
    add-int/lit8 v15, v15, 0x3

    move v0, v13

    move-object v1, v14

    move-object/from16 v10, v16

    move-object/from16 v11, v18

    move/from16 v2, v19

    goto/16 :goto_1

    :cond_8
    move-object v14, v1

    move-object/from16 v16, v10

    :goto_c
    if-eqz v1, :cond_a

    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbm:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtq;

    invoke-virtual {v0, v8, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtq;->zbb(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;Ljava/util/Map$Entry;)V

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_c

    :cond_9
    const/4 v1, 0x0

    goto :goto_c

    :cond_a
    move-object v0, v7

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zbc:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;->zbl(Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwy;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zbj(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbs(I)I

    move-result v2

    const v3, 0xfffff

    and-int v4, v2, v3

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbr(I)I

    move-result v2

    int-to-long v4, v4

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbp(I)I

    move-result v2

    and-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbc(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbc(Ljava/lang/Object;J)I

    move-result v2

    if-ne v6, v2, :cond_0

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbE(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_2

    :pswitch_1
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbE(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :pswitch_2
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbE(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_1
    if-nez v2, :cond_1

    goto/16 :goto_2

    :pswitch_3
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbE(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    :pswitch_4
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbd(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbd(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    goto/16 :goto_3

    :pswitch_5
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbc(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbc(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_0

    goto/16 :goto_3

    :pswitch_6
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbd(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbd(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    goto/16 :goto_3

    :pswitch_7
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbc(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbc(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_0

    goto/16 :goto_3

    :pswitch_8
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbc(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbc(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_0

    goto/16 :goto_3

    :pswitch_9
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbc(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbc(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_0

    goto/16 :goto_3

    :pswitch_a
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbE(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    :pswitch_b
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbE(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    :pswitch_c
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvz;->zbE(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    :pswitch_d
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbw(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbw(Ljava/lang/Object;J)Z

    move-result v3

    if-ne v2, v3, :cond_0

    goto/16 :goto_3

    :pswitch_e
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbc(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbc(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_0

    goto/16 :goto_3

    :pswitch_f
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbd(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbd(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    goto/16 :goto_3

    :pswitch_10
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbc(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbc(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_0

    goto :goto_3

    :pswitch_11
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbd(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbd(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    goto :goto_3

    :pswitch_12
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbd(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbd(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    goto :goto_3

    :pswitch_13
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbb(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbb(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_0

    goto :goto_3

    :pswitch_14
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zba(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zba(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    goto :goto_3

    :cond_0
    :goto_2
    return v0

    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;

    iget-object v1, v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zbc:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;

    move-object v2, p2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;

    iget-object v2, v2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbuf;->zbc:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwm;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    iget-boolean p0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbh:Z

    if-eqz p0, :cond_4

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbub;

    iget-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbub;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbub;

    iget-object p1, p2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbub;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final zbk(Ljava/lang/Object;)Z
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const/4 v8, 0x0

    const v9, 0xfffff

    move v1, v8

    move v10, v1

    move v0, v9

    :goto_0
    iget v2, v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbj:I

    const/4 v3, 0x1

    if-ge v10, v2, :cond_c

    iget-object v2, v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbi:[I

    iget-object v4, v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc:[I

    aget v11, v2, v10

    aget v12, v4, v11

    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbs(I)I

    move-result v13

    iget-object v2, v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbc:[I

    add-int/lit8 v4, v11, 0x2

    aget v2, v2, v4

    and-int v4, v2, v9

    ushr-int/lit8 v2, v2, 0x14

    shl-int v14, v3, v2

    if-eq v4, v0, :cond_1

    if-eq v4, v9, :cond_0

    int-to-long v0, v4

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbb:Lsun/misc/Unsafe;

    invoke-virtual {v2, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    :cond_0
    move/from16 v16, v1

    move v15, v4

    goto :goto_1

    :cond_1
    move v15, v0

    move/from16 v16, v1

    :goto_1
    const/high16 v0, 0x10000000

    and-int/2addr v0, v13

    if-eqz v0, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v16

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    return v8

    :cond_3
    :goto_2
    invoke-static {v13}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbr(I)I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_a

    const/16 v1, 0x11

    if-eq v0, v1, :cond_a

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_8

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_7

    const/16 v1, 0x44

    if-eq v0, v1, :cond_7

    const/16 v1, 0x31

    if-eq v0, v1, :cond_8

    const/16 v1, 0x32

    if-eq v0, v1, :cond_4

    goto/16 :goto_4

    :cond_4
    and-int v0, v13, v9

    int-to-long v0, v0

    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvg;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbw(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvf;->zbc()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbve;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbve;->zbc:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbww;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbww;->zbb()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwx;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwx;->zbi:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbwx;

    if-ne v1, v2, :cond_b

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_6

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvu;->zba()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvu;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvu;->zbb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;

    move-result-object v1

    :cond_6
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;->zbk(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v8

    :cond_7
    invoke-direct {v6, v7, v12, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbv(I)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;

    move-result-object v0

    invoke-static {v7, v13, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbK(Ljava/lang/Object;ILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;)Z

    move-result v0

    if-nez v0, :cond_b

    return v8

    :cond_8
    and-int v0, v13, v9

    int-to-long v0, v0

    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbws;->zbf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbv(I)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;

    move-result-object v1

    move v2, v8

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_b

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;->zbk(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    return v8

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v16

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbv(I)Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;

    move-result-object v0

    invoke-static {v7, v13, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbK(Ljava/lang/Object;ILcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvx;)Z

    move-result v0

    if-nez v0, :cond_b

    return v8

    :cond_b
    :goto_4
    add-int/lit8 v10, v10, 0x1

    move v0, v15

    move/from16 v1, v16

    goto/16 :goto_0

    :cond_c
    iget-boolean v0, v6, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbvp;->zbh:Z

    if-eqz v0, :cond_d

    move-object v0, v7

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbub;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbub;->zbb:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbtu;->zbm()Z

    move-result v0

    if-nez v0, :cond_d

    return v8

    :cond_d
    return v3
.end method
