.class public final synthetic Lcom/sunia/HTREnginev2/h00;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/internal/core/C4Replicator;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/core/C4Replicator;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/h00;->a:Lcom/couchbase/lite/internal/core/C4Replicator;

    iput p2, p0, Lcom/sunia/HTREnginev2/h00;->b:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/h00;->a:Lcom/couchbase/lite/internal/core/C4Replicator;

    iget p0, p0, Lcom/sunia/HTREnginev2/h00;->b:I

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, p0, p1}, Lcom/couchbase/lite/internal/core/C4Replicator;->e0(Lcom/couchbase/lite/internal/core/C4Replicator;ILjava/lang/Long;)V

    return-void
.end method
