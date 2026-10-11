.class public Landroidx/biometric/FingerprintDialogFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/biometric/FingerprintDialogFragment;->r0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroidx/biometric/FingerprintDialogFragment;


# direct methods
.method public constructor <init>(Landroidx/biometric/FingerprintDialogFragment;)V
    .locals 0

    iput-object p1, p0, Landroidx/biometric/FingerprintDialogFragment$d;->a:Landroidx/biometric/FingerprintDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Landroidx/biometric/FingerprintDialogFragment$d;->a:Landroidx/biometric/FingerprintDialogFragment;

    iget-object v1, v0, Landroidx/biometric/FingerprintDialogFragment;->z1:Landroid/os/Handler;

    iget-object v0, v0, Landroidx/biometric/FingerprintDialogFragment;->A1:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroidx/biometric/FingerprintDialogFragment$d;->a:Landroidx/biometric/FingerprintDialogFragment;

    invoke-virtual {v0, p1}, Landroidx/biometric/FingerprintDialogFragment;->A0(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Landroidx/biometric/FingerprintDialogFragment$d;->a:Landroidx/biometric/FingerprintDialogFragment;

    iget-object p1, p0, Landroidx/biometric/FingerprintDialogFragment;->z1:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/biometric/FingerprintDialogFragment;->A1:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroidx/biometric/FingerprintDialogFragment$d;->a(Ljava/lang/CharSequence;)V

    return-void
.end method
