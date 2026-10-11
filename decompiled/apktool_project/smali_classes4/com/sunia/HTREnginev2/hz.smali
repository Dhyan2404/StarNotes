.class public final synthetic Lcom/sunia/HTREnginev2/hz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;


# instance fields
.field public final synthetic a:[J

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>([JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/hz;->a:[J

    iput p2, p0, Lcom/sunia/HTREnginev2/hz;->b:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/hz;->a:[J

    iget p0, p0, Lcom/sunia/HTREnginev2/hz;->b:I

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, p0, p1}, Lcom/couchbase/lite/internal/core/C4Listener;->w([JILjava/lang/Long;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
