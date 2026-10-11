.class public final synthetic Lcom/sunia/HTREnginev2/g7g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/internal/fleece/FLArrayIterator;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/fleece/FLArrayIterator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/g7g;->a:Lcom/couchbase/lite/internal/fleece/FLArrayIterator;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/g7g;->a:Lcom/couchbase/lite/internal/fleece/FLArrayIterator;

    check-cast p1, Ljava/lang/Long;

    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/fleece/FLArrayIterator;->j(Lcom/couchbase/lite/internal/fleece/FLArrayIterator;Ljava/lang/Long;)Lcom/couchbase/lite/internal/fleece/FLValue;

    move-result-object p0

    return-object p0
.end method
