.class public Landroidx/biometric/BiometricManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/biometric/BiometricManager$a;,
        Landroidx/biometric/BiometricManager$b;,
        Landroidx/biometric/BiometricManager$c;,
        Landroidx/biometric/BiometricManager$d;,
        Landroidx/biometric/BiometricManager$e;,
        Landroidx/biometric/BiometricManager$f;,
        Landroidx/biometric/BiometricManager$Strings;,
        Landroidx/biometric/BiometricManager$Authenticators;
    }
.end annotation


# static fields
.field public static final BIOMETRIC_ERROR_HW_UNAVAILABLE:I = 0x1

.field public static final BIOMETRIC_ERROR_NONE_ENROLLED:I = 0xb

.field public static final BIOMETRIC_ERROR_NO_HARDWARE:I = 0xc

.field public static final BIOMETRIC_ERROR_SECURITY_UPDATE_REQUIRED:I = 0xf

.field public static final BIOMETRIC_ERROR_UNSUPPORTED:I = -0x2

.field public static final BIOMETRIC_STATUS_UNKNOWN:I = -0x1

.field public static final BIOMETRIC_SUCCESS:I = 0x0

.field public static final d:Ljava/lang/String; = "BiometricManager"

.field public static final e:I = 0x0

.field public static final f:I = 0x1

.field public static final g:I = 0x2

.field public static final h:I = 0x4

.field public static final i:I = 0x8


# instance fields
.field public final a:Landroidx/biometric/BiometricManager$e;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Landroid/hardware/biometrics/BiometricManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final c:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/biometric/BiometricManager$e;)V
    .locals 2
    .param p1    # Landroidx/biometric/BiometricManager$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/biometric/BiometricManager;->a:Landroidx/biometric/BiometricManager$e;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-interface {p1}, Landroidx/biometric/BiometricManager$e;->g()Landroid/hardware/biometrics/BiometricManager;

    move-result-object v1

    iput-object v1, p0, Landroidx/biometric/BiometricManager;->b:Landroid/hardware/biometrics/BiometricManager;

    const/16 v1, 0x1d

    if-gt v0, v1, :cond_0

    invoke-interface {p1}, Landroidx/biometric/BiometricManager$e;->b()Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Landroidx/biometric/BiometricManager;->c:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    return-void
.end method

.method public static from(Landroid/content/Context;)Landroidx/biometric/BiometricManager;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroidx/biometric/BiometricManager;

    new-instance v1, Landroidx/biometric/BiometricManager$d;

    invoke-direct {v1, p0}, Landroidx/biometric/BiometricManager$d;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Landroidx/biometric/BiometricManager;-><init>(Landroidx/biometric/BiometricManager$e;)V

    return-object v0
.end method


