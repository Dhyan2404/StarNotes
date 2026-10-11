.class public final synthetic Lcom/sunia/HTREnginev2/sr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroidx/biometric/BiometricFragment;

.field public final synthetic f:Landroidx/biometric/BiometricPrompt$AuthenticationResult;


# direct methods
.method public synthetic constructor <init>(Landroidx/biometric/BiometricFragment;Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/sr;->e:Landroidx/biometric/BiometricFragment;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/sr;->f:Landroidx/biometric/BiometricPrompt$AuthenticationResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/sr;->e:Landroidx/biometric/BiometricFragment;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/sr;->f:Landroidx/biometric/BiometricPrompt$AuthenticationResult;

    invoke-static {v0, p0}, Landroidx/biometric/BiometricFragment;->m0(Landroidx/biometric/BiometricFragment;Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V

    return-void
.end method
