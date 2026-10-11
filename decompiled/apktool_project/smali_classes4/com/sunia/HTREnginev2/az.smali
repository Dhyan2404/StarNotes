.class public final synthetic Lcom/sunia/HTREnginev2/az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/internal/core/C4Index;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/core/C4Index;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/az;->a:Lcom/couchbase/lite/internal/core/C4Index;

    iput p2, p0, Lcom/sunia/HTREnginev2/az;->b:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/az;->a:Lcom/couchbase/lite/internal/core/C4Index;

    iget p0, p0, Lcom/sunia/HTREnginev2/az;->b:I

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, p0, p1}, Lcom/couchbase/lite/internal/core/C4Index;->j(Lcom/couchbase/lite/internal/core/C4Index;ILjava/lang/Long;)Lcom/couchbase/lite/internal/core/C4IndexUpdater;

    move-result-object p0

    return-object p0
.end method