# virtual methods
.method public final a(I)I
    .locals 2

    invoke-static {p1}, Landroidx/biometric/b;->f(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x2

    return p0

    :cond_0
    const/16 v0, 0xc

    if-nez p1, :cond_1

    return v0

    :cond_1
    iget-object v1, p0, Landroidx/biometric/BiometricManager;->a:Landroidx/biometric/BiometricManager$e;

    invoke-interface {v1}, Landroidx/biometric/BiometricManager$e;->c()Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    invoke-static {p1}, Landroidx/biometric/b;->d(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Landroidx/biometric/BiometricManager;->a:Landroidx/biometric/BiometricManager$e;

    invoke-interface {p0}, Landroidx/biometric/BiometricManager$e;->e()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    goto :goto_0

    :cond_3
    const/16 p0, 0xb

    :goto_0
    return p0

    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_6

    invoke-static {p1}, Landroidx/biometric/b;->g(I)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroidx/biometric/BiometricManager;->e()I

    move-result p0

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroidx/biometric/BiometricManager;->d()I

    move-result p0

    :goto_1
    return p0

    :cond_6
    invoke-virtual {p0}, Landroidx/biometric/BiometricManager;->b()I

    move-result p0

    return p0
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Landroidx/biometric/BiometricManager;->c:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    if-nez v0, :cond_0

    const-string p0, "BiometricManager"

    const-string v0, "Failure in canAuthenticate(). FingerprintManager was null."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {v0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->isHardwareDetected()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 p0, 0xc

    return p0

    :cond_1
    iget-object p0, p0, Landroidx/biometric/BiometricManager;->c:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    invoke-virtual {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->hasEnrolledFingerprints()Z

    move-result p0

    if-nez p0, :cond_2

    const/16 p0, 0xb

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Landroidx/biometric/BiometricManager;->a:Landroidx/biometric/BiometricManager$e;

    invoke-interface {v0}, Landroidx/biometric/BiometricManager$e;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/biometric/BiometricManager;->b()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroidx/biometric/BiometricManager;->b()I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public canAuthenticate()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0xff

    .line 1
    invoke-virtual {p0, v0}, Landroidx/biometric/BiometricManager;->canAuthenticate(I)I

    move-result p0

    return p0
.end method

.method public canAuthenticate(I)I
    .locals 2

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    .line 3
    iget-object p0, p0, Landroidx/biometric/BiometricManager;->b:Landroid/hardware/biometrics/BiometricManager;

    if-nez p0, :cond_0

    const-string p0, "BiometricManager"

    const-string p1, "Failure in canAuthenticate(). BiometricManager was null."

    .line 4
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 5
    :cond_0
    invoke-static {p0, p1}, Landroidx/biometric/BiometricManager$b;->a(Landroid/hardware/biometrics/BiometricManager;I)I

    move-result p0

    return p0

    .line 6
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/biometric/BiometricManager;->a(I)I

    move-result p0

    return p0
.end method

.method public final d()I
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation

    const-string v0, "BiometricManager"

    invoke-static {}, Landroidx/biometric/BiometricManager$a;->c()Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Landroidx/biometric/c;->a()Landroidx/biometric/BiometricPrompt$CryptoObject;

    move-result-object v2

    invoke-static {v2}, Landroidx/biometric/c;->d(Landroidx/biometric/BiometricPrompt$CryptoObject;)Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    move-result-object v2

    if-eqz v2, :cond_2

    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Landroidx/biometric/BiometricManager;->b:Landroid/hardware/biometrics/BiometricManager;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    const-string v1, "Invalid return type for canAuthenticate(CryptoObject)."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "Failed to invoke canAuthenticate(CryptoObject)."

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroidx/biometric/BiometricManager;->e()I

    move-result v0

    iget-object v1, p0, Landroidx/biometric/BiometricManager;->a:Landroidx/biometric/BiometricManager$e;

    invoke-interface {v1}, Landroidx/biometric/BiometricManager$e;->f()Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroidx/biometric/BiometricManager;->c()I

    move-result p0

    return p0

    :cond_4
    :goto_2
    return v0
.end method

.method public final e()I
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation

    iget-object p0, p0, Landroidx/biometric/BiometricManager;->b:Landroid/hardware/biometrics/BiometricManager;

    if-nez p0, :cond_0

    const-string p0, "BiometricManager"

    const-string v0, "Failure in canAuthenticate(). BiometricManager was null."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {p0}, Landroidx/biometric/BiometricManager$a;->a(Landroid/hardware/biometrics/BiometricManager;)I

    move-result p0

    return p0
.end method

.method public getStrings(I)Landroidx/biometric/BiometricManager$Strings;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.USE_BIOMETRIC"
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    iget-object p0, p0, Landroidx/biometric/BiometricManager;->b:Landroid/hardware/biometrics/BiometricManager;

    if-nez p0, :cond_0

    const-string p0, "BiometricManager"

    const-string p1, "Failure in getStrings(). BiometricManager was null."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroidx/biometric/BiometricManager$Strings;

    invoke-static {p0, p1}, Landroidx/biometric/BiometricManager$c;->d(Landroid/hardware/biometrics/BiometricManager;I)Landroid/hardware/biometrics/BiometricManager$Strings;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/biometric/BiometricManager$Strings;-><init>(Landroid/hardware/biometrics/BiometricManager$Strings;)V

    return-object v0

    :cond_1
    new-instance v0, Landroidx/biometric/BiometricManager$f;

    iget-object v1, p0, Landroidx/biometric/BiometricManager;->a:Landroidx/biometric/BiometricManager$e;

    invoke-interface {v1}, Landroidx/biometric/BiometricManager$e;->i()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v1, p0, Landroidx/biometric/BiometricManager;->a:Landroidx/biometric/BiometricManager$e;

    invoke-interface {v1}, Landroidx/biometric/BiometricManager$e;->h()Z

    move-result v5

    iget-object v1, p0, Landroidx/biometric/BiometricManager;->a:Landroidx/biometric/BiometricManager$e;

    invoke-interface {v1}, Landroidx/biometric/BiometricManager$e;->d()Z

    move-result v6

    iget-object v1, p0, Landroidx/biometric/BiometricManager;->a:Landroidx/biometric/BiometricManager$e;

    invoke-interface {v1}, Landroidx/biometric/BiometricManager$e;->a()Z

    move-result v7

    iget-object v1, p0, Landroidx/biometric/BiometricManager;->a:Landroidx/biometric/BiometricManager$e;

    invoke-interface {v1}, Landroidx/biometric/BiometricManager$e;->e()Z

    move-result v8

    move-object v1, v0

    move-object v2, p0

    move v4, p1

    invoke-direct/range {v1 .. v8}, Landroidx/biometric/BiometricManager$f;-><init>(Landroidx/biometric/BiometricManager;Landroid/content/res/Resources;IZZZZ)V

    new-instance p0, Landroidx/biometric/BiometricManager$Strings;

    invoke-direct {p0, v0}, Landroidx/biometric/BiometricManager$Strings;-><init>(Landroidx/biometric/BiometricManager$f;)V

    return-object p0
.end method
