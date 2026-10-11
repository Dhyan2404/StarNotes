.class public final Lcom/google/android/recaptcha/internal/zzbr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/recaptcha/internal/zzbr;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/recaptcha/internal/zzbr;

    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzbr;-><init>()V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzbr;->zza:Lcom/google/android/recaptcha/internal/zzbr;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final zza(I)Lcom/google/android/recaptcha/internal/zzp;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/16 v0, 0x193

    const/4 v1, 0x0

    if-eq p0, v0, :cond_2

    const/16 v0, 0x194

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1f7

    if-eq p0, v0, :cond_0

    new-instance p0, Lcom/google/android/recaptcha/internal/zzp;

    sget-object v0, Lcom/google/android/recaptcha/internal/zzn;->zzc:Lcom/google/android/recaptcha/internal/zzn;

    sget-object v2, Lcom/google/android/recaptcha/internal/zzl;->zzW:Lcom/google/android/recaptcha/internal/zzl;

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/recaptcha/internal/zzp;-><init>(Lcom/google/android/recaptcha/internal/zzn;Lcom/google/android/recaptcha/internal/zzl;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/google/android/recaptcha/internal/zzp;

    sget-object v0, Lcom/google/android/recaptcha/internal/zzn;->zzl:Lcom/google/android/recaptcha/internal/zzn;

    sget-object v2, Lcom/google/android/recaptcha/internal/zzl;->zzV:Lcom/google/android/recaptcha/internal/zzl;

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/recaptcha/internal/zzp;-><init>(Lcom/google/android/recaptcha/internal/zzn;Lcom/google/android/recaptcha/internal/zzl;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/google/android/recaptcha/internal/zzp;

    sget-object v0, Lcom/google/android/recaptcha/internal/zzn;->zze:Lcom/google/android/recaptcha/internal/zzn;

    sget-object v2, Lcom/google/android/recaptcha/internal/zzl;->zzs:Lcom/google/android/recaptcha/internal/zzl;

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/recaptcha/internal/zzp;-><init>(Lcom/google/android/recaptcha/internal/zzn;Lcom/google/android/recaptcha/internal/zzl;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/google/android/recaptcha/internal/zzp;

    sget-object v0, Lcom/google/android/recaptcha/internal/zzn;->zzl:Lcom/google/android/recaptcha/internal/zzn;

    sget-object v2, Lcom/google/android/recaptcha/internal/zzl;->zzV:Lcom/google/android/recaptcha/internal/zzl;

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/recaptcha/internal/zzp;-><init>(Lcom/google/android/recaptcha/internal/zzn;Lcom/google/android/recaptcha/internal/zzl;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method
