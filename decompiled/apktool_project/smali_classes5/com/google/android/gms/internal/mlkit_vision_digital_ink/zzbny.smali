.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field zza:I

.field private final zzb:Ljava/io/Reader;

.field private zzc:Z

.field private final zzd:[C

.field private zze:I

.field private zzf:I

.field private zzg:I

.field private zzh:I

.field private zzi:J

.field private zzj:I

.field private zzk:Ljava/lang/String;

.field private zzl:[I

.field private zzm:I

.field private zzn:[Ljava/lang/String;

.field private zzo:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbju;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbju;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzc:Z

    const/16 v1, 0x400

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzd:[C

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzf:I

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzg:I

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzh:I

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zza:I

    const/16 v1, 0x20

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzl:[I

    const/4 v3, 0x1

    iput v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzm:I

    const/4 v3, 0x6

    aput v3, v2, v0

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzn:[Ljava/lang/String;

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzo:[I

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzb:Ljava/io/Reader;

    return-void
.end method

.method private final zzA()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzc:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzw(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method private final zzB(I)V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzm:I

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzl:[I

    array-length v2, v1

    if-ne v0, v2, :cond_0

    add-int/2addr v0, v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzl:[I

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzo:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzo:[I

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzn:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzn:[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzl:[I

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzm:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzm:I

    aput p1, v0, v1

    return-void
.end method

.method private final zzC(C)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzd:[C

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzf:I

    :goto_1
    const/4 v3, 0x1

    if-ge v1, v2, :cond_3

    add-int/lit8 v4, v1, 0x1

    aget-char v1, v0, v1

    if-ne v1, p1, :cond_0

    iput v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    return-void

    :cond_0
    const/16 v5, 0x5c

    if-ne v1, v5, :cond_1

    iput v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzu()C

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzf:I

    goto :goto_1

    :cond_1
    const/16 v5, 0xa

    if-ne v1, v5, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzg:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzg:I

    iput v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzh:I

    :cond_2
    move v1, v4

    goto :goto_1

    :cond_3
    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzF(I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    const-string p1, "Unterminated string"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzw(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method private final zzD()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzf:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzF(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzd:[C

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzg:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzg:I

    iput v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzh:I

    return-void

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    :cond_3
    return-void
.end method

.method private final zzE()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    move v1, v0

    :goto_1
    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    add-int/2addr v2, v1

    iget v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzf:I

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzd:[C

    aget-char v2, v3, v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_1

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    const/16 v3, 0xc

    if-eq v2, v3, :cond_1

    const/16 v3, 0xd

    if-eq v2, v3, :cond_1

    const/16 v3, 0x20

    if-eq v2, v3, :cond_1

    const/16 v3, 0x23

    if-eq v2, v3, :cond_0

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_1

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_0

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_0

    const/16 v3, 0x7b

    if-eq v2, v3, :cond_1

    const/16 v3, 0x7d

    if-eq v2, v3, :cond_1

    const/16 v3, 0x3a

    if-eq v2, v3, :cond_1

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_0

    packed-switch v2, :pswitch_data_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzA()V

    :cond_1
    :pswitch_1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    return-void

    :cond_2
    iput v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzF(I)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final zzF(I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzd:[C

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzh:I

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzh:I

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzf:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzf:I

    invoke-static {v0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    iput v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzf:I

    :goto_0
    iput v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzb:Ljava/io/Reader;

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzf:I

    rsub-int v4, v2, 0x400

    invoke-virtual {v1, v0, v2, v4}, Ljava/io/Reader;->read([CII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzf:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzf:I

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzg:I

    const/4 v4, 0x1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzh:I

    if-nez v1, :cond_2

    if-lez v2, :cond_2

    aget-char v1, v0, v3

    const v5, 0xfeff

    if-ne v1, v5, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    iput v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzh:I

    add-int/lit8 p1, p1, 0x1

    :cond_2
    if-lt v2, p1, :cond_1

    return v4

    :cond_3
    return v3
.end method

.method private final zzG(C)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0x23

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x1

    return p0

    :cond_0
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzA()V

    :cond_1
    :pswitch_1
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final zzu()C
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzf:I

    const-string v2, "Unterminated escape sequence"

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzF(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzw(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzd:[C

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_e

    const/16 v3, 0x22

    if-eq v0, v3, :cond_f

    const/16 v3, 0x27

    if-eq v0, v3, :cond_f

    const/16 v3, 0x2f

    if-eq v0, v3, :cond_f

    const/16 v3, 0x5c

    if-eq v0, v3, :cond_f

    const/16 v3, 0x62

    if-eq v0, v3, :cond_d

    const/16 v3, 0x66

    if-eq v0, v3, :cond_c

    const/16 v5, 0x6e

    if-eq v0, v5, :cond_b

    const/16 v1, 0x72

    if-eq v0, v1, :cond_a

    const/16 v1, 0x74

    if-eq v0, v1, :cond_9

    const/16 v1, 0x75

    if-ne v0, v1, :cond_8

    const/4 v0, 0x4

    add-int/2addr v4, v0

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzf:I

    if-le v4, v1, :cond_3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzF(I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzw(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :cond_3
    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    add-int/lit8 v2, v1, 0x4

    const/4 v4, 0x0

    :goto_2
    if-ge v1, v2, :cond_7

    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzd:[C

    aget-char v6, v5, v1

    shl-int/lit8 v4, v4, 0x4

    int-to-char v4, v4

    const/16 v7, 0x30

    if-lt v6, v7, :cond_4

    const/16 v7, 0x39

    if-gt v6, v7, :cond_4

    add-int/lit8 v6, v6, -0x30

    :goto_3
    add-int/2addr v4, v6

    int-to-char v4, v4

    goto :goto_4

    :cond_4
    const/16 v7, 0x61

    if-lt v6, v7, :cond_5

    if-gt v6, v3, :cond_5

    add-int/lit8 v6, v6, -0x57

    goto :goto_3

    :cond_5
    const/16 v7, 0x41

    if-lt v6, v7, :cond_6

    const/16 v7, 0x46

    if-gt v6, v7, :cond_6

    add-int/lit8 v6, v6, -0x37

    goto :goto_3

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/String;

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    invoke-direct {v2, v5, p0, v0}, Ljava/lang/String;-><init>([CII)V

    const-string p0, "\\u"

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    return v4

    :cond_8
    const-string v0, "Invalid escape sequence"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzw(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :cond_9
    const/16 p0, 0x9

    return p0

    :cond_a
    const/16 p0, 0xd

    return p0

    :cond_b
    return v1

    :cond_c
    const/16 p0, 0xc

    return p0

    :cond_d
    const/16 p0, 0x8

    return p0

    :cond_e
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzg:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzg:I

    iput v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzh:I

    :cond_f
    return v0
.end method

.method private final zzv(Z)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzd:[C

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzf:I

    :goto_0
    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzF(I)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzg()Ljava/lang/String;

    move-result-object p0

    const-string v0, "End of input"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzf:I

    :cond_2
    add-int/lit8 v4, v1, 0x1

    aget-char v1, v0, v1

    const/16 v5, 0xa

    if-ne v1, v5, :cond_3

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzg:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzg:I

    iput v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzh:I

    goto/16 :goto_6

    :cond_3
    const/16 v6, 0x20

    if-eq v1, v6, :cond_10

    const/16 v6, 0xd

    if-eq v1, v6, :cond_10

    const/16 v6, 0x9

    if-ne v1, v6, :cond_4

    goto/16 :goto_6

    :cond_4
    const/16 v6, 0x2f

    if-ne v1, v6, :cond_e

    iput v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    const/4 v1, 0x2

    if-ne v4, v2, :cond_6

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzF(I)Z

    move-result v2

    iget v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    return v6

    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzA()V

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    aget-char v4, v0, v2

    const/16 v7, 0x2a

    if-eq v4, v7, :cond_8

    if-eq v4, v6, :cond_7

    return v6

    :cond_7
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzD()V

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzf:I

    goto :goto_0

    :cond_8
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    :goto_2
    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    add-int/2addr v2, v1

    iget v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzf:I

    if-le v2, v4, :cond_a

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzF(I)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_3

    :cond_9
    const-string p1, "Unterminated comment"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzw(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :cond_a
    :goto_3
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzd:[C

    iget v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    aget-char v2, v2, v4

    if-ne v2, v5, :cond_b

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzg:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzg:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzh:I

    goto :goto_5

    :cond_b
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_d

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzd:[C

    iget v6, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    add-int/2addr v6, v2

    aget-char v4, v4, v6

    const-string v6, "*/"

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v4, v6, :cond_c

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_c
    :goto_5
    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    goto :goto_2

    :cond_d
    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzf:I

    goto/16 :goto_0

    :cond_e
    const/16 v2, 0x23

    if-ne v1, v2, :cond_f

    iput v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzA()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzD()V

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzf:I

    goto/16 :goto_0

    :cond_f
    iput v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    return v1

    :cond_10
    :goto_6
    move v1, v4

    goto/16 :goto_0
.end method

.method private final zzw(Ljava/lang/String;)Ljava/io/IOException;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbob;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzg()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbob;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzx(Z)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzm:I

    if-ge v1, v2, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzl:[I

    aget v3, v3, v1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v2, 0x3

    if-eq v3, v2, :cond_0

    const/4 v2, 0x4

    if-eq v3, v2, :cond_0

    const/4 v2, 0x5

    if-eq v3, v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzn:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzo:[I

    aget v3, v3, v1

    if-eqz p1, :cond_2

    if-lez v3, :cond_2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2

    add-int/lit8 v3, v3, -0x1

    :cond_2
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final zzy(C)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzd:[C

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    iget v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzf:I

    move v4, v3

    move v3, v2

    :goto_1
    const/16 v5, 0x10

    const/4 v6, 0x1

    if-ge v2, v4, :cond_5

    add-int/lit8 v7, v2, 0x1

    aget-char v2, v0, v2

    if-ne v2, p1, :cond_1

    iput v7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    sub-int/2addr v7, v3

    add-int/lit8 v7, v7, -0x1

    if-nez v1, :cond_0

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0, v3, v7}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    :cond_0
    invoke-virtual {v1, v0, v3, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v8, 0x5c

    if-ne v2, v8, :cond_3

    iput v7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    sub-int/2addr v7, v3

    add-int/lit8 v7, v7, -0x1

    if-nez v1, :cond_2

    add-int/lit8 v1, v7, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/2addr v1, v1

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v2

    :cond_2
    invoke-virtual {v1, v0, v3, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzu()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    iget v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzf:I

    move v2, v3

    goto :goto_1

    :cond_3
    const/16 v5, 0xa

    if-ne v2, v5, :cond_4

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzg:I

    add-int/2addr v2, v6

    iput v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzg:I

    iput v7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzh:I

    :cond_4
    move v2, v7

    goto :goto_1

    :cond_5
    if-nez v1, :cond_6

    sub-int v1, v2, v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/2addr v1, v1

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v4

    :cond_6
    sub-int v4, v2, v3

    invoke-virtual {v1, v0, v3, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iput v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    invoke-direct {p0, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzF(I)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_0

    :cond_7
    const-string p1, "Unterminated string"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzw(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method private final zzz()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    move v2, v0

    :goto_0
    iget v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    add-int/2addr v3, v2

    iget v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzf:I

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzd:[C

    aget-char v3, v4, v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_3

    const/16 v4, 0x23

    if-eq v3, v4, :cond_1

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_3

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_1

    const/16 v4, 0x3d

    if-eq v3, v4, :cond_1

    const/16 v4, 0x7b

    if-eq v3, v4, :cond_3

    const/16 v4, 0x7d

    if-eq v3, v4, :cond_3

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_3

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_1

    packed-switch v3, :pswitch_data_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzA()V

    goto :goto_1

    :cond_2
    const/16 v3, 0x400

    if-ge v2, v3, :cond_4

    add-int/lit8 v3, v2, 0x1

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzF(I)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    :pswitch_1
    move v0, v2

    goto :goto_2

    :cond_4
    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    :cond_5
    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzd:[C

    iget v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    invoke-virtual {v1, v3, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzF(I)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_2
    if-nez v1, :cond_6

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzd:[C

    iget v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzd:[C

    iget v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    invoke-virtual {v1, v2, v3, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    return-object v1

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zza:I

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzl:[I

    const/16 v2, 0x8

    aput v2, v1, v0

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzm:I

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzb:Ljava/io/Reader;

    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzg()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zza()D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zza:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzb()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iput v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zza:I

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzo:[I

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzm:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzi:J

    long-to-double v0, v0

    return-wide v0

    :cond_1
    const/16 v1, 0x10

    const/16 v3, 0xb

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzd:[C

    iget v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    iget v5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzj:I

    invoke-direct {v0, v1, v4, v5}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzk:Ljava/lang/String;

    add-int/2addr v4, v5

    iput v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    const/16 v4, 0x9

    if-ne v0, v4, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzz()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzk:Ljava/lang/String;

    goto :goto_2

    :cond_4
    if-ne v0, v3, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzt()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnz;->zza(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzg()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a double but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_0
    if-ne v0, v1, :cond_7

    const/16 v0, 0x27

    goto :goto_1

    :cond_7
    const/16 v0, 0x22

    :goto_1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzy(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzk:Ljava/lang/String;

    :goto_2
    iput v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zza:I

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzk:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-boolean v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzc:Z

    if-nez v3, :cond_9

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_3

    :cond_8
    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbob;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzg()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSON forbids NaN and infinities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbob;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    :goto_3
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzk:Ljava/lang/String;

    iput v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zza:I

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzo:[I

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzm:I

    add-int/lit8 p0, p0, -0x1

    aget v3, v2, p0

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, p0

    return-wide v0
.end method

.method public final zzb()I
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzl:[I

    iget v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzm:I

    const/4 v3, -0x1

    add-int/2addr v2, v3

    aget v4, v1, v2

    const/16 v6, 0xa

    const/16 v8, 0x27

    const/16 v9, 0x5d

    const/16 v10, 0x3b

    const/16 v11, 0x2c

    const/4 v12, 0x6

    const/4 v13, 0x3

    const/4 v15, 0x4

    const/4 v5, 0x5

    const/4 v7, 0x2

    const/4 v14, 0x1

    if-ne v4, v14, :cond_1

    aput v7, v1, v2

    :cond_0
    :goto_0
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_1
    if-ne v4, v7, :cond_4

    invoke-direct {v0, v14}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzv(Z)I

    move-result v1

    if-eq v1, v11, :cond_0

    if-eq v1, v10, :cond_3

    if-ne v1, v9, :cond_2

    iput v15, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zza:I

    return v15

    :cond_2
    const-string v1, "Unterminated array"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzw(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzA()V

    goto :goto_0

    :cond_4
    const/16 v7, 0x7d

    if-eq v4, v13, :cond_42

    if-ne v4, v5, :cond_5

    goto/16 :goto_18

    :cond_5
    if-ne v4, v15, :cond_8

    aput v5, v1, v2

    invoke-direct {v0, v14}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzv(Z)I

    move-result v1

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_0

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzA()V

    iget v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    iget v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzf:I

    if-lt v1, v2, :cond_6

    invoke-direct {v0, v14}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzF(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_6
    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzd:[C

    iget v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    aget-char v1, v1, v2

    const/16 v7, 0x3e

    if-ne v1, v7, :cond_0

    add-int/2addr v2, v14

    iput v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    goto :goto_0

    :cond_7
    const-string v1, "Expected \':\'"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzw(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_8
    if-ne v4, v12, :cond_b

    iget-boolean v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzc:Z

    if-eqz v1, :cond_a

    invoke-direct {v0, v14}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzv(Z)I

    iget v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    iget v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzf:I

    add-int/2addr v1, v5

    if-le v1, v2, :cond_9

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzF(I)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_1

    :cond_9
    iget v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzd:[C

    aget-char v15, v2, v1

    const/16 v12, 0x29

    if-ne v15, v12, :cond_a

    add-int/lit8 v12, v1, 0x1

    aget-char v12, v2, v12

    if-ne v12, v9, :cond_a

    add-int/lit8 v12, v1, 0x2

    aget-char v12, v2, v12

    if-ne v12, v7, :cond_a

    add-int/lit8 v7, v1, 0x3

    aget-char v7, v2, v7

    if-ne v7, v8, :cond_a

    add-int/lit8 v7, v1, 0x4

    aget-char v2, v2, v7

    if-ne v2, v6, :cond_a

    add-int/2addr v1, v5

    iput v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    :cond_a
    :goto_1
    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzl:[I

    iget v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzm:I

    add-int/2addr v2, v3

    const/4 v7, 0x7

    aput v7, v1, v2

    goto/16 :goto_0

    :cond_b
    const/4 v7, 0x7

    if-ne v4, v7, :cond_d

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzv(Z)I

    move-result v2

    if-ne v2, v3, :cond_c

    const/16 v1, 0x11

    iput v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zza:I

    const/16 v0, 0x11

    return v0

    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzA()V

    iget v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    goto :goto_2

    :cond_d
    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eq v4, v2, :cond_41

    :goto_2
    invoke-direct {v0, v14}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzv(Z)I

    move-result v2

    const/16 v7, 0x22

    if-eq v2, v7, :cond_40

    if-eq v2, v8, :cond_3f

    if-eq v2, v11, :cond_3c

    if-eq v2, v10, :cond_3c

    const/16 v7, 0x5b

    if-eq v2, v7, :cond_3b

    if-eq v2, v9, :cond_39

    const/16 v4, 0x7b

    if-eq v2, v4, :cond_38

    iget v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    iget-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzd:[C

    aget-char v2, v3, v2

    const/16 v3, 0x74

    if-eq v2, v3, :cond_12

    const/16 v3, 0x54

    if-ne v2, v3, :cond_e

    goto :goto_4

    :cond_e
    const/16 v3, 0x66

    if-eq v2, v3, :cond_11

    const/16 v3, 0x46

    if-ne v2, v3, :cond_f

    goto :goto_3

    :cond_f
    const/16 v3, 0x6e

    if-eq v2, v3, :cond_10

    const/16 v3, 0x4e

    if-ne v2, v3, :cond_17

    :cond_10
    const-string v2, "NULL"

    const-string v3, "null"

    const/4 v4, 0x7

    goto :goto_5

    :cond_11
    :goto_3
    const-string v2, "FALSE"

    const-string v3, "false"

    const/4 v4, 0x6

    goto :goto_5

    :cond_12
    :goto_4
    const-string v2, "TRUE"

    const-string v3, "true"

    move v4, v5

    :goto_5
    move v7, v14

    :goto_6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_15

    iget v8, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    add-int/2addr v8, v7

    iget v9, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzf:I

    if-lt v8, v9, :cond_13

    add-int/lit8 v8, v7, 0x1

    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzF(I)Z

    move-result v8

    if-nez v8, :cond_13

    goto :goto_7

    :cond_13
    iget-object v8, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzd:[C

    iget v9, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    add-int/2addr v9, v7

    aget-char v8, v8, v9

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v8, v9, :cond_14

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v8, v9, :cond_14

    goto :goto_7

    :cond_14
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_15
    iget v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    add-int/2addr v2, v8

    iget v3, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzf:I

    if-lt v2, v3, :cond_16

    add-int/lit8 v2, v8, 0x1

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzF(I)Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_16
    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzd:[C

    iget v3, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    add-int/2addr v3, v8

    aget-char v2, v2, v3

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzG(C)Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_17
    :goto_7
    move v4, v1

    goto :goto_8

    :cond_18
    iget v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    add-int/2addr v2, v8

    iput v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    iput v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zza:I

    :goto_8
    if-nez v4, :cond_37

    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzd:[C

    iget v3, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    iget v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzf:I

    const-wide/16 v7, 0x0

    move v9, v1

    move v10, v9

    move/from16 v16, v10

    move-wide v11, v7

    move v15, v14

    :goto_9
    add-int v1, v3, v10

    if-ne v1, v4, :cond_1d

    const/16 v1, 0x400

    if-ne v10, v1, :cond_1a

    :cond_19
    :goto_a
    const/4 v14, 0x0

    goto/16 :goto_15

    :cond_1a
    add-int/lit8 v1, v10, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzF(I)Z

    move-result v1

    if-nez v1, :cond_1c

    :cond_1b
    const/4 v1, 0x2

    goto/16 :goto_f

    :cond_1c
    iget v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    iget v3, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzf:I

    move v4, v3

    move v3, v1

    :cond_1d
    add-int v1, v3, v10

    aget-char v1, v2, v1

    const/16 v6, 0x2b

    if-eq v1, v6, :cond_33

    const/16 v6, 0x45

    if-eq v1, v6, :cond_31

    const/16 v6, 0x65

    if-eq v1, v6, :cond_31

    const/16 v6, 0x2d

    if-eq v1, v6, :cond_2f

    const/16 v6, 0x2e

    if-eq v1, v6, :cond_2e

    const/16 v6, 0x30

    if-lt v1, v6, :cond_27

    const/16 v6, 0x39

    if-le v1, v6, :cond_1e

    goto :goto_e

    :cond_1e
    if-eq v9, v14, :cond_26

    if-nez v9, :cond_1f

    goto :goto_d

    :cond_1f
    const/4 v6, 0x2

    if-ne v9, v6, :cond_23

    cmp-long v6, v11, v7

    if-nez v6, :cond_20

    goto :goto_a

    :cond_20
    const-wide/16 v17, 0xa

    mul-long v17, v17, v11

    add-int/lit8 v1, v1, -0x30

    const-wide v19, -0xcccccccccccccccL

    cmp-long v6, v11, v19

    int-to-long v7, v1

    sub-long v17, v17, v7

    if-gtz v6, :cond_22

    if-nez v6, :cond_21

    cmp-long v1, v17, v11

    if-gez v1, :cond_21

    goto :goto_b

    :cond_21
    const/4 v1, 0x0

    goto :goto_c

    :cond_22
    :goto_b
    move v1, v14

    :goto_c
    and-int/2addr v15, v1

    move-wide/from16 v11, v17

    const/4 v6, 0x6

    const-wide/16 v7, 0x0

    goto/16 :goto_14

    :cond_23
    const/4 v6, 0x6

    if-ne v9, v13, :cond_24

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    goto/16 :goto_14

    :cond_24
    const-wide/16 v7, 0x0

    if-eq v9, v5, :cond_25

    if-ne v9, v6, :cond_34

    :cond_25
    const/4 v9, 0x7

    goto/16 :goto_14

    :cond_26
    :goto_d
    const/4 v6, 0x6

    add-int/lit8 v1, v1, -0x30

    neg-int v1, v1

    int-to-long v11, v1

    const-wide/16 v7, 0x0

    const/4 v9, 0x2

    goto/16 :goto_14

    :cond_27
    :goto_e
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzG(C)Z

    move-result v1

    if-eqz v1, :cond_1b

    goto/16 :goto_a

    :goto_f
    if-ne v9, v1, :cond_2c

    if-eqz v15, :cond_2b

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v1, v11, v1

    if-nez v1, :cond_28

    if-eqz v16, :cond_2b

    goto :goto_10

    :cond_28
    move/from16 v14, v16

    :goto_10
    const-wide/16 v7, 0x0

    cmp-long v1, v11, v7

    if-nez v1, :cond_29

    if-nez v14, :cond_2b

    goto :goto_11

    :cond_29
    if-eqz v14, :cond_2a

    goto :goto_12

    :cond_2a
    :goto_11
    neg-long v11, v11

    :goto_12
    iput-wide v11, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzi:J

    iget v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    add-int/2addr v1, v10

    iput v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    const/16 v1, 0xf

    iput v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zza:I

    const/16 v14, 0xf

    goto :goto_15

    :cond_2b
    const/4 v1, 0x2

    const/4 v9, 0x2

    :cond_2c
    if-eq v9, v1, :cond_2d

    const/4 v1, 0x4

    if-eq v9, v1, :cond_2d

    const/4 v1, 0x7

    if-ne v9, v1, :cond_19

    :cond_2d
    iput v10, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzj:I

    const/16 v1, 0x10

    iput v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zza:I

    const/16 v14, 0x10

    goto :goto_15

    :cond_2e
    const/4 v1, 0x2

    const/4 v6, 0x6

    if-ne v9, v1, :cond_19

    move v9, v13

    goto :goto_14

    :cond_2f
    const/4 v1, 0x2

    const/4 v6, 0x6

    if-nez v9, :cond_30

    move v9, v14

    move/from16 v16, v9

    goto :goto_14

    :cond_30
    if-ne v9, v5, :cond_19

    goto :goto_13

    :cond_31
    const/4 v1, 0x2

    const/4 v6, 0x6

    if-eq v9, v1, :cond_32

    const/4 v1, 0x4

    if-ne v9, v1, :cond_19

    :cond_32
    move v9, v5

    goto :goto_14

    :cond_33
    const/4 v6, 0x6

    if-ne v9, v5, :cond_19

    :goto_13
    move v9, v6

    :cond_34
    :goto_14
    add-int/lit8 v10, v10, 0x1

    const/16 v6, 0xa

    goto/16 :goto_9

    :goto_15
    if-eqz v14, :cond_35

    return v14

    :cond_35
    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzd:[C

    iget v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    aget-char v1, v1, v2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzG(C)Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzA()V

    const/16 v1, 0xa

    iput v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zza:I

    return v1

    :cond_36
    const-string v1, "Expected value"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzw(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_37
    return v4

    :cond_38
    iput v14, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zza:I

    return v14

    :cond_39
    if-eq v4, v14, :cond_3a

    goto :goto_16

    :cond_3a
    const/4 v1, 0x4

    iput v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zza:I

    return v1

    :cond_3b
    iput v13, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zza:I

    return v13

    :cond_3c
    :goto_16
    if-eq v4, v14, :cond_3e

    const/4 v1, 0x2

    if-ne v4, v1, :cond_3d

    goto :goto_17

    :cond_3d
    const-string v1, "Unexpected value"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzw(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_3e
    :goto_17
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzA()V

    iget v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    const/4 v1, 0x7

    iput v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zza:I

    return v1

    :cond_3f
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzA()V

    const/16 v1, 0x8

    iput v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zza:I

    return v1

    :cond_40
    const/16 v1, 0x9

    iput v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zza:I

    return v1

    :cond_41
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    :goto_18
    move v6, v15

    aput v6, v1, v2

    if-ne v4, v5, :cond_45

    invoke-direct {v0, v14}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzv(Z)I

    move-result v1

    if-eq v1, v11, :cond_45

    if-eq v1, v10, :cond_44

    if-ne v1, v7, :cond_43

    const/4 v1, 0x2

    iput v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zza:I

    return v1

    :cond_43
    const-string v1, "Unterminated object"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzw(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_44
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzA()V

    :cond_45
    invoke-direct {v0, v14}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzv(Z)I

    move-result v1

    const/16 v2, 0x22

    if-eq v1, v2, :cond_4a

    if-eq v1, v8, :cond_49

    const-string v2, "Expected name"

    if-eq v1, v7, :cond_47

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzA()V

    iget v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    add-int/2addr v4, v3

    iput v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    int-to-char v1, v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzG(C)Z

    move-result v1

    if-eqz v1, :cond_46

    const/16 v1, 0xe

    iput v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zza:I

    const/16 v0, 0xe

    return v0

    :cond_46
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzw(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_47
    if-eq v4, v5, :cond_48

    const/4 v1, 0x2

    iput v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zza:I

    return v1

    :cond_48
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzw(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_49
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzA()V

    const/16 v1, 0xc

    iput v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zza:I

    return v1

    :cond_4a
    const/16 v1, 0xd

    iput v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zza:I

    return v1
.end method

.method public final zzc()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zza:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzb()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    const-string v2, "Expected an int but was "

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzi:J

    long-to-int v4, v0

    int-to-long v5, v4

    cmp-long v5, v0, v5

    if-nez v5, :cond_1

    iput v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zza:I

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzo:[I

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzm:I

    add-int/lit8 p0, p0, -0x1

    aget v1, v0, p0

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p0

    return v4

    :cond_1
    new-instance v3, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzg()Ljava/lang/String;

    move-result-object p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzd:[C

    iget v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    iget v5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzj:I

    invoke-direct {v0, v1, v4, v5}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzk:Ljava/lang/String;

    add-int/2addr v4, v5

    iput v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    goto :goto_3

    :cond_3
    const/16 v1, 0xa

    const/16 v4, 0x8

    if-eq v0, v4, :cond_5

    const/16 v5, 0x9

    if-eq v0, v5, :cond_5

    if-ne v0, v1, :cond_4

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzt()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnz;->zza(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzg()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_0
    if-ne v0, v1, :cond_6

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzz()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzk:Ljava/lang/String;

    goto :goto_2

    :cond_6
    if-ne v0, v4, :cond_7

    const/16 v0, 0x27

    goto :goto_1

    :cond_7
    const/16 v0, 0x22

    :goto_1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzy(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzk:Ljava/lang/String;

    :goto_2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzk:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zza:I

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzo:[I

    iget v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzm:I

    add-int/lit8 v4, v4, -0x1

    aget v5, v1, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v1, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :goto_3
    const/16 v0, 0xb

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zza:I

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzk:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v4, v0

    int-to-double v5, v4

    cmpl-double v0, v5, v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzk:Ljava/lang/String;

    iput v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zza:I

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzo:[I

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzm:I

    add-int/lit8 p0, p0, -0x1

    aget v1, v0, p0

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p0

    return v4

    :cond_8
    new-instance v0, Ljava/lang/NumberFormatException;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzk:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzg()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzd()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zza:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzb()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iput v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zza:I

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzo:[I

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzm:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzi:J

    return-wide v0

    :cond_1
    const/16 v1, 0x10

    const-string v3, "Expected a long but was "

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzd:[C

    iget v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    iget v5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzj:I

    invoke-direct {v0, v1, v4, v5}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzk:Ljava/lang/String;

    add-int/2addr v4, v5

    iput v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    goto :goto_3

    :cond_2
    const/16 v1, 0xa

    const/16 v4, 0x8

    if-eq v0, v4, :cond_4

    const/16 v5, 0x9

    if-eq v0, v5, :cond_4

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzt()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnz;->zza(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzg()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    if-ne v0, v1, :cond_5

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzz()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzk:Ljava/lang/String;

    goto :goto_2

    :cond_5
    if-ne v0, v4, :cond_6

    const/16 v0, 0x27

    goto :goto_1

    :cond_6
    const/16 v0, 0x22

    :goto_1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzy(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzk:Ljava/lang/String;

    :goto_2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzk:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zza:I

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzo:[I

    iget v5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzm:I

    add-int/lit8 v5, v5, -0x1

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    :goto_3
    const/16 v0, 0xb

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zza:I

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzk:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v4, v0

    long-to-double v6, v4

    cmpl-double v0, v6, v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzk:Ljava/lang/String;

    iput v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zza:I

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzo:[I

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzm:I

    add-int/lit8 p0, p0, -0x1

    aget v1, v0, p0

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p0

    return-wide v4

    :cond_7
    new-instance v0, Ljava/lang/NumberFormatException;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzk:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzg()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zze()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzx(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzf()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzx(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzg()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzg:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzh:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzx(Z)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " column "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " path "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzh()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zza:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzb()I

    move-result v0

    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzz()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzy(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzy(C)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zza:I

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzn:[Ljava/lang/String;

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzm:I

    add-int/lit8 p0, p0, -0x1

    aput-object v0, v1, p0

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzt()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnz;->zza(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzg()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a name but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzi()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zza:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzb()I

    move-result v0

    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzz()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzy(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzy(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzk:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzk:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const/16 v1, 0xf

    if-ne v0, v1, :cond_5

    iget-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzi:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/16 v1, 0x10

    if-ne v0, v1, :cond_6

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzd:[C

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    iget v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzj:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzj:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zza:I

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzo:[I

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzm:I

    add-int/lit8 p0, p0, -0x1

    aget v2, v1, p0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, p0

    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzt()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnz;->zza(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzg()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a string but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzj()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zza:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzb()I

    move-result v0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzB(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzo:[I

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzm:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    iput v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zza:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzt()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnz;->zza(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzg()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected BEGIN_ARRAY but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzk()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zza:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzb()I

    move-result v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzB(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zza:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzt()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnz;->zza(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzg()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected BEGIN_OBJECT but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzl()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zza:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzb()I

    move-result v0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzm:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzm:I

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzo:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zza:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzt()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnz;->zza(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzg()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected END_ARRAY but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzm()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zza:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzb()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzm:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzm:I

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzn:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzo:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zza:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzt()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnz;->zza(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzg()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected END_OBJECT but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzn()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zza:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzb()I

    move-result v0

    :cond_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zza:I

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzo:[I

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzm:I

    add-int/lit8 p0, p0, -0x1

    aget v1, v0, p0

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p0

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzt()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnz;->zza(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzg()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected null but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzo(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzc:Z

    return-void
.end method

.method public final zzp()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zza:I

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzb()I

    move-result v2

    :cond_1
    const/16 v3, 0x22

    const/16 v4, 0x27

    const-string v5, "<skipped>"

    const/4 v6, 0x1

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    :pswitch_1
    return-void

    :pswitch_2
    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    iget v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzj:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zze:I

    goto :goto_3

    :pswitch_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzE()V

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzn:[Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzm:I

    add-int/lit8 v2, v2, -0x1

    aput-object v5, v1, v2

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzC(C)V

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzn:[Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzm:I

    add-int/lit8 v2, v2, -0x1

    aput-object v5, v1, v2

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzC(C)V

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzn:[Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzm:I

    add-int/lit8 v2, v2, -0x1

    aput-object v5, v1, v2

    :goto_0
    move v1, v0

    goto :goto_3

    :pswitch_6
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzE()V

    goto :goto_3

    :pswitch_7
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzC(C)V

    goto :goto_3

    :pswitch_8
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzC(C)V

    goto :goto_3

    :pswitch_9
    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzm:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzm:I

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :pswitch_a
    invoke-direct {p0, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzB(I)V

    goto :goto_2

    :pswitch_b
    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzn:[Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzm:I

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    move v1, v0

    :cond_2
    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzm:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzm:I

    goto :goto_1

    :pswitch_c
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzB(I)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    :cond_3
    :goto_3
    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zza:I

    if-gtz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzo:[I

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzm:I

    add-int/lit8 p0, p0, -0x1

    aget v1, v0, p0

    add-int/2addr v1, v6

    aput v1, v0, p0

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final zzq()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zza:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzb()I

    move-result v0

    :cond_0
    const/4 p0, 0x2

    if-eq v0, p0, :cond_1

    const/4 p0, 0x4

    if-eq v0, p0, :cond_1

    const/16 p0, 0x11

    if-eq v0, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final zzr()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzc:Z

    return p0
.end method

.method public final zzs()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zza:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzb()I

    move-result v0

    :cond_0
    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    iput v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zza:I

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzo:[I

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzm:I

    add-int/lit8 p0, p0, -0x1

    aget v1, v0, p0

    add-int/2addr v1, v2

    aput v1, v0, p0

    return v2

    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    iput v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zza:I

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzo:[I

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzm:I

    add-int/lit8 p0, p0, -0x1

    aget v1, v0, p0

    add-int/2addr v1, v2

    aput v1, v0, p0

    return v3

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzt()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnz;->zza(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzg()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a boolean but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zza:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzb()I

    move-result v0

    :cond_0
    packed-switch v0, :pswitch_data_0

    const/16 p0, 0xa

    return p0

    :pswitch_0
    const/4 p0, 0x7

    return p0

    :pswitch_1
    const/4 p0, 0x5

    return p0

    :pswitch_2
    const/4 p0, 0x6

    return p0

    :pswitch_3
    const/16 p0, 0x9

    return p0

    :pswitch_4
    const/16 p0, 0x8

    return p0

    :pswitch_5
    const/4 p0, 0x2

    return p0

    :pswitch_6
    const/4 p0, 0x1

    return p0

    :pswitch_7
    const/4 p0, 0x4

    return p0

    :pswitch_8
    const/4 p0, 0x3

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
