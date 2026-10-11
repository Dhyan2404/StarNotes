.class public final Lcom/sunia/HTREnginev2/qop;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroid/os/Bundle;

.field public final synthetic f:Lcom/google/android/gms/measurement/internal/zzlk;

.field public final synthetic g:Lcom/google/android/gms/measurement/internal/zzlk;

.field public final synthetic h:J

.field public final synthetic i:Lcom/google/android/gms/measurement/internal/zzlj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzlj;Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/zzlk;Lcom/google/android/gms/measurement/internal/zzlk;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/sunia/HTREnginev2/qop;->e:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/qop;->f:Lcom/google/android/gms/measurement/internal/zzlk;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/qop;->g:Lcom/google/android/gms/measurement/internal/zzlk;

    iput-wide p5, p0, Lcom/sunia/HTREnginev2/qop;->h:J

    iput-object p1, p0, Lcom/sunia/HTREnginev2/qop;->i:Lcom/google/android/gms/measurement/internal/zzlj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/sunia/HTREnginev2/qop;->i:Lcom/google/android/gms/measurement/internal/zzlj;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/qop;->e:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/qop;->f:Lcom/google/android/gms/measurement/internal/zzlk;

    iget-object v3, p0, Lcom/sunia/HTREnginev2/qop;->g:Lcom/google/android/gms/measurement/internal/zzlk;

    iget-wide v4, p0, Lcom/sunia/HTREnginev2/qop;->h:J

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzlj;->e(Lcom/google/android/gms/measurement/internal/zzlj;Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/zzlk;Lcom/google/android/gms/measurement/internal/zzlk;J)V

    return-void
.end method
