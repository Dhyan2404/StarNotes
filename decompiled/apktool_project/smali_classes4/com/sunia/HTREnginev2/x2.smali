.class public final synthetic Lcom/sunia/HTREnginev2/x2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/couchbase/lite/internal/core/C4Database;

    invoke-virtual {p1}, Lcom/couchbase/lite/internal/core/C4Database;->closeDb()V

    return-void
.end method
