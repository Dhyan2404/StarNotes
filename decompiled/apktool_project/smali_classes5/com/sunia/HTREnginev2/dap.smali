.class public final Lcom/sunia/HTREnginev2/dap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lcom/google/android/gms/common/api/internal/zabq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zabq;I)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/dap;->f:Lcom/google/android/gms/common/api/internal/zabq;

    iput p2, p0, Lcom/sunia/HTREnginev2/dap;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/dap;->f:Lcom/google/android/gms/common/api/internal/zabq;

    iget p0, p0, Lcom/sunia/HTREnginev2/dap;->e:I

    invoke-static {v0, p0}, Lcom/google/android/gms/common/api/internal/zabq;->s(Lcom/google/android/gms/common/api/internal/zabq;I)V

    return-void
.end method
