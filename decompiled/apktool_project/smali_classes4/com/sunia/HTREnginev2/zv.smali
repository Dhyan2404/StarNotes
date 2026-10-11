.class public final synthetic Lcom/sunia/HTREnginev2/zv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/internal/core/C4BlobReadStream;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/core/C4BlobReadStream;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/zv;->a:Lcom/couchbase/lite/internal/core/C4BlobReadStream;

    iput-wide p2, p0, Lcom/sunia/HTREnginev2/zv;->b:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/zv;->a:Lcom/couchbase/lite/internal/core/C4BlobReadStream;

    iget-wide v1, p0, Lcom/sunia/HTREnginev2/zv;->b:J

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, v1, v2, p1}, Lcom/couchbase/lite/internal/core/C4BlobReadStream;->j(Lcom/couchbase/lite/internal/core/C4BlobReadStream;JLjava/lang/Long;)V

    return-void
.end method
