.class public final synthetic Lcom/sunia/HTREnginev2/qz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/internal/core/C4Query;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/core/C4Query;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/qz;->a:Lcom/couchbase/lite/internal/core/C4Query;

    iput p2, p0, Lcom/sunia/HTREnginev2/qz;->b:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/qz;->a:Lcom/couchbase/lite/internal/core/C4Query;

    iget p0, p0, Lcom/sunia/HTREnginev2/qz;->b:I

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, p0, p1}, Lcom/couchbase/lite/internal/core/C4Query;->H(Lcom/couchbase/lite/internal/core/C4Query;ILjava/lang/Long;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
