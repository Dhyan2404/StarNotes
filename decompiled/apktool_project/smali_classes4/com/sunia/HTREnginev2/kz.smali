.class public final synthetic Lcom/sunia/HTREnginev2/kz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/internal/core/C4Listener;

.field public final synthetic b:Ljava/lang/Long;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/core/C4Listener;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/kz;->a:Lcom/couchbase/lite/internal/core/C4Listener;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/kz;->b:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/kz;->a:Lcom/couchbase/lite/internal/core/C4Listener;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/kz;->b:Ljava/lang/Long;

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, p0, p1}, Lcom/couchbase/lite/internal/core/C4Listener;->I(Lcom/couchbase/lite/internal/core/C4Listener;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
