.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtk;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;
.source "SourceFile"


# instance fields
.field private final zzg:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;-><init>(I)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtk;->zzg:Ljava/io/OutputStream;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "out"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final zzU()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtk;->zzg:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zza:[B

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zzc:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zzc:I

    return-void
.end method

.method private final zzV(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zzb:I

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zzc:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtk;->zzU()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final zzA([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zzb:I

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zzc:I

    sub-int/2addr p2, v0

    const/4 v1, 0x0

    if-lt p2, p3, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zza:[B

    invoke-static {p1, v1, p2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zzc:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zzc:I

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zzd:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zzd:I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zza:[B

    invoke-static {p1, v1, v2, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zzb:I

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zzc:I

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zzd:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zzd:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtk;->zzU()V

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zzb:I

    sub-int/2addr p3, p2

    if-gt p3, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zza:[B

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zzc:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtk;->zzg:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zzd:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zzd:I

    return-void
.end method

.method public final zzW()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zzc:I

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtk;->zzU()V

    :cond_0
    return-void
.end method

.method public final zzX(B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zzc:I

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zzb:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtk;->zzU()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zzc(B)V

    return-void
.end method

.method public final zzY(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtk;->zzV(I)V

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zzf(I)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zzc(B)V

    return-void
.end method

.method public final zzZ([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtk;->zzx(I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtk;->zzA([BII)V

    return-void
.end method

.method public final zza([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtk;->zzA([BII)V

    return-void
.end method

.method public final zzh(ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtk;->zzx(I)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtk;->zzi(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;)V

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;->zzd()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtk;->zzx(I)V

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;->zzh(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbso;)V

    return-void
.end method

.method public final zzj(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtk;->zzV(I)V

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x5

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zzf(I)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zzd(I)V

    return-void
.end method

.method public final zzk(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtk;->zzV(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zzd(I)V

    return-void
.end method

.method public final zzl(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtk;->zzV(I)V

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zzf(I)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zze(J)V

    return-void
.end method

.method public final zzm(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtk;->zzV(I)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zze(J)V

    return-void
.end method

.method public final zzn(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtk;->zzV(I)V

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zzf(I)V

    if-ltz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zzf(I)V

    return-void

    :cond_0
    int-to-long p1, p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zzg(J)V

    return-void
.end method

.method public final zzo(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtk;->zzx(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtk;->zzz(J)V

    return-void
.end method

.method public final zzp(ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtk;->zzx(I)V

    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsd;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsd;->zzG(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtk;->zzx(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtn;

    invoke-interface {p3, p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;->zzj(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;)V

    return-void
.end method

.method public final zzq(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;->zzM()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtk;->zzx(I)V

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;->zzaj(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;)V

    return-void
.end method

.method public final zzr(ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtk;->zzx(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtk;->zzw(II)V

    const/16 p1, 0x1a

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtk;->zzx(I)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtk;->zzq(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;)V

    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtk;->zzx(I)V

    return-void
.end method

.method public final zzs(ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtk;->zzx(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtk;->zzw(II)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtk;->zzh(ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;)V

    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtk;->zzx(I)V

    return-void
.end method

.method public final zzt(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtk;->zzx(I)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtk;->zzu(Ljava/lang/String;)V

    return-void
.end method

.method public final zzu(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v1

    add-int v2, v1, v0

    iget v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zzb:I

    if-le v2, v3, :cond_0

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxr;->zzb(Ljava/lang/CharSequence;[BII)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtk;->zzx(I)V

    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtk;->zzA([BII)V

    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zzc:I

    sub-int/2addr v3, v0

    if-le v2, v3, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtk;->zzU()V

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v0

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zzc:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxq; {:try_start_0 .. :try_end_0} :catch_2

    if-ne v0, v1, :cond_2

    add-int v1, v2, v0

    :try_start_1
    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zzc:I

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zza:[B

    iget v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zzb:I

    sub-int/2addr v4, v1

    invoke-static {p1, v3, v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxr;->zzb(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zzc:I

    sub-int v3, v1, v2

    sub-int/2addr v3, v0

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zzf(I)V

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zzc:I

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxr;->zzc(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zzf(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zza:[B

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zzc:I

    invoke-static {p1, v0, v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxr;->zzb(Ljava/lang/CharSequence;[BII)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zzc:I

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zzd:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zzd:I
    :try_end_1
    .catch Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxq; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtj;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtj;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zzd:I

    iget v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zzc:I

    sub-int/2addr v3, v2

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zzd:I

    iput v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zzc:I

    throw v0
    :try_end_2
    .catch Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxq; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzS(Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxq;)V

    return-void
.end method

.method public final zzv(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtk;->zzx(I)V

    return-void
.end method

.method public final zzw(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtk;->zzV(I)V

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zzf(I)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zzf(I)V

    return-void
.end method

.method public final zzx(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtk;->zzV(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zzf(I)V

    return-void
.end method

.method public final zzy(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtk;->zzV(I)V

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zzf(I)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zzg(J)V

    return-void
.end method

.method public final zzz(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtk;->zzV(I)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbth;->zzg(J)V

    return-void
.end method
