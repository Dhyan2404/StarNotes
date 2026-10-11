.class public final Lcom/sunia/HTREnginev2/ojp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:J

.field public final synthetic g:Lcom/google/android/gms/measurement/internal/zzb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzb;Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/sunia/HTREnginev2/ojp;->e:Ljava/lang/String;

    iput-wide p3, p0, Lcom/sunia/HTREnginev2/ojp;->f:J

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ojp;->g:Lcom/google/android/gms/measurement/internal/zzb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ojp;->g:Lcom/google/android/gms/measurement/internal/zzb;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/ojp;->e:Ljava/lang/String;

    iget-wide v2, p0, Lcom/sunia/HTREnginev2/ojp;->f:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzb;->f(Lcom/google/android/gms/measurement/internal/zzb;Ljava/lang/String;J)V

    return-void
.end method
