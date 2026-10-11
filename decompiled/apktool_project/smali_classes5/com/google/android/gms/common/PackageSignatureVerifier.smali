.class public Lcom/google/android/gms/common/PackageSignatureVerifier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation

.annotation runtime Lcom/google/errorprone/annotations/CheckReturnValue;
.end annotation

.annotation runtime Lcom/google/errorprone/annotations/RestrictedInheritance;
    allowedOnPath = ".*javatests.*/com/google/android/gms/common/.*"
    explanation = "Sub classing of GMS Core\'s APIs are restricted to testing fakes."
    link = "go/gmscore-restrictedinheritance"
.end annotation


# static fields
.field public static a:Lcom/sunia/HTREnginev2/tfp;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static volatile b:Lcom/sunia/HTREnginev2/rfp;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/sunia/HTREnginev2/tfp;
    .locals 2

    const-class v0, Lcom/google/android/gms/common/PackageSignatureVerifier;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/PackageSignatureVerifier;->a:Lcom/sunia/HTREnginev2/tfp;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sunia/HTREnginev2/tfp;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/tfp;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/gms/common/PackageSignatureVerifier;->a:Lcom/sunia/HTREnginev2/tfp;

    :cond_0
    sget-object p0, Lcom/google/android/gms/common/PackageSignatureVerifier;->a:Lcom/sunia/HTREnginev2/tfp;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public queryPackageSignatureVerified(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/common/PackageVerificationResult;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->honorsDebugCertificates(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/common/PackageSignatureVerifier;->a(Landroid/content/Context;)Lcom/sunia/HTREnginev2/tfp;

    invoke-static {}, Lcom/sunia/HTREnginev2/ypp;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    if-eq v0, p0, :cond_0

    const-string v0, "-0"

    goto :goto_0

    :cond_0
    const-string v0, "-1"

    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/common/PackageSignatureVerifier;->b:Lcom/sunia/HTREnginev2/rfp;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/android/gms/common/PackageSignatureVerifier;->b:Lcom/sunia/HTREnginev2/rfp;

    invoke-static {v1}, Lcom/sunia/HTREnginev2/rfp;->b(Lcom/sunia/HTREnginev2/rfp;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p0, Lcom/google/android/gms/common/PackageSignatureVerifier;->b:Lcom/sunia/HTREnginev2/rfp;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/rfp;->a(Lcom/sunia/HTREnginev2/rfp;)Lcom/google/android/gms/common/PackageVerificationResult;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/common/PackageSignatureVerifier;->a(Landroid/content/Context;)Lcom/sunia/HTREnginev2/tfp;

    const/4 p1, 0x0

    invoke-static {p2, p0, p1, p1}, Lcom/sunia/HTREnginev2/ypp;->c(Ljava/lang/String;ZZZ)Lcom/sunia/HTREnginev2/bsp;

    move-result-object p0

    iget-boolean p1, p0, Lcom/sunia/HTREnginev2/bsp;->a:Z

    if-eqz p1, :cond_2

    iget p0, p0, Lcom/sunia/HTREnginev2/bsp;->d:I

    new-instance p1, Lcom/sunia/HTREnginev2/rfp;

    invoke-static {p2, p0}, Lcom/google/android/gms/common/PackageVerificationResult;->zzd(Ljava/lang/String;I)Lcom/google/android/gms/common/PackageVerificationResult;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/sunia/HTREnginev2/rfp;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/PackageVerificationResult;)V

    sput-object p1, Lcom/google/android/gms/common/PackageSignatureVerifier;->b:Lcom/sunia/HTREnginev2/rfp;

    sget-object p0, Lcom/google/android/gms/common/PackageSignatureVerifier;->b:Lcom/sunia/HTREnginev2/rfp;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/rfp;->a(Lcom/sunia/HTREnginev2/rfp;)Lcom/google/android/gms/common/PackageVerificationResult;

    move-result-object p0

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/sunia/HTREnginev2/bsp;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/sunia/HTREnginev2/bsp;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/bsp;->c:Ljava/lang/Throwable;

    invoke-static {p2, p1, p0}, Lcom/google/android/gms/common/PackageVerificationResult;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/common/PackageVerificationResult;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_3
    new-instance p0, Lcom/google/android/gms/common/zzae;

    invoke-direct {p0}, Lcom/google/android/gms/common/zzae;-><init>()V

    throw p0
.end method

.method public queryPackageSignatureVerifiedWithRetry(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/common/PackageVerificationResult;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/PackageSignatureVerifier;->queryPackageSignatureVerified(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/common/PackageVerificationResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/PackageVerificationResult;->zzb()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/PackageSignatureVerifier;->queryPackageSignatureVerified(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/common/PackageVerificationResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/common/PackageVerificationResult;->zzc()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "PkgSignatureVerifier"

    const-string p2, "Got flaky result during package signature verification"

    invoke-static {p1, p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method
