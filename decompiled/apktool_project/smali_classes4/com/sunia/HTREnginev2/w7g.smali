.class public final synthetic Lcom/sunia/HTREnginev2/w7g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/internal/fleece/FLEncoder;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/fleece/FLEncoder;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/w7g;->a:Lcom/couchbase/lite/internal/fleece/FLEncoder;

    iput-wide p2, p0, Lcom/sunia/HTREnginev2/w7g;->b:J

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/w7g;->a:Lcom/couchbase/lite/internal/fleece/FLEncoder;

    iget-wide v1, p0, Lcom/sunia/HTREnginev2/w7g;->b:J

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, v1, v2, p1}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->e0(Lcom/couchbase/lite/internal/fleece/FLEncoder;JLjava/lang/Long;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
