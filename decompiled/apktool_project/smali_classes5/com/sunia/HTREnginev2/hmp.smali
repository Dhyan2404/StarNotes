.class public final Lcom/sunia/HTREnginev2/hmp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/google/android/gms/measurement/internal/zzae;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Lcom/google/android/gms/measurement/internal/zzic;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzic;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/sunia/HTREnginev2/hmp;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/hmp;->f:Ljava/lang/String;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/hmp;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/hmp;->h:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/hmp;->h:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->a(Lcom/google/android/gms/measurement/internal/zzic;)Lcom/google/android/gms/measurement/internal/zznv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznv;->h0()V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/hmp;->h:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->a(Lcom/google/android/gms/measurement/internal/zzic;)Lcom/google/android/gms/measurement/internal/zznv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/sunia/HTREnginev2/hgp;

    move-result-object v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/hmp;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/hmp;->f:Ljava/lang/String;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/hmp;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/sunia/HTREnginev2/hgp;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
