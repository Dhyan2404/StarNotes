.class public Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsc<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsc;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzag()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzS()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Default instance must be immutable."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zza(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwe;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwe;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwe;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzs()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;

    move-result-object p0

    return-object p0
.end method

.method public final zzA()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzag()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzB()V

    :cond_0
    return-void
.end method

.method public zzB()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzS()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    return-void
.end method

.method public final synthetic zzak()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    return-object p0
.end method

.method public final zzal()Z
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzaf(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;Z)Z

    move-result p0

    return p0
.end method

.method public final bridge synthetic zzn()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsc;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzs()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsd;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsc;
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzt(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;

    return-object p0
.end method

.method public final bridge synthetic zzq(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvt;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzag()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzB()V

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwe;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwe;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwe;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzq(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;

    move-result-object p1

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;->zzh(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/io/IOException;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/io/IOException;

    throw p0

    :cond_1
    throw p0
.end method

.method public final zzr()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzag()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzS()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Default instance must be immutable."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zzs()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzv()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    return-object v0
.end method

.method public final zzt(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzag()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzB()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-object p0
.end method

.method public final zzu()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzv()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzal()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxb;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;)V

    throw v0
.end method

.method public zzv()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzag()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzab()V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    return-object p0
.end method

.method public final zzw()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    return-object p0
.end method

.method public bridge synthetic zzx()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzu()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic zzy()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzv()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object p0

    return-object p0
.end method
