.class public final Lcom/sunia/HTREnginev2/jgp;
.super Lcom/sunia/HTREnginev2/mgp;
.source "SourceFile"


# instance fields
.field public final b:Lcom/sunia/HTREnginev2/lgp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/sunia/HTREnginev2/lgp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/sunia/HTREnginev2/lgp;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/mgp;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iput-object p2, p0, Lcom/sunia/HTREnginev2/jgp;->b:Lcom/sunia/HTREnginev2/lgp;

    return-void
.end method


# virtual methods
.method public final zzc()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/jgp;->b:Lcom/sunia/HTREnginev2/lgp;

    invoke-interface {p0}, Lcom/sunia/HTREnginev2/lgp;->zza()V

    return-void
.end method
