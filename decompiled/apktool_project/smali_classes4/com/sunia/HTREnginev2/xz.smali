.class public final synthetic Lcom/sunia/HTREnginev2/xz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/internal/core/C4QueryObserver$NativeImpl;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/core/C4QueryObserver$NativeImpl;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xz;->a:Lcom/couchbase/lite/internal/core/C4QueryObserver$NativeImpl;

    iput-wide p2, p0, Lcom/sunia/HTREnginev2/xz;->b:J

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xz;->a:Lcom/couchbase/lite/internal/core/C4QueryObserver$NativeImpl;

    iget-wide v1, p0, Lcom/sunia/HTREnginev2/xz;->b:J

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, v1, v2, p1}, Lcom/couchbase/lite/internal/core/C4QueryObserver;->f(Lcom/couchbase/lite/internal/core/C4QueryObserver$NativeImpl;JLjava/lang/Long;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
