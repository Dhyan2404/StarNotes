.class public final synthetic Lcom/sunia/HTREnginev2/py;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/internal/core/C4Document;

.field public final synthetic b:Z

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/core/C4Document;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/py;->a:Lcom/couchbase/lite/internal/core/C4Document;

    iput-boolean p2, p0, Lcom/sunia/HTREnginev2/py;->b:Z

    iput-boolean p3, p0, Lcom/sunia/HTREnginev2/py;->c:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/py;->a:Lcom/couchbase/lite/internal/core/C4Document;

    iget-boolean v1, p0, Lcom/sunia/HTREnginev2/py;->b:Z

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/py;->c:Z

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, v1, p0, p1}, Lcom/couchbase/lite/internal/core/C4Document;->i0(Lcom/couchbase/lite/internal/core/C4Document;ZZLjava/lang/Long;)V

    return-void
.end method
