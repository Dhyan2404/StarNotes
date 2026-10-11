.class public final synthetic Lcom/sunia/HTREnginev2/nw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/internal/core/C4Collection;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/core/C4Collection;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/nw;->a:Lcom/couchbase/lite/internal/core/C4Collection;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/nw;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/nw;->a:Lcom/couchbase/lite/internal/core/C4Collection;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/nw;->b:Ljava/lang/String;

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, p0, p1}, Lcom/couchbase/lite/internal/core/C4Collection;->f0(Lcom/couchbase/lite/internal/core/C4Collection;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
