.class public final synthetic Lcom/sunia/HTREnginev2/gw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/internal/core/C4BlobStore;

.field public final synthetic b:[B


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/core/C4BlobStore;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/gw;->a:Lcom/couchbase/lite/internal/core/C4BlobStore;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/gw;->b:[B

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/gw;->a:Lcom/couchbase/lite/internal/core/C4BlobStore;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/gw;->b:[B

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, p0, p1}, Lcom/couchbase/lite/internal/core/C4BlobStore;->w(Lcom/couchbase/lite/internal/core/C4BlobStore;[BLjava/lang/Long;)Lcom/couchbase/lite/internal/core/C4BlobKey;

    move-result-object p0

    return-object p0
.end method
