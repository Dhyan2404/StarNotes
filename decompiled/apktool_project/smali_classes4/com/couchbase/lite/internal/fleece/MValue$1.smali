.class Lcom/couchbase/lite/internal/fleece/MValue$1;
.super Lcom/couchbase/lite/internal/fleece/MValue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/internal/fleece/MValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/couchbase/lite/internal/fleece/FLValue;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/couchbase/lite/internal/fleece/MValue;-><init>(Ljava/lang/Object;Lcom/couchbase/lite/internal/fleece/FLValue;Lcom/couchbase/lite/internal/fleece/MValue$1;)V

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
