.class abstract Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqr;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzi;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqn;

.field private static final zzb:Ljava/util/logging/Logger;


# instance fields
.field private volatile remaining:I

.field private volatile seenExceptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqr;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqr;->zzb:Ljava/util/logging/Logger;

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqo;

    const-class v3, Ljava/util/Set;

    const-string v4, "seenExceptions"

    invoke-static {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    const-string v4, "remaining"

    invoke-static {v0, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqo;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqq;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqq;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqp;)V

    move-object v8, v0

    :goto_0
    sput-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqr;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqn;

    if-eqz v8, :cond_0

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqr;->zzb:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v5, "com.google.common.util.concurrent.AggregateFutureState"

    const-string v6, "<clinit>"

    const-string v7, "SafeAtomicHelper is broken!"

    invoke-virtual/range {v3 .. v8}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzi;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqr;->seenExceptions:Ljava/util/Set;

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqr;->remaining:I

    return-void
.end method

.method public static bridge synthetic zzB(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqr;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqr;->seenExceptions:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic zzD(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqr;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqr;->remaining:I

    return-void
.end method

.method public static bridge synthetic zzE(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqr;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqr;->seenExceptions:Ljava/util/Set;

    return-void
.end method

.method public static bridge synthetic zzz(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqr;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqr;->remaining:I

    return p0
.end method


# virtual methods
.method public final zzA()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqr;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqn;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqn;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqr;)I

    move-result p0

    return p0
.end method

.method public final zzC()Ljava/util/Set;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqr;->seenExceptions:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqr;->zzd(Ljava/util/Set;)V

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqr;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqn;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqn;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqr;Ljava/util/Set;Ljava/util/Set;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqr;->seenExceptions:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_0
    return-object v0
.end method

.method public final zzF()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqr;->seenExceptions:Ljava/util/Set;

    return-void
.end method

.method public abstract zzd(Ljava/util/Set;)V
.end method
