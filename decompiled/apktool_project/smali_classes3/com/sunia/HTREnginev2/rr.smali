.class public final synthetic Lcom/sunia/HTREnginev2/rr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroidx/biometric/BiometricFragment;

.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Landroidx/biometric/BiometricFragment;ILjava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/rr;->e:Landroidx/biometric/BiometricFragment;

    iput p2, p0, Lcom/sunia/HTREnginev2/rr;->f:I

    iput-object p3, p0, Lcom/sunia/HTREnginev2/rr;->g:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/rr;->e:Landroidx/biometric/BiometricFragment;

    iget v1, p0, Lcom/sunia/HTREnginev2/rr;->f:I

    iget-object p0, p0, Lcom/sunia/HTREnginev2/rr;->g:Ljava/lang/CharSequence;

    invoke-static {v0, v1, p0}, Landroidx/biometric/BiometricFragment;->u0(Landroidx/biometric/BiometricFragment;ILjava/lang/CharSequence;)V

    return-void
.end method
