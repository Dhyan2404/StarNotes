.class public final synthetic Lcom/sunia/HTREnginev2/opn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/couchbase/lite/Collection;

    invoke-virtual {p1}, Lcom/couchbase/lite/Collection;->getOpenC4Collection()Lcom/couchbase/lite/internal/core/C4Collection;

    move-result-object p0

    return-object p0
.end method
