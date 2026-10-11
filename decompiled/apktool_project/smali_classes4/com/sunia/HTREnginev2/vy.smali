.class public final synthetic Lcom/sunia/HTREnginev2/vy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/internal/core/C4Document;

.field public final synthetic b:Ljava/lang/Long;

.field public final synthetic c:J

.field public final synthetic d:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/core/C4Document;Ljava/lang/Long;J[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vy;->a:Lcom/couchbase/lite/internal/core/C4Document;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/vy;->b:Ljava/lang/Long;

    iput-wide p3, p0, Lcom/sunia/HTREnginev2/vy;->c:J

    iput-object p5, p0, Lcom/sunia/HTREnginev2/vy;->d:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/sunia/HTREnginev2/vy;->a:Lcom/couchbase/lite/internal/core/C4Document;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/vy;->b:Ljava/lang/Long;

    iget-wide v2, p0, Lcom/sunia/HTREnginev2/vy;->c:J

    iget-object v4, p0, Lcom/sunia/HTREnginev2/vy;->d:[Ljava/lang/String;

    move-object v5, p1

    check-cast v5, Ljava/lang/Long;

    invoke-static/range {v0 .. v5}, Lcom/couchbase/lite/internal/core/C4Document;->g0(Lcom/couchbase/lite/internal/core/C4Document;Ljava/lang/Long;J[Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
