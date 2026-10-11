.class public final Lcom/sunia/HTREnginev2/aop;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Ljava/lang/Boolean;

.field public final synthetic f:Lcom/google/android/gms/measurement/internal/zzjq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzjq;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/sunia/HTREnginev2/aop;->e:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/aop;->f:Lcom/google/android/gms/measurement/internal/zzjq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/aop;->f:Lcom/google/android/gms/measurement/internal/zzjq;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/aop;->e:Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/google/android/gms/measurement/internal/zzjq;->o(Lcom/google/android/gms/measurement/internal/zzjq;Ljava/lang/Boolean;Z)V

    return-void
.end method
