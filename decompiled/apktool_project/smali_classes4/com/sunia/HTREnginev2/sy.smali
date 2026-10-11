.class public final synthetic Lcom/sunia/HTREnginev2/sy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/couchbase/lite/internal/fleece/FLSliceResult;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/couchbase/lite/internal/fleece/FLSliceResult;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/sy;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/sy;->b:Lcom/couchbase/lite/internal/fleece/FLSliceResult;

    iput p3, p0, Lcom/sunia/HTREnginev2/sy;->c:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/sy;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/sy;->b:Lcom/couchbase/lite/internal/fleece/FLSliceResult;

    iget p0, p0, Lcom/sunia/HTREnginev2/sy;->c:I

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, v1, p0, p1}, Lcom/couchbase/lite/internal/core/C4Document;->f(Ljava/lang/String;Lcom/couchbase/lite/internal/fleece/FLSliceResult;ILjava/lang/Long;)Lcom/couchbase/lite/internal/core/C4Document;

    move-result-object p0

    return-object p0
.end method
