.class public final synthetic Lcom/sunia/HTREnginev2/qx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/internal/core/C4Database;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/core/C4Database;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/qx;->a:Lcom/couchbase/lite/internal/core/C4Database;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/qx;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/qx;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/sunia/HTREnginev2/qx;->d:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/qx;->a:Lcom/couchbase/lite/internal/core/C4Database;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/qx;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/qx;->c:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/qx;->d:Z

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/couchbase/lite/internal/core/C4Database;->M(Lcom/couchbase/lite/internal/core/C4Database;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Long;)V

    return-void
.end method
