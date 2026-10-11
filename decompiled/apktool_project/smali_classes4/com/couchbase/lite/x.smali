.class public final synthetic Lcom/couchbase/lite/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:[F


# direct methods
.method public synthetic constructor <init>(I[F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/couchbase/lite/x;->a:I

    iput-object p2, p0, Lcom/couchbase/lite/x;->b:[F

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/couchbase/lite/x;->a:I

    iget-object p0, p0, Lcom/couchbase/lite/x;->b:[F

    check-cast p1, Lcom/couchbase/lite/internal/core/C4IndexUpdater;

    invoke-static {v0, p0, p1}, Lcom/couchbase/lite/IndexUpdaterImpl;->I(I[FLcom/couchbase/lite/internal/core/C4IndexUpdater;)V

    return-void
.end method
