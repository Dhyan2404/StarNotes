.class public final synthetic Lcom/sunia/HTREnginev2/ma;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/couchbase/lite/internal/replicator/NetworkConnectivityManager$Observer;

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/replicator/NetworkConnectivityManager$Observer;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ma;->e:Lcom/couchbase/lite/internal/replicator/NetworkConnectivityManager$Observer;

    iput-boolean p2, p0, Lcom/sunia/HTREnginev2/ma;->f:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ma;->e:Lcom/couchbase/lite/internal/replicator/NetworkConnectivityManager$Observer;

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/ma;->f:Z

    invoke-static {v0, p0}, Lcom/couchbase/lite/internal/connectivity/AndroidConnectivityManager;->a(Lcom/couchbase/lite/internal/replicator/NetworkConnectivityManager$Observer;Z)V

    return-void
.end method
