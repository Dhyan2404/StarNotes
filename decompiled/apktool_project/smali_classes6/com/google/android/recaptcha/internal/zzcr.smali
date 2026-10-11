.class public final Lcom/google/android/recaptcha/internal/zzcr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzdd;


# static fields
.field public static final zza:Lcom/google/android/recaptcha/internal/zzcr;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/recaptcha/internal/zzcr;

    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzcr;-><init>()V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzcr;->zza:Lcom/google/android/recaptcha/internal/zzcr;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs zza(ILcom/google/android/recaptcha/internal/zzcj;[Lcom/google/android/recaptcha/internal/zzpq;)V
    .locals 3
    .param p2    # Lcom/google/android/recaptcha/internal/zzcj;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [Lcom/google/android/recaptcha/internal/zzpq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/recaptcha/internal/zzae;
        }
    .end annotation

    array-length p0, p3

    const/4 p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p0, p1, :cond_6

    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzcj;->zzc()Lcom/google/android/recaptcha/internal/zzck;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p1, p3, p1

    invoke-virtual {p0, p1}, Lcom/google/android/recaptcha/internal/zzck;->zza(Lcom/google/android/recaptcha/internal/zzpq;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/String;

    const/4 v2, 0x1

    if-eq v2, p1, :cond_0

    move-object p0, v0

    :cond_0
    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_5

    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzcj;->zzc()Lcom/google/android/recaptcha/internal/zzck;

    move-result-object p1

    aget-object p3, p3, v2

    invoke-virtual {p1, p3}, Lcom/google/android/recaptcha/internal/zzck;->zza(Lcom/google/android/recaptcha/internal/zzpq;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    instance-of p3, p1, Ljava/lang/Integer;

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    instance-of p3, p1, Ljava/lang/Short;

    if-nez p3, :cond_3

    instance-of p3, p1, Ljava/lang/Byte;

    if-nez p3, :cond_3

    instance-of p3, p1, Ljava/lang/Long;

    if-nez p3, :cond_3

    instance-of p3, p1, Ljava/lang/Double;

    if-nez p3, :cond_3

    instance-of p3, p1, Ljava/lang/Float;

    if-nez p3, :cond_3

    instance-of p3, p1, Ljava/lang/Boolean;

    if-nez p3, :cond_3

    instance-of p3, p1, Ljava/lang/Character;

    if-nez p3, :cond_3

    instance-of p3, p1, Ljava/lang/String;

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/google/android/recaptcha/internal/zzae;

    const/4 p1, 0x7

    invoke-direct {p0, v1, p1, v0}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    throw p0

    :cond_3
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzcj;->zzi()Lcom/google/android/recaptcha/internal/zzcd;

    move-result-object p2

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/google/android/recaptcha/internal/zzcd;->zzb(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_4
    new-instance p0, Lcom/google/android/recaptcha/internal/zzae;

    invoke-direct {p0, v1, v1, v0}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    throw p0

    :cond_5
    new-instance p0, Lcom/google/android/recaptcha/internal/zzae;

    const/4 p1, 0x5

    invoke-direct {p0, v1, p1, v0}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    throw p0

    :cond_6
    new-instance p0, Lcom/google/android/recaptcha/internal/zzae;

    const/4 p1, 0x3

    invoke-direct {p0, v1, p1, v0}, Lcom/google/android/recaptcha/internal/zzae;-><init>(IILjava/lang/Throwable;)V

    throw p0
.end method
