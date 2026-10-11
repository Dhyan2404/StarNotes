.class public final synthetic Lcom/sunia/HTREnginev2/oz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/internal/core/C4Query;

.field public final synthetic b:Lcom/couchbase/lite/internal/fleece/FLSliceResult;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/core/C4Query;Lcom/couchbase/lite/internal/fleece/FLSliceResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/oz;->a:Lcom/couchbase/lite/internal/core/C4Query;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/oz;->b:Lcom/couchbase/lite/internal/fleece/FLSliceResult;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/oz;->a:Lcom/couchbase/lite/internal/core/C4Query;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/oz;->b:Lcom/couchbase/lite/internal/fleece/FLSliceResult;

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, p0, p1}, Lcom/couchbase/lite/internal/core/C4Query;->f(Lcom/couchbase/lite/internal/core/C4Query;Lcom/couchbase/lite/internal/fleece/FLSliceResult;Ljava/lang/Long;)Lcom/couchbase/lite/internal/core/C4QueryEnumerator;

    move-result-object p0

    return-object p0
.end method
