.class public final Lcom/sunia/HTREnginev2/d9p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/PendingResult$StatusListener;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

.field public final synthetic b:Lcom/google/android/gms/common/api/internal/zaad;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zaad;Lcom/google/android/gms/common/api/internal/BasePendingResult;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/d9p;->b:Lcom/google/android/gms/common/api/internal/zaad;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/d9p;->a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iget-object p1, p0, Lcom/sunia/HTREnginev2/d9p;->b:Lcom/google/android/gms/common/api/internal/zaad;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaad;->a(Lcom/google/android/gms/common/api/internal/zaad;)Ljava/util/Map;

    move-result-object p1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/d9p;->a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
