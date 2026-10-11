.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzux;


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Ljava/util/TimeZone;


# instance fields
.field private final zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaw;

.field private final zzd:Ljava/util/concurrent/Executor;

.field private final zze:Ljava/util/Random;

.field private final zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgs;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvh;->zzb:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaw;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgs;Ljava/util/concurrent/Executor;Ljava/util/Random;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaw;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvh;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgs;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvh;->zzd:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvh;->zze:Ljava/util/Random;

    return-void
.end method

.method public static final synthetic zzd(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdy;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdy;
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdy;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxa;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxw;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxa;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxa;->zze()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaps;->zzb(JJ)J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxa;->zzc()I

    move-result v1

    const v4, 0xf4240

    div-int/2addr v1, v4

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaps;->zza(JJ)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzO()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdx;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxw;->zzb(J)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxa;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdx;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxa;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzu()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdy;->zzm()Z

    move-result p1

    if-nez p1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvh;->zze(J)J

    move-result-wide v3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvh;->zze(J)J

    move-result-wide v0

    sub-long/2addr v3, v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v0

    const-wide/32 v3, 0x7fffffff

    cmp-long p1, v0, v3

    if-lez p1, :cond_1

    const p1, 0x7fffffff

    goto :goto_0

    :cond_1
    const-wide/32 v3, -0x80000000

    cmp-long p1, v0, v3

    if-gez p1, :cond_2

    const/high16 p1, -0x80000000

    goto :goto_0

    :cond_2
    long-to-int p1, v0

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-object v2
.end method

.method private static zze(J)J
    .locals 2

    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvh;->zzb:Ljava/util/TimeZone;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 p0, 0xb

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xc

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xd

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xe

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 4

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;->zzq()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaw;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvf;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvf;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvh;->zzd:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaco;->zzh(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvb;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvb;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvh;->zzd:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;

    move-result-object v0

    invoke-static {v1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzn(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaw;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvc;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvc;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvh;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasq;->zzb()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaco;->zzh(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvd;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvd;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasq;->zzb()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzn(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdl;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaw;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzve;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzve;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdl;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvh;->zzd:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaco;->zzh(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method
