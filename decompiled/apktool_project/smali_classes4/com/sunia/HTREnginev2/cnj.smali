.class public final synthetic Lcom/sunia/HTREnginev2/cnj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/MessagingCompletion;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/internal/replicator/MessageSocket;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/replicator/MessageSocket;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/cnj;->a:Lcom/couchbase/lite/internal/replicator/MessageSocket;

    return-void
.end method


# virtual methods
.method public final complete(ZLcom/couchbase/lite/MessagingError;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/cnj;->a:Lcom/couchbase/lite/internal/replicator/MessageSocket;

    invoke-static {p0, p1, p2}, Lcom/couchbase/lite/internal/replicator/MessageSocket;->j(Lcom/couchbase/lite/internal/replicator/MessageSocket;ZLcom/couchbase/lite/MessagingError;)V

    return-void
.end method
