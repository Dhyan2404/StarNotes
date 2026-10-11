.class public final synthetic Lcom/sunia/HTREnginev2/tw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/internal/core/C4Collection;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/core/C4Collection;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/tw;->a:Lcom/couchbase/lite/internal/core/C4Collection;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/tw;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/sunia/HTREnginev2/tw;->c:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/sunia/HTREnginev2/tw;->a:Lcom/couchbase/lite/internal/core/C4Collection;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/tw;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/sunia/HTREnginev2/tw;->c:J

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/couchbase/lite/internal/core/C4Collection;->k0(Lcom/couchbase/lite/internal/core/C4Collection;Ljava/lang/String;JLjava/lang/Long;)V

    return-void
.end method
