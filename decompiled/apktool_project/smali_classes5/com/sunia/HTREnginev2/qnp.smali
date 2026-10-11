.class public final Lcom/sunia/HTREnginev2/qnp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:J

.field public final synthetic i:Lcom/google/android/gms/measurement/internal/zzjq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzjq;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/sunia/HTREnginev2/qnp;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/qnp;->f:Ljava/lang/String;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/qnp;->g:Ljava/lang/Object;

    iput-wide p5, p0, Lcom/sunia/HTREnginev2/qnp;->h:J

    iput-object p1, p0, Lcom/sunia/HTREnginev2/qnp;->i:Lcom/google/android/gms/measurement/internal/zzjq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/sunia/HTREnginev2/qnp;->i:Lcom/google/android/gms/measurement/internal/zzjq;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/qnp;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/qnp;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/sunia/HTREnginev2/qnp;->g:Ljava/lang/Object;

    iget-wide v4, p0, Lcom/sunia/HTREnginev2/qnp;->h:J

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzjq;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    return-void
.end method
