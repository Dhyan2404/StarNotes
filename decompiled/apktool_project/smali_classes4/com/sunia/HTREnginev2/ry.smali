.class public final synthetic Lcom/sunia/HTREnginev2/ry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/internal/core/C4Document;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:[B

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/core/C4Document;Ljava/lang/String;Ljava/lang/String;[BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ry;->a:Lcom/couchbase/lite/internal/core/C4Document;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/ry;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/ry;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/ry;->d:[B

    iput p5, p0, Lcom/sunia/HTREnginev2/ry;->e:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ry;->a:Lcom/couchbase/lite/internal/core/C4Document;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/ry;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/ry;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/sunia/HTREnginev2/ry;->d:[B

    iget v4, p0, Lcom/sunia/HTREnginev2/ry;->e:I

    move-object v5, p1

    check-cast v5, Ljava/lang/Long;

    invoke-static/range {v0 .. v5}, Lcom/couchbase/lite/internal/core/C4Document;->M(Lcom/couchbase/lite/internal/core/C4Document;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/Long;)V

    return-void
.end method
