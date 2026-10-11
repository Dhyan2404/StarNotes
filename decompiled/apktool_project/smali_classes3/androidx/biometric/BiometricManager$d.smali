.class public Landroidx/biometric/BiometricManager$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/biometric/BiometricManager$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/biometric/BiometricManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/biometric/BiometricManager$d;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 0

    iget-object p0, p0, Landroidx/biometric/BiometricManager$d;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/srk;->c(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public b()Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroidx/biometric/BiometricManager$d;->a:Landroid/content/Context;

    invoke-static {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->from(Landroid/content/Context;)Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    move-result-object p0

    return-object p0
.end method

.method public c()Z
    .locals 0

    iget-object p0, p0, Landroidx/biometric/BiometricManager$d;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/kui;->a(Landroid/content/Context;)Landroid/app/KeyguardManager;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public d()Z
    .locals 0

    iget-object p0, p0, Landroidx/biometric/BiometricManager$d;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/srk;->a(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public e()Z
    .locals 0

    iget-object p0, p0, Landroidx/biometric/BiometricManager$d;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/kui;->b(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public f()Z
    .locals 1

    iget-object p0, p0, Landroidx/biometric/BiometricManager$d;->a:Landroid/content/Context;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {p0, v0}, Landroidx/biometric/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public g()Landroid/hardware/biometrics/BiometricManager;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation

    iget-object p0, p0, Landroidx/biometric/BiometricManager$d;->a:Landroid/content/Context;

    invoke-static {p0}, Landroidx/biometric/BiometricManager$a;->b(Landroid/content/Context;)Landroid/hardware/biometrics/BiometricManager;

    move-result-object p0

    return-object p0
.end method

.method public h()Z
    .locals 0

    iget-object p0, p0, Landroidx/biometric/BiometricManager$d;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/srk;->b(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public i()Landroid/content/res/Resources;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Landroidx/biometric/BiometricManager$d;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method
