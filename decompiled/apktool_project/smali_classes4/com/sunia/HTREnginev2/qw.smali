.class public final synthetic Lcom/sunia/HTREnginev2/qw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/internal/core/C4Collection;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/core/C4Collection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/qw;->a:Lcom/couchbase/lite/internal/core/C4Collection;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/qw;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/qw;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/qw;->a:Lcom/couchbase/lite/internal/core/C4Collection;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/qw;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/qw;->c:Ljava/lang/String;

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, v1, p0, p1}, Lcom/couchbase/lite/internal/core/C4Collection;->I(Lcom/couchbase/lite/internal/core/C4Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method
