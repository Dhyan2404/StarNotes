.class public final Lcom/sunia/HTREnginev2/j9p;
.super Lcom/sunia/HTREnginev2/aap;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/google/android/gms/common/ConnectionResult;

.field public final synthetic c:Lcom/sunia/HTREnginev2/l9p;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/l9p;Lcom/google/android/gms/common/api/internal/zabf;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/j9p;->c:Lcom/sunia/HTREnginev2/l9p;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/j9p;->b:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, p2}, Lcom/sunia/HTREnginev2/aap;-><init>(Lcom/google/android/gms/common/api/internal/zabf;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/j9p;->c:Lcom/sunia/HTREnginev2/l9p;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/l9p;->g:Lcom/google/android/gms/common/api/internal/zaaw;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/j9p;->b:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0, p0}, Lcom/google/android/gms/common/api/internal/zaaw;->u(Lcom/google/android/gms/common/api/internal/zaaw;Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
