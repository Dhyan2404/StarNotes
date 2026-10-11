.class public final synthetic Lcom/sunia/HTREnginev2/vw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/internal/core/C4Collection;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/core/C4Collection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vw;->a:Lcom/couchbase/lite/internal/core/C4Collection;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vw;->a:Lcom/couchbase/lite/internal/core/C4Collection;

    check-cast p1, Ljava/lang/Long;

    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/core/C4Collection;->m0(Lcom/couchbase/lite/internal/core/C4Collection;Ljava/lang/Long;)Lcom/couchbase/lite/internal/fleece/FLValue;

    move-result-object p0

    return-object p0
.end method
