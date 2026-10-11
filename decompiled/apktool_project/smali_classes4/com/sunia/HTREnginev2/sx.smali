.class public final synthetic Lcom/sunia/HTREnginev2/sx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/internal/core/C4Database;

.field public final synthetic b:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/core/C4Database;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/sx;->a:Lcom/couchbase/lite/internal/core/C4Database;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/sx;->b:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/sx;->a:Lcom/couchbase/lite/internal/core/C4Database;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/sx;->b:Ljava/lang/Integer;

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, p0, p1}, Lcom/couchbase/lite/internal/core/C4Database;->f(Lcom/couchbase/lite/internal/core/C4Database;Ljava/lang/Integer;Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
