.class public final synthetic Lcom/sunia/HTREnginev2/ez;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/internal/core/C4IndexUpdater;

.field public final synthetic b:J

.field public final synthetic c:[F


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/core/C4IndexUpdater;J[F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ez;->a:Lcom/couchbase/lite/internal/core/C4IndexUpdater;

    iput-wide p2, p0, Lcom/sunia/HTREnginev2/ez;->b:J

    iput-object p4, p0, Lcom/sunia/HTREnginev2/ez;->c:[F

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ez;->a:Lcom/couchbase/lite/internal/core/C4IndexUpdater;

    iget-wide v1, p0, Lcom/sunia/HTREnginev2/ez;->b:J

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ez;->c:[F

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/couchbase/lite/internal/core/C4IndexUpdater;->w(Lcom/couchbase/lite/internal/core/C4IndexUpdater;J[FLjava/lang/Long;)V

    return-void
.end method
