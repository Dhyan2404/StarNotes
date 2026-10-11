.class public final Lcom/sunia/HTREnginev2/vnp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroid/os/Bundle;

.field public final synthetic f:Lcom/google/android/gms/measurement/internal/zzjq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzjq;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/sunia/HTREnginev2/vnp;->e:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vnp;->f:Lcom/google/android/gms/measurement/internal/zzjq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/vnp;->f:Lcom/google/android/gms/measurement/internal/zzjq;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vnp;->e:Landroid/os/Bundle;

    invoke-static {v0, p0}, Lcom/google/android/gms/measurement/internal/zzjq;->l(Lcom/google/android/gms/measurement/internal/zzjq;Landroid/os/Bundle;)V

    return-void
.end method
