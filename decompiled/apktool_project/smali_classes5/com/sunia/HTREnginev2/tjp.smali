.class public final Lcom/sunia/HTREnginev2/tjp;
.super Lcom/sunia/HTREnginev2/qmp;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/sunia/HTREnginev2/bkp;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/bkp;Lcom/sunia/HTREnginev2/jop;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/tjp;->b:Lcom/sunia/HTREnginev2/bkp;

    invoke-direct {p0, p2}, Lcom/sunia/HTREnginev2/qmp;-><init>(Lcom/sunia/HTREnginev2/jop;)V

    return-void
.end method


# virtual methods
.method public final zzb([B)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tjp;->b:Lcom/sunia/HTREnginev2/bkp;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/jop;->d:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
