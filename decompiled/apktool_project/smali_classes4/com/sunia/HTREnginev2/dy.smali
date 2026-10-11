.class public final synthetic Lcom/sunia/HTREnginev2/dy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/core/C4Peer$PeerCleaner;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/dy;->a:Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;

    return-void
.end method


# virtual methods
.method public final dispose(J)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/dy;->a:Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;

    invoke-interface {p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;->nFree(J)V

    return-void
.end method
