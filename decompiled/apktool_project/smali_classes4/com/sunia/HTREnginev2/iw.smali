.class public final synthetic Lcom/sunia/HTREnginev2/iw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/internal/core/C4BlobStore;

.field public final synthetic b:Lcom/couchbase/lite/internal/core/C4BlobKey;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/core/C4BlobStore;Lcom/couchbase/lite/internal/core/C4BlobKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/iw;->a:Lcom/couchbase/lite/internal/core/C4BlobStore;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/iw;->b:Lcom/couchbase/lite/internal/core/C4BlobKey;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/iw;->a:Lcom/couchbase/lite/internal/core/C4BlobStore;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/iw;->b:Lcom/couchbase/lite/internal/core/C4BlobKey;

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, p0, p1}, Lcom/couchbase/lite/internal/core/C4BlobStore;->H(Lcom/couchbase/lite/internal/core/C4BlobStore;Lcom/couchbase/lite/internal/core/C4BlobKey;Ljava/lang/Long;)V

    return-void
.end method
