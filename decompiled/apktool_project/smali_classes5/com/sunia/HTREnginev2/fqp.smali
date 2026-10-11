.class public final Lcom/sunia/HTREnginev2/fqp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public e:J

.field public f:J

.field public final synthetic g:Lcom/sunia/HTREnginev2/gqp;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/gqp;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/fqp;->g:Lcom/sunia/HTREnginev2/gqp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/sunia/HTREnginev2/fqp;->e:J

    iput-wide p4, p0, Lcom/sunia/HTREnginev2/fqp;->f:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/fqp;->g:Lcom/sunia/HTREnginev2/gqp;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/gqp;->b:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzni;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzni;-><init>(Lcom/sunia/HTREnginev2/fqp;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhv;->zzb(Ljava/lang/Runnable;)V

    return-void
.end method
