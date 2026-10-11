.class public final synthetic Lcom/sunia/HTREnginev2/zw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/internal/core/C4Collection;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Z

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/core/C4Collection;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/zw;->a:Lcom/couchbase/lite/internal/core/C4Collection;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/zw;->b:Ljava/lang/String;

    iput p3, p0, Lcom/sunia/HTREnginev2/zw;->c:I

    iput-object p4, p0, Lcom/sunia/HTREnginev2/zw;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/sunia/HTREnginev2/zw;->e:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/sunia/HTREnginev2/zw;->f:Z

    iput-object p7, p0, Lcom/sunia/HTREnginev2/zw;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/sunia/HTREnginev2/zw;->a:Lcom/couchbase/lite/internal/core/C4Collection;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/zw;->b:Ljava/lang/String;

    iget v2, p0, Lcom/sunia/HTREnginev2/zw;->c:I

    iget-object v3, p0, Lcom/sunia/HTREnginev2/zw;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/sunia/HTREnginev2/zw;->e:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/sunia/HTREnginev2/zw;->f:Z

    iget-object v6, p0, Lcom/sunia/HTREnginev2/zw;->g:Ljava/lang/String;

    move-object v7, p1

    check-cast v7, Ljava/lang/Long;

    invoke-static/range {v0 .. v7}, Lcom/couchbase/lite/internal/core/C4Collection;->w(Lcom/couchbase/lite/internal/core/C4Collection;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Long;)V

    return-void
.end method
