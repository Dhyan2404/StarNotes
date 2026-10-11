.class public final synthetic Lcom/sunia/HTREnginev2/sz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/internal/core/C4Query$NativeImpl;

.field public final synthetic b:Lcom/couchbase/lite/internal/QueryLanguage;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/core/C4Query$NativeImpl;Lcom/couchbase/lite/internal/QueryLanguage;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/sz;->a:Lcom/couchbase/lite/internal/core/C4Query$NativeImpl;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/sz;->b:Lcom/couchbase/lite/internal/QueryLanguage;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/sz;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/sz;->a:Lcom/couchbase/lite/internal/core/C4Query$NativeImpl;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/sz;->b:Lcom/couchbase/lite/internal/QueryLanguage;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/sz;->c:Ljava/lang/String;

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, v1, p0, p1}, Lcom/couchbase/lite/internal/core/C4Query;->j(Lcom/couchbase/lite/internal/core/C4Query$NativeImpl;Lcom/couchbase/lite/internal/QueryLanguage;Ljava/lang/String;Ljava/lang/Long;)Lcom/couchbase/lite/internal/core/C4Query;

    move-result-object p0

    return-object p0
.end method
