.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final zza:[I

.field private static final zzb:Lsun/misc/Unsafe;


# instance fields
.field private final zzc:[I

.field private final zzd:[Ljava/lang/Object;

.field private final zze:I

.field private final zzf:I

.field private final zzg:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

.field private final zzh:Z

.field private final zzi:Z

.field private final zzj:Z

.field private final zzk:[I

.field private final zzl:I

.field private final zzm:I

.field private final zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;

.field private final zzo:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;

.field private final zzp:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;

.field private final zzq:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwa;

.field private final zzr:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvp;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zza:[I

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzg()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzb:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;ZZ[IIILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwa;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvp;[B)V
    .locals 5

    move-object v0, p0

    move-object v1, p5

    move-object/from16 v2, p14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v3, p1

    iput-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    move-object v3, p2

    iput-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzd:[Ljava/lang/Object;

    move v3, p3

    iput v3, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zze:I

    move v3, p4

    iput v3, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzf:I

    instance-of v3, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    iput-boolean v3, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzi:Z

    move v3, p6

    iput-boolean v3, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzj:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2, p5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;->zzj(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    iput-boolean v3, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzh:Z

    move-object v3, p8

    iput-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzk:[I

    move v3, p9

    iput v3, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzl:I

    move v3, p10

    iput v3, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzm:I

    move-object/from16 v3, p11

    iput-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzq:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwa;

    move-object/from16 v3, p12

    iput-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;

    move-object/from16 v3, p13

    iput-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzo:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;

    iput-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzp:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;

    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzg:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzr:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvp;

    return-void
.end method

.method private final zzA(II)I
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    const/4 v1, -0x1

    add-int/2addr v0, v1

    :goto_0
    if-gt p2, v0, :cond_2

    add-int v2, v0, p2

    ushr-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v2, 0x3

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

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

.method private static zzB(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private final zzC(I)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    add-int/lit8 p1, p1, 0x1

    aget p0, p0, p1

    return p0
.end method

.method private static zzD(Ljava/lang/Object;J)J
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private final zzE(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbum;
    .locals 0

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzd:[Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    aget-object p0, p0, p1

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbum;

    return-object p0
.end method

.method private final zzF(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzd:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    aget-object v0, v0, p1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwe;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwe;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzd:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwe;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzd:[Ljava/lang/Object;

    aput-object v0, p0, p1

    return-object v0
.end method

.method private final zzG(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v0, v0, p2

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzC(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p3

    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzE(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbum;

    move-result-object v1

    if-nez v1, :cond_1

    return-object p3

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvo;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzH(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvn;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvn;->zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvm;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbum;->zza(I)Z

    move-result v2

    if-nez v2, :cond_2

    if-nez p3, :cond_3

    invoke-virtual {p4, p5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :cond_3
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvn;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvm;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    new-array v2, v2, [B

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzO([B)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;

    move-result-object v3

    :try_start_0
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-static {v3, p0, v4, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvn;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvm;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsu;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;[B)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    move-result-object p2

    invoke-virtual {p4, p3, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;->zzk(Ljava/lang/Object;ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;)V

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_4
    return-object p3
.end method

.method private final zzH(I)Ljava/lang/Object;
    .locals 0

    div-int/lit8 p1, p1, 0x3

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzd:[Ljava/lang/Object;

    add-int/2addr p1, p1

    aget-object p0, p0, p1

    return-object p0
.end method

.method private final zzI(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzF(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzC(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;->zze()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    int-to-long v1, v1

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {p0, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzaa(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;->zze()Ljava/lang/Object;

    move-result-object p1

    if-eqz p0, :cond_2

    invoke-interface {v0, p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p1
.end method

.method private final zzJ(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 3

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzF(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;->zze()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzb:Lsun/misc/Unsafe;

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzC(I)I

    move-result p0

    const p3, 0xfffff

    and-int/2addr p0, p3

    int-to-long v1, p0

    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzaa(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;->zze()Ljava/lang/Object;

    move-result-object p1

    if-eqz p0, :cond_2

    invoke-interface {v0, p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p1
.end method

.method private static zzK(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
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

.method private static zzL(Ljava/lang/Object;)V
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzaa(Ljava/lang/Object;)Z

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

.method private final zzM(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 5

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzC(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzb:Lsun/misc/Unsafe;

    int-to-long v2, v0

    invoke-virtual {v1, p2, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzF(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object p2

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzaa(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1, p1, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;->zze()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v4, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzP(Ljava/lang/Object;I)V

    return-void

    :cond_2
    invoke-virtual {v1, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzaa(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;->zze()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p2, p3, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2, v3, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p0, p3

    :cond_3
    invoke-interface {p2, p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

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

.method private final zzN(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v0, v0, p3

    invoke-direct {p0, p2, v0, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzC(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzb:Lsun/misc/Unsafe;

    int-to-long v3, v1

    invoke-virtual {v2, p2, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzF(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object p2

    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzaa(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2, p1, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;->zze()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p2, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzQ(Ljava/lang/Object;II)V

    return-void

    :cond_2
    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzaa(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;->zze()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p2, p3, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v3, v4, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p0, p3

    :cond_3
    invoke-interface {p2, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

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

.method private final zzO(Ljava/lang/Object;ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzW(I)Z

    move-result v0

    const v1, 0xfffff

    if-eqz v0, :cond_0

    and-int p0, p2, v1

    invoke-interface {p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzu()Ljava/lang/String;

    move-result-object p2

    int-to-long v0, p0

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    :cond_0
    iget-boolean p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzi:Z

    if-eqz p0, :cond_1

    and-int p0, p2, v1

    invoke-interface {p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzt()Ljava/lang/String;

    move-result-object p2

    int-to-long v0, p0

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    :cond_1
    and-int p0, p2, v1

    invoke-interface {p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzp()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    move-result-object p2

    int-to-long v0, p0

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method private final zzP(Ljava/lang/Object;I)V
    .locals 4

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzz(I)I

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

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzc(Ljava/lang/Object;J)I

    move-result p2

    const/4 v2, 0x1

    shl-int p0, v2, p0

    or-int/2addr p0, p2

    invoke-static {p1, v0, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzq(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzQ(Ljava/lang/Object;II)V
    .locals 2

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzz(I)I

    move-result p0

    const p3, 0xfffff

    and-int/2addr p0, p3

    int-to-long v0, p0

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzq(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzR(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzb:Lsun/misc/Unsafe;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzC(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzP(Ljava/lang/Object;I)V

    return-void
.end method

.method private final zzS(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzb:Lsun/misc/Unsafe;

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzC(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzQ(Ljava/lang/Object;II)V

    return-void
.end method

.method private final zzT(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzh:Z

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzp:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;

    move-result-object v3

    iget-object v5, v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;

    invoke-virtual {v5}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzg()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    iget-object v6, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    array-length v6, v6

    sget-object v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzb:Lsun/misc/Unsafe;

    const/4 v10, 0x0

    const v11, 0xfffff

    const/4 v12, 0x0

    :goto_1
    if-ge v10, v6, :cond_7

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzC(I)I

    move-result v13

    iget-object v14, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v15, v14, v10

    invoke-static {v13}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzB(I)I

    move-result v4

    const/16 v9, 0x11

    if-gt v4, v9, :cond_2

    add-int/lit8 v9, v10, 0x2

    aget v9, v14, v9

    const v14, 0xfffff

    and-int v8, v9, v14

    if-eq v8, v11, :cond_1

    int-to-long v11, v8

    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v12

    move v11, v8

    :cond_1
    ushr-int/lit8 v8, v9, 0x14

    const/4 v9, 0x1

    shl-int v8, v9, v8

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    if-eqz v5, :cond_4

    iget-object v9, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzp:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;

    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;->zza(Ljava/util/Map$Entry;)I

    const/16 v9, 0x2b

    if-lt v15, v9, :cond_4

    iget-object v9, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzp:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;

    invoke-virtual {v9, v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;->zzi(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Ljava/util/Map$Entry;)V

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    const v9, 0xfffff

    and-int/2addr v13, v9

    int-to-long v13, v13

    packed-switch v4, :pswitch_data_0

    :cond_5
    :goto_3
    const/4 v4, 0x0

    goto/16 :goto_5

    :pswitch_0
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzF(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object v8

    invoke-interface {v2, v15, v4, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzq(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;)V

    goto :goto_3

    :pswitch_1
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzD(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzE(IJ)V

    goto :goto_3

    :pswitch_2
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzs(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzC(II)V

    goto :goto_3

    :pswitch_3
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzD(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzA(IJ)V

    goto :goto_3

    :pswitch_4
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzs(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzy(II)V

    goto :goto_3

    :pswitch_5
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzs(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzi(II)V

    goto :goto_3

    :pswitch_6
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzs(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzJ(II)V

    goto :goto_3

    :pswitch_7
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzd(ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;)V

    goto :goto_3

    :pswitch_8
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzF(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object v8

    invoke-interface {v2, v15, v4, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzw(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;)V

    goto/16 :goto_3

    :pswitch_9
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v15, v4, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzae(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;)V

    goto/16 :goto_3

    :pswitch_a
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzac(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzb(IZ)V

    goto/16 :goto_3

    :pswitch_b
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzs(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzk(II)V

    goto/16 :goto_3

    :pswitch_c
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzD(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzm(IJ)V

    goto/16 :goto_3

    :pswitch_d
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzs(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzr(II)V

    goto/16 :goto_3

    :pswitch_e
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzD(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzL(IJ)V

    goto/16 :goto_3

    :pswitch_f
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzD(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzt(IJ)V

    goto/16 :goto_3

    :pswitch_10
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzp(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzo(IF)V

    goto/16 :goto_3

    :pswitch_11
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzo(Ljava/lang/Object;J)D

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzf(ID)V

    goto/16 :goto_3

    :pswitch_12
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v2, v15, v4, v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzU(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;ILjava/lang/Object;I)V

    goto/16 :goto_3

    :pswitch_13
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzF(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object v13

    invoke-static {v4, v8, v2, v13}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzO(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;)V

    goto/16 :goto_3

    :pswitch_14
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v15, 0x1

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzV(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Z)V

    goto/16 :goto_3

    :pswitch_15
    const/4 v15, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzU(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Z)V

    goto/16 :goto_3

    :pswitch_16
    const/4 v15, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzT(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Z)V

    goto/16 :goto_3

    :pswitch_17
    const/4 v15, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzS(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Z)V

    goto/16 :goto_3

    :pswitch_18
    const/4 v15, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzK(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Z)V

    goto/16 :goto_3

    :pswitch_19
    const/4 v15, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzX(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Z)V

    goto/16 :goto_3

    :pswitch_1a
    const/4 v15, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzH(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Z)V

    goto/16 :goto_3

    :pswitch_1b
    const/4 v15, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzL(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Z)V

    goto/16 :goto_3

    :pswitch_1c
    const/4 v15, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzM(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Z)V

    goto/16 :goto_3

    :pswitch_1d
    const/4 v15, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzP(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Z)V

    goto/16 :goto_3

    :pswitch_1e
    const/4 v15, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzY(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Z)V

    goto/16 :goto_3

    :pswitch_1f
    const/4 v15, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzQ(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Z)V

    goto/16 :goto_3

    :pswitch_20
    const/4 v15, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzN(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Z)V

    goto/16 :goto_3

    :pswitch_21
    const/4 v15, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzJ(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Z)V

    goto/16 :goto_3

    :pswitch_22
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v15, 0x0

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzV(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Z)V

    goto/16 :goto_4

    :pswitch_23
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzU(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Z)V

    goto/16 :goto_4

    :pswitch_24
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzT(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Z)V

    goto/16 :goto_4

    :pswitch_25
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzS(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Z)V

    goto/16 :goto_4

    :pswitch_26
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzK(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Z)V

    goto/16 :goto_4

    :pswitch_27
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzX(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Z)V

    goto/16 :goto_4

    :pswitch_28
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzI(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;)V

    goto/16 :goto_3

    :pswitch_29
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzF(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object v13

    invoke-static {v4, v8, v2, v13}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzR(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;)V

    goto/16 :goto_3

    :pswitch_2a
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzW(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;)V

    goto/16 :goto_3

    :pswitch_2b
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v15, 0x0

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzH(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Z)V

    goto :goto_4

    :pswitch_2c
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzL(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Z)V

    goto :goto_4

    :pswitch_2d
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzM(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Z)V

    goto :goto_4

    :pswitch_2e
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzP(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Z)V

    goto :goto_4

    :pswitch_2f
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzY(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Z)V

    goto :goto_4

    :pswitch_30
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzQ(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Z)V

    goto :goto_4

    :pswitch_31
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzN(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Z)V

    goto :goto_4

    :pswitch_32
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzJ(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Z)V

    :goto_4
    move v4, v15

    goto/16 :goto_5

    :pswitch_33
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzF(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object v13

    invoke-interface {v2, v15, v8, v13}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzq(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;)V

    goto/16 :goto_5

    :pswitch_34
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzE(IJ)V

    goto/16 :goto_5

    :pswitch_35
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzC(II)V

    goto/16 :goto_5

    :pswitch_36
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzA(IJ)V

    goto/16 :goto_5

    :pswitch_37
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzy(II)V

    goto/16 :goto_5

    :pswitch_38
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzi(II)V

    goto/16 :goto_5

    :pswitch_39
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzJ(II)V

    goto/16 :goto_5

    :pswitch_3a
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    invoke-interface {v2, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzd(ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;)V

    goto/16 :goto_5

    :pswitch_3b
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzF(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object v13

    invoke-interface {v2, v15, v8, v13}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzw(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;)V

    goto/16 :goto_5

    :pswitch_3c
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v15, v8, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzae(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;)V

    goto :goto_5

    :pswitch_3d
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzw(Ljava/lang/Object;J)Z

    move-result v8

    invoke-interface {v2, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzb(IZ)V

    goto :goto_5

    :pswitch_3e
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzk(II)V

    goto :goto_5

    :pswitch_3f
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzm(IJ)V

    goto :goto_5

    :pswitch_40
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzr(II)V

    goto :goto_5

    :pswitch_41
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzL(IJ)V

    goto :goto_5

    :pswitch_42
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzt(IJ)V

    goto :goto_5

    :pswitch_43
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzb(Ljava/lang/Object;J)F

    move-result v8

    invoke-interface {v2, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzo(IF)V

    goto :goto_5

    :pswitch_44
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zza(Ljava/lang/Object;J)D

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzf(ID)V

    :cond_6
    :goto_5
    add-int/lit8 v10, v10, 0x3

    goto/16 :goto_1

    :cond_7
    :goto_6
    if-eqz v5, :cond_9

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzp:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;

    invoke-virtual {v4, v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;->zzi(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Ljava/util/Map$Entry;)V

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_6

    :cond_8
    const/4 v5, 0x0

    goto :goto_6

    :cond_9
    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzo:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;->zzq(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;)V

    return-void

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

.method private final zzU(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;ILjava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-direct {p0, p4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzH(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvn;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvn;->zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvm;

    move-result-object p0

    check-cast p3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvo;

    invoke-interface {p1, p2, p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzv(ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvm;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private final zzV(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static zzW(I)Z
    .locals 1

    const/high16 v0, 0x20000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final zzX(Ljava/lang/Object;I)Z
    .locals 7

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzz(I)I

    move-result v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xfffff

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_14

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzC(I)I

    move-result p0

    and-int p2, p0, v1

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzB(I)I

    move-result p0

    int-to-long v0, p2

    const-wide/16 v2, 0x0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    return v6

    :cond_0
    return v5

    :pswitch_1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzd(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    return v6

    :cond_1
    return v5

    :pswitch_2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzc(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_2

    return v6

    :cond_2
    return v5

    :pswitch_3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzd(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    return v6

    :cond_3
    return v5

    :pswitch_4
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzc(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_4

    return v6

    :cond_4
    return v5

    :pswitch_5
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzc(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_5

    return v6

    :cond_5
    return v5

    :pswitch_6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzc(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_6

    return v6

    :cond_6
    return v5

    :pswitch_7
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v6

    :cond_7
    return v5

    :pswitch_8
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_8

    return v6

    :cond_8
    return v5

    :pswitch_9
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

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
    instance-of p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    if-eqz p1, :cond_c

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;->equals(Ljava/lang/Object;)Z

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
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzw(Ljava/lang/Object;J)Z

    move-result p0

    return p0

    :pswitch_b
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzc(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_d

    return v6

    :cond_d
    return v5

    :pswitch_c
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzd(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_e

    return v6

    :cond_e
    return v5

    :pswitch_d
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzc(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_f

    return v6

    :cond_f
    return v5

    :pswitch_e
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzd(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_10

    return v6

    :cond_10
    return v5

    :pswitch_f
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzd(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_11

    return v6

    :cond_11
    return v5

    :pswitch_10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzb(Ljava/lang/Object;J)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    if-eqz p0, :cond_12

    return v6

    :cond_12
    return v5

    :pswitch_11
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zza(Ljava/lang/Object;J)D

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

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzc(Ljava/lang/Object;J)I

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

.method private final zzY(Ljava/lang/Object;IIII)Z
    .locals 1

    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

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

.method private static zzZ(Ljava/lang/Object;ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;)Z
    .locals 2

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;->zzl(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static zzaa(Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzag()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private final zzab(Ljava/lang/Object;II)Z
    .locals 2

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzz(I)I

    move-result p0

    const p3, 0xfffff

    and-int/2addr p0, p3

    int-to-long v0, p0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzc(Ljava/lang/Object;J)I

    move-result p0

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static zzac(Ljava/lang/Object;J)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final zzad([BIILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "unsupported field type."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzm([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result p0

    iget-wide p1, p5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zzb:J

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzG(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zzc:Ljava/lang/Object;

    goto/16 :goto_3

    :pswitch_2
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzj([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result p0

    iget p1, p5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zza:I

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzF(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zzc:Ljava/lang/Object;

    goto/16 :goto_3

    :pswitch_3
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zza([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result p0

    goto/16 :goto_3

    :pswitch_4
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwe;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwe;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwe;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object p3

    invoke-static {p3, p0, p1, p2, p5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;[BIILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result p0

    goto/16 :goto_3

    :pswitch_5
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzh([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result p0

    goto :goto_3

    :pswitch_6
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzm([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result p0

    iget-wide p1, p5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zzb:J

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

    iput-object p1, p5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zzc:Ljava/lang/Object;

    goto :goto_3

    :pswitch_7
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzb([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zzc:Ljava/lang/Object;

    goto :goto_1

    :pswitch_8
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzq([BI)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zzc:Ljava/lang/Object;

    goto :goto_2

    :pswitch_9
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzj([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result p0

    iget p1, p5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zza:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zzc:Ljava/lang/Object;

    goto :goto_3

    :pswitch_a
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzm([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result p0

    iget-wide p1, p5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zzb:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zzc:Ljava/lang/Object;

    goto :goto_3

    :pswitch_b
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzb([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zzc:Ljava/lang/Object;

    :goto_1
    add-int/lit8 p0, p1, 0x4

    goto :goto_3

    :pswitch_c
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzq([BI)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zzc:Ljava/lang/Object;

    :goto_2
    add-int/lit8 p0, p1, 0x8

    :goto_3
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

.method private static final zzae(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzH(ILjava/lang/String;)V

    return-void

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzd(ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;)V

    return-void
.end method

.method public static zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;
    .locals 2

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;->zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;->zzf()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;

    :cond_0
    return-object v0
.end method

.method public static zzm(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvr;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwa;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvp;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;
    .locals 6

    instance-of p0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwg;

    if-eqz p0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwg;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzn(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwg;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwa;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvp;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;

    move-result-object p0

    return-object p0

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbww;

    const/4 p0, 0x0

    throw p0
.end method

.method public static zzn(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwg;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwa;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvp;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;
    .locals 34

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwg;->zzc()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwg;->zzd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v6, 0xd800

    if-lt v4, v6, :cond_0

    const/4 v4, 0x1

    :goto_0
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_1

    move v4, v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x1

    :cond_1
    add-int/lit8 v4, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_3

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_1
    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_2

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

    sget-object v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zza:[I

    move v11, v3

    move v12, v11

    move v13, v12

    move v15, v13

    move/from16 v16, v15

    move/from16 v18, v16

    move-object/from16 v17, v7

    move/from16 v7, v18

    goto/16 :goto_a

    :cond_4
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_6

    and-int/lit16 v4, v4, 0x1fff

    const/16 v9, 0xd

    :goto_2
    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_5

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

    if-lt v7, v6, :cond_8

    and-int/lit16 v7, v7, 0x1fff

    const/16 v10, 0xd

    :goto_3
    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_7

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

    if-lt v9, v6, :cond_a

    and-int/lit16 v9, v9, 0x1fff

    const/16 v11, 0xd

    :goto_4
    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_9

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

    if-lt v10, v6, :cond_c

    and-int/lit16 v10, v10, 0x1fff

    const/16 v12, 0xd

    :goto_5
    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v6, :cond_b

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

    if-lt v11, v6, :cond_e

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_6
    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_d

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

    if-lt v12, v6, :cond_10

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_7
    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_f

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

    if-lt v13, v6, :cond_12

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_8
    add-int/lit8 v16, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_11

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

    if-lt v14, v6, :cond_14

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_9
    add-int/lit8 v17, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_13

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

    move-object/from16 v17, v7

    move v13, v9

    move/from16 v18, v14

    move v7, v4

    move v4, v15

    move v15, v10

    :goto_a
    sget-object v9, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzb:Lsun/misc/Unsafe;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwg;->zze()[Ljava/lang/Object;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwg;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    add-int v19, v18, v12

    add-int v12, v11, v11

    mul-int/lit8 v11, v11, 0x3

    new-array v11, v11, [I

    new-array v12, v12, [Ljava/lang/Object;

    move/from16 v20, v3

    move/from16 v21, v20

    move/from16 v22, v18

    move/from16 v23, v19

    :goto_b
    const/4 v3, 0x2

    if-ne v0, v3, :cond_15

    const/4 v3, 0x1

    goto :goto_c

    :cond_15
    const/4 v3, 0x0

    :goto_c
    if-ge v4, v2, :cond_32

    add-int/lit8 v25, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_17

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v8, v25

    const/16 v25, 0xd

    :goto_d
    add-int/lit8 v26, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v6, :cond_16

    and-int/lit16 v8, v8, 0x1fff

    shl-int v8, v8, v25

    or-int/2addr v4, v8

    add-int/lit8 v25, v25, 0xd

    move/from16 v8, v26

    goto :goto_d

    :cond_16
    shl-int v8, v8, v25

    or-int/2addr v4, v8

    move/from16 v8, v26

    goto :goto_e

    :cond_17
    move/from16 v8, v25

    :goto_e
    add-int/lit8 v25, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v6, :cond_19

    and-int/lit16 v8, v8, 0x1fff

    move/from16 v5, v25

    const/16 v25, 0xd

    :goto_f
    add-int/lit8 v27, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_18

    and-int/lit16 v5, v5, 0x1fff

    shl-int v5, v5, v25

    or-int/2addr v8, v5

    add-int/lit8 v25, v25, 0xd

    move/from16 v5, v27

    goto :goto_f

    :cond_18
    shl-int v5, v5, v25

    or-int/2addr v8, v5

    move/from16 v5, v27

    goto :goto_10

    :cond_19
    move/from16 v5, v25

    :goto_10
    and-int/lit16 v6, v8, 0x400

    if-eqz v6, :cond_1a

    add-int/lit8 v6, v21, 0x1

    aput v20, v17, v21

    move/from16 v21, v6

    :cond_1a
    and-int/lit16 v6, v8, 0xff

    move/from16 v27, v0

    const/16 v0, 0x33

    if-lt v6, v0, :cond_22

    add-int/lit8 v0, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move/from16 v28, v0

    const v0, 0xd800

    if-lt v5, v0, :cond_1c

    and-int/lit16 v5, v5, 0x1fff

    const/16 v31, 0xd

    move/from16 v33, v28

    move/from16 v28, v5

    move/from16 v5, v33

    :goto_11
    add-int/lit8 v32, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v0, :cond_1b

    and-int/lit16 v0, v5, 0x1fff

    shl-int v0, v0, v31

    or-int v28, v28, v0

    add-int/lit8 v31, v31, 0xd

    move/from16 v5, v32

    const v0, 0xd800

    goto :goto_11

    :cond_1b
    shl-int v0, v5, v31

    or-int v5, v28, v0

    move/from16 v0, v32

    goto :goto_12

    :cond_1c
    move/from16 v0, v28

    :goto_12
    move/from16 v28, v0

    add-int/lit8 v0, v6, -0x33

    move/from16 v31, v2

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1e

    const/16 v2, 0x11

    if-ne v0, v2, :cond_1d

    goto :goto_13

    :cond_1d
    const/16 v2, 0xc

    if-ne v0, v2, :cond_1f

    if-nez v3, :cond_1f

    div-int/lit8 v0, v20, 0x3

    add-int/2addr v0, v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    add-int/lit8 v2, v16, 0x1

    aget-object v3, v10, v16

    aput-object v3, v12, v0

    goto :goto_14

    :cond_1e
    :goto_13
    div-int/lit8 v0, v20, 0x3

    add-int/2addr v0, v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    add-int/lit8 v2, v16, 0x1

    aget-object v3, v10, v16

    aput-object v3, v12, v0

    :goto_14
    move/from16 v16, v2

    :cond_1f
    add-int/2addr v5, v5

    aget-object v0, v10, v5

    instance-of v2, v0, Ljava/lang/reflect/Field;

    if-eqz v2, :cond_20

    check-cast v0, Ljava/lang/reflect/Field;

    goto :goto_15

    :cond_20
    check-cast v0, Ljava/lang/String;

    invoke-static {v14, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzK(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    aput-object v0, v10, v5

    :goto_15
    invoke-virtual {v9, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    long-to-int v0, v2

    add-int/lit8 v5, v5, 0x1

    aget-object v2, v10, v5

    instance-of v3, v2, Ljava/lang/reflect/Field;

    if-eqz v3, :cond_21

    check-cast v2, Ljava/lang/reflect/Field;

    goto :goto_16

    :cond_21
    check-cast v2, Ljava/lang/String;

    invoke-static {v14, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzK(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    aput-object v2, v10, v5

    :goto_16
    invoke-virtual {v9, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    long-to-int v2, v2

    move-object/from16 v30, v1

    move/from16 v1, v28

    const/4 v5, 0x0

    move/from16 v28, v15

    goto/16 :goto_20

    :cond_22
    move/from16 v31, v2

    add-int/lit8 v0, v16, 0x1

    aget-object v2, v10, v16

    check-cast v2, Ljava/lang/String;

    invoke-static {v14, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzK(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    move/from16 v28, v15

    const/16 v15, 0x9

    if-eq v6, v15, :cond_2a

    const/16 v15, 0x11

    if-ne v6, v15, :cond_23

    goto :goto_1a

    :cond_23
    const/16 v15, 0x1b

    if-eq v6, v15, :cond_29

    const/16 v15, 0x31

    if-ne v6, v15, :cond_24

    goto :goto_18

    :cond_24
    const/16 v15, 0xc

    if-eq v6, v15, :cond_28

    const/16 v15, 0x1e

    if-eq v6, v15, :cond_28

    const/16 v15, 0x2c

    if-ne v6, v15, :cond_25

    goto :goto_17

    :cond_25
    const/16 v3, 0x32

    if-ne v6, v3, :cond_26

    add-int/lit8 v3, v22, 0x1

    aput v20, v17, v22

    div-int/lit8 v15, v20, 0x3

    add-int/lit8 v22, v0, 0x1

    aget-object v0, v10, v0

    add-int/2addr v15, v15

    aput-object v0, v12, v15

    and-int/lit16 v0, v8, 0x800

    if-eqz v0, :cond_27

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v0, v22, 0x1

    aget-object v22, v10, v22

    aput-object v22, v12, v15

    move/from16 v22, v3

    :cond_26
    const/4 v15, 0x1

    goto :goto_1b

    :cond_27
    move/from16 v0, v22

    const/4 v15, 0x1

    move/from16 v22, v3

    goto :goto_1b

    :cond_28
    :goto_17
    if-nez v3, :cond_26

    div-int/lit8 v3, v20, 0x3

    add-int/2addr v3, v3

    const/4 v15, 0x1

    add-int/2addr v3, v15

    add-int/lit8 v26, v0, 0x1

    aget-object v0, v10, v0

    aput-object v0, v12, v3

    goto :goto_19

    :cond_29
    :goto_18
    const/4 v15, 0x1

    div-int/lit8 v3, v20, 0x3

    add-int/2addr v3, v3

    add-int/2addr v3, v15

    add-int/lit8 v26, v0, 0x1

    aget-object v0, v10, v0

    aput-object v0, v12, v3

    :goto_19
    move/from16 v0, v26

    goto :goto_1b

    :cond_2a
    :goto_1a
    const/4 v15, 0x1

    div-int/lit8 v3, v20, 0x3

    add-int/2addr v3, v3

    add-int/2addr v3, v15

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v26

    aput-object v26, v12, v3

    :goto_1b
    invoke-virtual {v9, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    long-to-int v2, v2

    and-int/lit16 v3, v8, 0x1000

    const v26, 0xfffff

    const/16 v15, 0x1000

    if-ne v3, v15, :cond_2e

    const/16 v3, 0x11

    if-gt v6, v3, :cond_2e

    add-int/lit8 v3, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v15, 0xd800

    if-lt v5, v15, :cond_2c

    and-int/lit16 v5, v5, 0x1fff

    const/16 v25, 0xd

    :goto_1c
    add-int/lit8 v26, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v15, :cond_2b

    and-int/lit16 v3, v3, 0x1fff

    shl-int v3, v3, v25

    or-int/2addr v5, v3

    add-int/lit8 v25, v25, 0xd

    move/from16 v3, v26

    goto :goto_1c

    :cond_2b
    shl-int v3, v3, v25

    or-int/2addr v5, v3

    goto :goto_1d

    :cond_2c
    move/from16 v26, v3

    :goto_1d
    add-int v3, v7, v7

    div-int/lit8 v25, v5, 0x20

    add-int v3, v3, v25

    aget-object v15, v10, v3

    move/from16 v29, v0

    instance-of v0, v15, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2d

    check-cast v15, Ljava/lang/reflect/Field;

    goto :goto_1e

    :cond_2d
    check-cast v15, Ljava/lang/String;

    invoke-static {v14, v15}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzK(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v15

    aput-object v15, v10, v3

    :goto_1e
    move-object/from16 v30, v1

    invoke-virtual {v9, v15}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v0, v0

    rem-int/lit8 v5, v5, 0x20

    move/from16 v33, v26

    move/from16 v26, v0

    move/from16 v0, v33

    goto :goto_1f

    :cond_2e
    move/from16 v29, v0

    move-object/from16 v30, v1

    move v0, v5

    const/4 v5, 0x0

    :goto_1f
    const/16 v1, 0x12

    if-lt v6, v1, :cond_2f

    const/16 v1, 0x31

    if-gt v6, v1, :cond_2f

    add-int/lit8 v1, v23, 0x1

    aput v2, v17, v23

    move/from16 v23, v1

    move/from16 v16, v29

    move v1, v0

    move v0, v2

    move/from16 v2, v26

    goto :goto_20

    :cond_2f
    move v1, v0

    move v0, v2

    move/from16 v2, v26

    move/from16 v16, v29

    :goto_20
    add-int/lit8 v3, v20, 0x1

    aput v4, v11, v20

    add-int/lit8 v4, v3, 0x1

    and-int/lit16 v15, v8, 0x200

    if-eqz v15, :cond_30

    const/high16 v15, 0x20000000

    goto :goto_21

    :cond_30
    const/4 v15, 0x0

    :goto_21
    and-int/lit16 v8, v8, 0x100

    if-eqz v8, :cond_31

    const/high16 v8, 0x10000000

    goto :goto_22

    :cond_31
    const/4 v8, 0x0

    :goto_22
    shl-int/lit8 v6, v6, 0x14

    or-int/2addr v8, v15

    or-int/2addr v6, v8

    or-int/2addr v0, v6

    aput v0, v11, v3

    add-int/lit8 v20, v4, 0x1

    shl-int/lit8 v0, v5, 0x14

    or-int/2addr v0, v2

    aput v0, v11, v4

    move v4, v1

    move/from16 v0, v27

    move/from16 v15, v28

    move-object/from16 v1, v30

    move/from16 v2, v31

    const v6, 0xd800

    goto/16 :goto_b

    :cond_32
    move/from16 v28, v15

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;

    move-object v9, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwg;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    move-result-object v14

    const/16 v16, 0x0

    const/16 v25, 0x0

    move-object v10, v11

    move-object v11, v12

    move v12, v13

    move/from16 v13, v28

    move v15, v3

    move-object/from16 v20, p1

    move-object/from16 v21, p2

    move-object/from16 v22, p3

    move-object/from16 v23, p4

    move-object/from16 v24, p5

    invoke-direct/range {v9 .. v25}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;ZZ[IIILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwa;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvp;[B)V

    return-object v0
.end method

.method private static zzo(Ljava/lang/Object;J)D
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private static zzp(Ljava/lang/Object;J)F
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private final zzq(Ljava/lang/Object;)I
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzb:Lsun/misc/Unsafe;

    const v4, 0xfffff

    move v7, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_0
    iget-object v9, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    array-length v9, v9

    if-ge v5, v9, :cond_6

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzC(I)I

    move-result v9

    iget-object v10, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v11, v10, v5

    invoke-static {v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzB(I)I

    move-result v12

    const/16 v13, 0x11

    const/4 v14, 0x1

    if-gt v12, v13, :cond_1

    add-int/lit8 v13, v5, 0x2

    aget v10, v10, v13

    and-int v13, v10, v4

    ushr-int/lit8 v10, v10, 0x14

    if-eq v13, v7, :cond_0

    int-to-long v7, v13

    invoke-virtual {v2, v1, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    move v7, v13

    :cond_0
    shl-int v10, v14, v10

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    and-int/2addr v9, v4

    int-to-long v3, v9

    const/16 v9, 0x3f

    packed-switch v12, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    invoke-direct {p0, v1, v11, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzF(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object v4

    invoke-static {v11, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzD(ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;)I

    move-result v3

    goto/16 :goto_8

    :pswitch_1
    invoke-direct {p0, v1, v11, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzD(Ljava/lang/Object;J)J

    move-result-wide v3

    shl-int/lit8 v10, v11, 0x3

    add-long v11, v3, v3

    shr-long/2addr v3, v9

    invoke-static {v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v9

    xor-long/2addr v3, v11

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzN(J)I

    move-result v3

    add-int/2addr v9, v3

    add-int/2addr v6, v9

    goto/16 :goto_9

    :pswitch_2
    invoke-direct {p0, v1, v11, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzs(Ljava/lang/Object;J)I

    move-result v3

    shl-int/lit8 v4, v11, 0x3

    add-int v9, v3, v3

    shr-int/lit8 v3, v3, 0x1f

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v4

    xor-int/2addr v3, v9

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v3

    goto/16 :goto_6

    :pswitch_3
    invoke-direct {p0, v1, v11, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v3

    goto/16 :goto_4

    :pswitch_4
    invoke-direct {p0, v1, v11, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v3

    goto/16 :goto_3

    :pswitch_5
    invoke-direct {p0, v1, v11, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzs(Ljava/lang/Object;J)I

    move-result v3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzF(I)I

    move-result v3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v4

    goto/16 :goto_6

    :pswitch_6
    invoke-direct {p0, v1, v11, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzs(Ljava/lang/Object;J)I

    move-result v3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v4

    goto/16 :goto_6

    :pswitch_7
    invoke-direct {p0, v1, v11, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    shl-int/lit8 v4, v11, 0x3

    sget v9, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzf:I

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;->zzd()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v9

    add-int/2addr v9, v3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v3

    :goto_2
    add-int/2addr v3, v9

    goto/16 :goto_8

    :pswitch_8
    invoke-direct {p0, v1, v11, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzF(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object v4

    invoke-static {v11, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzo(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;)I

    move-result v3

    goto/16 :goto_8

    :pswitch_9
    invoke-direct {p0, v1, v11, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    if-eqz v4, :cond_2

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    shl-int/lit8 v4, v11, 0x3

    sget v9, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzf:I

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;->zzd()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v9

    add-int/2addr v9, v3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v3

    goto :goto_2

    :cond_2
    check-cast v3, Ljava/lang/String;

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzK(Ljava/lang/String;)I

    move-result v3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v4

    goto/16 :goto_6

    :pswitch_a
    invoke-direct {p0, v1, v11, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v3

    add-int/2addr v3, v14

    goto/16 :goto_8

    :pswitch_b
    invoke-direct {p0, v1, v11, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v3

    goto :goto_3

    :pswitch_c
    invoke-direct {p0, v1, v11, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v3

    goto :goto_4

    :pswitch_d
    invoke-direct {p0, v1, v11, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzs(Ljava/lang/Object;J)I

    move-result v3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzF(I)I

    move-result v3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v4

    goto/16 :goto_6

    :pswitch_e
    invoke-direct {p0, v1, v11, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzD(Ljava/lang/Object;J)J

    move-result-wide v3

    shl-int/lit8 v9, v11, 0x3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzN(J)I

    move-result v3

    invoke-static {v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v4

    goto/16 :goto_6

    :pswitch_f
    invoke-direct {p0, v1, v11, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzD(Ljava/lang/Object;J)J

    move-result-wide v3

    shl-int/lit8 v9, v11, 0x3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzN(J)I

    move-result v3

    invoke-static {v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v4

    goto/16 :goto_6

    :pswitch_10
    invoke-direct {p0, v1, v11, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v3

    :goto_3
    add-int/lit8 v3, v3, 0x4

    goto/16 :goto_8

    :pswitch_11
    invoke-direct {p0, v1, v11, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v3

    :goto_4
    add-int/lit8 v3, v3, 0x8

    goto/16 :goto_8

    :pswitch_12
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzH(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v11, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvp;->zza(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    goto/16 :goto_8

    :pswitch_13
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzF(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object v4

    invoke-static {v11, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;)I

    move-result v3

    goto/16 :goto_8

    :pswitch_14
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzt(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzL(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v9

    goto/16 :goto_5

    :pswitch_15
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzr(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzL(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v9

    goto/16 :goto_5

    :pswitch_16
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzi(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzL(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v9

    goto/16 :goto_5

    :pswitch_17
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzg(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzL(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v9

    goto/16 :goto_5

    :pswitch_18
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zze(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzL(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v9

    goto/16 :goto_5

    :pswitch_19
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzw(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzL(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v9

    goto/16 :goto_5

    :pswitch_1a
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzb(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzL(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v9

    goto/16 :goto_5

    :pswitch_1b
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzg(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzL(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v9

    goto/16 :goto_5

    :pswitch_1c
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzi(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzL(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v9

    goto :goto_5

    :pswitch_1d
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzl(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzL(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v9

    goto :goto_5

    :pswitch_1e
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzy(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzL(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v9

    goto :goto_5

    :pswitch_1f
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzn(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzL(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v9

    goto :goto_5

    :pswitch_20
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzg(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzL(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v9

    goto :goto_5

    :pswitch_21
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzi(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzL(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v9

    :goto_5
    add-int/2addr v4, v9

    :goto_6
    add-int/2addr v4, v3

    add-int/2addr v6, v4

    goto/16 :goto_9

    :pswitch_22
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v9, 0x0

    invoke-static {v11, v3, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzs(ILjava/util/List;Z)I

    move-result v3

    goto :goto_7

    :pswitch_23
    const/4 v9, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzq(ILjava/util/List;Z)I

    move-result v3

    goto :goto_7

    :pswitch_24
    const/4 v9, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzh(ILjava/util/List;Z)I

    move-result v3

    goto :goto_7

    :pswitch_25
    const/4 v9, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzf(ILjava/util/List;Z)I

    move-result v3

    goto :goto_7

    :pswitch_26
    const/4 v9, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzd(ILjava/util/List;Z)I

    move-result v3

    :goto_7
    add-int/2addr v6, v3

    move v12, v9

    goto/16 :goto_f

    :pswitch_27
    const/4 v9, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzv(ILjava/util/List;Z)I

    move-result v3

    goto :goto_8

    :pswitch_28
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzc(ILjava/util/List;)I

    move-result v3

    goto :goto_8

    :pswitch_29
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzF(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object v4

    invoke-static {v11, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzp(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;)I

    move-result v3

    goto :goto_8

    :pswitch_2a
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzu(ILjava/util/List;)I

    move-result v3

    :goto_8
    add-int/2addr v6, v3

    :cond_3
    :goto_9
    const/4 v12, 0x0

    goto/16 :goto_f

    :pswitch_2b
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v12, 0x0

    invoke-static {v11, v3, v12}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zza(ILjava/util/List;Z)I

    move-result v3

    goto :goto_a

    :pswitch_2c
    const/4 v12, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3, v12}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzf(ILjava/util/List;Z)I

    move-result v3

    goto :goto_a

    :pswitch_2d
    const/4 v12, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3, v12}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzh(ILjava/util/List;Z)I

    move-result v3

    goto :goto_a

    :pswitch_2e
    const/4 v12, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3, v12}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzk(ILjava/util/List;Z)I

    move-result v3

    goto :goto_a

    :pswitch_2f
    const/4 v12, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3, v12}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzx(ILjava/util/List;Z)I

    move-result v3

    goto :goto_a

    :pswitch_30
    const/4 v12, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3, v12}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzm(ILjava/util/List;Z)I

    move-result v3

    goto :goto_a

    :pswitch_31
    const/4 v12, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3, v12}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzf(ILjava/util/List;Z)I

    move-result v3

    goto :goto_a

    :pswitch_32
    const/4 v12, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3, v12}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzh(ILjava/util/List;Z)I

    move-result v3

    :goto_a
    add-int/2addr v6, v3

    goto/16 :goto_f

    :pswitch_33
    const/4 v12, 0x0

    and-int v9, v8, v10

    if-eqz v9, :cond_5

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzF(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object v4

    invoke-static {v11, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzD(ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;)I

    move-result v3

    goto :goto_a

    :pswitch_34
    const/4 v12, 0x0

    and-int/2addr v10, v8

    if-eqz v10, :cond_5

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    shl-int/lit8 v10, v11, 0x3

    add-long v13, v3, v3

    shr-long/2addr v3, v9

    invoke-static {v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v9

    xor-long/2addr v3, v13

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzN(J)I

    move-result v3

    add-int/2addr v9, v3

    add-int/2addr v6, v9

    goto/16 :goto_f

    :pswitch_35
    const/4 v12, 0x0

    and-int v9, v8, v10

    if-eqz v9, :cond_5

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    shl-int/lit8 v4, v11, 0x3

    add-int v9, v3, v3

    shr-int/lit8 v3, v3, 0x1f

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v4

    xor-int/2addr v3, v9

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v3

    goto/16 :goto_c

    :pswitch_36
    const/4 v12, 0x0

    and-int v3, v8, v10

    if-eqz v3, :cond_5

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v3

    goto/16 :goto_e

    :pswitch_37
    const/4 v12, 0x0

    and-int v3, v8, v10

    if-eqz v3, :cond_5

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v3

    goto/16 :goto_d

    :pswitch_38
    const/4 v12, 0x0

    and-int v9, v8, v10

    if-eqz v9, :cond_5

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzF(I)I

    move-result v3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v4

    goto/16 :goto_c

    :pswitch_39
    const/4 v12, 0x0

    and-int v9, v8, v10

    if-eqz v9, :cond_5

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v4

    goto/16 :goto_c

    :pswitch_3a
    const/4 v12, 0x0

    and-int v9, v8, v10

    if-eqz v9, :cond_5

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    shl-int/lit8 v4, v11, 0x3

    sget v9, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzf:I

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;->zzd()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v9

    add-int/2addr v9, v3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v3

    :goto_b
    add-int/2addr v3, v9

    goto/16 :goto_a

    :pswitch_3b
    const/4 v12, 0x0

    and-int v9, v8, v10

    if-eqz v9, :cond_5

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzF(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object v4

    invoke-static {v11, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzo(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;)I

    move-result v3

    goto/16 :goto_a

    :pswitch_3c
    const/4 v12, 0x0

    and-int v9, v8, v10

    if-eqz v9, :cond_5

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    if-eqz v4, :cond_4

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    shl-int/lit8 v4, v11, 0x3

    sget v9, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzf:I

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;->zzd()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v9

    add-int/2addr v9, v3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v3

    goto :goto_b

    :cond_4
    check-cast v3, Ljava/lang/String;

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzK(Ljava/lang/String;)I

    move-result v3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v4

    goto :goto_c

    :pswitch_3d
    const/4 v12, 0x0

    and-int v3, v8, v10

    if-eqz v3, :cond_5

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v3

    add-int/2addr v3, v14

    goto/16 :goto_a

    :pswitch_3e
    const/4 v12, 0x0

    and-int v3, v8, v10

    if-eqz v3, :cond_5

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v3

    goto :goto_d

    :pswitch_3f
    const/4 v12, 0x0

    and-int v3, v8, v10

    if-eqz v3, :cond_5

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v3

    goto :goto_e

    :pswitch_40
    const/4 v12, 0x0

    and-int v9, v8, v10

    if-eqz v9, :cond_5

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzF(I)I

    move-result v3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v4

    goto :goto_c

    :pswitch_41
    const/4 v12, 0x0

    and-int v9, v8, v10

    if-eqz v9, :cond_5

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    shl-int/lit8 v9, v11, 0x3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzN(J)I

    move-result v3

    invoke-static {v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v4

    goto :goto_c

    :pswitch_42
    const/4 v12, 0x0

    and-int v9, v8, v10

    if-eqz v9, :cond_5

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    shl-int/lit8 v9, v11, 0x3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzN(J)I

    move-result v3

    invoke-static {v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v4

    :goto_c
    add-int/2addr v4, v3

    add-int/2addr v6, v4

    goto :goto_f

    :pswitch_43
    const/4 v12, 0x0

    and-int v3, v8, v10

    if-eqz v3, :cond_5

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v3

    :goto_d
    add-int/lit8 v3, v3, 0x4

    goto/16 :goto_a

    :pswitch_44
    const/4 v12, 0x0

    and-int v3, v8, v10

    if-eqz v3, :cond_5

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v3

    :goto_e
    add-int/lit8 v3, v3, 0x8

    goto/16 :goto_a

    :cond_5
    :goto_f
    add-int/lit8 v5, v5, 0x3

    const v4, 0xfffff

    goto/16 :goto_0

    :cond_6
    const/4 v12, 0x0

    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzo:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;->zza(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v6, v2

    iget-boolean v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzh:Z

    if-eqz v2, :cond_9

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzp:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;

    move-result-object v0

    move v3, v12

    :goto_10
    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;->zzb()I

    move-result v1

    if-ge v3, v1, :cond_7

    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;->zzg(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v12, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_7
    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;->zzc()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v12, v1

    goto :goto_11

    :cond_8
    add-int/2addr v6, v12

    :cond_9
    return v6

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

.method private final zzr(Ljava/lang/Object;)I
    .locals 11

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzb:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    array-length v4, v4

    if-ge v2, v4, :cond_4

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzC(I)I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzB(I)I

    move-result v5

    iget-object v6, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v6, v6, v2

    const v7, 0xfffff

    and-int/2addr v4, v7

    sget-object v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtx;->zzJ:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtx;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtx;->zza()I

    move-result v7

    if-lt v5, v7, :cond_0

    sget-object v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtx;->zzW:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtx;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtx;->zza()I

    move-result v7

    if-gt v5, v7, :cond_0

    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    add-int/lit8 v8, v2, 0x2

    aget v7, v7, v8

    :cond_0
    int-to-long v7, v4

    const/16 v4, 0x3f

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzF(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object v5

    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzD(ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;)I

    move-result v4

    goto/16 :goto_2

    :pswitch_1
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzD(Ljava/lang/Object;J)J

    move-result-wide v7

    shl-int/lit8 v5, v6, 0x3

    add-long v9, v7, v7

    shr-long v6, v7, v4

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v4

    xor-long v5, v9, v6

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzN(J)I

    move-result v5

    goto/16 :goto_3

    :pswitch_2
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzs(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v6, 0x3

    add-int v6, v4, v4

    shr-int/lit8 v4, v4, 0x1f

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v5

    xor-int/2addr v4, v6

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v4

    goto/16 :goto_6

    :pswitch_3
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v4

    goto/16 :goto_8

    :pswitch_4
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v4

    goto/16 :goto_7

    :pswitch_5
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzs(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzF(I)I

    move-result v4

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v5

    goto/16 :goto_6

    :pswitch_6
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzs(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v4

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v5

    goto/16 :goto_6

    :pswitch_7
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    shl-int/lit8 v5, v6, 0x3

    sget v6, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzf:I

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;->zzd()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v6

    add-int/2addr v6, v4

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v4

    goto/16 :goto_4

    :pswitch_8
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzF(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object v5

    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzo(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;)I

    move-result v4

    goto/16 :goto_2

    :pswitch_9
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    if-eqz v5, :cond_1

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    shl-int/lit8 v5, v6, 0x3

    sget v6, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzf:I

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;->zzd()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v6

    add-int/2addr v6, v4

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v4

    goto/16 :goto_4

    :cond_1
    check-cast v4, Ljava/lang/String;

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzK(Ljava/lang/String;)I

    move-result v4

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v5

    goto/16 :goto_6

    :pswitch_a
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v4

    goto/16 :goto_5

    :pswitch_b
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v4

    goto/16 :goto_7

    :pswitch_c
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v4

    goto/16 :goto_8

    :pswitch_d
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzs(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzF(I)I

    move-result v4

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v5

    goto/16 :goto_6

    :pswitch_e
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzD(Ljava/lang/Object;J)J

    move-result-wide v4

    shl-int/lit8 v6, v6, 0x3

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzN(J)I

    move-result v4

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v5

    goto/16 :goto_6

    :pswitch_f
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzD(Ljava/lang/Object;J)J

    move-result-wide v4

    shl-int/lit8 v6, v6, 0x3

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzN(J)I

    move-result v4

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v5

    goto/16 :goto_6

    :pswitch_10
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v4

    goto/16 :goto_7

    :pswitch_11
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v4

    goto/16 :goto_8

    :pswitch_12
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzH(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvp;->zza(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    goto/16 :goto_2

    :pswitch_13
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzF(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object v5

    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;)I

    move-result v4

    goto/16 :goto_2

    :pswitch_14
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzt(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzL(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v6

    goto/16 :goto_1

    :pswitch_15
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzr(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzL(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v6

    goto/16 :goto_1

    :pswitch_16
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzi(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzL(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v6

    goto/16 :goto_1

    :pswitch_17
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzg(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzL(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v6

    goto/16 :goto_1

    :pswitch_18
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zze(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzL(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v6

    goto/16 :goto_1

    :pswitch_19
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzw(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzL(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v6

    goto/16 :goto_1

    :pswitch_1a
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzb(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzL(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v6

    goto/16 :goto_1

    :pswitch_1b
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzg(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzL(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v6

    goto/16 :goto_1

    :pswitch_1c
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzi(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzL(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v6

    goto :goto_1

    :pswitch_1d
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzl(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzL(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v6

    goto :goto_1

    :pswitch_1e
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzy(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzL(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v6

    goto :goto_1

    :pswitch_1f
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzn(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzL(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v6

    goto :goto_1

    :pswitch_20
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzg(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzL(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v6

    goto :goto_1

    :pswitch_21
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzi(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzL(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v6

    :goto_1
    add-int/2addr v5, v6

    goto/16 :goto_6

    :pswitch_22
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzs(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_2

    :pswitch_23
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzq(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_2

    :pswitch_24
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzh(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_2

    :pswitch_25
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzf(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_2

    :pswitch_26
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzd(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_2

    :pswitch_27
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzv(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_2

    :pswitch_28
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzc(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_2

    :pswitch_29
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzF(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object v5

    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzp(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;)I

    move-result v4

    goto :goto_2

    :pswitch_2a
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzu(ILjava/util/List;)I

    move-result v4

    goto :goto_2

    :pswitch_2b
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zza(ILjava/util/List;Z)I

    move-result v4

    goto :goto_2

    :pswitch_2c
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzf(ILjava/util/List;Z)I

    move-result v4

    goto :goto_2

    :pswitch_2d
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzh(ILjava/util/List;Z)I

    move-result v4

    goto :goto_2

    :pswitch_2e
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzk(ILjava/util/List;Z)I

    move-result v4

    goto :goto_2

    :pswitch_2f
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzx(ILjava/util/List;Z)I

    move-result v4

    goto :goto_2

    :pswitch_30
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzm(ILjava/util/List;Z)I

    move-result v4

    goto :goto_2

    :pswitch_31
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzf(ILjava/util/List;Z)I

    move-result v4

    goto :goto_2

    :pswitch_32
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzh(ILjava/util/List;Z)I

    move-result v4

    :goto_2
    add-int/2addr v3, v4

    goto/16 :goto_9

    :pswitch_33
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzF(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object v5

    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzD(ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;)I

    move-result v4

    goto :goto_2

    :pswitch_34
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzd(Ljava/lang/Object;J)J

    move-result-wide v7

    shl-int/lit8 v5, v6, 0x3

    add-long v9, v7, v7

    shr-long v6, v7, v4

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v4

    xor-long v5, v9, v6

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzN(J)I

    move-result v5

    :goto_3
    add-int/2addr v4, v5

    goto :goto_2

    :pswitch_35
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzc(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v6, 0x3

    add-int v6, v4, v4

    shr-int/lit8 v4, v4, 0x1f

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v5

    xor-int/2addr v4, v6

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v4

    goto/16 :goto_6

    :pswitch_36
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v4

    goto/16 :goto_8

    :pswitch_37
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v4

    goto/16 :goto_7

    :pswitch_38
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzc(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzF(I)I

    move-result v4

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v5

    goto/16 :goto_6

    :pswitch_39
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzc(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v4

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v5

    goto/16 :goto_6

    :pswitch_3a
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    shl-int/lit8 v5, v6, 0x3

    sget v6, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzf:I

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;->zzd()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v6

    add-int/2addr v6, v4

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v4

    :goto_4
    add-int/2addr v4, v6

    goto/16 :goto_2

    :pswitch_3b
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzF(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object v5

    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzo(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;)I

    move-result v4

    goto/16 :goto_2

    :pswitch_3c
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    if-eqz v5, :cond_2

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    shl-int/lit8 v5, v6, 0x3

    sget v6, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzf:I

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;->zzd()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v6

    add-int/2addr v6, v4

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v4

    goto :goto_4

    :cond_2
    check-cast v4, Ljava/lang/String;

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzK(Ljava/lang/String;)I

    move-result v4

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v5

    goto :goto_6

    :pswitch_3d
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v4

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :pswitch_3e
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v4

    goto :goto_7

    :pswitch_3f
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v4

    goto :goto_8

    :pswitch_40
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzc(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzF(I)I

    move-result v4

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v5

    goto :goto_6

    :pswitch_41
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    shl-int/lit8 v6, v6, 0x3

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzN(J)I

    move-result v4

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v5

    goto :goto_6

    :pswitch_42
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    shl-int/lit8 v6, v6, 0x3

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzN(J)I

    move-result v4

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v5

    :goto_6
    add-int/2addr v5, v4

    add-int/2addr v3, v5

    goto :goto_9

    :pswitch_43
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v4

    :goto_7
    add-int/lit8 v4, v4, 0x4

    goto/16 :goto_2

    :pswitch_44
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v4

    :goto_8
    add-int/lit8 v4, v4, 0x8

    goto/16 :goto_2

    :cond_3
    :goto_9
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    :cond_4
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzo:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;->zza(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v3, p0

    return v3

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

.method private static zzs(Ljava/lang/Object;J)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private final zzt(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzb:Lsun/misc/Unsafe;

    invoke-direct {p0, p5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzH(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p1, p6, p7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p5

    invoke-static {p5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvp;->zzb(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvo;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvo;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvo;

    move-result-object v1

    invoke-static {v1, p5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvp;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1, p6, p7, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p5, v1

    :cond_0
    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvn;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvn;->zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvm;

    move-result-object p0

    check-cast p5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvo;

    invoke-static {p2, p3, p8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzj([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result p1

    iget p3, p8, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zza:I

    if-ltz p3, :cond_7

    sub-int p6, p4, p1

    if-gt p3, p6, :cond_7

    add-int/2addr p3, p1

    iget-object p6, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvm;->zzb:Ljava/lang/Object;

    iget-object p7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvm;->zzd:Ljava/lang/Object;

    :goto_0
    if-ge p1, p3, :cond_5

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p2, p1

    if-gez p1, :cond_1

    invoke-static {p1, p2, v0, p8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzk(I[BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    iget p1, p8, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zza:I

    :cond_1
    move v1, v0

    and-int/lit8 v0, p1, 0x7

    ushr-int/lit8 v2, p1, 0x3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvm;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;->zza()I

    move-result v2

    if-ne v0, v2, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvm;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvm;->zzd:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move-object v0, p2

    move v2, p4

    move-object v5, p8

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzad([BIILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result p1

    iget-object p7, p8, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zzc:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvm;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;->zza()I

    move-result v2

    if-ne v0, v2, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvm;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;

    const/4 v4, 0x0

    move-object v0, p2

    move v2, p4

    move-object v5, p8

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzad([BIILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result p1

    iget-object p6, p8, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zzc:Ljava/lang/Object;

    goto :goto_0

    :cond_4
    :goto_1
    invoke-static {p1, p2, v1, p4, p8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzp(I[BIILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result p1

    goto :goto_0

    :cond_5
    if-ne p1, p3, :cond_6

    invoke-interface {p5, p6, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p3

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zzg()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;

    move-result-object p0

    throw p0

    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zzj()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;

    move-result-object p0

    throw p0
.end method

.method private final zzu(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v2, p5

    move/from16 v9, p6

    move/from16 v3, p7

    move-wide/from16 v6, p10

    move/from16 v10, p12

    move-object/from16 v8, p13

    sget-object v11, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzb:Lsun/misc/Unsafe;

    iget-object v12, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    add-int/lit8 v13, v10, 0x2

    aget v12, v12, v13

    const v13, 0xfffff

    and-int/2addr v12, v13

    int-to-long v12, v12

    const/4 v14, 0x5

    const/4 v15, 0x2

    packed-switch p9, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    const/4 v6, 0x3

    if-ne v3, v6, :cond_6

    invoke-direct {v0, v1, v9, v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzJ(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v11

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v7, v2, 0x4

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzF(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object v3

    move-object v2, v11

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v8, p13

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;[BIIILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v2

    invoke-direct {v0, v1, v9, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzS(Ljava/lang/Object;IILjava/lang/Object;)V

    return v2

    :pswitch_1
    if-nez v3, :cond_6

    invoke-static {v4, v5, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzm([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    iget-wide v2, v8, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zzb:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzG(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_2
    if-nez v3, :cond_6

    invoke-static {v4, v5, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzj([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    iget v2, v8, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zza:I

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzF(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_3
    if-nez v3, :cond_6

    invoke-static {v4, v5, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzj([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v3

    iget v4, v8, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zza:I

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzE(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbum;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbum;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;

    move-result-object v0

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;->zzj(ILjava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v1, v6, v7, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_5

    :pswitch_4
    if-ne v3, v15, :cond_6

    invoke-static {v4, v5, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zza([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    iget-object v2, v8, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zzc:Ljava/lang/Object;

    invoke-virtual {v11, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_5
    if-ne v3, v15, :cond_6

    invoke-direct {v0, v1, v9, v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzJ(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v11

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzF(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object v3

    move-object v2, v11

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p13

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;[BIILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v2

    invoke-direct {v0, v1, v9, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzS(Ljava/lang/Object;IILjava/lang/Object;)V

    return v2

    :pswitch_6
    if-ne v3, v15, :cond_6

    invoke-static {v4, v5, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzj([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    iget v2, v8, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zza:I

    if-nez v2, :cond_2

    const-string v2, ""

    invoke-virtual {v11, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_2

    :cond_2
    const/high16 v3, 0x20000000

    and-int v3, p8, v3

    if-eqz v3, :cond_4

    add-int v3, v0, v2

    invoke-static {v4, v0, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxr;->zzf([BII)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;

    move-result-object v0

    throw v0

    :cond_4
    :goto_1
    new-instance v3, Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbur;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v0, v2, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v11, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v0, v2

    :goto_2
    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v3, v0

    goto/16 :goto_5

    :pswitch_7
    if-nez v3, :cond_6

    invoke-static {v4, v5, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzm([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    iget-wide v2, v8, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zzb:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    const/4 v15, 0x1

    goto :goto_3

    :cond_5
    const/4 v15, 0x0

    :goto_3
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v11, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_8
    if-ne v3, v14, :cond_6

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzb([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v1, v6, v7, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v0, v5, 0x4

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_9
    const/4 v0, 0x1

    if-ne v3, v0, :cond_6

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzq([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v1, v6, v7, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v0, v5, 0x8

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_a
    if-nez v3, :cond_6

    invoke-static {v4, v5, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzj([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    iget v2, v8, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zza:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_b
    if-nez v3, :cond_6

    invoke-static {v4, v5, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzm([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    iget-wide v2, v8, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zzb:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_c
    if-ne v3, v14, :cond_6

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzb([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v11, v1, v6, v7, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v0, v5, 0x4

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_d
    const/4 v0, 0x1

    if-ne v3, v0, :cond_6

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzq([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v11, v1, v6, v7, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v0, v5, 0x8

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :cond_6
    :goto_4
    move v3, v5

    :goto_5
    return v3

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zzv(Ljava/lang/Object;[BIILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzL(Ljava/lang/Object;)V

    sget-object v9, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzb:Lsun/misc/Unsafe;

    const/16 v16, 0x0

    const/4 v10, -0x1

    const v8, 0xfffff

    move/from16 v0, p3

    move v7, v8

    move v1, v10

    move/from16 v2, v16

    move v6, v2

    :goto_0
    if-ge v0, v13, :cond_14

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    invoke-static {v0, v12, v3, v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzk(I[BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    iget v3, v11, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zza:I

    move v4, v0

    move/from16 v17, v3

    goto :goto_1

    :cond_0
    move/from16 v17, v0

    move v4, v3

    :goto_1
    ushr-int/lit8 v5, v17, 0x3

    if-le v5, v1, :cond_1

    div-int/lit8 v2, v2, 0x3

    invoke-direct {v15, v5, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzy(II)I

    move-result v0

    goto :goto_2

    :cond_1
    invoke-direct {v15, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzx(I)I

    move-result v0

    :goto_2
    move v2, v0

    if-ne v2, v10, :cond_2

    move v2, v4

    move/from16 v23, v5

    move-object/from16 v29, v9

    move/from16 v18, v10

    move/from16 v15, v16

    goto/16 :goto_12

    :cond_2
    and-int/lit8 v3, v17, 0x7

    iget-object v0, v15, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    add-int/lit8 v1, v2, 0x1

    aget v1, v0, v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzB(I)I

    move-result v13

    and-int v10, v1, v8

    move-object/from16 v19, v9

    int-to-long v8, v10

    const/16 v10, 0x11

    move/from16 p3, v5

    if-gt v13, v10, :cond_b

    add-int/lit8 v10, v2, 0x2

    aget v0, v0, v10

    ushr-int/lit8 v10, v0, 0x14

    const/4 v5, 0x1

    shl-int v10, v5, v10

    const v15, 0xfffff

    and-int/2addr v0, v15

    move/from16 v22, v1

    move/from16 v20, v2

    if-eq v0, v7, :cond_5

    if-eq v7, v15, :cond_3

    int-to-long v1, v7

    move-object/from16 v7, v19

    invoke-virtual {v7, v14, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_3

    :cond_3
    move-object/from16 v7, v19

    :goto_3
    if-eq v0, v15, :cond_4

    int-to-long v1, v0

    invoke-virtual {v7, v14, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    move v6, v1

    :cond_4
    move-object v2, v7

    move v7, v0

    goto :goto_4

    :cond_5
    move-object/from16 v2, v19

    :goto_4
    const/4 v0, 0x5

    packed-switch v13, :pswitch_data_0

    move-object/from16 v13, p0

    move/from16 v23, p3

    move/from16 v19, v15

    move/from16 v15, v20

    move/from16 v20, v7

    move-object v7, v2

    goto/16 :goto_d

    :pswitch_0
    if-nez v3, :cond_6

    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzm([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v13

    iget-wide v0, v11, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zzb:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzG(J)J

    move-result-wide v4

    move-object v0, v2

    move-object/from16 v1, p1

    move/from16 v15, v20

    move/from16 v20, v7

    move-object v7, v2

    move-wide v2, v8

    move/from16 v23, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int/2addr v6, v10

    move-object v9, v7

    move v0, v13

    move v2, v15

    move/from16 v7, v20

    move/from16 v1, v23

    const v8, 0xfffff

    const/4 v10, -0x1

    move-object/from16 v15, p0

    goto/16 :goto_c

    :cond_6
    move/from16 v23, p3

    move/from16 v15, v20

    move/from16 v20, v7

    move-object v7, v2

    goto/16 :goto_6

    :pswitch_1
    move/from16 v23, p3

    move/from16 v15, v20

    move/from16 v20, v7

    move-object v7, v2

    if-nez v3, :cond_7

    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzj([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zza:I

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzF(I)I

    move-result v1

    invoke-virtual {v7, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_5

    :pswitch_2
    move/from16 v23, p3

    move/from16 v15, v20

    move/from16 v20, v7

    move-object v7, v2

    if-nez v3, :cond_7

    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzj([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zza:I

    invoke-virtual {v7, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_5

    :pswitch_3
    move/from16 v23, p3

    move/from16 v15, v20

    const/4 v0, 0x2

    move/from16 v20, v7

    move-object v7, v2

    if-ne v3, v0, :cond_7

    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zza([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    iget-object v1, v11, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zzc:Ljava/lang/Object;

    invoke-virtual {v7, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_5
    or-int/2addr v6, v10

    move/from16 v13, p4

    move-object v9, v7

    move v2, v15

    move/from16 v7, v20

    move/from16 v1, v23

    const v8, 0xfffff

    const/4 v10, -0x1

    goto/16 :goto_14

    :pswitch_4
    move/from16 v23, p3

    move/from16 v15, v20

    const/4 v0, 0x2

    move/from16 v20, v7

    move-object v7, v2

    if-ne v3, v0, :cond_7

    move-object/from16 v13, p0

    const v19, 0xfffff

    invoke-direct {v13, v14, v15}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzI(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v13, v15}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzF(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object v1

    move-object v0, v8

    move-object/from16 v2, p2

    move v3, v4

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;[BIILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    invoke-direct {v13, v14, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzR(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_a

    :cond_7
    :goto_6
    move-object/from16 v13, p0

    const v19, 0xfffff

    goto/16 :goto_d

    :pswitch_5
    move-object/from16 v13, p0

    move/from16 v23, p3

    move/from16 v19, v15

    move/from16 v15, v20

    const/4 v0, 0x2

    move/from16 v20, v7

    move-object v7, v2

    if-ne v3, v0, :cond_a

    const/high16 v0, 0x20000000

    and-int v0, v22, v0

    if-nez v0, :cond_8

    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzg([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    goto :goto_7

    :cond_8
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzh([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    :goto_7
    iget-object v1, v11, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zzc:Ljava/lang/Object;

    invoke-virtual {v7, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_6
    move-object/from16 v13, p0

    move/from16 v23, p3

    move/from16 v19, v15

    move/from16 v15, v20

    move/from16 v20, v7

    move-object v7, v2

    if-nez v3, :cond_a

    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzm([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    iget-wide v1, v11, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zzb:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_9

    goto :goto_8

    :cond_9
    move/from16 v5, v16

    :goto_8
    invoke-static {v14, v8, v9, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzm(Ljava/lang/Object;JZ)V

    goto/16 :goto_a

    :pswitch_7
    move-object/from16 v13, p0

    move/from16 v23, p3

    move/from16 v19, v15

    move/from16 v15, v20

    move/from16 v20, v7

    move-object v7, v2

    if-ne v3, v0, :cond_a

    invoke-static {v12, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzb([BI)I

    move-result v0

    invoke-virtual {v7, v14, v8, v9, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_9

    :pswitch_8
    move-object/from16 v13, p0

    move/from16 v23, p3

    move/from16 v19, v15

    move/from16 v15, v20

    move/from16 v20, v7

    move-object v7, v2

    if-ne v3, v5, :cond_a

    invoke-static {v12, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzq([BI)J

    move-result-wide v21

    move-object v0, v7

    move-object/from16 v1, p1

    move-wide v2, v8

    move v8, v4

    move-wide/from16 v4, v21

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v8, 0x8

    goto/16 :goto_a

    :pswitch_9
    move-object/from16 v13, p0

    move/from16 v23, p3

    move/from16 v19, v15

    move/from16 v15, v20

    move/from16 v20, v7

    move-object v7, v2

    if-nez v3, :cond_a

    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzj([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zza:I

    invoke-virtual {v7, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_a

    :pswitch_a
    move-object/from16 v13, p0

    move/from16 v23, p3

    move/from16 v19, v15

    move/from16 v15, v20

    move/from16 v20, v7

    move-object v7, v2

    if-nez v3, :cond_a

    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzm([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v17

    iget-wide v4, v11, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zzb:J

    move-object v0, v7

    move-object/from16 v1, p1

    move-wide v2, v8

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int/2addr v6, v10

    move-object v9, v7

    move v2, v15

    move/from16 v0, v17

    goto :goto_b

    :pswitch_b
    move-object/from16 v13, p0

    move/from16 v23, p3

    move/from16 v19, v15

    move/from16 v15, v20

    move/from16 v20, v7

    move-object v7, v2

    if-ne v3, v0, :cond_a

    invoke-static {v12, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzb([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v14, v8, v9, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzp(Ljava/lang/Object;JF)V

    :goto_9
    add-int/lit8 v0, v4, 0x4

    goto :goto_a

    :pswitch_c
    move-object/from16 v13, p0

    move/from16 v23, p3

    move/from16 v19, v15

    move/from16 v15, v20

    move/from16 v20, v7

    move-object v7, v2

    if-ne v3, v5, :cond_a

    invoke-static {v12, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzq([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v14, v8, v9, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzo(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v4, 0x8

    :goto_a
    or-int/2addr v6, v10

    move-object v9, v7

    move v2, v15

    :goto_b
    move/from16 v8, v19

    move/from16 v7, v20

    move/from16 v1, v23

    const/4 v10, -0x1

    move-object v15, v13

    :goto_c
    move/from16 v13, p4

    goto/16 :goto_0

    :cond_a
    :goto_d
    move v2, v4

    move-object/from16 v29, v7

    move/from16 v7, v20

    const/16 v18, -0x1

    goto/16 :goto_12

    :cond_b
    move/from16 v23, p3

    move/from16 v22, v1

    move/from16 v20, v7

    move-object v10, v15

    move-object/from16 v7, v19

    const v19, 0xfffff

    move v15, v2

    const/16 v0, 0x1b

    if-ne v13, v0, :cond_f

    const/4 v0, 0x2

    if-ne v3, v0, :cond_e

    invoke-virtual {v7, v14, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;->zzc()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    const/16 v1, 0xa

    goto :goto_e

    :cond_c
    add-int/2addr v1, v1

    :goto_e
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;->zzd(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;

    move-result-object v0

    invoke-virtual {v7, v14, v8, v9, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_d
    move-object v5, v0

    invoke-direct {v10, v15}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzF(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object v0

    move/from16 v1, v17

    move-object/from16 v2, p2

    move v3, v4

    move/from16 v4, p4

    move v8, v6

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;I[BIILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    move/from16 v13, p4

    move-object v9, v7

    move v6, v8

    move v2, v15

    move/from16 v8, v19

    move/from16 v7, v20

    move/from16 v1, v23

    move-object v15, v10

    const/4 v10, -0x1

    goto/16 :goto_0

    :cond_e
    move v14, v4

    move/from16 v25, v6

    move-object/from16 v29, v7

    move/from16 v26, v20

    const/16 v18, -0x1

    goto/16 :goto_10

    :cond_f
    const/16 v0, 0x31

    if-gt v13, v0, :cond_11

    move/from16 v1, v22

    int-to-long v1, v1

    move-object/from16 v0, p0

    move-wide/from16 v21, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v5, v3

    move v3, v4

    move/from16 v24, v4

    move/from16 v4, p4

    move/from16 p3, v5

    move/from16 v5, v17

    move/from16 v25, v6

    move/from16 v6, v23

    move/from16 v26, v20

    move-object/from16 v20, v7

    move/from16 v7, p3

    move-wide/from16 v27, v8

    move/from16 v9, v19

    move v8, v15

    move-object/from16 v29, v20

    const/16 v18, -0x1

    move-wide/from16 v9, v21

    move v11, v13

    move-wide/from16 v12, v27

    move-object/from16 v14, p5

    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzw(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    move/from16 v14, v24

    if-eq v0, v14, :cond_10

    :goto_f
    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move v2, v15

    move/from16 v10, v18

    move/from16 v1, v23

    move/from16 v6, v25

    move/from16 v7, v26

    goto/16 :goto_13

    :cond_10
    move v2, v0

    goto :goto_11

    :cond_11
    move/from16 p3, v3

    move v14, v4

    move/from16 v25, v6

    move-object/from16 v29, v7

    move-wide/from16 v27, v8

    move/from16 v26, v20

    move/from16 v1, v22

    const/16 v18, -0x1

    const/16 v0, 0x32

    if-ne v13, v0, :cond_13

    move/from16 v7, p3

    const/4 v0, 0x2

    if-ne v7, v0, :cond_12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v14

    move/from16 v4, p4

    move v5, v15

    move-wide/from16 v6, v27

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzt(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    if-eq v0, v14, :cond_10

    goto :goto_f

    :cond_12
    :goto_10
    move v2, v14

    :goto_11
    move/from16 v6, v25

    move/from16 v7, v26

    goto :goto_12

    :cond_13
    move/from16 v7, p3

    move-object/from16 v0, p0

    move v8, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v14

    move/from16 v4, p4

    move/from16 v5, v17

    move/from16 v6, v23

    move v9, v13

    move-wide/from16 v10, v27

    move v12, v15

    move-object/from16 v13, p5

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzu(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    if-eq v0, v14, :cond_10

    goto :goto_f

    :goto_12
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;

    move-result-object v4

    move/from16 v0, v17

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzi(I[BIILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move v2, v15

    move/from16 v10, v18

    move/from16 v1, v23

    :goto_13
    move-object/from16 v9, v29

    const v8, 0xfffff

    :goto_14
    move-object/from16 v15, p0

    goto/16 :goto_0

    :cond_14
    move/from16 v25, v6

    move v1, v8

    move-object/from16 v29, v9

    if-eq v7, v1, :cond_15

    int-to-long v1, v7

    move-object/from16 v3, p1

    move/from16 v6, v25

    move-object/from16 v4, v29

    invoke-virtual {v4, v3, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_15
    move/from16 v1, p4

    if-ne v0, v1, :cond_16

    return v0

    :cond_16
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zzg()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;

    move-result-object v0

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
.end method

.method private final zzw(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v2, p5

    move/from16 v6, p7

    move/from16 v8, p8

    move-wide/from16 v9, p12

    move-object/from16 v7, p14

    sget-object v11, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v11, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;

    invoke-interface {v12}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;->zzc()Z

    move-result v13

    if-nez v13, :cond_1

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_0

    const/16 v13, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v13, v13

    :goto_0
    invoke-interface {v12, v13}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;->zzd(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;

    move-result-object v12

    invoke-virtual {v11, v1, v9, v10, v12}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    const/4 v9, 0x5

    const-wide/16 v10, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x2

    packed-switch p11, :pswitch_data_0

    const/4 v1, 0x3

    if-ne v6, v1, :cond_45

    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzF(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object v0

    and-int/lit8 v1, v2, -0x8

    or-int/lit8 v1, v1, 0x4

    move-object/from16 p6, v0

    move-object/from16 p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move/from16 p10, v1

    move-object/from16 p11, p14

    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;[BIIILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v4

    iget-object v6, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zzc:Ljava/lang/Object;

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_23

    :pswitch_0
    if-ne v6, v14, :cond_4

    check-cast v12, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvi;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzj([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zza:I

    add-int/2addr v1, v0

    :goto_1
    if-ge v0, v1, :cond_2

    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzm([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    iget-wide v4, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zzb:J

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzG(J)J

    move-result-wide v4

    invoke-virtual {v12, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvi;->zzg(J)V

    goto :goto_1

    :cond_2
    if-ne v0, v1, :cond_3

    goto/16 :goto_25

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zzj()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;

    move-result-object v0

    throw v0

    :cond_4
    if-nez v6, :cond_45

    check-cast v12, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvi;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzm([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    iget-wide v8, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zzb:J

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzG(J)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvi;->zzg(J)V

    :goto_2
    if-ge v0, v5, :cond_6

    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzj([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zza:I

    if-eq v2, v4, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzm([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    iget-wide v8, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zzb:J

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzG(J)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvi;->zzg(J)V

    goto :goto_2

    :cond_6
    :goto_3
    return v0

    :pswitch_1
    if-ne v6, v14, :cond_9

    check-cast v12, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuj;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzj([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zza:I

    add-int/2addr v1, v0

    :goto_4
    if-ge v0, v1, :cond_7

    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzj([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    iget v2, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zza:I

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzF(I)I

    move-result v2

    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuj;->zzh(I)V

    goto :goto_4

    :cond_7
    if-ne v0, v1, :cond_8

    goto/16 :goto_25

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zzj()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;

    move-result-object v0

    throw v0

    :cond_9
    if-nez v6, :cond_45

    check-cast v12, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuj;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzj([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zza:I

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzF(I)I

    move-result v1

    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuj;->zzh(I)V

    :goto_5
    if-ge v0, v5, :cond_b

    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzj([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zza:I

    if-eq v2, v4, :cond_a

    goto :goto_6

    :cond_a
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzj([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zza:I

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzF(I)I

    move-result v1

    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuj;->zzh(I)V

    goto :goto_5

    :cond_b
    :goto_6
    return v0

    :pswitch_2
    if-ne v6, v14, :cond_c

    invoke-static {v3, v4, v12, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzf([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v2

    goto :goto_7

    :cond_c
    if-nez v6, :cond_45

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v12

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzl(I[BIILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v2

    :goto_7
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzE(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbum;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzo:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;

    move-object/from16 p0, p1

    move/from16 p1, p6

    move-object/from16 p2, v12

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v0

    invoke-static/range {p0 .. p5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzC(Ljava/lang/Object;ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbum;Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;)Ljava/lang/Object;

    move v0, v2

    goto/16 :goto_25

    :pswitch_3
    if-ne v6, v14, :cond_45

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzj([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zza:I

    if-ltz v1, :cond_14

    array-length v4, v3

    sub-int/2addr v4, v0

    if-gt v1, v4, :cond_13

    if-nez v1, :cond_d

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_d
    invoke-static {v3, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;->zzm([BII)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/2addr v0, v1

    :goto_9
    if-ge v0, v5, :cond_12

    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzj([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zza:I

    if-eq v2, v4, :cond_e

    goto :goto_a

    :cond_e
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzj([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zza:I

    if-ltz v1, :cond_11

    array-length v4, v3

    sub-int/2addr v4, v0

    if-gt v1, v4, :cond_10

    if-nez v1, :cond_f

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_f
    invoke-static {v3, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;->zzm([BII)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_10
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zzj()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;

    move-result-object v0

    throw v0

    :cond_11
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zzf()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;

    move-result-object v0

    throw v0

    :cond_12
    :goto_a
    return v0

    :cond_13
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zzj()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;

    move-result-object v0

    throw v0

    :cond_14
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zzf()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;

    move-result-object v0

    throw v0

    :pswitch_4
    if-ne v6, v14, :cond_45

    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzF(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object v0

    move-object/from16 p6, v0

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v12

    move-object/from16 p12, p14

    invoke-static/range {p6 .. p12}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;I[BIILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    return v0

    :pswitch_5
    if-ne v6, v14, :cond_45

    const-wide/32 v0, 0x20000000

    and-long v0, p9, v0

    cmp-long v0, v0, v10

    const-string v1, ""

    if-nez v0, :cond_19

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzj([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    iget v4, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zza:I

    if-ltz v4, :cond_18

    if-nez v4, :cond_15

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_15
    new-instance v6, Ljava/lang/String;

    sget-object v8, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbur;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v6, v3, v0, v4, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_b
    add-int/2addr v0, v4

    :goto_c
    if-ge v0, v5, :cond_46

    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzj([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zza:I

    if-ne v2, v6, :cond_46

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzj([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    iget v4, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zza:I

    if-ltz v4, :cond_17

    if-nez v4, :cond_16

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_16
    new-instance v6, Ljava/lang/String;

    sget-object v8, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbur;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v6, v3, v0, v4, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_17
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zzf()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;

    move-result-object v0

    throw v0

    :cond_18
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zzf()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;

    move-result-object v0

    throw v0

    :cond_19
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzj([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    iget v4, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zza:I

    if-ltz v4, :cond_20

    if-nez v4, :cond_1a

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v0

    goto :goto_d

    :cond_1a
    add-int v6, v0, v4

    invoke-static {v3, v0, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxr;->zzf([BII)Z

    move-result v8

    if-eqz v8, :cond_1f

    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbur;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v0, v4, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_d
    if-ge v6, v5, :cond_1e

    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzj([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    iget v4, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zza:I

    if-ne v2, v4, :cond_1e

    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzj([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v6

    iget v0, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zza:I

    if-ltz v0, :cond_1d

    if-nez v0, :cond_1b

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_1b
    add-int v4, v6, v0

    invoke-static {v3, v6, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxr;->zzf([BII)Z

    move-result v8

    if-eqz v8, :cond_1c

    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbur;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v6, v0, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v4

    goto :goto_d

    :cond_1c
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;

    move-result-object v0

    throw v0

    :cond_1d
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zzf()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;

    move-result-object v0

    throw v0

    :cond_1e
    move v0, v6

    goto/16 :goto_25

    :cond_1f
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;

    move-result-object v0

    throw v0

    :cond_20
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zzf()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;

    move-result-object v0

    throw v0

    :pswitch_6
    const/4 v0, 0x0

    if-ne v6, v14, :cond_24

    check-cast v12, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsn;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzj([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zza:I

    add-int/2addr v2, v1

    :goto_e
    if-ge v1, v2, :cond_22

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzm([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v1

    iget-wide v4, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zzb:J

    cmp-long v4, v4, v10

    if-eqz v4, :cond_21

    move v4, v13

    goto :goto_f

    :cond_21
    move v4, v0

    :goto_f
    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsn;->zze(Z)V

    goto :goto_e

    :cond_22
    if-ne v1, v2, :cond_23

    move v0, v1

    goto/16 :goto_25

    :cond_23
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zzj()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;

    move-result-object v0

    throw v0

    :cond_24
    if-nez v6, :cond_45

    check-cast v12, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsn;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzm([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v1

    iget-wide v8, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zzb:J

    cmp-long v4, v8, v10

    if-eqz v4, :cond_25

    move v4, v13

    goto :goto_10

    :cond_25
    move v4, v0

    :goto_10
    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsn;->zze(Z)V

    :goto_11
    if-ge v1, v5, :cond_28

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzj([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zza:I

    if-eq v2, v6, :cond_26

    goto :goto_13

    :cond_26
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzm([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v1

    iget-wide v8, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zzb:J

    cmp-long v4, v8, v10

    if-eqz v4, :cond_27

    move v4, v13

    goto :goto_12

    :cond_27
    move v4, v0

    :goto_12
    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsn;->zze(Z)V

    goto :goto_11

    :cond_28
    :goto_13
    return v1

    :pswitch_7
    if-ne v6, v14, :cond_2b

    check-cast v12, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuj;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzj([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zza:I

    add-int/2addr v1, v0

    :goto_14
    if-ge v0, v1, :cond_29

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzb([BI)I

    move-result v2

    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuj;->zzh(I)V

    add-int/lit8 v0, v0, 0x4

    goto :goto_14

    :cond_29
    if-ne v0, v1, :cond_2a

    goto/16 :goto_25

    :cond_2a
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zzj()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;

    move-result-object v0

    throw v0

    :cond_2b
    if-ne v6, v9, :cond_45

    check-cast v12, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuj;

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzb([BI)I

    move-result v0

    invoke-virtual {v12, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuj;->zzh(I)V

    add-int/lit8 v0, v4, 0x4

    :goto_15
    if-ge v0, v5, :cond_2d

    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzj([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zza:I

    if-eq v2, v4, :cond_2c

    goto :goto_16

    :cond_2c
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzb([BI)I

    move-result v0

    invoke-virtual {v12, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuj;->zzh(I)V

    add-int/lit8 v0, v1, 0x4

    goto :goto_15

    :cond_2d
    :goto_16
    return v0

    :pswitch_8
    if-ne v6, v14, :cond_30

    check-cast v12, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvi;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzj([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zza:I

    add-int/2addr v1, v0

    :goto_17
    if-ge v0, v1, :cond_2e

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzq([BI)J

    move-result-wide v4

    invoke-virtual {v12, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvi;->zzg(J)V

    add-int/lit8 v0, v0, 0x8

    goto :goto_17

    :cond_2e
    if-ne v0, v1, :cond_2f

    goto/16 :goto_25

    :cond_2f
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zzj()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;

    move-result-object v0

    throw v0

    :cond_30
    if-ne v6, v13, :cond_45

    check-cast v12, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvi;

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzq([BI)J

    move-result-wide v0

    invoke-virtual {v12, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvi;->zzg(J)V

    add-int/lit8 v0, v4, 0x8

    :goto_18
    if-ge v0, v5, :cond_32

    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzj([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zza:I

    if-eq v2, v4, :cond_31

    goto :goto_19

    :cond_31
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzq([BI)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvi;->zzg(J)V

    add-int/lit8 v0, v1, 0x8

    goto :goto_18

    :cond_32
    :goto_19
    return v0

    :pswitch_9
    if-ne v6, v14, :cond_33

    invoke-static {v3, v4, v12, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzf([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    goto/16 :goto_25

    :cond_33
    if-nez v6, :cond_45

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v12

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzl(I[BIILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    return v0

    :pswitch_a
    if-ne v6, v14, :cond_36

    check-cast v12, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvi;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzj([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zza:I

    add-int/2addr v1, v0

    :goto_1a
    if-ge v0, v1, :cond_34

    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzm([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    iget-wide v4, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zzb:J

    invoke-virtual {v12, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvi;->zzg(J)V

    goto :goto_1a

    :cond_34
    if-ne v0, v1, :cond_35

    goto/16 :goto_25

    :cond_35
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zzj()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;

    move-result-object v0

    throw v0

    :cond_36
    if-nez v6, :cond_45

    check-cast v12, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvi;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzm([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    iget-wide v8, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zzb:J

    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvi;->zzg(J)V

    :goto_1b
    if-ge v0, v5, :cond_38

    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzj([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zza:I

    if-eq v2, v4, :cond_37

    goto :goto_1c

    :cond_37
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzm([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    iget-wide v8, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zzb:J

    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvi;->zzg(J)V

    goto :goto_1b

    :cond_38
    :goto_1c
    return v0

    :pswitch_b
    if-ne v6, v14, :cond_3b

    check-cast v12, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbty;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzj([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zza:I

    add-int/2addr v1, v0

    :goto_1d
    if-ge v0, v1, :cond_39

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzb([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbty;->zze(F)V

    add-int/lit8 v0, v0, 0x4

    goto :goto_1d

    :cond_39
    if-ne v0, v1, :cond_3a

    goto/16 :goto_25

    :cond_3a
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zzj()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;

    move-result-object v0

    throw v0

    :cond_3b
    if-ne v6, v9, :cond_45

    check-cast v12, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbty;

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzb([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-virtual {v12, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbty;->zze(F)V

    add-int/lit8 v0, v4, 0x4

    :goto_1e
    if-ge v0, v5, :cond_3d

    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzj([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zza:I

    if-eq v2, v4, :cond_3c

    goto :goto_1f

    :cond_3c
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzb([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-virtual {v12, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbty;->zze(F)V

    add-int/lit8 v0, v1, 0x4

    goto :goto_1e

    :cond_3d
    :goto_1f
    return v0

    :pswitch_c
    if-ne v6, v14, :cond_40

    check-cast v12, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbto;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzj([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zza:I

    add-int/2addr v1, v0

    :goto_20
    if-ge v0, v1, :cond_3e

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzq([BI)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    invoke-virtual {v12, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbto;->zze(D)V

    add-int/lit8 v0, v0, 0x8

    goto :goto_20

    :cond_3e
    if-ne v0, v1, :cond_3f

    goto :goto_25

    :cond_3f
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zzj()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;

    move-result-object v0

    throw v0

    :cond_40
    if-ne v6, v13, :cond_45

    check-cast v12, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbto;

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzq([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-virtual {v12, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbto;->zze(D)V

    add-int/lit8 v0, v4, 0x8

    :goto_21
    if-ge v0, v5, :cond_42

    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzj([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zza:I

    if-eq v2, v4, :cond_41

    goto :goto_22

    :cond_41
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzq([BI)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbto;->zze(D)V

    add-int/lit8 v0, v1, 0x8

    goto :goto_21

    :cond_42
    :goto_22
    return v0

    :goto_23
    if-ge v4, v5, :cond_44

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzj([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v6

    iget v8, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zza:I

    if-eq v2, v8, :cond_43

    goto :goto_24

    :cond_43
    move-object/from16 p6, v0

    move-object/from16 p7, p2

    move/from16 p8, v6

    move/from16 p9, p4

    move/from16 p10, v1

    move-object/from16 p11, p14

    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;[BIIILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v4

    iget-object v6, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zzc:Ljava/lang/Object;

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_44
    :goto_24
    return v4

    :cond_45
    move v0, v4

    :cond_46
    :goto_25
    return v0

    :pswitch_data_0
    .packed-switch 0x12
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
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zzx(I)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zze:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzf:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzA(II)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private final zzy(II)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zze:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzf:I

    if-gt p1, v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzA(II)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private final zzz(I)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    add-int/lit8 p1, p1, 0x2

    aget p0, p0, p1

    return p0
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzj:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzr(Ljava/lang/Object;)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzq(Ljava/lang/Object;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final zzb(Ljava/lang/Object;)I
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzC(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v4, v4, v1

    const v5, 0xfffff

    and-int/2addr v5, v3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzB(I)I

    move-result v3

    int-to-long v5, v5

    const/16 v7, 0x25

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    :pswitch_1
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzD(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbur;->zzc(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_2
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzs(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_3
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzD(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbur;->zzc(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_4
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzs(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_5
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzs(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_6
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzs(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_7
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    :pswitch_8
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    :pswitch_9
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_2

    :pswitch_a
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzac(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbur;->zza(Z)I

    move-result v3

    goto/16 :goto_2

    :pswitch_b
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzs(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_c
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzD(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbur;->zzc(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_d
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzs(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_e
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzD(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbur;->zzc(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_f
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzD(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbur;->zzc(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_10
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzp(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto/16 :goto_2

    :pswitch_11
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzo(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbur;->zzc(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_12
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    :pswitch_13
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    :pswitch_14
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_1

    :pswitch_15
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbur;->zzc(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_16
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzc(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_17
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbur;->zzc(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_18
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzc(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_19
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzc(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_1a
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzc(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_1b
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    :pswitch_1c
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_0
    :goto_1
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto :goto_3

    :pswitch_1d
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2

    :pswitch_1e
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzw(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbur;->zza(Z)I

    move-result v3

    goto :goto_2

    :pswitch_1f
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzc(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_2

    :pswitch_20
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbur;->zzc(J)I

    move-result v3

    goto :goto_2

    :pswitch_21
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzc(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_2

    :pswitch_22
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbur;->zzc(J)I

    move-result v3

    goto :goto_2

    :pswitch_23
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbur;->zzc(J)I

    move-result v3

    goto :goto_2

    :pswitch_24
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzb(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_2

    :pswitch_25
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zza(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbur;->zzc(J)I

    move-result v3

    :goto_2
    add-int/2addr v2, v3

    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_2
    mul-int/lit8 v2, v2, 0x35

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzo:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzh:Z

    if-eqz v0, :cond_3

    mul-int/lit8 v2, v2, 0x35

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzp:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;

    move-result-object p0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;->hashCode()I

    move-result p0

    add-int/2addr v2, p0

    :cond_3
    return v2

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

.method public final zzc(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzL(Ljava/lang/Object;)V

    sget-object v10, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzb:Lsun/misc/Unsafe;

    const/16 v16, 0x0

    const/4 v8, -0x1

    move/from16 v0, p3

    move v1, v8

    move/from16 v2, v16

    move v3, v2

    move v5, v3

    const v6, 0xfffff

    :goto_0
    const/16 v17, 0x0

    if-ge v0, v13, :cond_20

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    invoke-static {v0, v12, v3, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzk(I[BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    iget v3, v9, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zza:I

    move v4, v3

    move v3, v0

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    ushr-int/lit8 v0, v4, 0x3

    const/4 v7, 0x3

    if-le v0, v1, :cond_1

    div-int/2addr v2, v7

    invoke-direct {v15, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzy(II)I

    move-result v1

    goto :goto_2

    :cond_1
    invoke-direct {v15, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzx(I)I

    move-result v1

    :goto_2
    move v2, v1

    const-wide/16 v19, 0x0

    if-ne v2, v8, :cond_2

    move/from16 v22, v0

    move/from16 v18, v5

    move/from16 v27, v6

    move/from16 v21, v8

    move-object/from16 v32, v10

    move v7, v11

    move/from16 v26, v16

    const/16 v25, 0x1

    move v8, v4

    goto/16 :goto_15

    :cond_2
    and-int/lit8 v8, v4, 0x7

    iget-object v7, v15, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    add-int/lit8 v22, v2, 0x1

    aget v1, v7, v22

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzB(I)I

    move-result v11

    move/from16 v18, v0

    const v13, 0xfffff

    and-int v0, v1, v13

    int-to-long v13, v0

    const/16 v0, 0x11

    move/from16 v24, v4

    const/4 v4, 0x2

    if-gt v11, v0, :cond_f

    add-int/lit8 v0, v2, 0x2

    aget v0, v7, v0

    ushr-int/lit8 v7, v0, 0x14

    const/16 v23, 0x1

    shl-int v7, v23, v7

    move-wide/from16 v25, v13

    const v13, 0xfffff

    and-int/2addr v0, v13

    if-eq v0, v6, :cond_4

    if-eq v6, v13, :cond_3

    int-to-long v13, v6

    move-object/from16 v6, p1

    invoke-virtual {v10, v6, v13, v14, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_3

    :cond_3
    move-object/from16 v6, p1

    :goto_3
    int-to-long v13, v0

    invoke-virtual {v10, v6, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    move/from16 v27, v0

    move v13, v5

    move-object v14, v6

    goto :goto_4

    :cond_4
    move-object/from16 v14, p1

    move v13, v5

    move/from16 v27, v6

    :goto_4
    const/4 v0, 0x5

    packed-switch v11, :pswitch_data_0

    move v6, v2

    move/from16 v11, v18

    const/4 v0, 0x3

    const/4 v2, 0x1

    if-ne v8, v0, :cond_e

    invoke-direct {v15, v14, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzI(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    shl-int/lit8 v0, v11, 0x3

    or-int/lit8 v5, v0, 0x4

    invoke-direct {v15, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzF(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object v1

    move-object v0, v8

    move-object/from16 v2, p2

    move/from16 v4, p4

    move v12, v6

    move/from16 p3, v24

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;[BIIILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    invoke-direct {v15, v14, v12, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzR(Ljava/lang/Object;ILjava/lang/Object;)V

    or-int v5, v13, v7

    move/from16 v3, p3

    move/from16 v13, p4

    move v1, v11

    move v2, v12

    move/from16 v6, v27

    const/4 v8, -0x1

    move-object/from16 v12, p2

    goto/16 :goto_f

    :pswitch_0
    if-nez v8, :cond_5

    invoke-static {v12, v3, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzm([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v6

    iget-wide v0, v9, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zzb:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzG(J)J

    move-result-wide v4

    move/from16 v11, v18

    move-object v0, v10

    move-object/from16 v1, p1

    move v8, v2

    move-wide/from16 v2, v25

    move/from16 p3, v6

    move/from16 v6, v24

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v5, v13, v7

    move/from16 v0, p3

    move/from16 v13, p4

    move v3, v6

    move v2, v8

    move v1, v11

    goto/16 :goto_e

    :cond_5
    move/from16 v11, v18

    move v12, v2

    goto/16 :goto_a

    :pswitch_1
    move v5, v2

    move/from16 v11, v18

    move/from16 v6, v24

    if-nez v8, :cond_8

    invoke-static {v12, v3, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzj([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    iget v1, v9, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zza:I

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzF(I)I

    move-result v1

    move-wide/from16 v2, v25

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v1, v13, v7

    move/from16 v13, p4

    move v2, v5

    move v3, v6

    move/from16 v6, v27

    const/4 v8, -0x1

    move v5, v1

    move v1, v11

    goto/16 :goto_f

    :pswitch_2
    move v5, v2

    move/from16 v11, v18

    move/from16 v6, v24

    move-wide/from16 v0, v25

    if-nez v8, :cond_8

    invoke-static {v12, v3, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzj([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v2

    iget v3, v9, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zza:I

    invoke-direct {v15, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzE(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbum;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbum;->zza(I)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_5

    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;

    move-result-object v0

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;->zzj(ILjava/lang/Object;)V

    move v0, v2

    move v2, v5

    move v3, v6

    move v1, v11

    move v5, v13

    move/from16 v6, v27

    const/4 v8, -0x1

    move/from16 v13, p4

    goto/16 :goto_f

    :cond_7
    :goto_5
    invoke-virtual {v10, v14, v0, v1, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_6

    :pswitch_3
    move v5, v2

    move/from16 v11, v18

    move/from16 v6, v24

    move-wide/from16 v0, v25

    if-ne v8, v4, :cond_8

    invoke-static {v12, v3, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zza([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v2

    iget-object v3, v9, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zzc:Ljava/lang/Object;

    invoke-virtual {v10, v14, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_6
    or-int v0, v13, v7

    move/from16 v13, p4

    move v3, v6

    move v1, v11

    move/from16 v6, v27

    const/4 v8, -0x1

    move/from16 v11, p5

    move/from16 v33, v5

    move v5, v0

    move v0, v2

    move/from16 v2, v33

    goto/16 :goto_0

    :cond_8
    move v12, v5

    move/from16 p3, v6

    goto/16 :goto_b

    :pswitch_4
    move v5, v2

    move/from16 v11, v18

    move/from16 v6, v24

    if-ne v8, v4, :cond_9

    invoke-direct {v15, v14, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzI(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v15, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzF(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object v1

    move-object v0, v8

    move-object/from16 v2, p2

    move/from16 v4, p4

    move/from16 v24, v6

    move v6, v5

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;[BIILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    invoke-direct {v15, v14, v6, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzR(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_c

    :cond_9
    move/from16 v24, v6

    move v12, v5

    goto/16 :goto_a

    :pswitch_5
    move v6, v2

    move/from16 v11, v18

    move-wide/from16 v28, v25

    if-ne v8, v4, :cond_d

    const/high16 v0, 0x20000000

    and-int/2addr v0, v1

    if-nez v0, :cond_a

    invoke-static {v12, v3, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzg([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    goto :goto_7

    :cond_a
    invoke-static {v12, v3, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzh([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    :goto_7
    iget-object v1, v9, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zzc:Ljava/lang/Object;

    move-wide/from16 v4, v28

    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_6
    move v6, v2

    move/from16 v11, v18

    move-wide/from16 v4, v25

    if-nez v8, :cond_d

    invoke-static {v12, v3, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzm([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    iget-wide v1, v9, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zzb:J

    cmp-long v1, v1, v19

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_8

    :cond_b
    move/from16 v1, v16

    :goto_8
    invoke-static {v14, v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzm(Ljava/lang/Object;JZ)V

    goto/16 :goto_c

    :pswitch_7
    move v6, v2

    move/from16 v11, v18

    move-wide/from16 v4, v25

    if-ne v8, v0, :cond_d

    invoke-static {v12, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzb([BI)I

    move-result v0

    invoke-virtual {v10, v14, v4, v5, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_9

    :pswitch_8
    move v6, v2

    move/from16 v11, v18

    move-wide/from16 v4, v25

    const/4 v0, 0x1

    if-ne v8, v0, :cond_c

    invoke-static {v12, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzq([BI)J

    move-result-wide v17

    move-object v0, v10

    move-object/from16 v1, p1

    move v8, v3

    move-wide v2, v4

    move-wide/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v8, 0x8

    goto/16 :goto_c

    :cond_c
    move v2, v0

    goto/16 :goto_10

    :pswitch_9
    move v6, v2

    move/from16 v11, v18

    move-wide/from16 v4, v25

    if-nez v8, :cond_d

    invoke-static {v12, v3, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzj([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    iget v1, v9, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zza:I

    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_c

    :pswitch_a
    move v6, v2

    move/from16 v11, v18

    move-wide/from16 v4, v25

    if-nez v8, :cond_d

    invoke-static {v12, v3, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzm([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v8

    iget-wide v2, v9, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zzb:J

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide/from16 v17, v2

    move-wide v2, v4

    move-wide/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v5, v13, v7

    move/from16 v13, p4

    move v2, v6

    move v0, v8

    goto :goto_d

    :pswitch_b
    move v6, v2

    move/from16 v11, v18

    move-wide/from16 v4, v25

    if-ne v8, v0, :cond_d

    invoke-static {v12, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzb([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v14, v4, v5, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzp(Ljava/lang/Object;JF)V

    :goto_9
    add-int/lit8 v0, v3, 0x4

    goto :goto_c

    :cond_d
    move v12, v6

    :goto_a
    move/from16 p3, v24

    :goto_b
    const/4 v2, 0x1

    goto :goto_11

    :pswitch_c
    move v6, v2

    move/from16 v11, v18

    move-wide/from16 v4, v25

    const/4 v2, 0x1

    if-ne v8, v2, :cond_e

    invoke-static {v12, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzq([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v14, v4, v5, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzo(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v3, 0x8

    :goto_c
    or-int v5, v13, v7

    move/from16 v13, p4

    move v2, v6

    :goto_d
    move v1, v11

    move/from16 v3, v24

    :goto_e
    move/from16 v6, v27

    const/4 v8, -0x1

    :goto_f
    move/from16 v11, p5

    goto/16 :goto_0

    :cond_e
    :goto_10
    move v12, v6

    move/from16 p3, v24

    :goto_11
    move/from16 v8, p3

    move/from16 v7, p5

    move/from16 v25, v2

    move-object/from16 v32, v10

    move/from16 v22, v11

    move/from16 v26, v12

    move/from16 v18, v13

    const/16 v21, -0x1

    goto/16 :goto_15

    :cond_f
    move v12, v2

    move-wide/from16 v30, v13

    move/from16 v13, v18

    move/from16 p3, v24

    const/4 v2, 0x1

    move-object/from16 v14, p1

    const/16 v0, 0x1b

    if-ne v11, v0, :cond_13

    if-ne v8, v4, :cond_12

    move-wide/from16 v0, v30

    invoke-virtual {v10, v14, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;

    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;->zzc()Z

    move-result v4

    if-nez v4, :cond_11

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_10

    const/16 v4, 0xa

    goto :goto_12

    :cond_10
    add-int/2addr v4, v4

    :goto_12
    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;->zzd(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;

    move-result-object v2

    invoke-virtual {v10, v14, v0, v1, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_11
    move-object v7, v2

    invoke-direct {v15, v12}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzF(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object v0

    move/from16 v1, p3

    move-object/from16 v2, p2

    move/from16 v4, p4

    move/from16 v18, v5

    move-object v5, v7

    move/from16 v27, v6

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;I[BIILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    move/from16 v3, p3

    move/from16 v11, p5

    move v2, v12

    move v1, v13

    move/from16 v5, v18

    move/from16 v6, v27

    const/4 v8, -0x1

    move-object/from16 v12, p2

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_12
    move/from16 v18, v5

    move/from16 v27, v6

    move/from16 v25, v2

    move v15, v3

    move-object/from16 v32, v10

    move/from16 v26, v12

    move/from16 v22, v13

    const/16 v21, -0x1

    goto/16 :goto_14

    :cond_13
    move/from16 v18, v5

    move/from16 v27, v6

    move-wide/from16 v23, v30

    const/16 v0, 0x31

    if-gt v11, v0, :cond_15

    int-to-long v6, v1

    move-object/from16 v0, p0

    move/from16 v25, v2

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v5, v3

    move/from16 v4, p4

    move v15, v5

    move/from16 v5, p3

    move-wide/from16 v28, v6

    move v6, v13

    move v7, v8

    const/16 v21, -0x1

    move v8, v12

    move-object/from16 v32, v10

    move-wide/from16 v9, v28

    move/from16 v26, v12

    move/from16 v22, v13

    move-wide/from16 v12, v23

    move-object/from16 v14, p6

    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzw(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    if-eq v0, v15, :cond_14

    :goto_13
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v3, p3

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v5, v18

    move/from16 v8, v21

    move/from16 v1, v22

    move/from16 v2, v26

    move/from16 v6, v27

    move-object/from16 v10, v32

    goto/16 :goto_0

    :cond_14
    move/from16 v8, p3

    move/from16 v7, p5

    move v3, v0

    goto :goto_15

    :cond_15
    move/from16 v25, v2

    move v15, v3

    move-object/from16 v32, v10

    move/from16 v26, v12

    move/from16 v22, v13

    const/16 v21, -0x1

    const/16 v0, 0x32

    if-ne v11, v0, :cond_17

    if-ne v8, v4, :cond_16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v26

    move-wide/from16 v6, v23

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzt(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    if-eq v0, v15, :cond_14

    goto :goto_13

    :cond_16
    :goto_14
    move/from16 v8, p3

    move/from16 v7, p5

    move v3, v15

    goto :goto_15

    :cond_17
    move-object/from16 v0, p0

    move v9, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, p3

    move/from16 v6, v22

    move v7, v8

    move v8, v9

    move v9, v11

    move-wide/from16 v10, v23

    move/from16 v12, v26

    move-object/from16 v13, p6

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzu(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    if-eq v0, v15, :cond_14

    goto :goto_13

    :goto_15
    if-ne v8, v7, :cond_18

    if-eqz v7, :cond_18

    move-object/from16 v9, p0

    move-object/from16 v12, p1

    move v6, v3

    move/from16 v5, v18

    goto/16 :goto_1d

    :cond_18
    move-object/from16 v9, p0

    iget-boolean v0, v9, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzh:Z

    if-eqz v0, :cond_1f

    move-object/from16 v10, p6

    iget-object v0, v10, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;

    if-eq v0, v1, :cond_1e

    iget-object v1, v9, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzg:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    move/from16 v11, v22

    invoke-virtual {v0, v1, v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbug;

    move-result-object v0

    if-nez v0, :cond_19

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;

    move-result-object v4

    move v0, v8

    move-object/from16 v1, p2

    move v2, v3

    move/from16 v3, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzi(I[BIILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    goto/16 :goto_1c

    :cond_19
    move-object/from16 v12, p1

    move-object v1, v12

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbue;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbue;->zzi()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;

    iget-object v1, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbue;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;

    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbug;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuf;

    iget-object v2, v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuf;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;->zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;

    if-eq v2, v4, :cond_1d

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    move-object/from16 v13, p2

    goto/16 :goto_19

    :pswitch_d
    move-object/from16 v13, p2

    invoke-static {v13, v3, v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzm([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v3

    iget-wide v4, v10, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zzb:J

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzG(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    goto/16 :goto_19

    :pswitch_e
    move-object/from16 v13, p2

    invoke-static {v13, v3, v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzj([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v3

    iget v2, v10, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zza:I

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzF(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    goto/16 :goto_19

    :pswitch_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shouldn\'t reach here."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_10
    move-object/from16 v13, p2

    invoke-static {v13, v3, v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zza([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v3

    iget-object v2, v10, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zzc:Ljava/lang/Object;

    goto/16 :goto_1a

    :pswitch_11
    move-object/from16 v13, p2

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwe;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwe;

    move-result-object v2

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbug;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwe;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object v2

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbug;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuf;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzf(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1a

    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;->zze()Ljava/lang/Object;

    move-result-object v4

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbug;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuf;

    invoke-virtual {v1, v0, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzj(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;Ljava/lang/Object;)V

    :cond_1a
    move-object v0, v4

    move-object v1, v2

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;[BIILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    goto/16 :goto_1c

    :pswitch_12
    move-object/from16 v13, p2

    shl-int/lit8 v2, v11, 0x3

    or-int/lit8 v5, v2, 0x4

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwe;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwe;

    move-result-object v2

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbug;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwe;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object v2

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbug;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuf;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzf(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1b

    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;->zze()Ljava/lang/Object;

    move-result-object v4

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbug;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuf;

    invoke-virtual {v1, v0, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzj(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;Ljava/lang/Object;)V

    :cond_1b
    move-object v0, v4

    move-object v1, v2

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;[BIIILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    goto/16 :goto_1c

    :pswitch_13
    move-object/from16 v13, p2

    invoke-static {v13, v3, v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzg([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v3

    iget-object v2, v10, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zzc:Ljava/lang/Object;

    goto/16 :goto_1a

    :pswitch_14
    move-object/from16 v13, p2

    invoke-static {v13, v3, v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzm([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v3

    iget-wide v4, v10, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zzb:J

    cmp-long v2, v4, v19

    if-eqz v2, :cond_1c

    goto :goto_16

    :cond_1c
    move/from16 v25, v16

    :goto_16
    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    goto :goto_19

    :pswitch_15
    move-object/from16 v13, p2

    invoke-static {v13, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzb([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    goto :goto_17

    :pswitch_16
    move-object/from16 v13, p2

    invoke-static {v13, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzq([BI)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    goto :goto_18

    :pswitch_17
    move-object/from16 v13, p2

    invoke-static {v13, v3, v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzj([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v3

    iget v2, v10, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zza:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    goto :goto_19

    :pswitch_18
    move-object/from16 v13, p2

    invoke-static {v13, v3, v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzm([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v3

    iget-wide v4, v10, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zzb:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    goto :goto_19

    :pswitch_19
    move-object/from16 v13, p2

    invoke-static {v13, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzb([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    :goto_17
    add-int/lit8 v3, v3, 0x4

    goto :goto_19

    :pswitch_1a
    move-object/from16 v13, p2

    invoke-static {v13, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzq([BI)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    :goto_18
    add-int/lit8 v3, v3, 0x8

    :goto_19
    move-object/from16 v2, v17

    :goto_1a
    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbug;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuf;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzj(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;Ljava/lang/Object;)V

    move v0, v3

    goto :goto_1c

    :cond_1d
    move-object/from16 v13, p2

    invoke-static {v13, v3, v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzj([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    throw v17

    :cond_1e
    move-object/from16 v12, p1

    move-object/from16 v13, p2

    goto :goto_1b

    :cond_1f
    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v10, p6

    :goto_1b
    move/from16 v11, v22

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;

    move-result-object v4

    move v0, v8

    move-object/from16 v1, p2

    move v2, v3

    move/from16 v3, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzi(I[BIILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v0

    :goto_1c
    move v3, v8

    move-object v15, v9

    move-object v9, v10

    move v1, v11

    move-object v14, v12

    move-object v12, v13

    move/from16 v5, v18

    move/from16 v8, v21

    move/from16 v2, v26

    move/from16 v6, v27

    move-object/from16 v10, v32

    move/from16 v13, p4

    move v11, v7

    goto/16 :goto_0

    :cond_20
    move/from16 v18, v5

    move/from16 v27, v6

    move-object/from16 v32, v10

    move v7, v11

    move-object v12, v14

    move-object v9, v15

    move v6, v0

    move v8, v3

    :goto_1d
    move/from16 v0, v27

    const v1, 0xfffff

    if-eq v0, v1, :cond_21

    int-to-long v0, v0

    move-object/from16 v2, v32

    invoke-virtual {v2, v12, v0, v1, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_21
    iget v0, v9, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzl:I

    move v10, v0

    move-object/from16 v3, v17

    :goto_1e
    iget v0, v9, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzm:I

    if-ge v10, v0, :cond_22

    iget-object v0, v9, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzk:[I

    aget v2, v0, v10

    iget-object v4, v9, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzo:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzG(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v10, v10, 0x1

    goto :goto_1e

    :cond_22
    if-eqz v3, :cond_23

    iget-object v0, v9, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzo:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;

    invoke-virtual {v0, v12, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;->zzn(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    if-nez v7, :cond_25

    move/from16 v0, p4

    if-ne v6, v0, :cond_24

    goto :goto_1f

    :cond_24
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zzg()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;

    move-result-object v0

    throw v0

    :cond_25
    move/from16 v0, p4

    if-gt v6, v0, :cond_26

    if-ne v8, v7, :cond_26

    :goto_1f
    return v6

    :cond_26
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zzg()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;

    move-result-object v0

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
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_17
        :pswitch_f
        :pswitch_15
        :pswitch_16
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method public final zze()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzg:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzS()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object p0

    return-object p0
.end method

.method public final zzf(Ljava/lang/Object;)V
    .locals 7

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzaa(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzae(I)V

    iput v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsd;->zzb:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzac()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    array-length v0, v0

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzC(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzB(I)I

    move-result v2

    int-to-long v3, v3

    const/16 v5, 0x9

    if-eq v2, v5, :cond_2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    move-object v6, v5

    check-cast v6, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvo;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvo;->zzc()V

    invoke-virtual {v2, p1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;

    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;->zzb(Ljava/lang/Object;J)V

    goto :goto_1

    :cond_2
    :pswitch_2
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzF(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;->zzf(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzo:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;->zzm(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzh:Z

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzp:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;->zzf(Ljava/lang/Object;)V

    :cond_5
    return-void

    nop

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

.method public final zzg(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzL(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzC(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v2, v1

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v3, v3, v0

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzB(I)I

    move-result v1

    int-to-long v4, v2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzN(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_1
    invoke-direct {p0, p2, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzQ(Ljava/lang/Object;II)V

    goto/16 :goto_1

    :pswitch_2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzN(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_3
    invoke-direct {p0, p2, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzQ(Ljava/lang/Object;II)V

    goto/16 :goto_1

    :pswitch_4
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzr:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvp;

    invoke-static {v1, p1, p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzaa(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvp;Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;

    invoke-virtual {v1, p1, p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;->zzc(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    :pswitch_6
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzM(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_7
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzr(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzP(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_8
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzq(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzP(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_9
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzr(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzP(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_a
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzq(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzP(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_b
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzq(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzP(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_c
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzq(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzP(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_d
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzP(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_e
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzM(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_f
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzP(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_10
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzw(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzm(Ljava/lang/Object;JZ)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzP(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_11
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzq(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzP(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_12
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzr(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzP(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_13
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzq(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzP(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_14
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzr(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzP(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_15
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzr(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzP(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_16
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzb(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzp(Ljava/lang/Object;JF)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzP(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_17
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zza(Ljava/lang/Object;J)D

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzo(Ljava/lang/Object;JD)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzP(Ljava/lang/Object;I)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzo:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzF(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzh:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzp:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzE(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
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

.method public final zzh(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v15, p1

    move-object/from16 v0, p2

    move-object/from16 v6, p3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzL(Ljava/lang/Object;)V

    iget-object v14, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzo:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;

    iget-object v5, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzp:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;

    const/16 v16, 0x0

    move-object/from16 v4, v16

    move-object v8, v4

    :goto_0
    :try_start_0
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzc()I

    move-result v2

    invoke-direct {v7, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzx(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-gez v1, :cond_8

    const v1, 0x7fffffff

    if-ne v2, v1, :cond_1

    iget v0, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzl:I

    :goto_1
    iget v1, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzm:I

    if-ge v0, v1, :cond_0

    iget-object v1, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzk:[I

    aget v3, v1, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v5, v14

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzG(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    if-eqz v4, :cond_15

    invoke-virtual {v14, v15, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;->zzn(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    :try_start_1
    iget-boolean v1, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzh:Z

    if-nez v1, :cond_2

    move-object/from16 v11, v16

    goto :goto_2

    :cond_2
    iget-object v1, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzg:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    invoke-virtual {v5, v6, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;I)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v11, v1

    :goto_2
    if-eqz v11, :cond_5

    if-nez v8, :cond_3

    :try_start_2
    invoke-virtual {v5, v15}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    goto :goto_3

    :cond_3
    move-object v1, v8

    :goto_3
    move-object v8, v5

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v12, p3

    move-object v13, v1

    move-object v3, v14

    move-object v14, v4

    move-object v2, v15

    move-object v15, v3

    :try_start_3
    invoke-virtual/range {v8 .. v15}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;->zze(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;)Ljava/lang/Object;

    move-object v8, v1

    :cond_4
    move-object v15, v2

    move-object v14, v3

    goto :goto_0

    :cond_5
    move-object v3, v14

    move-object v2, v15

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;->zzs(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;)Z

    if-nez v4, :cond_6

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v4, v1

    :cond_6
    :try_start_4
    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;->zzr(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;)Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v1, :cond_4

    iget v0, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzl:I

    :goto_4
    iget v1, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzm:I

    if-ge v0, v1, :cond_7

    iget-object v1, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzk:[I

    aget v5, v1, v0

    move-object/from16 v1, p0

    move-object v9, v2

    move-object/from16 v2, p1

    move-object v10, v3

    move v3, v5

    move-object v5, v10

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzG(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    move-object v2, v9

    move-object v3, v10

    goto :goto_4

    :cond_7
    move-object v9, v2

    move-object v10, v3

    if-eqz v4, :cond_15

    invoke-virtual {v10, v9, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;->zzn(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v9, v2

    move-object v10, v3

    goto/16 :goto_13

    :catchall_1
    move-exception v0

    move-object v9, v2

    move-object v10, v3

    goto/16 :goto_11

    :catchall_2
    move-exception v0

    move-object v10, v14

    move-object v9, v15

    goto/16 :goto_11

    :cond_8
    move-object v10, v14

    move-object v9, v15

    :try_start_5
    invoke-direct {v7, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzC(I)I

    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :try_start_6
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzB(I)I

    move-result v11
    :try_end_6
    .catch Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbus; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    const v12, 0xfffff

    packed-switch v11, :pswitch_data_0

    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    if-nez v13, :cond_10

    :try_start_7
    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_7
    .catch Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbus; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto/16 :goto_c

    :pswitch_0
    :try_start_8
    invoke-direct {v7, v9, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzJ(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    invoke-direct {v7, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzF(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object v11

    invoke-interface {v0, v3, v11, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzv(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)V

    invoke-direct {v7, v9, v2, v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzS(Ljava/lang/Object;IILjava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_1
    and-int/2addr v3, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzn()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    int-to-long v12, v3

    invoke-static {v9, v12, v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v7, v9, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzQ(Ljava/lang/Object;II)V

    goto/16 :goto_6

    :pswitch_2
    and-int/2addr v3, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzi()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    int-to-long v12, v3

    invoke-static {v9, v12, v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v7, v9, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzQ(Ljava/lang/Object;II)V

    goto/16 :goto_6

    :pswitch_3
    and-int/2addr v3, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzm()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    int-to-long v12, v3

    invoke-static {v9, v12, v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v7, v9, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzQ(Ljava/lang/Object;II)V

    goto :goto_6

    :pswitch_4
    and-int/2addr v3, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzh()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    int-to-long v12, v3

    invoke-static {v9, v12, v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v7, v9, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzQ(Ljava/lang/Object;II)V

    goto :goto_6

    :pswitch_5
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zze()I

    move-result v11

    invoke-direct {v7, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzE(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbum;

    move-result-object v13

    if-eqz v13, :cond_a

    invoke-interface {v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbum;->zza(I)Z

    move-result v13

    if-eqz v13, :cond_9

    goto :goto_5

    :cond_9
    invoke-static {v9, v2, v11, v4, v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzD(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;)Ljava/lang/Object;

    move-result-object v4

    move-object v15, v9

    goto/16 :goto_b

    :cond_a
    :goto_5
    and-int/2addr v3, v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    int-to-long v12, v3

    invoke-static {v9, v12, v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v7, v9, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzQ(Ljava/lang/Object;II)V

    goto :goto_6

    :pswitch_6
    and-int/2addr v3, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzj()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    int-to-long v12, v3

    invoke-static {v9, v12, v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v7, v9, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzQ(Ljava/lang/Object;II)V

    goto :goto_6

    :pswitch_7
    and-int/2addr v3, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzp()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    move-result-object v11

    int-to-long v12, v3

    invoke-static {v9, v12, v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v7, v9, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzQ(Ljava/lang/Object;II)V

    goto :goto_6

    :pswitch_8
    invoke-direct {v7, v9, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzJ(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    invoke-direct {v7, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzF(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object v11

    invoke-interface {v0, v3, v11, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzw(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)V

    invoke-direct {v7, v9, v2, v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzS(Ljava/lang/Object;IILjava/lang/Object;)V

    goto :goto_6

    :pswitch_9
    invoke-direct {v7, v9, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzO(Ljava/lang/Object;ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;)V

    invoke-direct {v7, v9, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzQ(Ljava/lang/Object;II)V

    :goto_6
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    goto/16 :goto_9

    :pswitch_a
    and-int/2addr v3, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzQ()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    int-to-long v12, v3

    invoke-static {v9, v12, v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v7, v9, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzQ(Ljava/lang/Object;II)V

    goto :goto_6

    :pswitch_b
    and-int/2addr v3, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzf()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    int-to-long v12, v3

    invoke-static {v9, v12, v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v7, v9, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzQ(Ljava/lang/Object;II)V

    goto :goto_6

    :pswitch_c
    and-int/2addr v3, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzk()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    int-to-long v12, v3

    invoke-static {v9, v12, v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v7, v9, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzQ(Ljava/lang/Object;II)V

    goto :goto_6

    :pswitch_d
    and-int/2addr v3, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzg()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    int-to-long v12, v3

    invoke-static {v9, v12, v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v7, v9, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzQ(Ljava/lang/Object;II)V

    goto :goto_6

    :pswitch_e
    and-int/2addr v3, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzo()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    int-to-long v12, v3

    invoke-static {v9, v12, v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v7, v9, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzQ(Ljava/lang/Object;II)V

    goto :goto_6

    :pswitch_f
    and-int/2addr v3, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzl()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    int-to-long v12, v3

    invoke-static {v9, v12, v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v7, v9, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzQ(Ljava/lang/Object;II)V

    goto :goto_6

    :pswitch_10
    and-int/2addr v3, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzb()F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    int-to-long v12, v3

    invoke-static {v9, v12, v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v7, v9, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzQ(Ljava/lang/Object;II)V

    goto :goto_6

    :pswitch_11
    and-int/2addr v3, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zza()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    int-to-long v12, v3

    invoke-static {v9, v12, v13, v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v7, v9, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzQ(Ljava/lang/Object;II)V

    goto/16 :goto_6

    :pswitch_12
    invoke-direct {v7, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzH(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v7, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzC(I)I

    move-result v1

    and-int/2addr v1, v12

    int-to-long v11, v1

    invoke-static {v9, v11, v12}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_b

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvo;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvo;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvo;

    move-result-object v1

    invoke-static {v9, v11, v12, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    :cond_b
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvp;->zzb(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvo;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvo;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvo;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvp;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v9, v11, v12, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v1, v3

    :cond_c
    :goto_7
    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvo;

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvn;->zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvm;

    move-result-object v2

    invoke-interface {v0, v1, v2, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzH(Ljava/util/Map;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvm;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)V

    goto/16 :goto_6

    :pswitch_13
    and-int v2, v3, v12

    invoke-direct {v7, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzF(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object v1

    iget-object v3, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;

    int-to-long v11, v2

    invoke-virtual {v3, v9, v11, v12}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2, v1, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzE(Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)V

    goto/16 :goto_6

    :pswitch_14
    iget-object v1, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzM(Ljava/util/List;)V

    goto/16 :goto_6

    :pswitch_15
    iget-object v1, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzL(Ljava/util/List;)V

    goto/16 :goto_6

    :pswitch_16
    iget-object v1, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzK(Ljava/util/List;)V

    goto/16 :goto_6

    :pswitch_17
    iget-object v1, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzJ(Ljava/util/List;)V

    goto/16 :goto_6

    :pswitch_18
    iget-object v11, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;

    and-int/2addr v3, v12

    int-to-long v12, v3

    invoke-virtual {v11, v9, v12, v13}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzA(Ljava/util/List;)V

    invoke-direct {v7, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzE(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbum;

    move-result-object v11
    :try_end_8
    .catch Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbus; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move-object/from16 v1, p1

    move-object v13, v4

    move-object v4, v11

    move-object v11, v5

    move-object v5, v13

    move-object v14, v6

    move-object v6, v10

    :try_start_9
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzC(Ljava/lang/Object;ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbum;Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_f

    :pswitch_19
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    iget-object v1, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzO(Ljava/util/List;)V

    goto/16 :goto_9

    :pswitch_1a
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    iget-object v1, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzx(Ljava/util/List;)V

    goto/16 :goto_9

    :pswitch_1b
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    iget-object v1, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzB(Ljava/util/List;)V

    goto/16 :goto_9

    :pswitch_1c
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    iget-object v1, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzC(Ljava/util/List;)V

    goto/16 :goto_9

    :pswitch_1d
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    iget-object v1, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzF(Ljava/util/List;)V

    goto/16 :goto_9

    :pswitch_1e
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    iget-object v1, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzP(Ljava/util/List;)V

    goto/16 :goto_9

    :pswitch_1f
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    iget-object v1, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzG(Ljava/util/List;)V

    goto/16 :goto_9

    :pswitch_20
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    iget-object v1, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzD(Ljava/util/List;)V

    goto/16 :goto_9

    :pswitch_21
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    iget-object v1, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzz(Ljava/util/List;)V

    goto/16 :goto_9

    :pswitch_22
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    iget-object v1, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzM(Ljava/util/List;)V

    goto/16 :goto_9

    :pswitch_23
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    iget-object v1, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzL(Ljava/util/List;)V

    goto/16 :goto_9

    :pswitch_24
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    iget-object v1, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzK(Ljava/util/List;)V

    goto/16 :goto_9

    :pswitch_25
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    iget-object v1, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzJ(Ljava/util/List;)V

    goto/16 :goto_9

    :pswitch_26
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    iget-object v4, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;

    and-int/2addr v3, v12

    int-to-long v5, v3

    invoke-virtual {v4, v9, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzA(Ljava/util/List;)V

    invoke-direct {v7, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzE(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbum;

    move-result-object v4

    move-object/from16 v1, p1

    move-object v5, v13

    move-object v6, v10

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzC(Ljava/lang/Object;ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbum;Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_f

    :pswitch_27
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    iget-object v1, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzO(Ljava/util/List;)V

    goto/16 :goto_9

    :pswitch_28
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    iget-object v1, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzy(Ljava/util/List;)V

    goto/16 :goto_9

    :pswitch_29
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    invoke-direct {v7, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzF(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object v1

    and-int v2, v3, v12

    iget-object v3, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;

    int-to-long v4, v2

    invoke-virtual {v3, v9, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2, v1, v14}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzI(Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)V

    goto/16 :goto_9

    :pswitch_2a
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzW(I)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzN(Ljava/util/List;Z)V

    goto/16 :goto_9

    :cond_d
    iget-object v1, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzN(Ljava/util/List;Z)V

    goto/16 :goto_9

    :pswitch_2b
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    iget-object v1, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzx(Ljava/util/List;)V

    goto/16 :goto_9

    :pswitch_2c
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    iget-object v1, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzB(Ljava/util/List;)V

    goto/16 :goto_9

    :pswitch_2d
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    iget-object v1, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzC(Ljava/util/List;)V

    goto/16 :goto_9

    :pswitch_2e
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    iget-object v1, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzF(Ljava/util/List;)V

    goto/16 :goto_9

    :pswitch_2f
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    iget-object v1, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzP(Ljava/util/List;)V

    goto/16 :goto_9

    :pswitch_30
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    iget-object v1, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzG(Ljava/util/List;)V

    goto/16 :goto_9

    :pswitch_31
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    iget-object v1, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzD(Ljava/util/List;)V

    goto/16 :goto_9

    :pswitch_32
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    iget-object v1, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;

    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvh;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzz(Ljava/util/List;)V

    goto/16 :goto_9

    :pswitch_33
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    invoke-direct {v7, v9, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzI(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    invoke-direct {v7, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzF(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object v3

    invoke-interface {v0, v2, v3, v14}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzv(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)V

    invoke-direct {v7, v9, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzR(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_34
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    and-int v2, v3, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzn()J

    move-result-wide v3

    int-to-long v5, v2

    invoke-static {v9, v5, v6, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzr(Ljava/lang/Object;JJ)V

    invoke-direct {v7, v9, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzP(Ljava/lang/Object;I)V

    goto/16 :goto_9

    :pswitch_35
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    and-int v2, v3, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzi()I

    move-result v3

    int-to-long v4, v2

    invoke-static {v9, v4, v5, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzq(Ljava/lang/Object;JI)V

    invoke-direct {v7, v9, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzP(Ljava/lang/Object;I)V

    goto/16 :goto_9

    :pswitch_36
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    and-int v2, v3, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzm()J

    move-result-wide v3

    int-to-long v5, v2

    invoke-static {v9, v5, v6, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzr(Ljava/lang/Object;JJ)V

    invoke-direct {v7, v9, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzP(Ljava/lang/Object;I)V

    goto/16 :goto_9

    :pswitch_37
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    and-int v2, v3, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzh()I

    move-result v3

    int-to-long v4, v2

    invoke-static {v9, v4, v5, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzq(Ljava/lang/Object;JI)V

    invoke-direct {v7, v9, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzP(Ljava/lang/Object;I)V

    goto/16 :goto_9

    :pswitch_38
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zze()I

    move-result v4

    invoke-direct {v7, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzE(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbum;

    move-result-object v5

    if-eqz v5, :cond_f

    invoke-interface {v5, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbum;->zza(I)Z

    move-result v5

    if-eqz v5, :cond_e

    goto :goto_8

    :cond_e
    invoke-static {v9, v2, v4, v13, v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzD(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_f

    :cond_f
    :goto_8
    and-int v2, v3, v12

    int-to-long v2, v2

    invoke-static {v9, v2, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzq(Ljava/lang/Object;JI)V

    invoke-direct {v7, v9, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzP(Ljava/lang/Object;I)V

    goto/16 :goto_9

    :pswitch_39
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    and-int v2, v3, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzj()I

    move-result v3

    int-to-long v4, v2

    invoke-static {v9, v4, v5, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzq(Ljava/lang/Object;JI)V

    invoke-direct {v7, v9, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzP(Ljava/lang/Object;I)V

    goto/16 :goto_9

    :pswitch_3a
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    and-int v2, v3, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzp()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    move-result-object v3

    int-to-long v4, v2

    invoke-static {v9, v4, v5, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v7, v9, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzP(Ljava/lang/Object;I)V

    goto/16 :goto_9

    :pswitch_3b
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    invoke-direct {v7, v9, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzI(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    invoke-direct {v7, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzF(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object v3

    invoke-interface {v0, v2, v3, v14}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzw(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)V

    invoke-direct {v7, v9, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzR(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_3c
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    invoke-direct {v7, v9, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzO(Ljava/lang/Object;ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;)V

    invoke-direct {v7, v9, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzP(Ljava/lang/Object;I)V

    goto/16 :goto_9

    :catchall_3
    move-exception v0

    goto/16 :goto_12

    :pswitch_3d
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    and-int v2, v3, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzQ()Z

    move-result v3

    int-to-long v4, v2

    invoke-static {v9, v4, v5, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzm(Ljava/lang/Object;JZ)V

    invoke-direct {v7, v9, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzP(Ljava/lang/Object;I)V

    goto/16 :goto_9

    :pswitch_3e
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    and-int v2, v3, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzf()I

    move-result v3

    int-to-long v4, v2

    invoke-static {v9, v4, v5, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzq(Ljava/lang/Object;JI)V

    invoke-direct {v7, v9, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzP(Ljava/lang/Object;I)V

    goto/16 :goto_9

    :pswitch_3f
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    and-int v2, v3, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzk()J

    move-result-wide v3

    int-to-long v5, v2

    invoke-static {v9, v5, v6, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzr(Ljava/lang/Object;JJ)V

    invoke-direct {v7, v9, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzP(Ljava/lang/Object;I)V

    goto :goto_9

    :pswitch_40
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    and-int v2, v3, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzg()I

    move-result v3

    int-to-long v4, v2

    invoke-static {v9, v4, v5, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzq(Ljava/lang/Object;JI)V

    invoke-direct {v7, v9, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzP(Ljava/lang/Object;I)V

    goto :goto_9

    :pswitch_41
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    and-int v2, v3, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzo()J

    move-result-wide v3

    int-to-long v5, v2

    invoke-static {v9, v5, v6, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzr(Ljava/lang/Object;JJ)V

    invoke-direct {v7, v9, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzP(Ljava/lang/Object;I)V

    goto :goto_9

    :pswitch_42
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    and-int v2, v3, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzl()J

    move-result-wide v3

    int-to-long v5, v2

    invoke-static {v9, v5, v6, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzr(Ljava/lang/Object;JJ)V

    invoke-direct {v7, v9, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzP(Ljava/lang/Object;I)V

    goto :goto_9

    :pswitch_43
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    and-int v2, v3, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzb()F

    move-result v3

    int-to-long v4, v2

    invoke-static {v9, v4, v5, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzp(Ljava/lang/Object;JF)V

    invoke-direct {v7, v9, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzP(Ljava/lang/Object;I)V

    goto :goto_9

    :pswitch_44
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    and-int v2, v3, v12

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zza()D

    move-result-wide v3

    int-to-long v5, v2

    invoke-static {v9, v5, v6, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzo(Ljava/lang/Object;JD)V

    invoke-direct {v7, v9, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzP(Ljava/lang/Object;I)V
    :try_end_9
    .catch Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbus; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :goto_9
    move-object v15, v9

    move-object v5, v11

    move-object v4, v13

    :goto_a
    move-object v6, v14

    :goto_b
    move-object v14, v10

    goto/16 :goto_0

    :goto_c
    move-object v4, v1

    goto :goto_d

    :cond_10
    move-object v4, v13

    :goto_d
    :try_start_a
    invoke-virtual {v10, v4, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;->zzr(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;)Z

    move-result v1
    :try_end_a
    .catch Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbus; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-nez v1, :cond_12

    iget v0, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzl:I

    :goto_e
    iget v1, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzm:I

    if-ge v0, v1, :cond_11

    iget-object v1, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzk:[I

    aget v3, v1, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v5, v10

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzG(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_11
    if-eqz v4, :cond_15

    invoke-virtual {v10, v9, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;->zzn(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_12
    :goto_f
    move-object v15, v9

    move-object v5, v11

    goto :goto_a

    :catchall_4
    move-exception v0

    goto :goto_13

    :catch_0
    move-object v13, v4

    move-object v11, v5

    move-object v14, v6

    :catch_1
    move-object v4, v13

    :catch_2
    :try_start_b
    invoke-virtual {v10, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;->zzs(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;)Z

    if-nez v4, :cond_13

    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    :cond_13
    invoke-virtual {v10, v4, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;->zzr(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;)Z

    move-result v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    if-nez v1, :cond_12

    iget v0, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzl:I

    :goto_10
    iget v1, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzm:I

    if-ge v0, v1, :cond_14

    iget-object v1, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzk:[I

    aget v3, v1, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v5, v10

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzG(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_14
    if-eqz v4, :cond_15

    invoke-virtual {v10, v9, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;->zzn(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    return-void

    :catchall_5
    move-exception v0

    :goto_11
    move-object v13, v4

    goto :goto_12

    :catchall_6
    move-exception v0

    move-object v13, v4

    move-object v10, v14

    move-object v9, v15

    :goto_12
    move-object v4, v13

    :goto_13
    iget v1, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzl:I

    move v8, v1

    :goto_14
    iget v1, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzm:I

    if-ge v8, v1, :cond_16

    iget-object v1, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzk:[I

    aget v3, v1, v8

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v5, v10

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzG(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v8, v8, 0x1

    goto :goto_14

    :cond_16
    if-eqz v4, :cond_17

    invoke-virtual {v10, v9, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;->zzn(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_17
    throw v0

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

.method public final zzi(Ljava/lang/Object;[BIILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzj:Z

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzv(Ljava/lang/Object;[BIILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    return-void

    :cond_0
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    return-void
.end method

.method public final zzj(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzj:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzh:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzp:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;

    move-result-object v0

    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;

    invoke-virtual {v2}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzg()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    move-object v0, v1

    move-object v2, v0

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    array-length v3, v3

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_4

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzC(I)I

    move-result v6

    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v7, v7, v5

    :goto_2
    if-eqz v2, :cond_2

    iget-object v8, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzp:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;

    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;->zza(Ljava/util/Map$Entry;)I

    const/16 v8, 0x2b

    if-lt v7, v8, :cond_2

    iget-object v8, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzp:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;

    invoke-virtual {v8, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;->zzi(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_1
    move-object v2, v1

    goto :goto_2

    :cond_2
    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzB(I)I

    move-result v8

    const/4 v9, 0x1

    const v10, 0xfffff

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-direct {p0, p1, v7, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzF(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object v8

    invoke-interface {p2, v7, v6, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzq(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;)V

    goto/16 :goto_3

    :pswitch_1
    invoke-direct {p0, p1, v7, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzD(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzE(IJ)V

    goto/16 :goto_3

    :pswitch_2
    invoke-direct {p0, p1, v7, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzs(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzC(II)V

    goto/16 :goto_3

    :pswitch_3
    invoke-direct {p0, p1, v7, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzD(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzA(IJ)V

    goto/16 :goto_3

    :pswitch_4
    invoke-direct {p0, p1, v7, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzs(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzy(II)V

    goto/16 :goto_3

    :pswitch_5
    invoke-direct {p0, p1, v7, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzs(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzi(II)V

    goto/16 :goto_3

    :pswitch_6
    invoke-direct {p0, p1, v7, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzs(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzJ(II)V

    goto/16 :goto_3

    :pswitch_7
    invoke-direct {p0, p1, v7, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    invoke-interface {p2, v7, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzd(ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;)V

    goto/16 :goto_3

    :pswitch_8
    invoke-direct {p0, p1, v7, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzF(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object v8

    invoke-interface {p2, v7, v6, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzw(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;)V

    goto/16 :goto_3

    :pswitch_9
    invoke-direct {p0, p1, v7, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v7, v6, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzae(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;)V

    goto/16 :goto_3

    :pswitch_a
    invoke-direct {p0, p1, v7, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzac(Ljava/lang/Object;J)Z

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzb(IZ)V

    goto/16 :goto_3

    :pswitch_b
    invoke-direct {p0, p1, v7, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzs(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzk(II)V

    goto/16 :goto_3

    :pswitch_c
    invoke-direct {p0, p1, v7, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzD(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzm(IJ)V

    goto/16 :goto_3

    :pswitch_d
    invoke-direct {p0, p1, v7, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzs(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzr(II)V

    goto/16 :goto_3

    :pswitch_e
    invoke-direct {p0, p1, v7, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzD(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzL(IJ)V

    goto/16 :goto_3

    :pswitch_f
    invoke-direct {p0, p1, v7, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzD(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzt(IJ)V

    goto/16 :goto_3

    :pswitch_10
    invoke-direct {p0, p1, v7, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzp(Ljava/lang/Object;J)F

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzo(IF)V

    goto/16 :goto_3

    :pswitch_11
    invoke-direct {p0, p1, v7, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzo(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzf(ID)V

    goto/16 :goto_3

    :pswitch_12
    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, p2, v7, v6, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzU(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;ILjava/lang/Object;I)V

    goto/16 :goto_3

    :pswitch_13
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzF(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object v8

    invoke-static {v7, v6, p2, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzO(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;)V

    goto/16 :goto_3

    :pswitch_14
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v10, v6

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzV(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Z)V

    goto/16 :goto_3

    :pswitch_15
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v10, v6

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzU(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Z)V

    goto/16 :goto_3

    :pswitch_16
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v10, v6

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzT(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Z)V

    goto/16 :goto_3

    :pswitch_17
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v10, v6

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzS(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Z)V

    goto/16 :goto_3

    :pswitch_18
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v10, v6

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzK(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Z)V

    goto/16 :goto_3

    :pswitch_19
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v10, v6

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzX(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Z)V

    goto/16 :goto_3

    :pswitch_1a
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v10, v6

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzH(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Z)V

    goto/16 :goto_3

    :pswitch_1b
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v10, v6

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzL(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Z)V

    goto/16 :goto_3

    :pswitch_1c
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v10, v6

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzM(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Z)V

    goto/16 :goto_3

    :pswitch_1d
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v10, v6

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzP(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Z)V

    goto/16 :goto_3

    :pswitch_1e
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v10, v6

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzY(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Z)V

    goto/16 :goto_3

    :pswitch_1f
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v10, v6

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzQ(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Z)V

    goto/16 :goto_3

    :pswitch_20
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v10, v6

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzN(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Z)V

    goto/16 :goto_3

    :pswitch_21
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v10, v6

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzJ(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Z)V

    goto/16 :goto_3

    :pswitch_22
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzV(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Z)V

    goto/16 :goto_3

    :pswitch_23
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzU(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Z)V

    goto/16 :goto_3

    :pswitch_24
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzT(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Z)V

    goto/16 :goto_3

    :pswitch_25
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzS(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Z)V

    goto/16 :goto_3

    :pswitch_26
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzK(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Z)V

    goto/16 :goto_3

    :pswitch_27
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzX(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Z)V

    goto/16 :goto_3

    :pswitch_28
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzI(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;)V

    goto/16 :goto_3

    :pswitch_29
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzF(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object v8

    invoke-static {v7, v6, p2, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzR(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;)V

    goto/16 :goto_3

    :pswitch_2a
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzW(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;)V

    goto/16 :goto_3

    :pswitch_2b
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzH(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Z)V

    goto/16 :goto_3

    :pswitch_2c
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzL(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Z)V

    goto/16 :goto_3

    :pswitch_2d
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzM(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Z)V

    goto/16 :goto_3

    :pswitch_2e
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzP(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Z)V

    goto/16 :goto_3

    :pswitch_2f
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzY(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Z)V

    goto/16 :goto_3

    :pswitch_30
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzQ(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Z)V

    goto/16 :goto_3

    :pswitch_31
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzN(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Z)V

    goto/16 :goto_3

    :pswitch_32
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzJ(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Z)V

    goto/16 :goto_3

    :pswitch_33
    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzF(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object v8

    invoke-interface {p2, v7, v6, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzq(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;)V

    goto/16 :goto_3

    :pswitch_34
    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzd(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzE(IJ)V

    goto/16 :goto_3

    :pswitch_35
    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzc(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzC(II)V

    goto/16 :goto_3

    :pswitch_36
    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzd(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzA(IJ)V

    goto/16 :goto_3

    :pswitch_37
    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzc(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzy(II)V

    goto/16 :goto_3

    :pswitch_38
    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzc(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzi(II)V

    goto/16 :goto_3

    :pswitch_39
    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzc(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzJ(II)V

    goto/16 :goto_3

    :pswitch_3a
    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    invoke-interface {p2, v7, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzd(ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;)V

    goto/16 :goto_3

    :pswitch_3b
    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzF(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object v8

    invoke-interface {p2, v7, v6, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzw(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;)V

    goto/16 :goto_3

    :pswitch_3c
    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v7, v6, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzae(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;)V

    goto/16 :goto_3

    :pswitch_3d
    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzw(Ljava/lang/Object;J)Z

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzb(IZ)V

    goto/16 :goto_3

    :pswitch_3e
    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzc(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzk(II)V

    goto :goto_3

    :pswitch_3f
    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzd(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzm(IJ)V

    goto :goto_3

    :pswitch_40
    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzc(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzr(II)V

    goto :goto_3

    :pswitch_41
    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzd(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzL(IJ)V

    goto :goto_3

    :pswitch_42
    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzd(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzt(IJ)V

    goto :goto_3

    :pswitch_43
    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzb(Ljava/lang/Object;J)F

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzo(IF)V

    goto :goto_3

    :pswitch_44
    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzX(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zza(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzf(ID)V

    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x3

    goto/16 :goto_1

    :cond_4
    :goto_4
    if-eqz v2, :cond_6

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzp:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;

    invoke-virtual {v3, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;->zzi(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_4

    :cond_5
    move-object v2, v1

    goto :goto_4

    :cond_6
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzo:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;->zzq(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;)V

    return-void

    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzT(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;)V

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

.method public final zzk(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzC(I)I

    move-result v3

    const v4, 0xfffff

    and-int v5, v3, v4

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzB(I)I

    move-result v3

    int-to-long v5, v5

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzz(I)I

    move-result v3

    and-int/2addr v3, v4

    int-to-long v3, v3

    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzc(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzc(Ljava/lang/Object;J)I

    move-result v3

    if-ne v7, v3, :cond_0

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzZ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_2

    :pswitch_1
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzZ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    :pswitch_2
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzZ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    if-nez v3, :cond_1

    goto/16 :goto_2

    :pswitch_3
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzV(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzZ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    :pswitch_4
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzV(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzd(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    goto/16 :goto_3

    :pswitch_5
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzV(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzc(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzc(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    :pswitch_6
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzV(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzd(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    goto/16 :goto_3

    :pswitch_7
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzV(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzc(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzc(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    :pswitch_8
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzV(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzc(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzc(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    :pswitch_9
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzV(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzc(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzc(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    :pswitch_a
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzV(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzZ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    :pswitch_b
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzV(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzZ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    :pswitch_c
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzV(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzZ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    :pswitch_d
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzV(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzw(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzw(Ljava/lang/Object;J)Z

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    :pswitch_e
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzV(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzc(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzc(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    :pswitch_f
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzV(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzd(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    goto/16 :goto_3

    :pswitch_10
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzV(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzc(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzc(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto :goto_3

    :pswitch_11
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzV(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzd(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    goto :goto_3

    :pswitch_12
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzV(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzd(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    goto :goto_3

    :pswitch_13
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzV(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzb(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzb(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto :goto_3

    :pswitch_14
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzV(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zza(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zza(Ljava/lang/Object;J)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    goto :goto_3

    :cond_0
    :goto_2
    return v1

    :cond_1
    :goto_3
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzo:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzo:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzh:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzp:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzp:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->equals(Ljava/lang/Object;)Z

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

.method public final zzl(Ljava/lang/Object;)Z
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const/4 v8, 0x0

    const v9, 0xfffff

    move v1, v8

    move v10, v1

    move v0, v9

    :goto_0
    iget v2, v6, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzl:I

    const/4 v3, 0x1

    if-ge v10, v2, :cond_c

    iget-object v2, v6, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzk:[I

    aget v11, v2, v10

    iget-object v2, v6, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    aget v12, v2, v11

    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzC(I)I

    move-result v13

    iget-object v2, v6, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzc:[I

    add-int/lit8 v4, v11, 0x2

    aget v2, v2, v4

    and-int v4, v2, v9

    ushr-int/lit8 v2, v2, 0x14

    shl-int v14, v3, v2

    if-eq v4, v0, :cond_1

    if-eq v4, v9, :cond_0

    int-to-long v0, v4

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzb:Lsun/misc/Unsafe;

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

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzY(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    return v8

    :cond_3
    :goto_2
    invoke-static {v13}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzB(I)I

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

    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvo;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzH(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvn;->zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvm;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvm;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxt;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxt;->zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxt;

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

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwe;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwe;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwe;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object v1

    :cond_6
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;->zzl(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v8

    :cond_7
    invoke-direct {v6, v7, v12, v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzab(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzF(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object v0

    invoke-static {v7, v13, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzZ(Ljava/lang/Object;ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;)Z

    move-result v0

    if-nez v0, :cond_b

    return v8

    :cond_8
    and-int v0, v13, v9

    int-to-long v0, v0

    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxm;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzF(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object v1

    move v2, v8

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_b

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;->zzl(Ljava/lang/Object;)Z

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

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzY(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzF(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object v0

    invoke-static {v7, v13, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzZ(Ljava/lang/Object;ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;)Z

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
    iget-boolean v0, v6, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzh:Z

    if-eqz v0, :cond_d

    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvx;->zzp:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzm()Z

    move-result v0

    if-nez v0, :cond_d

    return v8

    :cond_d
    return v3
.end method
