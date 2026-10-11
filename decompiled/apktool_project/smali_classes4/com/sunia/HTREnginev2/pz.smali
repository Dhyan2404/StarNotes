.class public final synthetic Lcom/sunia/HTREnginev2/pz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/internal/core/C4Query;

.field public final synthetic b:Lcom/couchbase/lite/internal/fleece/FLSliceResult;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/core/C4Query;Lcom/couchbase/lite/internal/fleece/FLSliceResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/pz;->a:Lcom/couchbase/lite/internal/core/C4Query;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/pz;->b:Lcom/couchbase/lite/internal/fleece/FLSliceResult;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/pz;->a:Lcom/couchbase/lite/internal/core/C4Query;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/pz;->b:Lcom/couchbase/lite/internal/fleece/FLSliceResult;

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, p0, p1}, Lcom/couchbase/lite/internal/core/C4Query;->w(Lcom/couchbase/lite/internal/core/C4Query;Lcom/couchbase/lite/internal/fleece/FLSliceResult;Ljava/lang/Long;)V

    return-void
.end method
