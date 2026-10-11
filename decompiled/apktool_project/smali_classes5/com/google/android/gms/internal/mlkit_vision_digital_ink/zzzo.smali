.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzo;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzr;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzg;


# instance fields
.field private final zza:Ljava/io/FileOutputStream;

.field private final zzb:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/FileOutputStream;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzr;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzo;->zza:Ljava/io/FileOutputStream;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzo;->zzb:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzo;->zzb:Ljava/io/File;

    return-object p0
.end method

.method public final zzb()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzo;->zza:Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V

    return-void
.end method
