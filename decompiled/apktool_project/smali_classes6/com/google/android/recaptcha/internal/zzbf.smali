.class public final Lcom/google/android/recaptcha/internal/zzbf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/recaptcha/internal/zzbe;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static zzb:Lcom/google/android/recaptcha/internal/zzmo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# instance fields
.field private final zzc:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final zzd:Lcom/google/android/recaptcha/internal/zzac;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final zze:Lcom/google/android/recaptcha/internal/zznc;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final zzf:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/recaptcha/internal/zzbe;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/recaptcha/internal/zzbe;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzbf;->zza:Lcom/google/android/recaptcha/internal/zzbe;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/recaptcha/internal/zzbb;Ljava/lang/String;Lcom/google/android/recaptcha/internal/zzac;)V
    .locals 2
    .param p1    # Lcom/google/android/recaptcha/internal/zzbb;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/recaptcha/internal/zzac;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/recaptcha/internal/zzbf;->zzc:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/recaptcha/internal/zzbf;->zzd:Lcom/google/android/recaptcha/internal/zzac;

    invoke-static {}, Lcom/google/android/recaptcha/internal/zznf;->zzi()Lcom/google/android/recaptcha/internal/zznc;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/recaptcha/internal/zzbf;->zze:Lcom/google/android/recaptcha/internal/zznc;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/recaptcha/internal/zzbf;->zzf:J

    invoke-virtual {p1}, Lcom/google/android/recaptcha/internal/zzbb;->zza()Lcom/google/android/recaptcha/internal/zzne;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/android/recaptcha/internal/zznc;->zzp(Lcom/google/android/recaptcha/internal/zzne;)Lcom/google/android/recaptcha/internal/zznc;

    invoke-virtual {p1}, Lcom/google/android/recaptcha/internal/zzbb;->zzb()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/android/recaptcha/internal/zznc;->zzd(Ljava/lang/String;)Lcom/google/android/recaptcha/internal/zznc;

    invoke-virtual {p1}, Lcom/google/android/recaptcha/internal/zzbb;->zzc()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/android/recaptcha/internal/zznc;->zzr(Ljava/lang/String;)Lcom/google/android/recaptcha/internal/zznc;

    invoke-virtual {p1}, Lcom/google/android/recaptcha/internal/zzbb;->zzd()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/recaptcha/internal/zzbb;->zzd()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/android/recaptcha/internal/zznc;->zzu(Ljava/lang/String;)Lcom/google/android/recaptcha/internal/zznc;

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/recaptcha/internal/zzmg;->zzb(J)Lcom/google/android/recaptcha/internal/zzlj;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/recaptcha/internal/zzmg;->zzc(Lcom/google/android/recaptcha/internal/zzlj;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/android/recaptcha/internal/zznc;->zzt(Ljava/lang/String;)Lcom/google/android/recaptcha/internal/zznc;

    return-void
.end method

.method private static final zzb(Landroid/content/Context;)Lcom/google/android/recaptcha/internal/zzmo;
    .locals 8

    const-string v0, "unknown"

    const/16 v1, 0x21

    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "com.google.android.gms.version"

    const/4 v4, -0x1

    if-lt v2, v1, :cond_1

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x80

    invoke-static {v6, v7}, Lcom/sunia/HTREnginev2/bip;->a(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/sunia/HTREnginev2/cip;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    :goto_0
    move-object v2, v0

    :goto_1
    :try_start_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v1, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Lcom/sunia/HTREnginev2/jie;->a(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v3

    invoke-static {v1, p0, v3}, Lcom/sunia/HTREnginev2/kie;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :goto_2
    invoke-static {}, Lcom/google/android/recaptcha/internal/zzmo;->zzf()Lcom/google/android/recaptcha/internal/zzmn;

    move-result-object p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, v1}, Lcom/google/android/recaptcha/internal/zzmn;->zzd(I)Lcom/google/android/recaptcha/internal/zzmn;

    invoke-virtual {p0, v2}, Lcom/google/android/recaptcha/internal/zzmn;->zzq(Ljava/lang/String;)Lcom/google/android/recaptcha/internal/zzmn;

    const-string v1, "18.4.0"

    invoke-virtual {p0, v1}, Lcom/google/android/recaptcha/internal/zzmn;->zzs(Ljava/lang/String;)Lcom/google/android/recaptcha/internal/zzmn;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/recaptcha/internal/zzmn;->zzp(Ljava/lang/String;)Lcom/google/android/recaptcha/internal/zzmn;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/recaptcha/internal/zzmn;->zzr(Ljava/lang/String;)Lcom/google/android/recaptcha/internal/zzmn;

    invoke-virtual {p0, v0}, Lcom/google/android/recaptcha/internal/zzmn;->zze(Ljava/lang/String;)Lcom/google/android/recaptcha/internal/zzmn;

    invoke-virtual {p0}, Lcom/google/android/recaptcha/internal/zzin;->zzh()Lcom/google/android/recaptcha/internal/zzit;

    move-result-object p0

    check-cast p0, Lcom/google/android/recaptcha/internal/zzmo;

    return-object p0
.end method


# virtual methods
.method public final zza(ILcom/google/android/recaptcha/internal/zzmr;Landroid/content/Context;)Lcom/google/android/recaptcha/internal/zznf;
    .locals 5
    .param p1    # I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/recaptcha/internal/zzmr;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/recaptcha/internal/zzbf;->zzf:J

    sub-long/2addr v1, v3

    iget-object v3, p0, Lcom/google/android/recaptcha/internal/zzbf;->zze:Lcom/google/android/recaptcha/internal/zznc;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/recaptcha/internal/zznc;->zze(J)Lcom/google/android/recaptcha/internal/zznc;

    invoke-virtual {v3, p1}, Lcom/google/android/recaptcha/internal/zznc;->zzv(I)Lcom/google/android/recaptcha/internal/zznc;

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/google/android/recaptcha/internal/zzbf;->zze:Lcom/google/android/recaptcha/internal/zznc;

    invoke-virtual {p1, p2}, Lcom/google/android/recaptcha/internal/zznc;->zzq(Lcom/google/android/recaptcha/internal/zzmr;)Lcom/google/android/recaptcha/internal/zznc;

    :cond_0
    sget-object p1, Lcom/google/android/recaptcha/internal/zzbf;->zzb:Lcom/google/android/recaptcha/internal/zzmo;

    if-nez p1, :cond_1

    invoke-static {p3}, Lcom/google/android/recaptcha/internal/zzbf;->zzb(Landroid/content/Context;)Lcom/google/android/recaptcha/internal/zzmo;

    move-result-object p1

    sput-object p1, Lcom/google/android/recaptcha/internal/zzbf;->zzb:Lcom/google/android/recaptcha/internal/zzmo;

    :cond_1
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p1, v0

    :goto_0
    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    iget-object p2, p0, Lcom/google/android/recaptcha/internal/zzbf;->zze:Lcom/google/android/recaptcha/internal/zznc;

    iget-object v1, p0, Lcom/google/android/recaptcha/internal/zzbf;->zzc:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/recaptcha/internal/zznr;->zzf()Lcom/google/android/recaptcha/internal/zznq;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/recaptcha/internal/zznq;->zzq(Ljava/lang/String;)Lcom/google/android/recaptcha/internal/zznq;

    sget-object v1, Lcom/google/android/recaptcha/internal/zzbf;->zzb:Lcom/google/android/recaptcha/internal/zzmo;

    if-nez v1, :cond_2

    invoke-static {p3}, Lcom/google/android/recaptcha/internal/zzbf;->zzb(Landroid/content/Context;)Lcom/google/android/recaptcha/internal/zzmo;

    move-result-object v1

    :cond_2
    invoke-virtual {v2, v1}, Lcom/google/android/recaptcha/internal/zznq;->zzd(Lcom/google/android/recaptcha/internal/zzmo;)Lcom/google/android/recaptcha/internal/zznq;

    invoke-virtual {v2, p1}, Lcom/google/android/recaptcha/internal/zznq;->zzp(Ljava/lang/String;)Lcom/google/android/recaptcha/internal/zznq;

    invoke-virtual {v2, v0}, Lcom/google/android/recaptcha/internal/zznq;->zze(Ljava/lang/String;)Lcom/google/android/recaptcha/internal/zznq;

    invoke-virtual {v2}, Lcom/google/android/recaptcha/internal/zzin;->zzh()Lcom/google/android/recaptcha/internal/zzit;

    move-result-object p1

    check-cast p1, Lcom/google/android/recaptcha/internal/zznr;

    invoke-virtual {p2, p1}, Lcom/google/android/recaptcha/internal/zznc;->zzs(Lcom/google/android/recaptcha/internal/zznr;)Lcom/google/android/recaptcha/internal/zznc;

    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzbf;->zze:Lcom/google/android/recaptcha/internal/zznc;

    invoke-virtual {p0}, Lcom/google/android/recaptcha/internal/zzin;->zzh()Lcom/google/android/recaptcha/internal/zzit;

    move-result-object p0

    check-cast p0, Lcom/google/android/recaptcha/internal/zznf;

    return-object p0
.end method
