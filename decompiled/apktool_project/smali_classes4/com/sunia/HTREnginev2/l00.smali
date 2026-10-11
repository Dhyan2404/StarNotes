.class public final synthetic Lcom/sunia/HTREnginev2/l00;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/internal/core/C4Socket;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/core/C4Socket;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/l00;->a:Lcom/couchbase/lite/internal/core/C4Socket;

    iput p2, p0, Lcom/sunia/HTREnginev2/l00;->b:I

    iput p3, p0, Lcom/sunia/HTREnginev2/l00;->c:I

    iput-object p4, p0, Lcom/sunia/HTREnginev2/l00;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/l00;->a:Lcom/couchbase/lite/internal/core/C4Socket;

    iget v1, p0, Lcom/sunia/HTREnginev2/l00;->b:I

    iget v2, p0, Lcom/sunia/HTREnginev2/l00;->c:I

    iget-object p0, p0, Lcom/sunia/HTREnginev2/l00;->d:Ljava/lang/String;

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/couchbase/lite/internal/core/C4Socket;->I(Lcom/couchbase/lite/internal/core/C4Socket;IILjava/lang/String;Ljava/lang/Long;)V

    return-void
.end method
