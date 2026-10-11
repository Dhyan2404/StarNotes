.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;

.field public final synthetic zzb:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic zzc:Ljava/util/List;

.field public final synthetic zzd:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhh;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhh;->zzb:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhh;->zzc:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhh;->zzd:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhh;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhh;->zzb:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhh;->zzc:Ljava/util/List;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhh;->zzd:Ljava/util/List;

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zzk(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/List;Ljava/util/List;)Ljava/lang/Void;

    const/4 p0, 0x0

    return-object p0
.end method
