.class public final synthetic Lcom/sunia/HTREnginev2/ex;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ex;->a:Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/ex;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/ex;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ex;->a:Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/ex;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ex;->c:Ljava/lang/String;

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, v1, p0, p1}, Lcom/couchbase/lite/internal/core/C4Collection;->h0(Lcom/couchbase/lite/internal/core/C4Collection$NativeImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
