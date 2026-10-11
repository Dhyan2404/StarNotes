.class public final synthetic Lcom/sunia/HTREnginev2/iz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/internal/core/C4Listener;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/Long;

.field public final synthetic d:[J


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/core/C4Listener;Ljava/lang/String;Ljava/lang/Long;[J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/iz;->a:Lcom/couchbase/lite/internal/core/C4Listener;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/iz;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/iz;->c:Ljava/lang/Long;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/iz;->d:[J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/iz;->a:Lcom/couchbase/lite/internal/core/C4Listener;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/iz;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/iz;->c:Ljava/lang/Long;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/iz;->d:[J

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/couchbase/lite/internal/core/C4Listener;->f(Lcom/couchbase/lite/internal/core/C4Listener;Ljava/lang/String;Ljava/lang/Long;[JLjava/lang/Long;)V

    return-void
.end method
