.class public final synthetic Lcom/sunia/HTREnginev2/ew;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/internal/core/C4BlobStore;

.field public final synthetic b:Lcom/couchbase/lite/internal/core/C4BlobKey;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/core/C4BlobStore;Lcom/couchbase/lite/internal/core/C4BlobKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ew;->a:Lcom/couchbase/lite/internal/core/C4BlobStore;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/ew;->b:Lcom/couchbase/lite/internal/core/C4BlobKey;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ew;->a:Lcom/couchbase/lite/internal/core/C4BlobStore;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ew;->b:Lcom/couchbase/lite/internal/core/C4BlobKey;

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, p0, p1}, Lcom/couchbase/lite/internal/core/C4BlobStore;->f(Lcom/couchbase/lite/internal/core/C4BlobStore;Lcom/couchbase/lite/internal/core/C4BlobKey;Ljava/lang/Long;)Lcom/couchbase/lite/internal/core/C4BlobReadStream;

    move-result-object p0

    return-object p0
.end method
