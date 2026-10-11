.class public final Lcom/sunia/HTREnginev2/wqp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Landroid/os/Bundle;

.field public final synthetic h:Lcom/sunia/HTREnginev2/uqp;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/uqp;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/sunia/HTREnginev2/wqp;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/wqp;->f:Ljava/lang/String;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/wqp;->g:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/wqp;->h:Lcom/sunia/HTREnginev2/uqp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/sunia/HTREnginev2/wqp;->h:Lcom/sunia/HTREnginev2/uqp;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/uqp;->a:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v1

    iget-object v2, p0, Lcom/sunia/HTREnginev2/wqp;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/sunia/HTREnginev2/wqp;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/sunia/HTREnginev2/wqp;->g:Landroid/os/Bundle;

    const-string v5, "auto"

    iget-object v0, p0, Lcom/sunia/HTREnginev2/wqp;->h:Lcom/sunia/HTREnginev2/uqp;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/uqp;->a:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v1 .. v9}, Lcom/google/android/gms/measurement/internal/zzos;->i(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzbf;

    move-result-object v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/wqp;->h:Lcom/sunia/HTREnginev2/uqp;

    iget-object v1, v1, Lcom/sunia/HTREnginev2/uqp;->a:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzbf;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/wqp;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, p0}, Lcom/google/android/gms/measurement/internal/zznv;->q(Lcom/google/android/gms/measurement/internal/zzbf;Ljava/lang/String;)V

    return-void
.end method
