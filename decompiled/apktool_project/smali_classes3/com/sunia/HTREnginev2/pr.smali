.class public final synthetic Lcom/sunia/HTREnginev2/pr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroidx/biometric/BiometricFragment;


# direct methods
.method public synthetic constructor <init>(Landroidx/biometric/BiometricFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/pr;->e:Landroidx/biometric/BiometricFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/pr;->e:Landroidx/biometric/BiometricFragment;

    invoke-static {p0}, Landroidx/biometric/BiometricFragment;->r0(Landroidx/biometric/BiometricFragment;)V

    return-void
.end method
