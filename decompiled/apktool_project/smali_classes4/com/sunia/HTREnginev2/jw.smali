.class public final synthetic Lcom/sunia/HTREnginev2/jw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/internal/core/C4BlobWriteStream;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/core/C4BlobWriteStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/jw;->a:Lcom/couchbase/lite/internal/core/C4BlobWriteStream;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/jw;->a:Lcom/couchbase/lite/internal/core/C4BlobWriteStream;

    check-cast p1, Ljava/lang/Long;

    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/core/C4BlobWriteStream;->f(Lcom/couchbase/lite/internal/core/C4BlobWriteStream;Ljava/lang/Long;)V

    return-void
.end method
