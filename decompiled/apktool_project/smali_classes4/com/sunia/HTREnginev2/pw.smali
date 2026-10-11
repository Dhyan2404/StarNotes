.class public final synthetic Lcom/sunia/HTREnginev2/pw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/core/C4Peer$PeerCleaner;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/pw;->a:Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;

    return-void
.end method


# virtual methods
.method public final dispose(J)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/pw;->a:Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;

    invoke-interface {p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;->nFree(J)V

    return-void
.end method
