.class public final synthetic Lcom/sunia/HTREnginev2/k00;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/internal/core/C4Socket;

.field public final synthetic b:I

.field public final synthetic c:[B


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/core/C4Socket;I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/k00;->a:Lcom/couchbase/lite/internal/core/C4Socket;

    iput p2, p0, Lcom/sunia/HTREnginev2/k00;->b:I

    iput-object p3, p0, Lcom/sunia/HTREnginev2/k00;->c:[B

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/k00;->a:Lcom/couchbase/lite/internal/core/C4Socket;

    iget v1, p0, Lcom/sunia/HTREnginev2/k00;->b:I

    iget-object p0, p0, Lcom/sunia/HTREnginev2/k00;->c:[B

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, v1, p0, p1}, Lcom/couchbase/lite/internal/core/C4Socket;->j(Lcom/couchbase/lite/internal/core/C4Socket;I[BLjava/lang/Long;)V

    return-void
.end method
