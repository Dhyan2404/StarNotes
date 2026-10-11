.class public final synthetic Lcom/sunia/HTREnginev2/kw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/internal/core/C4BlobWriteStream;

.field public final synthetic b:[B

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/core/C4BlobWriteStream;[BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/kw;->a:Lcom/couchbase/lite/internal/core/C4BlobWriteStream;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/kw;->b:[B

    iput p3, p0, Lcom/sunia/HTREnginev2/kw;->c:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/kw;->a:Lcom/couchbase/lite/internal/core/C4BlobWriteStream;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/kw;->b:[B

    iget p0, p0, Lcom/sunia/HTREnginev2/kw;->c:I

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, v1, p0, p1}, Lcom/couchbase/lite/internal/core/C4BlobWriteStream;->j(Lcom/couchbase/lite/internal/core/C4BlobWriteStream;[BILjava/lang/Long;)V

    return-void
.end method
