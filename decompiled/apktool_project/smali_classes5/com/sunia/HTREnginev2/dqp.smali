.class public final Lcom/sunia/HTREnginev2/dqp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:J

.field public final synthetic f:Lcom/google/android/gms/measurement/internal/zznb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zznb;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-wide p2, p0, Lcom/sunia/HTREnginev2/dqp;->e:J

    iput-object p1, p0, Lcom/sunia/HTREnginev2/dqp;->f:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/dqp;->f:Lcom/google/android/gms/measurement/internal/zznb;

    iget-wide v1, p0, Lcom/sunia/HTREnginev2/dqp;->e:J

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zznb;->c(Lcom/google/android/gms/measurement/internal/zznb;J)V

    return-void
.end method
