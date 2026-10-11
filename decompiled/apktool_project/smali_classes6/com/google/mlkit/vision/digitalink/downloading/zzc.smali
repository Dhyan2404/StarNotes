.class public final Lcom/google/mlkit/vision/digitalink/downloading/zzc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Landroid/net/Uri;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:Landroid/net/Uri;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final d:Landroid/net/Uri;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/digitalink/downloading/zzc;->a:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zza()I

    move-result p1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zza()I

    move-result p1

    const/4 v1, 0x3

    if-gt p1, v1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zze(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzm;->zzd()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mlkit/vision/digitalink/downloading/zzc;->b:Landroid/net/Uri;

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zze(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzm;->zzd()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mlkit/vision/digitalink/downloading/zzc;->c:Landroid/net/Uri;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zza()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zze(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzm;->zzd()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/mlkit/vision/digitalink/downloading/zzc;->d:Landroid/net/Uri;

    return-void

    :cond_0
    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzl()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Passed clientFileGroup does not have expected number of files. actual: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", expected: 2-3."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/mlkit/vision/digitalink/downloading/zzc;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mlkit/vision/digitalink/downloading/zzc;->c:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/google/mlkit/vision/digitalink/downloading/zzc;->d:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadedFileGroup{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zza()Ljava/io/FileInputStream;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mlkit/vision/digitalink/downloading/zzc;->d:Landroid/net/Uri;

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzz;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzz;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyf;

    iget-object v2, p0, Lcom/google/mlkit/vision/digitalink/downloading/zzc;->d:Landroid/net/Uri;

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/mlkit/vision/digitalink/downloading/zzc;->a:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    iget-object p0, p0, Lcom/google/mlkit/vision/digitalink/downloading/zzc;->d:Landroid/net/Uri;

    invoke-virtual {v1, p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzc(Landroid/net/Uri;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyf;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    check-cast v1, Landroid/content/res/AssetFileDescriptor;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object p0

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyf;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mlkit/vision/digitalink/downloading/zzc;->a:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    iget-object p0, p0, Lcom/google/mlkit/vision/digitalink/downloading/zzc;->c:Landroid/net/Uri;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzc(Landroid/net/Uri;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyf;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyf;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mlkit/vision/digitalink/downloading/zzc;->a:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    iget-object p0, p0, Lcom/google/mlkit/vision/digitalink/downloading/zzc;->b:Landroid/net/Uri;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzc(Landroid/net/Uri;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyf;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
