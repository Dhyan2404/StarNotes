.class public final Lcom/sunia/HTREnginev2/qap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/google/android/gms/signin/internal/zak;

.field public final synthetic f:Lcom/google/android/gms/common/api/internal/zact;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zact;Lcom/google/android/gms/signin/internal/zak;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/qap;->f:Lcom/google/android/gms/common/api/internal/zact;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/qap;->e:Lcom/google/android/gms/signin/internal/zak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/qap;->f:Lcom/google/android/gms/common/api/internal/zact;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/qap;->e:Lcom/google/android/gms/signin/internal/zak;

    invoke-static {v0, p0}, Lcom/google/android/gms/common/api/internal/zact;->b(Lcom/google/android/gms/common/api/internal/zact;Lcom/google/android/gms/signin/internal/zak;)V

    return-void
.end method
