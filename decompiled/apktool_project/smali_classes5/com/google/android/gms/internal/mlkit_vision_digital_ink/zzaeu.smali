.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxv;

.field public static final synthetic zzb:I

.field private static final zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;

.field private static final zzd:Ljava/util/WeakHashMap;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "allThreadStates"
    .end annotation
.end field

.field private static final zze:Ljava/lang/ThreadLocal;

.field private static final zzf:Ljava/util/Deque;

.field private static final zzg:Ljava/util/Deque;

.field private static final zzh:Ljava/lang/Object;

.field private static final zzi:Ljava/lang/Runnable;

.field private static final zzj:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;->zzi()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxv;

    const-string v1, "tiktok_systrace"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxv;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxv;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zzd:Ljava/util/WeakHashMap;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaet;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaet;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zze:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zzf:Ljava/util/Deque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zzg:Ljava/util/Deque;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zzh:Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaer;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaer;

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zzi:Ljava/lang/Runnable;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaes;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaes;

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zzj:Ljava/lang/Runnable;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zze:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaev;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaev;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    return-object v0
.end method

.method public static zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadu;-><init>()V

    return-object v0
.end method

.method public static zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zze:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaev;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaev;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    move-result-object p0

    return-object p0
.end method

.method public static zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaev;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaev;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    if-ne v0, p1, :cond_0

    return-object p1

    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu$zza;->zza()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaev;->zza:Z

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaev;->zza:Z

    if-eqz v1, :cond_2

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;)V

    :cond_2
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaev;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    return-object v0
.end method

.method public static zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaev;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zze:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaev;

    return-object v0
.end method

.method public static zzf(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;)Ljava/lang/String;
    .locals 11

    const/4 v0, 0x0

    move-object v1, p0

    move v2, v0

    move v3, v2

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;->zzb()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-interface {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    move-result-object v1

    if-eqz v1, :cond_0

    add-int/lit8 v3, v3, 0x4

    goto :goto_0

    :cond_1
    const/16 v1, 0xfa

    const-string v4, " -> "

    if-le v2, v1, :cond_b

    add-int/lit8 v1, v2, -0x1

    new-array v5, v2, [Ljava/lang/String;

    move-object v6, p0

    :goto_1
    if-ltz v1, :cond_2

    invoke-interface {v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;->zzb()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v1

    invoke-interface {v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    move-result-object v6

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajo;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajo;-><init>()V

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;->zzh([Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;->zzl()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalx;

    move-result-object v6

    move v7, v0

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v9, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v8, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajo;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajo;

    move v7, v9

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajo;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v6

    shr-int/lit8 v7, v2, 0x2

    const/4 v8, 0x0

    if-le v6, v7, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v6, v2, 0x1

    new-array v6, v6, [I

    move v9, v0

    :goto_3
    if-ge v9, v2, :cond_5

    aget-object v10, v5, v9

    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v10, v6, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_5
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    aput v1, v6, v2

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zzb([I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeg;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaef;

    move-result-object v1

    iget v6, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaef;->zzc:I

    iget v9, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaef;->zzb:I

    iget v10, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaef;->zza:I

    sub-int/2addr v9, v10

    mul-int/2addr v6, v9

    if-ge v6, v7, :cond_6

    goto :goto_4

    :cond_6
    move-object v8, v1

    :goto_4
    const-string v1, ""

    if-nez v8, :cond_7

    goto :goto_6

    :cond_7
    iget v6, v8, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaef;->zzb:I

    iget v7, v8, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaef;->zza:I

    sub-int/2addr v6, v7

    iget v9, v8, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaef;->zzc:I

    mul-int/2addr v6, v9

    if-lez v7, :cond_8

    invoke-static {v5, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_8
    move-object v7, v1

    :goto_5
    iget v9, v8, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaef;->zza:I

    add-int/2addr v9, v6

    if-ge v9, v2, :cond_9

    invoke-static {v5, v9, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_9
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v6, v8, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaef;->zza:I

    iget v9, v8, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaef;->zzb:I

    invoke-static {v5, v6, v9}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget v6, v8, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaef;->zzc:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v7, v5, v6, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v5, "%s{%s}x%d%s"

    invoke-static {v2, v5, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_6
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_7

    :cond_a
    return-object v1

    :cond_b
    :goto_7
    new-array v1, v3, [C

    :cond_c
    :goto_8
    if-eqz p0, :cond_d

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;->zzb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v0, v5, v1, v3}, Ljava/lang/String;->getChars(II[CI)V

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    move-result-object p0

    if-eqz p0, :cond_c

    add-int/lit8 v3, v3, -0x4

    const/4 v2, 0x4

    invoke-virtual {v4, v0, v2, v1, v3}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_8

    :cond_d
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static bridge synthetic zzg()Ljava/util/WeakHashMap;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zzd:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method public static zzh(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;)V
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zze:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaev;

    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaev;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;->zzb()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Tried to end span %s, but there was no active span"

    invoke-static {v1, v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagg;->zzd(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;->zzb()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;->zzb()Ljava/lang/String;

    move-result-object v3

    if-ne p0, v1, :cond_0

    invoke-interface {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaev;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Tried to end span %s, but that span is not the current span. The current span is %s."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagz;->zzb(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic zzi()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zzf:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->remove()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zzh:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zzg:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    return-void

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zzg:Ljava/util/Deque;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    invoke-interface {v1, v0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic zzj()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zzf:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zzi:Ljava/lang/Runnable;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxz;->zza()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zzg:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public static zzk(Ljava/lang/String;ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeb;Z)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzady;
    .locals 3

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zze:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaev;

    iget-object p3, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaev;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadw;

    const/4 v1, 0x0

    if-ne p3, v0, :cond_0

    const/4 p3, 0x0

    invoke-static {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaev;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez p3, :cond_1

    new-instance p3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadv;

    invoke-direct {p3, p0, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadv;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeb;Z)V

    goto :goto_1

    :cond_1
    instance-of v2, p3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadm;

    if-eqz v2, :cond_2

    check-cast p3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadm;

    invoke-interface {p3, p0, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadm;->zzd(Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeb;Z)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    move-result-object p3

    goto :goto_1

    :cond_2
    invoke-interface {p3, p0, p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;->zzg(Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeb;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaev;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    move-result-object p3

    :goto_1
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaev;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzady;

    invoke-direct {p0, p3, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzady;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;Z)V

    return-object p0
.end method

.method private static zzl(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x7f

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    return-void
.end method

.method private static zzm(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zzm(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;)V

    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;->zzb()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zzl(Ljava/lang/String;)V

    return-void
.end method

.method private static zzn(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zzn(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;)V

    :cond_0
    return-void
.end method

.method private static zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    move-result-object v0

    if-ne v0, p1, :cond_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    move-result-object v0

    if-eq p0, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;->zzb()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zzl(Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zzn(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;)V

    :cond_3
    if-eqz p1, :cond_4

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zzm(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;)V

    :cond_4
    return-void
.end method
