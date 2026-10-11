.class public final synthetic Lcom/sunia/HTREnginev2/mx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/internal/core/C4Database;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/core/C4Database;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/mx;->a:Lcom/couchbase/lite/internal/core/C4Database;

    iput-boolean p2, p0, Lcom/sunia/HTREnginev2/mx;->b:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/mx;->a:Lcom/couchbase/lite/internal/core/C4Database;

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/mx;->b:Z

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, p0, p1}, Lcom/couchbase/lite/internal/core/C4Database;->I(Lcom/couchbase/lite/internal/core/C4Database;ZLjava/lang/Long;)V

    return-void
.end method
