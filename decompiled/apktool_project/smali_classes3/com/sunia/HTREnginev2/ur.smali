.class public final synthetic Lcom/sunia/HTREnginev2/ur;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Landroidx/biometric/BiometricFragment;


# direct methods
.method public synthetic constructor <init>(Landroidx/biometric/BiometricFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ur;->a:Landroidx/biometric/BiometricFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ur;->a:Landroidx/biometric/BiometricFragment;

    check-cast p1, Lcom/sunia/HTREnginev2/nr;

    invoke-static {p0, p1}, Landroidx/biometric/BiometricFragment;->n0(Landroidx/biometric/BiometricFragment;Lcom/sunia/HTREnginev2/nr;)V

    return-void
.end method
