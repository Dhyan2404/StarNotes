.class public final Lcom/sunia/HTREnginev2/pop;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zzlk;

.field public final synthetic f:Lcom/google/android/gms/measurement/internal/zzlk;

.field public final synthetic g:J

.field public final synthetic h:Z

.field public final synthetic i:Lcom/google/android/gms/measurement/internal/zzlj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzlj;Lcom/google/android/gms/measurement/internal/zzlk;Lcom/google/android/gms/measurement/internal/zzlk;JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/sunia/HTREnginev2/pop;->e:Lcom/google/android/gms/measurement/internal/zzlk;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/pop;->f:Lcom/google/android/gms/measurement/internal/zzlk;

    iput-wide p4, p0, Lcom/sunia/HTREnginev2/pop;->g:J

    iput-boolean p6, p0, Lcom/sunia/HTREnginev2/pop;->h:Z

    iput-object p1, p0, Lcom/sunia/HTREnginev2/pop;->i:Lcom/google/android/gms/measurement/internal/zzlj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/sunia/HTREnginev2/pop;->i:Lcom/google/android/gms/measurement/internal/zzlj;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/pop;->e:Lcom/google/android/gms/measurement/internal/zzlk;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/pop;->f:Lcom/google/android/gms/measurement/internal/zzlk;

    iget-wide v3, p0, Lcom/sunia/HTREnginev2/pop;->g:J

    iget-boolean v5, p0, Lcom/sunia/HTREnginev2/pop;->h:Z

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzlj;->g(Lcom/google/android/gms/measurement/internal/zzlj;Lcom/google/android/gms/measurement/internal/zzlk;Lcom/google/android/gms/measurement/internal/zzlk;JZLandroid/os/Bundle;)V

    return-void
.end method
