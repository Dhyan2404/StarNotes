.class public final synthetic Lcom/sunia/HTREnginev2/enj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/MessagingCompletion;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/internal/replicator/MessageSocket;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/replicator/MessageSocket;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/enj;->a:Lcom/couchbase/lite/internal/replicator/MessageSocket;

    iput p2, p0, Lcom/sunia/HTREnginev2/enj;->b:I

    return-void
.end method


# virtual methods
.method public final complete(ZLcom/couchbase/lite/MessagingError;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/enj;->a:Lcom/couchbase/lite/internal/replicator/MessageSocket;

    iget p0, p0, Lcom/sunia/HTREnginev2/enj;->b:I

    invoke-static {v0, p0, p1, p2}, Lcom/couchbase/lite/internal/replicator/MessageSocket;->f(Lcom/couchbase/lite/internal/replicator/MessageSocket;IZLcom/couchbase/lite/MessagingError;)V

    return-void
.end method
