.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqj;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/io/IOException;

    const-string p0, "Failed to commit migration metadata to disk"

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zze(Ljava/lang/String;)I

    new-instance p0, Ljava/lang/Exception;

    const-string v0, "Migration to DownloadTransform failed."

    invoke-direct {p0, v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method
