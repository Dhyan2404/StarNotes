.class public final synthetic Lcom/sunia/HTREnginev2/my;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/internal/core/C4Document;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/core/C4Document;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/my;->a:Lcom/couchbase/lite/internal/core/C4Document;

    iput p2, p0, Lcom/sunia/HTREnginev2/my;->b:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/my;->a:Lcom/couchbase/lite/internal/core/C4Document;

    iget p0, p0, Lcom/sunia/HTREnginev2/my;->b:I

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, p0, p1}, Lcom/couchbase/lite/internal/core/C4Document;->h0(Lcom/couchbase/lite/internal/core/C4Document;ILjava/lang/Long;)V

    return-void
.end method
