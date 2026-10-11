.class public final synthetic Lcom/sunia/HTREnginev2/d8g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/d8g;->a:Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lcom/sunia/HTREnginev2/d8g;->a:Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;->nFinishJSON(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
