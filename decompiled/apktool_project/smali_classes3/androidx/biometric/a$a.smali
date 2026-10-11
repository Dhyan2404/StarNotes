.class public Landroidx/biometric/a$a;
.super Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/biometric/a;->b()Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/biometric/a;


# direct methods
.method public constructor <init>(Landroidx/biometric/a;)V
    .locals 0

    iput-object p1, p0, Landroidx/biometric/a$a;->a:Landroidx/biometric/a;

    invoke-direct {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Landroidx/biometric/a$a;->a:Landroidx/biometric/a;

    iget-object p0, p0, Landroidx/biometric/a;->c:Landroidx/biometric/a$d;

    invoke-virtual {p0, p1, p2}, Landroidx/biometric/a$d;->a(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 0

    iget-object p0, p0, Landroidx/biometric/a$a;->a:Landroidx/biometric/a;

    iget-object p0, p0, Landroidx/biometric/a;->c:Landroidx/biometric/a$d;

    invoke-virtual {p0}, Landroidx/biometric/a$d;->b()V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Landroidx/biometric/a$a;->a:Landroidx/biometric/a;

    iget-object p0, p0, Landroidx/biometric/a;->c:Landroidx/biometric/a$d;

    invoke-virtual {p0, p2}, Landroidx/biometric/a$d;->c(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;->getCryptoObject()Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    move-result-object p1

    invoke-static {p1}, Landroidx/biometric/c;->c(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;)Landroidx/biometric/BiometricPrompt$CryptoObject;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance v0, Landroidx/biometric/BiometricPrompt$AuthenticationResult;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Landroidx/biometric/BiometricPrompt$AuthenticationResult;-><init>(Landroidx/biometric/BiometricPrompt$CryptoObject;I)V

    iget-object p0, p0, Landroidx/biometric/a$a;->a:Landroidx/biometric/a;

    iget-object p0, p0, Landroidx/biometric/a;->c:Landroidx/biometric/a$d;

    invoke-virtual {p0, v0}, Landroidx/biometric/a$d;->d(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V

    return-void
.end method
