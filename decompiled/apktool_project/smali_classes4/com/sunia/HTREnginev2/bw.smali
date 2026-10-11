.class public final synthetic Lcom/sunia/HTREnginev2/bw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/internal/core/C4BlobReadStream;

.field public final synthetic b:[B

.field public final synthetic c:I

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/core/C4BlobReadStream;[BIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/bw;->a:Lcom/couchbase/lite/internal/core/C4BlobReadStream;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/bw;->b:[B

    iput p3, p0, Lcom/sunia/HTREnginev2/bw;->c:I

    iput-wide p4, p0, Lcom/sunia/HTREnginev2/bw;->d:J

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/sunia/HTREnginev2/bw;->a:Lcom/couchbase/lite/internal/core/C4BlobReadStream;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/bw;->b:[B

    iget v2, p0, Lcom/sunia/HTREnginev2/bw;->c:I

    iget-wide v3, p0, Lcom/sunia/HTREnginev2/bw;->d:J

    move-object v5, p1

    check-cast v5, Ljava/lang/Long;

    invoke-static/range {v0 .. v5}, Lcom/couchbase/lite/internal/core/C4BlobReadStream;->f(Lcom/couchbase/lite/internal/core/C4BlobReadStream;[BIJLjava/lang/Long;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
