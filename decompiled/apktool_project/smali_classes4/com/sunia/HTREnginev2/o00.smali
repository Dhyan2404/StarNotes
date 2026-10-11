.class public final synthetic Lcom/sunia/HTREnginev2/o00;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/internal/core/C4Socket;

.field public final synthetic b:[B


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/core/C4Socket;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/o00;->a:Lcom/couchbase/lite/internal/core/C4Socket;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/o00;->b:[B

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/o00;->a:Lcom/couchbase/lite/internal/core/C4Socket;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/o00;->b:[B

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, p0, p1}, Lcom/couchbase/lite/internal/core/C4Socket;->g0(Lcom/couchbase/lite/internal/core/C4Socket;[BLjava/lang/Long;)V

    return-void
.end method
