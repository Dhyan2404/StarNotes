.class public Lcom/couchbase/lite/internal/fleece/FLSharedKeys;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final handle:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "handle"

    invoke-static {p1, p2, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotZero(JLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/couchbase/lite/internal/fleece/FLSharedKeys;->handle:J

    return-void
.end method


# virtual methods
.method public getHandle()J
    .locals 2

    iget-wide v0, p0, Lcom/couchbase/lite/internal/fleece/FLSharedKeys;->handle:J

    return-wide v0
.end method
