.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzlc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzll;

.field public final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzll;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzlc;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzll;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzlc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzlc;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzll;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzlc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzll;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzll;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzu()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzq()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzm()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FileGroupManager"

    filled-new-array {v0, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s: Detected corruption of isolated structure for group %s %s"

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzo(Ljava/lang/String;[Ljava/lang/Object;)I

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object p0
.end method
