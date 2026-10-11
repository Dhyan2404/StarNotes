.class public final Lcom/sunia/HTREnginev2/xkp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Z

.field public final synthetic f:Lcom/sunia/HTREnginev2/ykp;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/ykp;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-boolean p2, p0, Lcom/sunia/HTREnginev2/xkp;->e:Z

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xkp;->f:Lcom/sunia/HTREnginev2/ykp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xkp;->f:Lcom/sunia/HTREnginev2/ykp;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/ykp;->a(Lcom/sunia/HTREnginev2/ykp;)Lcom/google/android/gms/measurement/internal/zznv;

    move-result-object v0

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/xkp;->e:Z

    invoke-virtual {v0, p0}, Lcom/google/android/gms/measurement/internal/zznv;->D(Z)V

    return-void
.end method
