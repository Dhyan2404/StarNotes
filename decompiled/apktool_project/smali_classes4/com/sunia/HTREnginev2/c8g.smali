.class public final synthetic Lcom/sunia/HTREnginev2/c8g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$NonNullFunction;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/internal/fleece/FLEncoder;

.field public final synthetic b:Ljava/lang/Long;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/fleece/FLEncoder;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/c8g;->a:Lcom/couchbase/lite/internal/fleece/FLEncoder;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/c8g;->b:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/c8g;->a:Lcom/couchbase/lite/internal/fleece/FLEncoder;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/c8g;->b:Ljava/lang/Long;

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, p0, p1}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->f(Lcom/couchbase/lite/internal/fleece/FLEncoder;Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
